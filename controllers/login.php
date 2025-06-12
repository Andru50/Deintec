<?php
require '../conexion.php'; // Asegúrate que la ruta es correcta

$pass = $_POST['password'];
$email = $_POST['email'];

// Sentencia preparada para evitar Inyección SQL
$sql = "SELECT * FROM Empleado WHERE Email = ? AND Password = ?";
$stmt = $conexion->prepare($sql);

if ($stmt) {
    $stmt->bind_param("ss", $email, $pass);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        session_start();
        $_SESSION['id'] = $row['idEmpleado'];
        $_SESSION['nombre'] = $row['Nombre completo'];
        $_SESSION['email'] = $row['Email'];
        $_SESSION['ubicacion'] = $row['Ubicacion'];
        $_SESSION['imagen'] = $row['Imagen'];

        header("Location: ../perfil.php");
        exit();
    } else {
        echo "Usuario o contraseña incorrectos.";
    }
} else {
    echo "Error en la preparación de la consulta: " . $conexion->error;
}
?>