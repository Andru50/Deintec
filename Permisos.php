<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Permisos y Asignación de Cargos</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #131212;
            background-image: url("imagen/fondo.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }

        header,
        nav {
            text-align: center;
            margin-bottom: 20px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            background-color: #d20505;
            margin: 0;
            display: inline-block;
        }

        nav ul li {
            display: inline-block;
        }

        nav ul li a {
            display: block;
            color: white;
            padding: 15px 20px;
            text-decoration: none;
        }

        nav ul li a:hover {
            background-color: #0056b3;
        }

        .container h2 {
            color: white;
        }
    </style>
</head>

<body>

    <header>
        <img src="imagen/deintec-imagen.png" alt="Logotipo" width="350" height="110">
    </header>

    <nav>
        <ul>
            <li><a href="index.html">Inicio</a></li>
<<<<<<< HEAD
            <li><a href="perfil.php">perfil</a></li>
=======
>>>>>>> 93914b21691167136aa00177671941cf945dc29b
            <li><a href="Permisos.php">Permisos</a></li>
        </ul>
    </nav>

    <div class="container mt-5">
        <h2>Asignación de Cargos</h2>
        <table class="table table-bordered table-striped table-dark">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Cargo Actual</th>
                    <th>Asignar Nuevo Cargo</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Conexión a la base de datos
                $servidor = "127.0.0.1";
                $usuario_db = "deintec";
                $password_db = "12345";
                $nombre_db = "deintec";

                $conexion = new mysqli($servidor, $usuario_db, $password_db, $nombre_db);

                if ($conexion->connect_error) {
                    die("<tr><td colspan='5' class='text-center'>Error de conexión: " . $conexion->connect_error . "</td></tr>");
                }

                // IMPORTANTE: Cambia 'nombre' y 'email' si en tu tabla se llaman diferente
                $sql = "SELECT id_usuario, `Nombre completo`, Email FROM usuarios";
                $resultado = $conexion->query($sql);

                if ($resultado->num_rows > 0) {
                    while ($fila = $resultado->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $fila["id_usuario"] . "</td>";
                        echo "<td>" . htmlspecialchars($fila["Nombre completo"]) . "</td>";
                        echo "<td>" . htmlspecialchars($fila["Email"]) . "</td>";
                        echo "<td>Usuario</td>"; // Cargo actual por ahora es fijo
                        echo "<td>";
                        echo "<select class='form-control' onchange='asignarCargo(this, " . $fila["id_usuario"] . ")'>";
                        echo "<option value=''>Seleccionar</option>";
                        echo "<option value='Usuario'>Usuario</option>";
                        echo "<option value='Administrador'>Administrador</option>";
                        echo "<option value='Supervisor'>Supervisor</option>";
                        echo "</select>";
                        echo "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5' class='text-center'>No se encontraron usuarios.</td></tr>";
                }

                $conexion->close();
                ?>
            </tbody>
        </table>
    </div>

    <script>
        function asignarCargo(selectElement, usuarioId) {
            const nuevoCargo = selectElement.value;
            if (nuevoCargo) {
                alert('Asignar cargo "' + nuevoCargo + '" al usuario con ID ' + usuarioId + ' (simulado).');
                // Aquí podrías enviar una solicitud AJAX para actualizar el cargo en la base de datos.
            }
        }
    </script>

</body>

</html>