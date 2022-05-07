using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unidad_2_Proyecto_Comics.Model
{
    public class HeroesModel
    {
        public string NombreHeroe { get; set; } = "";
        public string NombreCivil { get; set; } = "";
        public string Poder { get; set; } = "";
        public string EditorialOrigen { get; set; } = "";
        public string Afiliacion { get; set; } = "";
        public ushort Edad { get; set; }
        public string Descripcion { get; set; } ="";
        public string Imagen { get; set; } = "";
    }
}
