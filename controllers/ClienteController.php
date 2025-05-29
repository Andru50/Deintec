<?php
require_once __DIR__ . '/../models/Cliente.php';

class ClienteController {
    public function index() {
        $clientes = Cliente::obtenerTodos();
        require 'd:\proyecto\Deintec\views\clientes\index.php';
    }

    public function create() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $nombre = $_POST['nombre'];
            $direccion = $_POST['direccion'];
            Cliente::crear($nombre, $direccion);
            header("Location: index.php");
        } else {
            require 'd:\proyecto\Deintec\views\clientes\create.php';
        }
    }

    public function edit($id) {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $nombre = $_POST['nombre'];
            $direccion = $_POST['direccion'];
            Cliente::actualizar($id, $nombre, $direccion);
            header("Location: index.php");
        } else {
            $cliente = Cliente::obtenerPorId($id);
            require 'd:\proyecto\Deintec\views\clientes\edit.php';
        }
    }

    public function delete($id) {
        Cliente::eliminar($id);
        header("Location: index.php");
    }
}
?>
