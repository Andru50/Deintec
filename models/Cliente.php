<?php
require_once 'd:\proyecto\Deintec\conexion.php';

class Cliente {
    public static function obtenerTodos() {
        global $conexion;
        $resultado = $conexion->query("SELECT * FROM clientes");
        return $resultado->fetch_all(MYSQLI_ASSOC);
    }

    public static function crear($nombre, $direccion) {
        global $conexion;
        $stmt = $conexion->prepare("INSERT INTO clientes (nombre_cliente, direccion) VALUES (?, ?)");
        $stmt->bind_param("ss", $nombre, $direccion);
        return $stmt->execute();
    }

    public static function obtenerPorId($id) {
        global $conexion;
        $stmt = $conexion->prepare("SELECT * FROM clientes WHERE id_cliente = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public static function actualizar($id, $nombre, $direccion) {
        global $conexion;
        $stmt = $conexion->prepare("UPDATE clientes SET nombre_cliente = ?, direccion = ? WHERE id_cliente = ?");
        $stmt->bind_param("ssi", $nombre, $direccion, $id);
        return $stmt->execute();
    }

    public static function eliminar($id) {
        global $conexion;
        $stmt = $conexion->prepare("DELETE FROM clientes WHERE id_cliente = ?");
        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }
}
?>
