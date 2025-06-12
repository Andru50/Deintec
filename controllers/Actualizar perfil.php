<?php
require '../conexion.php';
session_start();

$id = $_SESSION['id'];
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$ubicacion = $_POST['Ubicacion'];

// Procesar imagen si se subió
if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
    $imagenNombre = $_FILES['imagen']['name'];
    $imagenTmp = $_FILES['imagen']['tmp_name'];
    $rutaDestino = "../imagen/perfiles/" . basename($imagenNombre);

    if (move_uploaded_file($imagenTmp, $rutaDestino)) {
        $rutaBase = "imagen/perfiles/" . basename($imagenNombre);
        $sql = "UPDATE empleado SET `Nombre completo`='$nombre', Email='$email', Ubicacion='$ubicacion', Imagen='$rutaBase' WHERE idEmpleado=$id";
        $_SESSION['Perfil'] = $rutaBase;
    } else {
        echo "Error al mover la imagen.";
        exit;
    }
} else {
    $sql = "UPDATE empleado SET `Nombre completo`='$nombre', Email='$email', Ubicacion='$ubicacion' WHERE idEmpleado=$id";
}

if ($conexion->query($sql)) {
    header("Location: ../perfil.php");
} else {
    echo "Error: " . $conexion->error;
}
