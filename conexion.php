<?php
$servidor = "127.0.0.1:3306";   // O la IP de tu servidor de BD
$usuario_db = "root";      // Tu usuario de la BD
$password_db = "";    // Tu contraseña de la BD
$nombre_db = "Deintec";    // El nombre base de datos

// Crear la conexión
//                           servidor, usuario, contraseña, base de datos
$conexion = new mysqli("localhost", "root", "", "Deintec");

// Verificar la conexión
if (!$conn) {
  die("La conexión falló: " . mysqli_connect_error());
}
?>
