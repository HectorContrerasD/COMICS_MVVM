using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Unidad_2_Proyecto_Comics.Model;
using System.Windows.Input;
using GalaSoft.MvvmLight.Command;
using Newtonsoft.Json;
using System.IO;

namespace Unidad_2_Proyecto_Comics.View_Model
{
    public class HeroesViewModel : INotifyPropertyChanged
    {

        public ObservableCollection<HeroesModel> ListaHeroes { get; set; } = new ObservableCollection<HeroesModel>();

        private HeroesModel? heroe;
        int posicionOriginal;
        public HeroesModel? Heroe
        {
            get { return heroe; }
            set
            {
                heroe = value;
                PropertyChange();
            }
        }
        public string Vista { get; set; } = "Ver";
        public string Error { get; set; } = "";

        public ICommand CancelarCommand { get; set; }
        public ICommand CambiarVistaCommand { get; set; }
        public ICommand AgregarCommand { get; set; }
        public ICommand EditarCommand { get; set; }
        public ICommand EliminarCommand { get; set; }

        public HeroesViewModel()
        {
            MostrarInfo();
            CancelarCommand = new RelayCommand(Cancelar);
            CambiarVistaCommand = new RelayCommand<string>(CambiarVista);
            AgregarCommand = new RelayCommand(Agregar);
            EditarCommand = new RelayCommand(Editar);
            EliminarCommand = new RelayCommand(Eliminar);
            
        }

        private void Editar()
        {
           if (Heroe != null)
            {
                ListaHeroes[posicionOriginal] = Heroe;
                GuardarInfo();
                CambiarVista("Ver");
            }
        }

        private void Eliminar()
        {
            if (Heroe != null)
            {
                ListaHeroes.Remove(Heroe);
                GuardarInfo();
                CambiarVista("Ver");
            }
        }


        private void Agregar()
        {
            if (Heroe != null)
            {
                if (string.IsNullOrEmpty(Heroe.NombreHeroe))
                {
                    Error = "Escribe el nombre del héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.NombreCivil))
                {
                    Error = "Escribe el nombre civil del héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.Poder))
                {
                    Error = "Escribe el poder del héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (Heroe.Edad <= 0)
                {
                    Error = "El héroe no puede tener 0 años o menos.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.Afiliacion))
                {
                    Error = "Escribe el equipo al que pertenece el héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.Descripcion))
                {
                    Error = "Escribe una descripción corta del héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.EditorialOrigen))
                {
                    Error = "Escribe la editorial que creó al héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (string.IsNullOrEmpty(Heroe.Imagen))
                {
                    Error = "Escribe el URL de una imágen con referencia al héroe.";
                    PropertyChange("Error");
                    return;
                }
                if (!Uri.TryCreate(Heroe.Imagen, UriKind.Absolute, out var uri))
                {
                    Error = "Escriba una URL de la imagen valida.";
                    PropertyChange("Error");
                    return;
                }
                ListaHeroes.Add(Heroe);
                CambiarVista("Ver");
                GuardarInfo();
            }
        }
        public void GuardarInfo()
        {
            var json = JsonConvert.SerializeObject(ListaHeroes);
            File.WriteAllText("heroes.json", json);

        }
        public void MostrarInfo()
        {
            if (File.Exists("heroes.json"))
            {
                var json = File.ReadAllText("heroes.json");
                var datos = JsonConvert
                    .DeserializeObject<ObservableCollection<HeroesModel>?>(json);

                if (datos != null)
                {
                    ListaHeroes = datos;
                }
                else
                {
                    ListaHeroes = new ObservableCollection<HeroesModel>();
                }
            }

        }
        public void Cancelar()
        {
            CambiarVista("Ver");
            Heroe = null;
            Error ="";
        }

        public void CambiarVista(string obj)
        {
            Vista = obj;
            if (Vista == "Agregar")
            {
                Heroe = new HeroesModel();
            }

            if (Vista == "Editar")
            {
                if (heroe != null)
                {
                    HeroesModel clon = new HeroesModel()
                    {
                        NombreHeroe = heroe.NombreHeroe,
                        NombreCivil = heroe.NombreCivil,
                        Poder = heroe.Poder,
                        Edad = heroe.Edad,
                        Afiliacion = heroe.Afiliacion,
                        Descripcion = heroe.Descripcion,
                        EditorialOrigen = heroe.EditorialOrigen,
                        Imagen = heroe.Imagen
                    };
                    posicionOriginal = ListaHeroes.IndexOf(heroe);
                    Heroe = clon;
                }
            }
            PropertyChange();
        }

        void PropertyChange(string propiedad = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propiedad));
        }
        //public System.Collections.ObjectModel.ObservableCollection<> Lista { get; set; } = new ObservableCollection<>();
        public event PropertyChangedEventHandler? PropertyChanged;
    }
}
