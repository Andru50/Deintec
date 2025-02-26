<?php

function updateRecord($id, $newData) {
    // Database connection
    $conn = new mysqli("localhost", "username", "password", "database");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // SQL to update a record
    $sql = "UPDATE table_name SET column_name = ? WHERE id = ?";

    // Prepare and bind
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("si", $newData, $id);

    // Execute the statement
    if ($stmt->execute() === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }

    // Close connections
    $stmt->close();
    $conn->close();
}

?>
