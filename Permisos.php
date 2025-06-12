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
            /* Cambiado para mejor contraste */
            padding: 15px 20px;
            text-decoration: none;
        }

        nav ul li a:hover {
            background-color: #0056b3;
        }

        .container h2 {
            color: white;
            /* Para que el título sea visible */
        }
    </style>
</head>

<body>

    <header>
        <img src="imagen/deintec-imagen.png" alt="Logo" width="350" height="110">
    </header>

    <nav class="nav-menu">
        <ul>
            <li><a href="DEINTEC WEB.html">Home</a></li>
            <li><a href="permisos.php">Permisos</a></li>
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
                // --- 🔌 INICIO DEL CÓDIGO PHP PARA CARGAR USUARIOS ---
                
                // 1. Configuración de la conexión a la base de datos
                $servidor = "localhost"; // Generalmente es 'localhost'
                $usuario_db = "root"; // Tu usuario de MySQL (ej. 'root')
                $password_db = ""; // Tu contraseña de MySQL
                $nombre_db = "deintec_2"; // El nombre de tu base de datos
                
                // 2. Crear la conexión
                $conn = new mysqli($servidor, $usuario_db, $password_db, $nombre_db);

                // 3. Verificar la conexión
                if ($conn->connect_error) {
                    die("<tr><td colspan='5' class='text-center'>Error de conexión: " . $conn->connect_error . "</td></tr>");
                }

                // 4. Preparar y ejecutar la consulta SQL
                $sql = "SELECT id_usuario, Nombre_completo, Email FROM usuarios"; // Asumo que tienes una columna 'id_usuario'
                $resultado = $conn->query($sql);

                // 5. Generar las filas de la tabla dinámicamente
                if ($resultado->num_rows > 0) {
                    // Recorrer cada fila de resultados
                    while ($fila = $resultado->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $fila["id_usuario"] . "</td>";
                        echo "<td>" . htmlspecialchars($fila["Nombre_completo"]) . "</td>";
                        echo "<td>" . htmlspecialchars($fila["Email"]) . "</td>";
                        echo "<td>Usuario</td>"; // Puedes reemplazar esto con el cargo real si lo tienes en la BD
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

                // 6. Cerrar la conexión
                $conn->close();

                // --- FIN DEL CÓDIGO PHP ---
                ?>
            </tbody>
        </table>
    </div>

    <script>
        // Esta función ahora solo simula la acción. 
        // Para guardar el cambio necesitarías AJAX para llamar a otro script PHP.
        function asignarCargo(selectElement, usuarioId) {
            const nuevoCargo = selectElement.value;
            if (nuevoCargo) {
                alert('Asignar cargo "' + nuevoCargo + '" al usuario con ID ' + usuarioId + ' (simulado).');
                // Aquí iría la lógica para guardar el cambio en la base de datos usando AJAX (fetch).
            }
        }
    </script>
</body>

</html>