<?php
require_once 'conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $categoria = $_POST['categoria'];

    if (!empty($categoria)) {
        $stmt = $conexion->prepare("INSERT INTO categorias (nombre) VALUES (?)");
        $stmt->bind_param("s", $categoria);

        if ($stmt->execute()) {
            header("Location: index.php?message=Categoría creada exitosamente.");
        } else {
            header("Location: index.php?message=Error al crear la categoría.");
        }

        $stmt->close();
    } else {
        header("Location: index.php?message=El nombre de la categoría no puede estar vacío.");
    }
}

$conexion->close();
?>
