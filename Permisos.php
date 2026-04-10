<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Permisos - DEINTEC</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Configuración General */
        body {
            font-family: Arial, sans-serif;
            background-color: #000000;
            background-image: url("app/imagenes/fondo.gif");
            background-size: cover;
            background-attachment: fixed; /* Mantiene el fondo fijo al hacer scroll */
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            color: white;
        }

        /* Header y Navegación */
        header {
    display: block;
    margin: 0 auto;
    text-align: center;
    background: transparent; /* Asegura que el fondo sea transparente */
    padding-top: 20px;
    }

    header img {
    max-width: 300px;
    /* Si el logo tiene fondo negro/blanco y quieres que sea transparente, 
       asegúrate de que la imagen original sea un .png transparente */
    }

    /* Navegación Estilo DEINTEC */
    nav {
    /* Eliminamos el color rojo sólido y lo dejamos transparente o con un rojo muy sutil */
    background-color: red(255, 0, 0, 0.4); /* Rojo traslúcido para que se vea el fondo */
    padding: 05px 0;
    text-align: center;
    border-bottom: 2px solid #b30000;
    margin-top: 10px;
    }

        nav a {
            color: black;
            text-decoration: none;
            font-weight: bold;
            font-size: 0.9em;
            transition: 0.1s;
        }

        nav a:hover {
            color: #ff3333;
            text-decoration: none;
        }

        /* Contenedor Principal Traslúcido */
        .container-permisos {
            max-width: 1100px;
            margin: 40px auto;
            padding: 40px;
            background-color: rgba(20, 20, 20, 0.9);
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.8);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        h2 {
            text-align: center;
            color: #fff;
            font-size: 2.2em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Personalización de la Tabla */
        .table-dark {
            background-color: rgba(30, 30, 30, 0.5) !important;
            border: none;
        }

        .table-dark th {
            background-color: #b30000 !important; /* Rojo DEINTEC */
            border: none;
            text-transform: uppercase;
            font-size: 0.85em;
        }

        .table-dark td {
            vertical-align: middle;
            border-color: #333;
        }

        /* Estilo de los Selects */
        .form-control-custom {
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid #444;
            color: white;
            transition: 0.3s;
        }

        .form-control-custom:focus {
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            border-color: #ff3333;
            box-shadow: 0 0 5px rgba(255, 51, 51, 0.5);
        }

        option {
            background-color: #1a1a1a;
            color: white;
        }

        /* Badge para cargos */
        .badge-cargo {
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 0.8em;
            background-color: #444;
        }
    </style>
</head>

<body>

    <header>
        <img src="imagen/deintec-imagen.png" alt="Logotipo DEINTEC" width="350">
    </header>

    <nav>
        <ul>
            <li><a href="index.html">Inicio</a></li>
            <li><a href="Permisos.php">Permisos</a></li>
            <li><a href="solicitudes.php">Solicitudes</a></li>
        </ul>
    </nav>

    <div class="container container-permisos">
        <h2>Asignación de Cargos</h2>
        
        <div class="table-responsive">
            <table class="table table-dark table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre del Colaborador</th>
                        <th>Correo Electrónico</th>
                        <th>Cargo Actual</th>
                        <th style="width: 250px;">Asignar Nuevo Cargo</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $servidor = "127.0.0.1";
                    $usuario_db = "deintec";
                    $password_db = "12345";
                    $nombre_db = "deintec";

                    $conexion = new mysqli($servidor, $usuario_db, $password_db, $nombre_db);

                    if ($conexion->connect_error) {
                        die("<tr><td colspan='5' class='text-center text-danger'>Error de conexión</td></tr>");
                    }

                    $sql = "SELECT id_usuario, `Nombre completo`, Email FROM usuarios";
                    $resultado = $conexion->query($sql);

                    if ($resultado->num_rows > 0) {
                        while ($fila = $resultado->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td><span class='text-muted'>#" . $fila["id_usuario"] . "</span></td>";
                            echo "<td><strong>" . htmlspecialchars($fila["Nombre completo"]) . "</strong></td>";
                            echo "<td>" . htmlspecialchars($fila["Email"]) . "</td>";
                            echo "<td><span class='badge-cargo'>Usuario</span></td>"; 
                            echo "<td>";
                            echo "<select class='form-control form-control-custom' onchange='asignarCargo(this, " . $fila["id_usuario"] . ")'>";
                            echo "<option value=''>Cambiar rol...</option>";
                            echo "<option value='Usuario'>Usuario</option>";
                            echo "<option value='Administrador'>Administrador</option>";
                            echo "<option value='Supervisor'>Supervisor</option>";
                            echo "</select>";
                            echo "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='5' class='text-center'>No hay usuarios registrados.</td></tr>";
                    }
                    $conexion->close();
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        function asignarCargo(selectElement, usuarioId) {
            const nuevoCargo = selectElement.value;
            if (nuevoCargo) {
                // Estilo de alerta más acorde
                console.log('ID:', usuarioId, 'Nuevo Cargo:', nuevoCargo);
                alert('Confirmación: El usuario #' + usuarioId + ' ahora será ' + nuevoCargo);
                // Aquí podrías añadir tu fetch() o AJAX para guardar en BD
            }
        }
    </script>

</body>
</html>