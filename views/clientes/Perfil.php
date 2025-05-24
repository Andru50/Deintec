<?php
// Inicia la sesión para acceder a los datos guardados
session_start();

// Si el usuario no ha iniciado sesión, no puede estar aquí. ¡Fuera!
if (!isset($_SESSION['user_id'])) {
    header("Location: reguistro.html"); // Lo mandamos al registro
    exit();
}

// Incluimos la conexión para futuras consultas
include 'conexion.php';

// Recuperamos el ID y nombre del usuario de la sesión
$user_id = $_SESSION['user_id'];
$user_nombre = $_SESSION['user_nombre'];

// En un futuro, aquí puedes hacer una consulta SELECT para obtener
// y mostrar el teléfono y dirección si ya existen en la BD.
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi Perfil - Actualizar Datos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <header style="text-align: center;">
        <img src="imagen/deintec-imagen.png" alt="DEINTEC" width="350">
    </header>

    <div class="registro-form" style="text-align:center; margin-top: 20px;">
        <h2>¡Bienvenido, <?php echo htmlspecialchars($user_nombre); ?>!</h2>
        <p>Por favor, completa tu perfil para continuar.</p>

        <form action="actualizar_datos.php" method="POST">
            
            <input type="hidden" name="id" value="<?php echo $user_id; ?>">

            <input type="text" name="telefono" placeholder="Número de Teléfono" required>
            <input type="text" name="direccion" placeholder="Dirección Completa" required>

            <button type="submit">Guardar y Actualizar Datos</button>
        </form>
    </div>

</body>
</html>
