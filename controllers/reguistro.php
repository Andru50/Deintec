<?php
include("../conexion.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $cedula = $_POST['cedula'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $ubicacion = $_POST['ubicacion'];
    $telefono = $_POST['telefono'];
    $fecha_ingreso = date('Y-m-d H:i:s');

    // Procesar imagen (opcional)
    $imagen = null;
    if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
        $imgData = file_get_contents($_FILES['imagen']['tmp_name']);
        $imagen = base64_encode($imgData);
    }

    $sql = "INSERT INTO Empleado (Cedula, `Nombre completo`, Email, password, Ubicacion, telefono, Fecha_de_ingreso, Imagen) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssss", $cedula, $nombre, $email, $password, $ubicacion, $telefono, $fecha_ingreso, $imagen);

    if ($stmt->execute()) {
        echo "Registro exitoso. <a href='../ingresar.html'>Iniciar sesión</a>";
    } else {
        echo "Error al registrar: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
