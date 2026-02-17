<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Solicitudes Activas</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #131212;
      background-image: url("imagen/fondo.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      margin: 0;
      padding: 0;
      color: #f5f5f5;
    }
    header, nav {
      text-align: center;
      margin-bottom: 20px;
    }
    nav ul {
      list-style: none;
      padding: 0;
      background-color: #d20505;
      margin: 0;
    }
    nav ul li {
      display: inline-block;
      margin: 0;
    }
    nav ul li a {
      display: inline-block;
      color: black;
      padding: 15px 20px;
      text-decoration: none;
      font-weight: 600;
      transition: background-color 0.3s;
      font-size: 1rem;
    }
    nav ul li a:hover {
      background-color: #0056b3;
      color: white;
    }
    h2 {
      font-weight: 700;
      margin-bottom: 30px;
      font-size: 2rem;
      color: #fff;
      text-shadow: 0 0 8px rgba(0, 0, 0, 0.8);
    }
    .container-table {
      max-width: 950px;
      margin: 0 auto 60px auto;
      background: rgba(40, 40, 40, 0.85);
      border-radius: 10px;
      padding: 30px 35px;
      box-shadow: 0 12px 25px rgba(0,0,0,0.7);
    }
    table {
      width: 100%;
      border-collapse: separate;
      border-spacing: 0 12px;
      font-size: 1rem;
      color: #eee;
    }
    thead th {
      color: #ccc;
      font-weight: 600;
      padding-bottom: 12px;
      border-bottom: 2px solid #555;
      text-align: left;
    }
    tbody tr {
      background: rgba(60, 60, 60, 0.8);
      border-radius: 6px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.6);
      transition: background-color 0.3s ease;
      display: table-row;
    }
    tbody tr:hover {
      background-color: rgba(80, 80, 80, 0.95);
    }
    tbody td {
      padding: 14px 18px;
      vertical-align: middle;
    }
    .badge-success {
      background-color: #28a745;
      color: white;
      padding: 7px 16px;
      border-radius: 20px;
      font-weight: 600;
      font-size: 0.85rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }
    .badge-warning {
      background-color: #ffc107;
      color: #212529;
      padding: 7px 16px;
      border-radius: 20px;
      font-weight: 600;
      font-size: 0.85rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }
    .btn-eliminar {
      background-color: #d20505;
      border: none;
      color: white;
      padding: 6px 12px;
      border-radius: 6px;
      font-weight: 600;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .btn-eliminar:hover {
      background-color: #a00404;
    }
    /* Responsive */
    @media (max-width: 768px) {
      .container-table {
        padding: 20px 15px;
      }
      table, thead, tbody, th, td, tr {
        display: block;
      }
      thead tr {
        display: none;
      }
      tbody tr {
        margin-bottom: 20px;
        background: rgba(60,60,60,0.9);
        border-radius: 10px;
        padding: 15px;
      }
      tbody td {
        padding-left: 50%;
        position: relative;
        text-align: left;
        color: #ddd;
        font-weight: 600;
      }
      tbody td::before {
        position: absolute;
        top: 50%;
        left: 18px;
        transform: translateY(-50%);
        white-space: nowrap;
        font-weight: 700;
        color: #bbb;
      }
      tbody td:nth-of-type(1)::before { content: "#"; }
      tbody td:nth-of-type(2)::before { content: "Fecha"; }
      tbody td:nth-of-type(3)::before { content: "Solicitante"; }
      tbody td:nth-of-type(4)::before { content: "Descripción"; }
      tbody td:nth-of-type(5)::before { content: "Estado"; }
      tbody td:nth-of-type(6)::before { content: "Número de radicado"; }
      tbody td:nth-of-type(7)::before { content: "Eliminar"; }
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
    <li><a href="Solicitudes radicadas.php">Solicitudes Radicadas</a></li>
    <li><a href="https://lookerstudio.google.com/reporting/93a1af02-1588-45f0-b785-a0eae496432c/page/PZvoF/edit">Dashboard Gráficas</a></li>
  </ul>
  
</nav>

<div class="container-table">
  <h2>Solicitudes Activas</h2>
  <table>
    <thead>
      <tr>
        <th>#</th>
        <th>Fecha</th>
        <th>Solicitante</th>
        <th>Descripción</th>
        <th>Estado</th>
        <th>Número de radicado</th>
        <th>Eliminar</th>
      </tr>
    </thead>
    <tbody id="solicitudes-body"></tbody>
  </table>
</div>

<script>
  const tbody = document.getElementById('solicitudes-body');

  function cargarSolicitudesActivas() {
    const solicitudes = JSON.parse(localStorage.getItem('solicitudes')) || [];
    // Filtrar solo las solicitudes con estado "en proceso"
    const solicitudesActivas = solicitudes.filter(sol => sol.estado.toLowerCase() === 'en proceso');
    tbody.innerHTML = '';

    solicitudesActivas.forEach((sol, index) => {
      const badgeClass = 'badge-warning';

      const tr = document.createElement('tr');
      tr.innerHTML = `
        <td>${index + 1}</td>
        <td>${sol.fecha}</td>
        <td>${sol.solicitante}</td>
        <td>${sol.descripcion}</td>
        <td><span class="${badgeClass}">${sol.estado}</span></td>
        <td>${sol.numeroRadicado}</td>
        <td><button class="btn-eliminar" data-radicado="${sol.numeroRadicado}">Eliminar</button></td>
      `;
      tbody.appendChild(tr);
    });

    // Añadir event listeners para eliminar
    document.querySelectorAll('.btn-eliminar').forEach(button => {
      button.addEventListener('click', (e) => {
        const radicado = e.target.getAttribute('data-radicado');
        eliminarSolicitud(radicado);
      });
    });
  }

  function eliminarSolicitud(radicado) {
    let solicitudes = JSON.parse(localStorage.getItem('solicitudes')) || [];
    // Filtrar todas excepto la que tenga ese número de radicado
    solicitudes = solicitudes.filter(sol => sol.numeroRadicado !== radicado);
    localStorage.setItem('solicitudes', JSON.stringify(solicitudes));
    cargarSolicitudesActivas();
  }

  // Cargar solicitudes activas al abrir la página
  cargarSolicitudesActivas();
</script>

</body>
</html>