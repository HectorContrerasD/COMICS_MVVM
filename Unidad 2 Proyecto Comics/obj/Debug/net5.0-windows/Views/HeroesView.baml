   M S B A M L   `   `   `  ����S  OUnidad 2 Proyecto Comics, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Unidad_2_Proyecto_Comics.ViewsUnidad_2_Proyecto_Comics.Views  5   	   Y1clr-namespace:Unidad_2_Proyecto_Comics.View_Model#Unidad_2_Proyecto_Comics.View_Model  6D   O,clr-namespace:Unidad_2_Proyecto_Comics.ModelUnidad_2_Proyecto_Comics.Model  5   	   ,    &Unidad_2_Proyecto_Comics.Views.Window1   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:Unidad_2_Proyecto_Comics.Views     5   	   H
view_model1clr-namespace:Unidad_2_Proyecto_Comics.View_Model     6D   ?models,clr-namespace:Unidad_2_Proyecto_Comics.Model     5   	   $	��750��5	   	   $	��700��6   
���  ��  � DataContext  5
      9   3Unidad_2_Proyecto_Comics.View_Model.HeroesViewModel  5   
   -   5        HeroesViewModel��5   @    � 	Resources 5       �� DataType0   *Unidad_2_Proyecto_Comics.Model.HeroesModel2   ,Unidad_2_Proyecto_Comics.Views.HeroesControl��%L   (��       5      *, +)�� 6
   "  6   .R�5        6$   5      5      .��5      ]� .+�5   
   ]� $	��Top=�6   .+�5      �� 
��� ���$	��105��6l   $��15q�6y   $��5,8,5,8q�6�    �� SelectedItem 6(   �� *Heroe+��6H   �� *ListaHeroes+ J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 2Q�6'      Color$ Yellow��66   6G   ��5      �� 5      .R�5      �  � Orientation$ 
Horizontal=�6$    K� IsItemsHost$
 True��6=   6R   5      5      5      �� 5   
   	 �� TextAlignment$	 Center=�6   
�������$
��Bold"�6?   $��20(�6Q   $��Información Heroica��6_   $	��Top=�6z   6�   � 5    
   $��10q�6   $��Center=�6    $��Bottom=�6=    5!      
 �� 
TargetType �� Property �� Value��%  '��       �� 5"      "
 ��6   .�5#      ��  � ��
 � ���6B   �� 5$       � ��
 �  ��6E   �� 5%       � ��$ 	ExtraBold"�63   6G   �� 5&       � ��$ 2,0,2,0q�6/   6A   �� 5'       � ��$ 3,0,3,0q�60   6B   5(      5)      .+�5*      �� $��Agregar��6=   ��6   �� *CambiarVistaCommand+.��6X   Nuevo Héroe6e   �� 5+      $��Editar��6=   ��6   �� *CambiarVistaCommand+.��6W   Editar6_   �� 5,      -   5        $��	13,0,13,0q�5,   N   ��6   �� *EliminarCommand+.��6b   
Eliminar6l   5.      �� 5/   
   $��15q�6    50      0   *Unidad_2_Proyecto_Comics.Views.AgregarView   Agregar8   2Unidad_2_Proyecto_Comics.Views.DetallesDeHeroeView  Detalles/   )Unidad_2_Proyecto_Comics.Views.EditarView 
 Editar��%W   &	        &	      &	 &       51      66     52      6?     53      64   54      ��55      �� 56      "
 ��6    �� Triggers 57      �� 58       �� Binding 6&   �� *Vista+ �� Value Ver6@   .a�59      ��  � ��# [ 68   6\   5:      �� 5;       6&   �� *Vista+ Agregar6@   .a�5<      ��  � ��# [  68   6[   5=      �� 5>       6&   �� *Vista+
 Editar6@   .a�5?      ��  � ��# [ 68   6Z   5@      5B      5E      5F      5G      