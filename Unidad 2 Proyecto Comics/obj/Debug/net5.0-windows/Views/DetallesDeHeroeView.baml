   M S B A M L   `   `   `  ����S  OUnidad 2 Proyecto Comics, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Unidad_2_Proyecto_Comics.ViewsUnidad_2_Proyecto_Comics.Views  5      8    2Unidad_2_Proyecto_Comics.Views.DetallesDeHeroeView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:Unidad_2_Proyecto_Comics.Views     5      
������   J� Effect  5	      3  -System.Windows.Media.Effects.DropShadowEffect  5
   
      
BlurRadius$ 40Q�6      Color$
 Gold��6+   6:    � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  � ��
 �����6;   �� 5       � ��$ 
ExtraBlack"�6+   6@   5      5      ��5      �� 5   
   " >�6   .�5      ��  � �� 5      ]� 5      $��Center=�6    .+�5      � $	��200��6    $	��Top=�6-    � RowDefinitions 5      �� 5   "   $	��.5* �60   6?   �� 5   "   $	��.1* �60   6?   �� 5    "   $	��.2* �60   6?    � ColumnDefinitions 5"      �� 5#   "   65   �� 5$   "   65   �� 5%   "   65   .+�5'      �� $��5q�6%   $��0��60   $��3��6=   $��1��6N   $��1q�6`   
��� ���._�5(   "   �� $
��Fill=�6)   ��68   �� *Heroe.Imagen+6Z   5)      �� 5*      $��1��6(   $��2��65   
�������$��
ExtraBlack"�6Z   $��20q�6r   $��9(�6   $��Center=�6�   $��1��6�   ��6�   �� *Heroe.EditorialOrigen+6�   �� 5+      $��2��6(   
�������$��
ExtraBlack"�6I   $��10q�6a   $��20(�6n   $��Center=�6|   $��1��6�   $��Center=�6�   ��6�   �� *Heroe.NombreHeroe+6�   5,      �� 5-      
��� ���$��5q�64   	 �� CornerRadius$	 5��6H   ._�5.      �� $��10q�6)    5/      ��%   '��       �� 50   "   " ��6(   .�51   &   ��  � ��
 �����6S   �� 52   &    � ��$
 Bold"�6C   6R   53   '   54      .+�55      �� Nombre de civil: �� 6:   ��6D   �� *Heroe.NombreCivil+6i   6u   �� 56   "   Edad: �� 63   ��6=   �� *
Heroe.Edad+6[   �� 6f   $�� años��6p   6   6�   �� 57      	Poder: �� 60   ��6:   �� *Heroe.Poder+6Y   6e   �� 58   "   Afiliación: �� 69   ��6C   �� *Heroe.Afiliacion+6g   6s   �� 59   "   $��Descripción general: ��6-   6L   �� 5:      $
��Wrap=�6$   ��68   �� *Heroe.Descripcion+6]   5;      5<      5=      5?      
 �� Triggers
 5@      �� 5A       �� Binding 6   �� *Heroe+ �� Value 68   Z� .a�5B      ��  � �� 5C      � 5D      
������� 5E   "   ��%T   '��       �� 5F   &   " ��6,   .�5G   *   ��  � ��
 �   �6W   5H   '   5I   #    5J   "   �� 5K   &   $	��.9* �64   6C   �� 5L   &   $	��.3* �64   6C   �� 5M   &   $	��.9* �64   6C   .+�5O   "   �� $R��Lhttps://i.pinimg.com/originals/be/db/45/bedb4590946499932dfcfae066786dad.jpg��6(   $	��300��6~   $	��700��6�   $��3��6�   6�   �� 5P   "   $��1��6.   $��0,0,40,0q�6;   .+�5Q   &   ��  �� TextAlignment$ Right=�61   $,��&El Sr.Pool quiere conocer a un héroe,��6G   6v   �� 5R   &   $��0,0,60,0q�61   $ Right=�6C   $��selecciona o agrega uno.��6Y   6{   5S   #   5T      5V      5W      5Z      5]      