<?php
// Simulación de una sesión de usuario (en un caso real, usarías $_SESSION)
$usuario_id = 1; // ID del usuario que está actualizando su perfil

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['imagenPerfil'])) {
    $target_dir = "uploads/"; // Directorio donde se guardarán las imágenes
    if (!file_exists($target_dir)) {
        mkdir($target_dir, 0777, true);
    }

    $file_extension = pathinfo($_FILES["imagenPerfil"]["name"], PATHINFO_EXTENSION);
    // Crea un nombre de archivo único para evitar sobreescribir imágenes
    $target_file = $target_dir . 'perfil_' . $usuario_id . '.' . $file_extension;
    
    $uploadOk = 1;
    $imageFileType = strtolower($file_extension);

    // --- Validaciones ---
    // Verificar si es una imagen real
    $check = getimagesize($_FILES["imagenPerfil"]["tmp_name"]);
    if($check === false) {
        echo json_encode(["status" => "error", "message" => "El archivo no es una imagen."]);
        $uploadOk = 0;
    }

    // Permitir ciertos formatos de archivo
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        echo json_encode(["status" => "error", "message" => "Solo se permiten archivos JPG, JPEG, PNG y GIF."]);
        $uploadOk = 0;
    }

    // --- Procesar la subida ---
    if ($uploadOk == 1) {
        if (move_uploaded_file($_FILES["imagenPerfil"]["tmp_name"], $target_file)) {
            // Aquí deberías actualizar la ruta de la imagen en tu base de datos
            // Ejemplo:
            // $sql = "UPDATE usuarios SET ruta_imagen_perfil = '$target_file' WHERE id = $usuario_id";
            // mysqli_query($conn, $sql);

            echo json_encode([
                "status" => "success", 
                "message" => "La foto de perfil se ha actualizado.",
                "newImageUrl" => $target_file // Se envía la nueva URL a JS
            ]);
        } else {
            echo json_encode(["status" => "error", "message" => "Hubo un error al subir tu archivo."]);
        }
    }
} else {
    echo json_encode(["status" => "error", "message" => "Solicitud no válida."]);
}
?>