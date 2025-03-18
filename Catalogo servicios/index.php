<?php
require_once 'conexion.php';
$conexion = new mysqli($servidor, $usuario, $password, $baseDatos);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Bienvenido a deintec</h1>
        <?php echo "Bienvenido a deintec"; ?>
        <form action="controller.php" method="POST" class="mt-4">
            <div class="form-group">
                <label for="categoria">Nueva Categoría</label>
                <input type="text" class="form-control" id="categoria" name="categoria" required>
            </div>
            <button type="submit" class="btn btn-primary">Crear Categoría</button>
        </form>
<?php
        if (isset($_GET['message'])) {
            echo '<div class="alert alert-info mt-4">' . htmlspecialchars($_GET['message']) . '</div>';
        }
        ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>