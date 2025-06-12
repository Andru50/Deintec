<?php
include("../conexion.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // 3. Recibir los datos del formulario
    $nombre = $_POST['nombre'];
    $cedula = $_POST['cedula'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $ubicacion = $_POST['ubicacion'];
    $telefono = $_POST['telefono'];

    // 4. Hashear la contraseña por seguridad
    $password_hashed = password_hash($password, PASSWORD_DEFAULT);

    // 5. Preparar la fecha de ingreso
    $fecha_ingreso = date('Y-m-d H:i:s');

    // 6. Procesar la imagen (Método recomendado)
    $ruta_para_db = null; // Valor por defecto si no se sube imagen
    if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] == UPLOAD_ERR_OK) {

        // Define el directorio donde se guardarán las imágenes
        $directorio_subidas = '../../uploads/';

        // Crea un nombre de archivo único para evitar que las imágenes se reemplacen
        $nombre_archivo_unico = uniqid('user_') . '-' . basename($_FILES['imagen']['name']);

        // Ruta completa del archivo en el servidor
        $ruta_completa_servidor = $directorio_subidas . $nombre_archivo_unico;

        // Mueve el archivo desde la ubicación temporal a tu carpeta 'uploads'
        if (move_uploaded_file($_FILES['imagen']['tmp_name'], $ruta_completa_servidor)) {
            // Si se mueve con éxito, guarda la ruta relativa para la DB
            $ruta_para_db = 'uploads/' . $nombre_archivo_unico;
        }
    }

    // 7. Preparar la consulta SQL para la tabla 'usuarios'
    $sql = "INSERT INTO usuarios (`Cedula`, `Nombre completo`, `Email`, `password`, `Ubicacion`, `Telefono`, `Fecha de ingreso`, `Imagen`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conexion->prepare($sql);

    if ($stmt) {
        // 8. Vincular los 8 parámetros
        $stmt->bind_param("ssssssss", $cedula, $nombre, $email, $password_hashed, $ubicacion, $telefono, $fecha_ingreso, $ruta_para_db);

        // 9. Ejecutar la consulta
        if ($stmt->execute()) {
            echo "¡Registro exitoso! Ya puedes iniciar sesión.";
        } else {
            echo "Error al registrar el usuario: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Error al preparar la consulta: " . $conexion->error;
    }

    $conexion->close(); 
}
?>