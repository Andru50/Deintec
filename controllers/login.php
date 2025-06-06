<?php
require '../conexion.php'; // Asegúrate que la ruta es correcta

$pass = $_POST['password'];
$email = $_POST['email'];

// Sentencia preparada para evitar Inyección SQL
$sql = "SELECT * FROM Empleado WHERE email = ? AND password = ?";
$stmt = $conexion->prepare($sql);

if ($stmt) {
    // "ss" significa que estás enviando dos strings (email y password)
    $stmt->bind_param("ss", $email, $pass);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        session_start();
        $_SESSION['id'] = $row['idEmpleado'];
        $_SESSION['nombre'] = $row['Nombre completo'];
        $_SESSION['email'] = $row['Email'];
        $_SESSION['ubicacion'] = $row['Ubicacion'];
        $_SESSION['imagen'] = $row['Imagen']; // El nombre de la columna es 'Imagen', no 'Perfil'
        
        // Tu código de redirección
        header("Location: ../perfil.php");
        exit();
    } else {
        echo "error";
    }
} else {
    echo "error en la preparación de la consulta";
}
?>