   M S B A M L   `   `   `  ����S  OUnidad 2 Proyecto Comics, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Unidad_2_Proyecto_Comics.ViewsUnidad_2_Proyecto_Comics.Views  5      0    *Unidad_2_Proyecto_Comics.Views.AgregarView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:Unidad_2_Proyecto_Comics.Views     5      
���  ��  J� Effect  5	      3  -System.Windows.Media.Effects.DropShadowEffect  5
   
      
BlurRadius$ 40Q�6      Color$
 Gold��6+   6;    � 	Resources 5       �� 
TargetType �� Property �� Value��%Z  '��       '�� J     '�� �     �� 5   
   " ��6   .�5      ��  � ��
 �����6;   5      �� 5   
   " ��6   .�5      ��  � ��$ 	10,0,10,0q�6'   6;   5      �� 5   
   " ��6   .�5      ��  � ��
 � ���6:   �� 5       � ��
 �  ��6=   �� 5       � ��$ 3,2,3,0q�6'   69   5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $	��.4* �6   6+   �� 5       6   �� 5!      $	��.1* �6   6+   .+�5$   
   �� $��3��6   $��2��6&   $��
80,80,80,0q�6:   .+�5%      �� .��6   Nombre de héroe:6&   �� 5&      ��6   �� *Heroe.NombreHeroe+6<   �� 5'      .��6   Nombre civil:6#   �� 5(      ��6   �� *Heroe.NombreCivil+6;   �� 5)      .��6   Poder:6   �� 5*      ��6   �� *Heroe.Poder+65   �� 5+      .��6   Edad:6   �� 5,      ��6   �� *
Heroe.Edad+64   �� 5-      .��6   Afiliación:6!   �� 5.      ��6   �� *Heroe.Afiliacion+6:   �� 5/      .��6   Editorial de origen:6*   �� 50      ��6   �� *Heroe.EditorialOrigen+6?   �� 51      .��6   Descripción:6"   �� 52      ��6   �� *Heroe.Descripcion+6;   �� 53      .��6   Imágen de referencia (URL):61   �� 54      ��6   �� *Heroe.Imagen+66   �� 55      	 �� TextAlignment$	 Center=�6   $	��330��6/   
�������$��10q�6O   $��Center=�6[   $��Center=�6x   ��6�   �� *Error+6�   56      �� 57   
   $��70��6   $��15q�6   $	��Top=�6)   $W��Qhttps://www.kindpng.com/picc/m/207-2070036_marvel-comics-logo-hd-png-download.png��6A   $��2��6�   $��Center=�6�   6�   � 58   
   $��2��6   $
��Left=�6!   $��1��6<   $��	294,0,0,0q�6L   .+�5:      �� $��Guardar��68   ��6   �� *AgregarCommand+6L   �� 5;      $��Cancelar��69   ��6   �� *CancelarCommand+6N   5<      5=      5>      