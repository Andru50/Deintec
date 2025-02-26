<?php
function crearArchivo($nombreArchivo, $contenido) {
    // Verifica si el archivo ya existe
    if (file_exists($nombreArchivo)) {
        return "El archivo '$nombreArchivo' ya existe.";
    }

    // Intenta crear el archivo y escribir contenido
    if (file_put_contents($nombreArchivo, $contenido) !== false) {
        return "Archivo '$nombreArchivo' creado exitosamente.";
    } else {
        return "Error al crear el archivo '$nombreArchivo'.";
    }
}

// Ejemplo de uso
$nombre = "archivo_nuevo.txt";
$contenido = "Este es un archivo creado desde PHP.";
echo crearArchivo($nombre, $contenido);
?>