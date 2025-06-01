<?php
require_once __DIR__ . '/../models/Cliente.php';
class ClienteController {

      public function index() {
        global $conexion;
        $clienteModel = new Cliente($conexion);
        $clientes = $clienteModel->obtenerTodos();
        require __DIR__ . '/../views/clientes/index.php';
    }


    public function delete($id) {
        Cliente::eliminar($id);
        header("Location: index.php");
    }
}
?>
