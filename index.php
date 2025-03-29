<?php
require_once 'controllers\ClienteController.php';

$action = $_GET['action'] ?? 'index';
$id = $_GET['id'] ?? null;

$controller = new ClienteController();

if ($action === 'create') {
    $controller->create();
} elseif ($action === 'edit' && $id) {
    $controller->edit($id);
} elseif ($action === 'delete' && $id) {
    $controller->delete($id);
} else {
    $controller->index();
}
?>
