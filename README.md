🚀 Deintec - Portal de Servicios Tecnológicos

Deintec es una plataforma web diseñada para centralizar y gestionar servicios de soporte técnico, diagnósticos de fallas de sistema y mantenimiento preventivo/correctivo. 
El proyecto busca ofrecer una interfaz intuitiva tanto para clientes como para proveedores de servicios de tecnología.

🛠️ Tecnologías Utilizadas

```text
Este proyecto utiliza un stack basado en tecnologías web estándar para garantizar rendimiento y compatibilidad:

Frontend: HTML5, CSS3 (Diseño responsivo).

Backend: PHP (Arquitectura basada en controladores y modelos).

Base de Datos: MySQL, Docker (Gestión de registros y usuarios).

Herramientas: Workspace de Visual Studio Code.

📁 Estructura del Proyecto

```
📁 Estructura del Proyecto

El repositorio está organizado siguiendo el patrón Modelo-Vista-Controlador (MVC) para facilitar la escalabilidad:

/app: Lógica central de la aplicación.

/config: Archivos de configuración (conexión a DB, constantes).

/controllers: Gestión de las peticiones del usuario.

/models: Interacción con la base de datos.

/views/clientes: Interfaz de usuario específica para el área de clientes.

/css, /js, /imagen: Recursos estáticos (estilos, scripts y multimedia).

⚙️ Instalación y Configuración

```text
Deintec/
├── app/
│   └── imagenes/          # Recursos dinámicos y fondos (GIFs)
├── css/
│   └── estilos.css        # Hoja de estilos principal
├── imagen/                # Activos estáticos, logotipos y fotos de equipo
├── includes/              # (Sugerido) Scripts de lógica reutilizable
├── js/                    # Funcionalidades interactivas (JavaScript)
├── index.html             # Portal principal de bienvenida
├── perfil.php             # Gestión de perfil de usuario
├── Permisos.php           # Panel de administración y roles
├── Ingresar.html          # Sistema de autenticación
└── registro.html          # Formulario de nuevos usuarios
```

⚙️ Instalación y Configuración

Para ejecutar este proyecto de forma local, sigue estos pasos:

Clonar el repositorio:

Bash
git clone https://github.com/Andru50/Deintec.git
Configurar el entorno local:

Mueve la carpeta del proyecto a tu servidor local (ej. htdocs en XAMPP o www en WampServer).

Asegúrate de tener un servidor PHP (versión 7.4 o superior recomendada) y MySQL activos.

Configurar la Base de Datos:

Crea una base de datos en PHPMyAdmin.

Configura las credenciales de acceso en el archivo dentro de la carpeta /config.

Acceso:

Abre tu navegador y dirígete a http://localhost/Deintec/Ingresar.html.

📋 Funcionalidades Principales

🛠️ Configuración y Conexión
```text
<?php
// Configuración de credenciales
$servidor    = "127.0.0.1";
$usuario_db  = "deintec";
$password_db = "12345";
$nombre_db   = "deintec";

// Crear la conexión usando la extensión mysqli
$conexion = new mysqli($servidor, $usuario_db, $password_db, $nombre_db);

// Validar estado de la conexión
if ($conexion->connect_error) {
    die("❌ Error crítico de conexión: " . $conexion->connect_error);
}

// Configurar set de caracteres a UTF-8 para evitar problemas con tildes y ñ
$conexion->set_charset("utf8");

// echo "✅ Conexión exitosa al sistema DEINTEC";
?>
```
📋 Funcionalidades Principales

Módulo de Ingreso: Gestión de acceso seguro para usuarios.

Diagnóstico de Fallas: Formulario especializado para reporte de fallas de sistema.

Gestión de Mantenimiento: Información y solicitudes de servicios técnicos e instalación.

Gestión de Permisos: Control de roles mediante scripts PHP.

👥 Colaboradores

El desarrollo de este proyecto es posible gracias al equipo técnico de Deintec:

Andru50 - Líder de Proyecto

Carolina292 - Supervisora Jefe

jmorenog1986 - Supervisor

📄 Licencia

Este proyecto es de uso académico y profesional privado. Para consultas sobre su uso o distribución, contactar con el administrador del repositorio.

76259725jP - Desarrollador / Colaborador
