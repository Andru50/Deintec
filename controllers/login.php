<?php
require ="../conexion.php";
$pass = $_POST['password'];
$email = $_POST['email'];

$sql = "SELECT * FROM empleado WHERE email = '$email' AND password = '$pass'";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    session_start();
    $_SESSION['id'] = $row['idEmpleado'];
    $_SESSION['nombre'] = $row['Nombre completo'];
    $_SESSION['email'] = $row['Email'];
    header("Location: ../perfil.php");
} else {
    header("Location: ../login.php?error=Usuario o contraseña incorrectos");
}