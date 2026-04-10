<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil de Usuario - DEINTEC</title>
    <link rel="stylesheet" href="css/estilos.css" />
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
    padding: 10px 0;
    text-align: center;
    border-bottom: 2px solid #b30000;
    margin-top: 10px;
    }
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        nav a {
            color: black;
            text-decoration: none;
            font-weight: bold;
            font-size: 0.9em;
        }

        /* Contenedor Principal Traslúcido */
        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 40px;
            background-color: rgba(20, 20, 20, 0.9);
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.6);
            border: 1px solid rgb(255, 255, 255);
        }

        h1 {
            text-align: center;
            color: #fffcfc;
            font-size: 2.5em;
            margin-bottom: 5px;
        }

        .subtitulo {
            text-align: center;
            color: #ccc;
            margin-bottom: 40px;
            font-style: italic;
        }

        /* Grid de Perfil */
        .perfil-grid {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 30px;
        }

        .columna {
            flex: 1;
            min-width: 280px;
        }

        /* Estilo de la Foto */
        .foto-perfil {
            width: 250px;
            height: 250px;
            border-radius: 50%;
            border: 4px solid #b30000;
            object-fit: cover;
            display: block;
            margin: 0 auto 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.5);
        }

        /* Inputs y Detalles */
        .detalles strong {
            display: block;
            margin-top: 15px;
            color: #ff3333;
            font-size: 0.9em;
        }

        .detalles input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #444;
            background: rgba(255,255,255,0.1);
            color: white;
        }

        /* Botones */
        .btn {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            text-align: center;
            text-decoration: none;
        }

        .btn-update { background-color: #007bff; color: white; }
        .btn-update:hover { background-color: #0056b3; }
        
        .btn-logout { background-color: #666; color: white; margin-top: 10px; }
        .btn-logout:hover { background-color: #444; }

    </style>
</head>

<body>
    <header>
        <img src="imagen/deintec-imagen.png" alt="Logo DEINTEC">
    </header>

    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="solicitudes activas.php">Solicitudes activas</a></li>
            <li><a href="Solicitudes radicadas.php">Solicitudes radicadas</a></li>
            <li><a href="Permisos.php">Permisos</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Perfil</h1>
        <p class="subtitulo">Administrador del Sistema - DEINTEC</p>

        <div class="perfil-grid">
            <div class="columna">
                <h2>Acerca de mí</h2>
                <div class="detalles">
                    <strong>Cargo:</strong> <span>Administrador web principal</span>
                    <strong>Experiencia:</strong> <span>6 meses en desarrollo</span>
                    <strong>Habilidades:</strong> <span>PHP, JavaScript, HTML, CSS</span>
                </div>
                
                <hr style="border: 0.5px solid #333; margin: 25px 0;">
                
                <form action="controllers/actualizar_imagen.php" method="POST" enctype="multipart/form-data">
                    <label><strong>Actualizar foto de perfil:</strong></label>
                    <input type="file" name="nueva_imagen" id="nueva_imagen" style="margin-top:10px;" required>
                    <button type="submit" class="btn btn-update">Subir Nueva Imagen</button>
                </form>
            </div>

            <div class="columna" style="text-align: center;">
                <img src="<?php echo isset($_SESSION['imagen']) ? $_SESSION['imagen'] : 'imagen/Perfil/Andre.png'; ?>" 
                     id="preview" class="foto-perfil" alt="Foto de perfil">
                
                <?php
                if (isset($_GET['status'])) {
                    if ($_GET['status'] == 'success') echo "<p style='color: #28a745;'>¡Éxito al actualizar!</p>";
                    else echo "<p style='color: #dc3545;'>Error al subir archivo.</p>";
                }
                ?>
            </div>

            <div class="columna detalles">
                <h2>Detalles de Cuenta</h2>
                <form id="formPerfil">
                    <strong>ID de Usuario:</strong>
                    <input type="text" value="<?php echo $_SESSION['id'] ?? ''; ?>" readonly>
                    
                    <strong>Nombre Completo:</strong>
                    <input type="text" name="nombre" value="<?php echo $_SESSION['nombre'] ?? ''; ?>">
                    
                    <strong>Correo Electrónico:</strong>
                    <input type="email" name="email" value="<?php echo $_SESSION['email'] ?? ''; ?>">
                    
                    <strong>Ubicación:</strong>
                    <input type="text" name="ubicacion" value="<?php echo $_SESSION['ubicacion'] ?? ''; ?>">
                    
                    <button type="submit" class="btn btn-update">Guardar Cambios</button>
                    <button type="button" class="btn btn-logout" onclick="cerrarSesion()">Cerrar Sesión</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Función para cerrar sesión
        function cerrarSesion() {
            if(confirm("¿Estás seguro de que quieres salir?")) {
                window.location.href = "index.html";
            }
        }

        // Vista previa de imagen antes de subir
        document.getElementById('nueva_imagen').addEventListener('change', function(e) {
            const reader = new FileReader();
            reader.onload = function() {
                document.getElementById('preview').src = reader.result;
            };
            reader.readAsDataURL(e.target.files[0]);
        });
    </script>
</body>
</html>