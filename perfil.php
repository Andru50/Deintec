<?php
session_start();
?>
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
  <title>perfil</title>
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
<nav>
  Perfil de usuario
</nav>
<div style="text-align: center;">
  <img src="imagen/deintec-imagen.png" alt="" width="350" height="110">
</div>
</body>

<nav>
  <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="solicitudes activas.php">Solicitudes activas</a></li>
    <li><a href="Solicitudes radicadas.php">Solicitudes radicadas</a></li>
    <li><a href="Permisos.php">Permisos</a></li>
    <div style="display: inline-block;"></div>
  </ul>
</nav>

<body>
  <form action="controllers/actualizar_imagen.php" method="POST" enctype="multipart/form-data">

    <label for="nueva_imagen">
      <strong>Actualizar foto de perfil:</strong>
    </label>

    <br><br>

    <input type="file" name="nueva_imagen" id="nueva_imagen" required>

    <br><br>

    <button type="submit" style=>Subir Nueva Imagen</button>

  </form>

  <?php
  if (isset($_GET['status'])) {
    if ($_GET['status'] == 'success') {
      echo "<p style='color: green; margin-top: 15px;'>¡Imagen actualizada con éxito!</p>";
    } elseif ($_GET['status'] == 'error') {
      echo "<p style='color: red; margin-top: 15px;'>Error: No se pudo actualizar la imagen. Revisa el archivo o los permisos de la carpeta.</p>";
    }
  }
  ?>
  </div>

  <button class="logout" onclick="cerrarSesion()">Cerrar Sesión</button>
  </div>
  <script>
    // Vista previa de imagen
    document.getElementById('imagenPerfil').addEventListener('change', function (event) {
      const archivo = event.target.files[0];
      if (archivo) {
        const lector = new FileReader();
        lector.onload = function (e) {
          document.getElementById('preview').src = e.target.result;
        };
        lector.readAsDataURL(archivo);
      }
    });

    // Enviar datos del formulario
    document.getElementById('formPerfil').addEventListener('submit', function (e) {
      e.preventDefault();
      // Aquí enviarías los datos al servidor con fetch o AJAX
      alert("Perfil actualizado (simulado).");
    });

    // Función para cerrar sesión
    function cerrarSesion() {
      // Aquí deberías redirigir o limpiar la sesión del usuario
      alert("Sesión cerrada (simulado).");
      window.location.href = "index.html"; // por ejemplo
    }
  </script>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      background-image: url("imagen/fondo.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      color: #333;
    }

    .container {
      max-width: 1000px;
      margin: auto;
      padding: 40px 20px;
      background-color: rgba(255, 255, 255, 0.9);
      border-radius: 10px;
      margin-top: 50px;
    }

    h1 {
      text-align: center;
      font-size: 3em;
      margin-bottom: 10px;
    }

    h2 {
      font-size: 1.5em;
      margin-bottom: 10px;
    }

    .subtitulo {
      text-align: center;
      font-size: 1.2em;
      color: #555;
      margin-bottom: 40px;
    }

    .perfil-grid {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 20px;
    }

    .columna {
      flex: 1;
      min-width: 20px;
    }

    .columna img {
      border-radius: 50%;
      width: 300px;
      display: block;
      margin: 0 auto;
    }

    .detalles strong {
      display: block;
      margin-top: 10px;
    }

    .social {
      margin-top: 20px;
      text-align: center;
    }

    .social a {
      margin: 0 10px;
      text-decoration: none;
      font-size: 1.5em;
      color: #333;
    }

    .social a:hover {
      color: #007bff;
    }
  </style>
  </head>

  <body>
    <div class="container">
      <h1>Perfil</h1>
      <p class="subtitulo">Soy un desarrollador web PHP</p>

      <div class="perfil-grid">
        <!-- Columna izquierda -->
        <div class="columna">
          <h2>Acerca de mí</h2>
          <p>
            <strong>Cargo:</strong> Administrador web principal
            <strong>Experiencia:</strong> 6 meses en desarrollo
            <strong>Habilidades:</strong> PHP, JavaScript, HTML, CSS
          </p>
          <p><small>Imagen de <a href="https://www.freepik.com" target="_blank">Freepik</a></small></p>
        </div>

        <!-- Columna central -->
        <div class="columna" style="text-align: center;">
          <img src="<?php echo isset($_SESSION['imagen']) ? $_SESSION['imagen'] : 'imagen/Perfil/Andre.png' ?>"
            alt="Foto de perfil" style="width:300px; border-radius:50%;">
        </div>

        <!-- Columna derecha -->
        <div class="columna detalles">
          <h2>Detalles</h2>
          <strong>ID:</strong>
          <input type="text" id="id" name="id" placeholder="ID de usuario"
            value="<?php echo isset($_SESSION['id']) ? $_SESSION['id'] : ''; ?>" readonly>
          <strong>Nombre:</strong>
          <input type="text" id="nombre" name="nombre" placeholder="Tu nombre"
            value="<?php echo isset($_SESSION['nombre']) ? $_SESSION['nombre'] : ''; ?>">
          <strong>Email:</strong>
          <input type="email" id="email" name="email" placeholder="Tu email"
            value="<?php echo isset($_SESSION['email']) ? $_SESSION['email'] : ''; ?>">
          <strong>Ubicación:</strong>
          <input type="text" id="ubicacion" name="ubicacion" placeholder="Tu ubicación"
            value="<?php echo isset($_SESSION['ubicacion']) ? $_SESSION['ubicacion'] : ''; ?>">

          <div class="social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
          </div>
        </div>
      </div>
    </div>

    <script>
      // ... (código para la vista previa) ...

      formPerfil.addEventListener('submit', function (e) {
        e.preventDefault();
        const formData = new FormData(this);

        // Asegúrate que esta ruta sea correcta desde la ubicación de perfil.php
        fetch('controllers/actualizar_perfil.php', {
          method: 'POST',
          body: formData
        })
          .then(response => response.json())
          .then(data => {
            if (data.status === 'success') {
              alert(data.message);
              // Actualiza la imagen en la página sin recargar
              // La ruta devuelta ya es la correcta (ej: 'uploads/perfil_1_168...jpg')
              document.getElementById('preview').src = data.newImageUrl + '?t=' + new Date().getTime();
            } else {
              alert('Error: ' + data.message);
            }
          })
          .catch(error => console.error('Error:', error));
      });

      // ... (resto del script) ...
    </script>
  </body>

</html>