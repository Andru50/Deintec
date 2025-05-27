<?php
$servidor = "localhost";   // O la IP de tu servidor de BD
$usuario_db = "root";      // Tu usuario de la BD
$password_db = "12345";    // Tu contraseña de la BD
$nombre_db = "deintec";    // El nombre base de datos

// Crear la conexión
//                           servidor, usuario, contraseña, base de datos
$conexion = mysqli_connect("localhost", "root",    "12345",      "deentec");

// Verificar la conexión
if (!$conn) {
  die("La conexión falló: " . mysqli_connect_error());
}
?>
