<?php
$directorio = __DIR__ . '/html';
$archivos = scandir($directorio);

foreach ($archivos as $archivo) {
    $ruta = $directorio . '/' . $archivo;

    if (is_file($ruta) && pathinfo($ruta, PATHINFO_EXTENSION) === 'html') {
        $contenido = file_get_contents($ruta);

        // Corrección de rutas
        $contenido = str_replace('href="css/', 'href="../css/', $contenido);
        $contenido = str_replace('src="css/', 'src="../css/', $contenido);
        $contenido = str_replace('url("css/', 'url("../css/', $contenido);
        $contenido = str_replace("url('css/", "url('../css/", $contenido);

        $contenido = str_replace('href="imagen/', 'href="../imagen/', $contenido);
        $contenido = str_replace('src="imagen/', 'src="../imagen/', $contenido);
        $contenido = str_replace('url("imagen/', 'url("../imagen/', $contenido);
        // ...existing code...
        $contenido = str_replace('url("imagen/', 'url("../imagen/', $contenido);
        $contenido = str_replace("url('imagen/", "url('../imagen/", $contenido);
        // ...existing code...

        // Guarda el archivo actualizado
        file_put_contents($ruta, $contenido);

        echo "✅ Rutas actualizadas en: $archivo\n";
    }
}
echo "✔️ Proceso terminado.\n";
?>