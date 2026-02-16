<?php
$host = "127.0.0.1";
$user = "deintec";
$pass = "12345";
$db   = "deintec";
$port = 3306;

$conexion = new mysqli($host, $user, $pass, $db, $port);

if ($conexion->connect_errno) {
    die("Error de conexión MySQL: " . $conexion->connect_error);
}

$conexion->set_charset("utf8mb4");
