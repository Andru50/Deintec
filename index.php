<div class="container mt-5">
        <h1>Lista de Clientes</h1>
        <a href="index.php?action=create" class="btn btn-primary mb-3">Agregar Cliente</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Dirección</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($clientes as $cliente): ?>
                <tr>
                    <td><?= htmlspecialchars($cliente['id_cliente']) ?></td>
                    <td><?=htmlspecialchars($cliente['nombre_cliente']) ?></td>
                    <td><?=htmlspecialchars($cliente['direccion']) ?></td>
                    <td>
                        <a href="index.php?action=edit&id=<?= $cliente['id_cliente'] ?>" class="btn btn-warning btn-sm">Editar</a>
                        <a href="index.php?action=delete&id=<?= $cliente['id_cliente'] ?>" class="btn btn-danger btn-sm">Eliminar</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
