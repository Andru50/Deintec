<?php
$host = "localhost";
$usuario = "usuario_bd";
$contrasena = "tu_contrasena";
$base_datos = "nombre_bd";

// Crear conexión
$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conexión exitosa con MySQLi";
?>