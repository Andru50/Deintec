<!DOCTYPE html> 
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Solicitudes Radicadas</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #131212;
      background-image: url("imagen/fondo.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      color: #f5f5f5;
      margin: 0; padding: 0;
    }
    header, nav { text-align: center; margin-bottom: 20px; }
    nav ul { list-style: none; padding: 0; background-color: #d20505; margin: 0; }
    nav ul li { display: inline-block; }
    nav ul li a { display: inline-block; color: black; padding: 15px 20px; text-decoration: none; font-weight: 600; }
    nav ul li a:hover { background-color: #0056b3; color: white; }
    .container-table {
      max-width: 950px;
      margin: 50px auto;
      background: rgba(40, 40, 40, 0.85);
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0 12px 25px rgba(0,0,0,0.7);
    }
    .badge-success {
      background-color: #28a745;
      color: white;
      padding: 7px 16px;
      border-radius: 20px;
      font-weight: 600;
      text-transform: uppercase;
    }
  </style>
</head>
<body>

<header>
  <img src="imagen/deintec-imagen.png" alt="Logo" width="350" height="110" />
</header>

<nav>
  <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="perfil.php">Perfil</a></li>
    <li><a href="solicitudes activas.php">Solicitudes Activas</a></li>
    <li><a href="https://lookerstudio.google.com/reporting/93a1af02-1588-45f0-b785-a0eae496432c/page/PZvoF/edit">Dashboard</a></li>
  </ul>
</nav>

<div class="container container-table">
    <h2 class="text-white text-center mb-4">Solicitudes Radicadas (Historial)</h2>
    
    <div class="text-right mb-3">
        <button onclick="exportarExcel()" class="btn btn-success">Descargar Excel</button>
    </div>

    <table class="table table-dark table-hover">
        <thead>
            <tr>
                <th>Fecha Cierre</th>
                <th>Servicio</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Radicado #</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Conexión a la base de datos
            mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

          try {
           $conexion = new mysqli("127.0.0.1", "deintec", "12345", "deintec");

          // Consulta escrita de forma simple para evitar caracteres ocultos
          // Si 'idRegistro' falla, intentaremos con 'idregistro' (todo en minúscula)
          $sql = "SELECT * FROM registro_servicios WHERE estado = 'Completado'";
    
          $resultado = $conexion->query($sql);

          if ($resultado->num_rows > 0) {
          while ($fila = $resultado->fetch_assoc()) {
            echo "<tr>";
            // Usamos nombres de columnas exactos. 
            // Si tu DB tiene mayúsculas/minúsculas diferentes, el SELECT * las encontrará igual.
            echo "<td>" . ($fila["fecha_finalizacion"] ?? 'N/A') . "</td>";
            echo "<td>" . htmlspecialchars($fila["servicios"] ?? 'N/A') . "</td>";
            echo "<td>" . htmlspecialchars($fila["descripcion"] ?? 'N/A') . "</td>";
            echo "<td><span class='badge-success'>Finalizada</span></td>";
            echo "<td>" . ($fila["idRegistro"] ?? $fila["idregistro"] ?? '0') . "</td>";
            echo "</tr>";
          }
          } else {
          echo "<tr><td colspan='5' class='text-center'>No hay registros con estado 'Completado'.</td></tr>";
          }
          $conexion->close();

            } catch (Exception $e) {
          echo "<tr><td colspan='5' class='text-center' style='color:red;'>Error real detectado: " . $e->getMessage() . "</td></tr>";
          }
          ?>
        </tbody>
    </table>
</div>

<script>
function exportarExcel() {
    var tabla = document.querySelector("table");
    var html = tabla.outerHTML;
    var url = 'data:application/vnd.ms-excel,' + encodeURIComponent(html);
    var link = document.createElement("a");
    link.download = "Historial_Deintec.xls";
    link.href = url;
    link.click();
}
</script>

</body>
</html>