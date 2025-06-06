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

<nav class="nav-menu">
  <ul>
    <li><a href="DEINTEC WEB.html">Home</a></li>
    <li><a href="Solicitudes activas.html">Solicitudes activas</a></li>
    <li><a href="Solicitudes radicadas.html">Solicitudes radicadas</a></li>
    <div style="display: inline-block;"></div>

    <body>
      <div class="perfil-container">
        <h2>Perfil de Usuario</h2>
        <form id="formPerfil" enctype="multipart/form-data">
          <label>Nombre:</label>
          <input type="text" id="nombre" name="nombre" placeholder="Tu nombre"
            value="<?php echo isset($_SESSION['nombre']) ? $_SESSION['nombre'] : ''; ?>">

          <label>Email:</label>
          <input type="email" id="email" name="email" placeholder="Tu email"
            value="<?php echo isset($_SESSION['email']) ? $_SESSION['email'] : ''; ?>">

          <label>Imagen de perfil:</label>
          <input type="file" id="imagenPerfil" name="imagenPerfil" accept="image/*">
          <img id="preview" src="default.jpg" alt="Vista previa">

          <button type="submit">Actualizar Perfil</button>
        </form>

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
          window.location.href = "DEINTEC WEB.html"; // por ejemplo
        }
      </script>
      
      <script>
        const formPerfil = document.getElementById('formPerfil');
        const imagenPerfilInput = document.getElementById('imagenPerfil');
        const previewImage = document.getElementById('preview');

        // --- Vista previa de la imagen ---
        imagenPerfilInput.addEventListener('change', function (event) {
          const archivo = event.target.files[0];
          if (archivo) {
            const lector = new FileReader();
            lector.onload = function (e) {
              previewImage.src = e.target.result;
            }
            lector.readAsDataURL(archivo);
          }
        });

        // --- Enviar datos del formulario ---
        formPerfil.addEventListener('submit', function (e) {
          e.preventDefault(); // Evitar el envío tradicional del formulario

          const formData = new FormData(this);

          fetch('actualizar_perfil.php', {
            method: 'POST',
            body: formData
          })
            .then(response => response.json())
            .then(data => {
              if (data.status === 'success') {
                alert(data.message);
                // Actualiza la imagen en la página sin necesidad de recargar
                // Se agrega una marca de tiempo para evitar problemas de caché del navegador
                previewImage.src = data.newImageUrl + '?t=' + new Date().getTime();
              } else {
                alert('Error: ' + data.message);
              }
            })
            .catch(error => {
              console.error('Error en la solicitud:', error);
              alert('Ocurrió un error al conectar con el servidor.');
            });
        });
      </script>
    </body>

</html>