<?php
$servidor = "localhost";
$usuario = "hector";
$password = "admin";
$baseDatos = "deintec";

$conexion = new mysqli($servidor, $usuario, $password, $baseDatos);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>
