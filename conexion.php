<?php
$servidor = "localhost";
$usuario = "hector";
$password = "admin";
$baseDatos = "deintec";

$conexion = new mysqli("localhost", "root", "", "nombre_base_datos");
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}


if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

function obtenerPerfil($idUsuario) {
    global $conexion;
    $stmt = $conexion->prepare("SELECT nombre_completo, correo, foto_perfil FROM usuarios WHERE id_usuario = ?");
    $stmt->bind_param("i", $idUsuario);
    $stmt->execute();
    return $stmt->get_result()->fetch_assoc();
}
?>
