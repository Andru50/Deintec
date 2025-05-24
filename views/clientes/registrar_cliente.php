<?php
// 1. Datos de conexión a la base de datos
$servername = "localhost"; // Generalmente es "localhost"
$username = "tu_usuario_db";   // Tu nombre de usuario de MySQL
$password = "tu_contraseña_db"; // Tu contraseña de MySQL
$dbname = "tu_nombre_db";     // El nombre de tu base de datos

// 2. Crear la conexión con la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar si la conexión falló
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// 3. Obtener los datos del formulario (usando el método POST)
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$password_ingresada = $_POST['password'];

// 4. Medida de seguridad: Hashear la contraseña
// NUNCA guardes contraseñas en texto plano.
$password_hash = password_hash($password_ingresada, PASSWORD_DEFAULT);

// 5. Preparar la consulta SQL para insertar los datos
// Usar sentencias preparadas previene la inyección SQL.
$stmt = $conn->prepare("INSERT INTO cliente (nombre, email, password) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $nombre, $email, $password_hash);

// 6. Ejecutar la consulta y verificar el resultado
if ($stmt->execute()) {
    echo "¡Registro exitoso! Ahora puedes iniciar sesión.";
    // Opcional: Redirigir al usuario a una página de inicio de sesión o de bienvenida
    // header("Location: login.html");
} else {
    echo "Error al registrar: " . $stmt->error;
}

// 7. Cerrar la conexión
$stmt->close();
$conn->close();
?>