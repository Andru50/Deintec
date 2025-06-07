<?php
// 1. Iniciar la sesión para acceder a los datos del usuario
session_start();
include '../config/conexion.php'; // Asegúrate que la ruta a tu archivo de conexión sea correcta

// 2. Verificar que el usuario esté logueado y que se haya enviado un archivo
if (!isset($_SESSION['id']) || !isset($_FILES['nueva_imagen'])) {
    // Redirigir si no hay sesión o no se envió archivo
    header("Location: ../perfil.php?status=error");
    exit();
}

// 3. Procesar la imagen subida
if ($_FILES['nueva_imagen']['error'] == UPLOAD_ERR_OK) {

    // Directorio donde se guardarán las imágenes
    // Asegúrate de que esta carpeta exista y tenga permisos de escritura.
    $target_dir = "../imagen/Perfil/";

    // Crear un nombre de archivo único para evitar sobreescribir imágenes
    $file_extension = pathinfo($_FILES['nueva_imagen']['name'], PATHINFO_EXTENSION);
    $new_filename = "perfil_" . $_SESSION['id'] . "_" . time() . "." . $file_extension;
    $target_file = $target_dir . $new_filename;

    // 4. Mover el archivo subido al directorio de destino
    if (move_uploaded_file($_FILES['nueva_imagen']['tmp_name'], $target_file)) {

        // 5. Actualizar la base de datos con la nueva ruta de la imagen
        $id_usuario = $_SESSION['id'];
        $ruta_db = "imagen/Perfil/" . $new_filename; // Ruta que se guardará en la BD

        $sql = "UPDATE Empleado SET Imagen = ? WHERE idEmpleado = ?";

        // Preparamos la consulta
        $stmt = $conexion->prepare($sql);

        // Verificamos que la preparación de la consulta fue exitosa
        if ($stmt) {
            // Enlazamos las variables a la consulta. "si" significa String, Integer.
            // Usamos las variables $ruta_db y $id_usuario que definiste antes.
            $stmt->bind_param("si", $ruta_db, $id_usuario);

            // Ejecutamos la consulta y verificamos si fue exitosa
            if ($stmt->execute()) {
                // 6. Actualizar la variable de sesión para que el cambio se vea inmediatamente
                $_SESSION['imagen'] = $ruta_db;

                // Redirigir al perfil con mensaje de éxito
                header("Location: ../perfil.php?status=success");
                exit();
            }
        }

        // Si algo falla en la preparación o ejecución, llegamos aquí
// y redirigimos con un mensaje de error.
        header("Location: ../perfil.php?status=error_db");
        exit();
    }
}

// Si algo falla, redirigir con un mensaje de error
header("Location: ../perfil.php?status=error");
exit();

?>