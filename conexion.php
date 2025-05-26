<?php
$servidor = "localhost";   // O la IP de tu servidor de BD
$usuario_db = "root";      // Tu usuario de la BD
$password_db = "";         // ¡Déjala vacía! Esta es la corrección.
$nombre_db = "deintec";    // El nombre de tu base de datos

// Crear la conexión
$conn = mysqli_connect($servidor, $usuario_db, $password_db, $nombre_db);

// Verificar la conexión
if (!$conn) {
  die("La conexión falló: " . mysqli_connect_error());
}
?>
