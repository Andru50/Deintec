<?php
require_once __DIR__ . '/../config/conexion.php'; // si estás dentro de /models o /controllers

class Cliente {

    private $conexion;

    public function __construct($conexion) {
        $this->conexion = $conexion;
    }

    public function obtenerTodos() {
        $resultado = $this->conexion->query("SELECT * FROM clientes");
        if (!$resultado) {
            throw new Exception("Error en la consulta: " . $this->conexion->error);
        }
        return $resultado->fetch_all(MYSQLI_ASSOC);
    }

    public static function crear($nombre, $direccion) {
      
        $stmt = $this->$conexion->prepare("INSERT INTO clientes (nombre_cliente, direccion) VALUES (?, ?)");
        $stmt->bind_param("ss", $nombre, $direccion);
        return $stmt->execute();
    }

    public static function obtenerPorId($id) {
       
        $stmt = $this->$conexion->prepare("SELECT * FROM clientes WHERE id_cliente = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public static function actualizar($id, $nombre, $direccion) {
      
        $stmt = $this->$conexion->prepare("UPDATE clientes SET nombre_cliente = ?, direccion = ? WHERE id_cliente = ?");
        $stmt->bind_param("ssi", $nombre, $direccion, $id);
        return $stmt->execute();
    }

    public static function eliminar($id) {
      
        $stmt = $this->$conexion->prepare("DELETE FROM clientes WHERE id_cliente = ?");
        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }
}
?>
