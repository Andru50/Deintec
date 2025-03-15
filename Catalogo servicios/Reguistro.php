<?php
include("conexion .php");
    $clave=$_POST['clave'];
    $tipo_servicios=$_POST['nombre'];
    $cantidad=$_POST['cantidad'];
    $precio=$_POST['precio'];
    $imagen=$_FILES['foto']['name'];
    $directorio = "imagenes/";
    $nombre=basename($_FILES['foto']['name']);
    $ruta=$directorio.$nombre;
    $subido =move_uploadead_file ($tmp_name,$ruta);
    $query="INSERT INTO servicio (clave,nombre,cantidad,precio,imagen) VALUES ('$clave','$nombre_servicio','$cantidad','$precio','$ruta')";
    $resultado=mysqli_query($conexion,$query);
    if($resultado)
    {
    echo "Ha sido reguistro del servicio ingresado correctamente.<br>
     <br>
     <img src='$ruta' /><br>
     Nombre: $Tipo_servicio<br>   
     Cantidad: $cantidad<br>
     precio: $precio"   
    }
    else
    {
        echo "Error al reguistrar el servicio";
    }
?>