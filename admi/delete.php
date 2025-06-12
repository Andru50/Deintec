<?php
$id=$_GET['id'];
// ...existing code...
require_once 'conexion.php';
// ...existing code...
$conexion = new mysqli($servidor, $usuario, $password, $baseDatos);
$sql = "DELETE FROM servicios WHERE id = $id";
$conexion->query($sql);
function deleteRecord($id) {
    // Database connection
    $conn = new mysqli("localhost", "username", "password", "database");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // SQL to delete a record
    $sql = "DELETE FROM table_name WHERE id = ?";

    // Prepare and bind
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    // Execute the statement
    if ($stmt->execute() === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // Close connections
    $stmt->close();
    $conn->close();
}

?>
