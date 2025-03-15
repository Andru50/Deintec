<?php   
include 'header.php';
    if (isset ($_POST['Buscar'])) 
    {
        $clave = $_POST['clave'];
        $quesy = "SELECT * FROM productos WHERE clave = '$clave'";   
        $password = $_POST['password'];
        $resultado=mysqli_query($conexion,$query);
        if(mysqli_num_rows($resultado)>1)
        {
            echo "<table>>
            <tr>
                <td>
                    <img src=".$datos['imagen']."' width='100' height='100'>
                </td>
                <tr>
                    <form method= 'post' enctype= 'multipart/form-data'>
                    Tipo: <input type='number' disabled='true' name='nueva' id='nueva' value=".$datos['Tipo']."'><br>
                    Nombre: <input type=' disabled='true'nombre' id='nombre' value=".$datos['nombre']."'><br>
                    Descripcion: <input type='text' disabled='true' name='descripcion' id='descripcion' value=".$datos['descripcion']."'><br>
                    Precio: <input type='number' disabled='true' name='precio' id='precio' value=".$datos['precio']."'><br>
                    imagen: <input type='file' ACCPT='image/*' disabled='true' name= 'foto' id 'foto' value".$datos['imagen']."'><br>
                    <botton name= 'editar'>Editar</botton><input type='submit' id='guardar' name='guardar' value='Guardar'>
                    </form>
                </tr>
            </tr>
            ";
    }
    else 
    {
        echo "no hay reguistro asociado al Tipo ingresado";
    }
}
?>