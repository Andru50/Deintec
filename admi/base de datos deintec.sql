
-- Table structure for table ` servicios`
--

DROP TABLE IF EXISTS ` servicios`;


CREATE TABLE `servicios`(
  `idReguistro` int NOT NULL,
  `id cliente` varchar(45) NOT NULL,
  `servicios` varchar(245) NOT NULL DEFAULT 'NOT NULL',
  `descripcion` text,
  `fecha_solicitud` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `costo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReguistro`),
  UNIQUE KEY `fecha_finalizacion_UNIQUE` (`fecha_finalizacion`),
  UNIQUE KEY `fecha_solicitud_UNIQUE` (`fecha_solicitud`)
) ENGINE=InnoDB 


--
-- Dumping data for table ` servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE ` servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE ` servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;


CREATE TABLE `cliente` (
  `idpersonas` int NOT NULL AUTO_INCREMENT,
  `Cedula` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Email` varchar(125) NOT NULL,
  `Fecha reguistro` date DEFAULT NULL,
  PRIMARY KEY (`idpersonas`),
  UNIQUE KEY `Cedula_UNIQUE` (`Cedula`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,13656426,'paola andrea','calcedo','andreacaicedo@gmail.com','2024-10-16'),(2,2365123,'jesus alverto','ramirez','alverto.ramirez@gmail.com','2024-10-17'),(3,1296563,'ruben camilo','quesada','ruben.camiloz@hotmail.com','2024-10-17'),(4,1233664,'maria clemencia','moncayo','maria.moncayo@gmail.com','2024-10-17'),(5,3126456,'matias guiovara','ramirez','matias.ramirez@gmail.com','2024-10-17'),(6,1295623,'maria fernanda','guitierrez soto','fernanda.soto@gmail.com','2024-10-17'),(7,12365466,'nicolas','suerez','nicolas.120.@gmail.com','2024-10-17'),(8,365646978,'luis fernando','rodriguez','luisrodriguez@hotmail.com','2024-10-17'),(9,153365436,'ramiro mario ','triana','ramiro256@hotmail.com','2024-10-17'),(10,12698133,'yadira','gomez','yadira.gomez@gmail.com','2024-10-17'),(11,136998164,'milton marino','renfifo','miltonrenjifo40@gmail.com','2024-10-17'),(12,356846681,'paola andrea','calcedo','andrea_calcedo@gmail.com','2024-10-17');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;


CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=145 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(2,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(3,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(4,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(5,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(6,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(7,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(8,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(9,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(10,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(11,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(12,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(13,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(14,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(15,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(16,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(17,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(18,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(19,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(20,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(21,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(22,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(23,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(24,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(25,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(26,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(27,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(28,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(29,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(30,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(31,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(32,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(33,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(34,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(35,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(36,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(37,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(38,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(39,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(40,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(41,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(42,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(43,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(44,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(45,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(46,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(47,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(48,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(49,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(50,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(51,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(52,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(53,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(54,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(55,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(56,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(57,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(58,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(59,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(60,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(61,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(62,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(63,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(64,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(65,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(66,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(67,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(68,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(69,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(70,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(71,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(72,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(73,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(74,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(75,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(76,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(77,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(78,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(79,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(80,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(81,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(82,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(83,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(84,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(85,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(86,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(87,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(88,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(89,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(90,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(91,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(92,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(93,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(94,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(95,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(96,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(97,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(98,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(99,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(100,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(101,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(102,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(103,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(104,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(105,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(106,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(107,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(108,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(109,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(110,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(111,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(112,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(113,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(114,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(115,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(116,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(117,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(118,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(119,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(120,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(121,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(122,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(123,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(124,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(125,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(126,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(127,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(128,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(129,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(130,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(131,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(132,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(133,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(134,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(135,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(136,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(137,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(138,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(139,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(140,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(141,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com'),(142,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com'),(143,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com'),(144,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;


CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `Cedula` int NOT NULL,
  `Nombre completo` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Salario` decimal(20,0) DEFAULT NULL,
  `Rol` varchar(45) DEFAULT NULL,
  `Tipo contrato` varchar(45) DEFAULT NULL,
  `Fecha de ingreso` date DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Cedual_UNIQUE` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1234496728,'hector andres Monroy narvaez','hector_monroy@soy.sena.edu.co',2500000,'Administrador','Fijo','2024-10-16'),(2,565453654,'Carolina Herrera','carolina.herrera@hotmail.com',2500000,'Administrador','Fijo','2024-10-16'),(3,1664656523,'Jimmy Jhoam Placeres','jimmy.placeres@hotmail.com',2500000,'Administrador','Fijo','2024-10-16');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_servicios`
--

DROP TABLE IF EXISTS `registro_servicios`;


CREATE TABLE `registro_servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `servicio` varchar(255) NOT NULL,
  `descripcion` text,
  `fecha_solicitud` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('Pendiente','En Proceso','Completado','Cancelado') NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_servicios`
--

LOCK TABLES `registro_servicios` WRITE;
/*!40000 ALTER TABLE `registro_servicios` DISABLE KEYS */;
INSERT INTO `registro_servicios` VALUES (1,1,'Reparación de Computadora','Cambio de disco duro y reinstalación de sistema','2025-03-04 14:26:50','Pendiente',120.50),(2,16,'Reparación de Computadora','lentitud y rendimiento','2025-03-04 14:30:08','Pendiente',115.20),(3,14,'instalacion','lentitud y rendimiento','2025-03-04 14:32:39','Pendiente',115.20),(4,2,'configuracion pc','falla pin de inicio seccion','2025-03-04 14:36:17','Completado',110.35),(5,3,'instalacion','herramienta mysql como configuracion','2025-03-04 14:37:15','Completado',110.35),(6,3,'instalacion','herramienta mysql como configuracion','2025-03-04 14:37:20','Completado',110.35),(7,3,'configuracion','activacion de windows10','2025-03-04 14:41:25','Completado',300.35),(8,10,'mantenimiento','limpieza y optimizacion portatil','2025-03-04 14:43:13','Completado',400.35);
/*!40000 ALTER TABLE `registro_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;


CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL,
  `Cedula` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Fecha_reguistro` date DEFAULT NULL,
  `Direccion_Residencia` varchar(50) DEFAULT 'Activo',
  PRIMARY KEY (`idusuarios`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Cedula_UNIQUE` (`Cedula`)
) ENGINE=InnoDB 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1234496728,'hector andres','Monroy narvaez','hector_monroy@soy.sena.edu.co','2024-10-16','kr88h #42-26 norte'),(2,565453654,'Carolina','Herrera','carolina.herrera@hotmail.com','2024-10-16','calle 89 #30-10 norte'),(3,1664656523,'Jimmy Jhoam','Placeres','jimmy.placeres@hotmail.com','2024-10-16','calle 95#32-11 norte'),(4,2131231,'carlos alberto','mejia','carlos.mejia@hotmail.com','2025-10-26','calle 30#26-15 norte'),(5,1266529,'ana maria','herrera','maria.herrera@hotmail.com','2025-10-26','Avenida 30#26-15 sur'),(6,12956236,'maria fernanda','guitierrez soto','fernanda.soto@gmail.com','2024-10-17','Avenida 33#22-65 sur'),(7,12365466,'nicolas','suerez','nicolas.120.@gmail.com','2024-10-17','carrera 100 #95-80 norte'),(8,365646978,'luis fernando','rodriguez','luisrodriguez@hotmail.com','2024-10-17','carrera 120 #96-82 norte'),(9,153365436,'ramiro mario ','triana','ramiro256@hotmail.com','2024-10-17','carrera 120 #95-86 norte'),(10,12698133,'yadira','gomez','yadira.gomez@gmail.com','2024-10-17','carrera 100 #75-42 norte'),(11,136998164,'milton marino','renfifo','miltonrenjifo40@gmail.com','2024-10-17','avenida 32 #42-30 sureste'),(12,356846681,'paola andrea','calcedo','andrea_calcedo@gmail.com','2024-10-17','avenida caracas #60-20 sur'),(13,2365123,'jesus alverto','ramirez','alverto.ramirez@gmail.com','2024-10-17','avenida americas #40-27 sur'),(14,1296563,'ruben camilo','quesada','ruben.camiloz@hotmail.com','2024-10-17','avenida americas #15-26 sur'),(15,3126456,'maria clemencia','moncayo','maria.moncayo@gmail.com','2024-10-17','avenida americas #28-18 sur'),(16,13465698,'matias guiovara','ramirez','matias.ramirez@gmail.com','2024-10-17','avenida americas #30-47 sur');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
