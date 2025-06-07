<?php
include 'conexion.php';

// Iniciar sesión para poder manejar mensajes de feedback al usuario
session_start();

// Verificar que la solicitud sea por método POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // 1. Recoger los datos del formulario
    $segundo_apellido = $_POST['segundo_apellido'];
    $telefono = $_POST['telefono'];
    $mascota = $_POST['mascota'];
    $persona_favorita = $_POST['persona_favorita'];
    $nueva_contrasena = $_POST['nueva_contrasena'];
    $confirmar_contrasena = $_POST['confirmar_contrasena'];

    // 2. Validar que las contraseñas coincidan
    if ($nueva_contrasena !== $confirmar_contrasena) {
        $_SESSION['error'] = "Las contraseñas no coinciden.";
        header("Location: olvido_contrasena.html"); // Redirigir de vuelta al formulario
        exit();
    }

    // 3. Verificar al usuario con las preguntas de seguridad
    try {
        // Preparar la consulta para buscar al usuario
        // ATENCIÓN: Ajusta 'usuarios' y los nombres de las columnas a los de tu tabla
        $sql = "SELECT id FROM usuarios WHERE 
                segundo_apellido = :segundo_apellido AND 
                SUBSTRING(telefono, -4) = :telefono AND 
                mascota = :mascota AND 
                persona_favorita = :persona_favorita";

        $stmt = $pdo->prepare($sql); // $pdo debe ser tu objeto de conexión de 'conexion.php'

        // Vincular los parámetros
        $stmt->bindParam(':segundo_apellido', $segundo_apellido);
        $stmt->bindParam(':telefono', $telefono);
        $stmt->bindParam(':mascota', $mascota);
        $stmt->bindParam(':persona_favorita', $persona_favorita);

        $stmt->execute();

        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            // 4. Si el usuario existe, actualizar la contraseña
            
            // Hashear la nueva contraseña por seguridad
            $hashed_password = password_hash($nueva_contrasena, PASSWORD_DEFAULT);

            // Preparar la consulta de actualización
            // ATENCIÓN: Ajusta 'usuarios' y el nombre de la columna 'contrasena'
            $update_sql = "UPDATE usuarios SET contrasena = :contrasena WHERE id = :id";
            $update_stmt = $pdo->prepare($update_sql);

            // Vincular parámetros
            $update_stmt->bindParam(':contrasena', $hashed_password);
            $update_stmt->bindParam(':id', $usuario['id']);

            if ($update_stmt->execute()) {
                // 5. Redirigir con mensaje de éxito
                $_SESSION['success'] = "¡Contraseña actualizada con éxito!";
                header("Location: ingresar.html"); // Redirigir a la página de login
                exit();
            } else {
                $_SESSION['error'] = "Error al actualizar la contraseña.";
                header("Location: olvido_contrasena.php");
                exit();
            }

        } else {
            // Si no se encontró al usuario con esos datos
            $_SESSION['error'] = "Los datos de recuperación no son correctos. Por favor, inténtalo de nuevo.";
            header("Location: olvido_contrasena.php");
            exit();
        }

    } catch (PDOException $e) {
        // Manejo de errores de la base de datos
        $_SESSION['error'] = "Error en la base de datos: " . $e->getMessage();
        header("Location: olvido_contrasena.php");
        exit();
    }
} else {
    // Si alguien intenta acceder al script directamente
    header("Location: olvido_contrasena.php");
    exit();
}
?>