<?php
$conexion = new mysqli("localhost", "deintec", "12345", "deintec");
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}