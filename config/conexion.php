<?php
$conexion = new mysqli("localhost", "root", "12345", "deintec_2");
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}