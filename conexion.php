<?php
$conn = new mysqli("localhost", "root", "12345", "deintec_2");

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>
