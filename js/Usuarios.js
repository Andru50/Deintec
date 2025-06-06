const formPerfil = document.getElementById('formPerfil');
const imagenPerfilInput = document.getElementById('imagen/Perfil');
const previewImage = document.getElementById('preview');

// Vista previa de la imagen
imagenPerfilInput.addEventListener('change', function (event) {
    const archivo = event.target.files[0];
    if (archivo) {
        const lector = new FileReader();
        lector.onload = function (e) {
            previewImage.src = e.target.result;
        };
        lector.readAsDataURL(archivo);
    }
});

// Enviar datos con AJAX
formPerfil.addEventListener('submit', function (e) {
    e.preventDefault();

    const formData = new FormData(formPerfil);

    fetch('actualizar_perfil.php', {
        method: 'POST',
        body: formData
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            alert('Perfil actualizado correctamente.');
            location.reload();
        } else {
            alert('Error al actualizar perfil.');
        }
    });
});

// Cerrar sesión
function cerrarSesion() {
    window.location.href = 'DEINTEC WEB.html';
}