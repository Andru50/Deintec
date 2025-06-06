<?php
require "../conexion.php";
$imagen = $_POST['Imagen'];
$pass = $_POST['password'];
$email = $_POST['email'];
$ubicacion = $_POST['Ubicacion'];

$sql = "SELECT * FROM empleado WHERE email = '$email' AND password = '$pass'";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    session_start();
    $_SESSION['id'] = $row['idEmpleado'];
    $_SESSION['nombre'] = $row['Nombre completo'];
    $_SESSION['email'] = $row['Email'];
    $_SESSION['ubicacion'] = $row['Ubicacion'];
    $_SESSION['imagen'] = $row['Imagen'];
    header("Location: ../perfil.php");

} else {
    echo "error";
}