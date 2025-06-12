<?php session_start(); ?>

<?php if (isset($_SESSION['error'])): ?>
    <div class="alerta-error" style="color: red; padding: 10px; border: 1px solid red; margin-bottom: 15px;">
        <?php
        echo $_SESSION['error'];
        unset($_SESSION['error']); // Limpiar el mensaje después de mostrarlo
        ?>
    </div>
<?php endif; ?>

<form action="procesar_recuperacion.php" method="POST">
</form>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css" />
    </head>
    <title>olvido contraseña</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            /* Si quieres un color de respaldo */
            background-image: url("imagen/fondo.jpg");
            /* La ruta desde el HTML */
            background-size: cover;
            background-repeat: no-repeat;
        }

        h1 {
            font-size: 3em;
            text-align: center;
        }

        p {
            font-size: 1.2rem;
            line-height: 1.2;
        }
    </style>
</head>

<body>
    <header>

        <div style="text-align: center;">
            <img src="imagen/deintec-imagen.png" alt="" width="350" height="110">
        </div>
    </header>
    <div id="menu">

        <nav class="nav-menu">
            <ul>
                <li><a href="DEINTEC WEB.html">Home</a></li>
            </ul>
        </nav>
    </div>
    </nav>


    <section>
        <h2>Formulario de Recuperación</h2>
        <form action="procesar_recuperacion.php" method="POST" class="recovery-form">

            <h2>Formulario de Recuperación</h2>

            <div class="form-group">
                <label for="usuario">Usuario o Correo Electrónico</label>
                <input type="text" id="usuario" name="usuario" placeholder="Ingresa tu usuario o email" required>
            </div>

            <div class="form-group">
                <label for="telefono_digitos">Últimos 4 dígitos de su Teléfono</label>
                <input type="text" id="telefono_digitos" name="telefono_digitos"
                    placeholder="Ingresa los últimos 4 dígitos" maxlength="4" required>
            </div>

            <div class="form-group">
                <label for="mascota">Nombre de su Mascota</label>
                <input type="text" id="mascota" name="mascota" placeholder="Ingresa el nombre de tu mascota" required>
            </div>

            <div class="form-group">
                <label for="persona_favorita">Persona Favorita (Familiar o Amigo)</label>
                <input type="text" id="persona_favorita" name="persona_favorita"
                    placeholder="Ingresa el nombre de tu persona favorita" required>
            </div>

            <div class="form-group">
                <label for="nueva_contrasena">Nueva Contraseña</label>
                <input type="password" id="nueva_contrasena" name="nueva_contrasena"
                    placeholder="Crea una nueva contraseña" required>
            </div>

            <div class="form-group">
                <label for="confirmar_contrasena">Confirmar Nueva Contraseña</label>
                <input type="password" id="confirmar_contrasena" name="confirmar_contrasena"
                    placeholder="Confirma tu nueva contraseña" required>
            </div>

            <button type="submit" class="submit-btn">Recuperar Contraseña</button>

        </form>

        <style>
            .recovery-form {
                max-width: 500px;
                margin: 2rem auto;
                padding: 2rem;
                border-radius: 8px;
                background-color: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
            }

            .recovery-form h2 {
                color: #fff;
                text-align: center;
                margin-bottom: 1.5rem;
            }

            .form-group {
                margin-bottom: 1rem;
            }

            .form-group label {
                display: block;
                color: #f0f0f0;
                margin-bottom: 0.5rem;
            }

            .form-group input {
                width: 100%;
                padding: 0.8rem;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: rgba(240, 240, 240, 0.9);
                box-sizing: border-box;
                /* Asegura que el padding no afecte el ancho total */
            }

            .submit-btn {
                width: 100%;
                padding: 1rem;
                border: none;
                border-radius: 4px;
                background-color: #007bff;
                color: white;
                font-size: 1rem;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .submit-btn:hover {
                background-color: #0056b3;
            }
        </style>F
</body>

</html>