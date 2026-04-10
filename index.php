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
<?php if (!empty($clientes)): ?>
    <?php foreach ($clientes as $cliente): ?>
        <tr>
            <td><?= htmlspecialchars($cliente['id_cliente'], ENT_QUOTES, 'UTF-8') ?></td>
            <td><?= htmlspecialchars($cliente['nombre_cliente'], ENT_QUOTES, 'UTF-8') ?></td>
            <td><?= htmlspecialchars($cliente['direccion'], ENT_QUOTES, 'UTF-8') ?></td>
            <td>
                <a href="index.php?action=edit&id=<?= urlencode($cliente['id_cliente']) ?>" 
                   class="btn btn-warning btn-sm">
                    Editar
                </a>

                <form action="index.php?action=delete" method="POST" style="display:inline;">
                    <input type="hidden" name="id" value="<?= htmlspecialchars($cliente['id_cliente']) ?>">
                    <button type="submit" 
                            class="btn btn-danger btn-sm"
                            onclick="return confirm('¿Seguro que deseas eliminar este cliente?');">
                        Eliminar
                    </button>
                </form>
            </td>
        </tr>
    <?php endforeach; ?>
<?php else: ?>
    <tr>
        <td colspan="4" class="text-center">No hay clientes registrados</td>
    </tr>
<?php endif; ?>
</tbody>

        </table>
    </div>
