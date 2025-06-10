-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: deintec_2
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `Cedula` int NOT NULL,
  `Nombre completo` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Imagen` date DEFAULT NULL,
  `Ubicacion` varchar(150) DEFAULT NULL,
  `Salario` decimal(20,0) DEFAULT NULL,
  `Rol` varchar(45) DEFAULT NULL,
  `Tipo contrato` varchar(45) DEFAULT NULL,
  `Fecha de ingreso` date DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE KEY `Cedual_UNIQUE` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (1,1234496728,'hector andres Monroy narvaez','hector_monroy@soy.sena.edu.co',NULL,'Bogota D.C',2500000,'Administrador','Fijo','2024-10-16','admin123'),(2,565453654,'Carolina Herrera','Elsa_cherrera@soy.sena.edu.co',NULL,'Bosa',2500000,'Administrador','Fijo','2024-10-16','admin456'),(3,1664656523,'Jimmy Jhoam Placeres','jimmy_placeres@soy.sena.edu.co',NULL,'Santander',2500000,'Administrador','Fijo','2024-10-16','admin789');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ventas` (
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_servicio` int NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_venta`,`id_producto`,`id_servicio`),
  KEY `id_producto` (`id_producto`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `detalle_ventas_ibfk_3` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_factura` int DEFAULT NULL,
  `fecha_pago` date NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_factura` (`id_factura`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock_disponible` int NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,'imagenes/wom.jpg'),(2,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,'imagenes/Proteger-Ecositema-marino.jpg'),(3,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,''),(4,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,''),(5,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(6,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(7,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(8,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(9,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(10,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(11,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(12,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(13,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,'imagenes/61ZiDnosRnL._AC_.jpg'),(14,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,'imagenes/teclado.jpeg'),(15,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(16,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(17,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(18,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(19,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(20,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(21,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(22,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(23,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(24,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(25,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(26,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(27,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(28,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(29,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(30,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(31,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(32,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(33,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(34,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(35,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(36,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(37,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(38,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(39,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(40,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(41,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(42,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(43,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(44,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(45,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(46,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(47,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(48,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(49,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(50,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(51,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(52,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(53,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(54,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(55,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(56,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(57,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(58,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(59,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(60,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(61,'Laptop Lenovo','Laptop con procesador Intel i5, 8GB RAM, 512GB SSD',500.00,10,NULL),(62,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,15,NULL),(63,'Monitor 24\" LG','Monitor de 24 pulgadas Full HD',250.00,8,NULL),(64,'Ratón Gaming','Ratón con sensor láser para gaming',40.00,20,NULL),(65,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(66,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(67,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(68,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(69,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(70,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(71,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(72,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(73,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(74,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(75,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(76,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(77,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(78,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(79,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(80,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(81,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(82,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(83,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(84,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(85,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(86,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(87,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(88,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(89,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(90,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(91,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(92,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(93,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(94,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(95,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(96,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(97,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(98,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(99,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(100,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(101,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(102,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(103,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(104,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(105,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(106,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(107,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(108,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(109,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(110,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(111,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(112,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(113,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(114,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(115,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(116,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(117,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(118,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(119,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(120,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(121,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(122,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(123,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,NULL),(124,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(125,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(126,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(127,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,'imagenes/MONITOR.jpeg'),(128,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(129,'Laptop Lenovo','Laptop Lenovo con 16GB RAM y 512GB SSD',500.00,10,NULL),(130,'Teclado Mecánico','Teclado mecánico RGB para gaming',100.00,20,NULL),(131,'Monitor 24\" LG','Monitor Full HD 24 pulgadas',250.00,15,'imagenes/MONITOR.jpeg'),(132,'Ratón Gaming','Ratón para gaming con sensores de alta precisión',40.00,25,NULL),(133,'caro','',20000.00,12345,'imagenes/OIP.jpg'),(134,'teclado 2','mecanico',100000.00,40000,'imagenes/imagen 1.png'),(135,'cable usb','cable',35000.00,1000,'imagenes/cableusb.jpeg'),(136,'cable usb','cable',35000.00,1000,'imagenes/cableusb.jpeg');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_servicios`
--

DROP TABLE IF EXISTS `registro_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_servicios` (
  `idReguistro` int NOT NULL,
  `id usuarios` int NOT NULL,
  `servicios` varchar(245) NOT NULL DEFAULT 'NOT NULL',
  `descripcion` text,
  `fecha_solicitud` date NOT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `costo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReguistro`),
  KEY `fk_cliente_idx` (`id usuarios`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`id usuarios`) REFERENCES `usuarios` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_servicios`
--

LOCK TABLES `registro_servicios` WRITE;
/*!40000 ALTER TABLE `registro_servicios` DISABLE KEYS */;
INSERT INTO `registro_servicios` VALUES (1,1,'Falla de sistema','Cambio de disco duro y reinstalación de sistema','2025-03-04','2025-03-04','Pendiente','120.50'),(2,16,'Mantenimiento','lentitud y rendimiento','2025-03-04','2025-03-04','Pendiente','115.20'),(3,14,'instalacion','lentitud y rendimiento','2025-03-04','2025-03-04','Pendiente','115.20'),(4,2,'Falla de sistema','falla pin de inicio seccion','2025-03-04','2025-03-04','Completado','110.35'),(5,3,'instalacion','herramienta mysql como configuracion','2025-03-04','2025-03-04','Completado','110.35'),(6,3,'instalacion','herramienta mysql como configuracion','2025-03-04','2025-03-04','Completado','110.35'),(7,3,'Falla de sistema','activacion de windows10','2025-03-04','2025-03-04','Completado','300.35'),(8,10,'Mantenimiento','limpieza y optimizacion portatil','2025-03-04','2025-03-04','Completado','400.35');
/*!40000 ALTER TABLE `registro_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(45) DEFAULT NULL,
  `Nombre completo` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `Fecha de ingreso` timestamp NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cedula_UNIQUE` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(2,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(3,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(4,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(5,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(6,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(7,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(8,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(9,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(10,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(11,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(12,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(13,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(14,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(15,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(16,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(17,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(18,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(19,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(20,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(21,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(22,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(23,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(24,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(25,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(26,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(27,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(28,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(29,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(30,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(31,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(32,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(33,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(34,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(35,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(36,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(37,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(38,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(39,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP0',NULL),(40,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(41,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(42,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(43,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(44,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(45,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(46,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(47,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(48,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(49,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(50,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(51,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(52,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(53,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(54,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(55,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(56,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(57,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(58,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(59,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(60,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(61,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(62,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(63,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(64,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(65,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(66,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(67,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(68,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(69,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(70,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(71,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(72,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(73,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(74,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(75,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(76,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(77,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(78,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(79,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(80,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(81,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(82,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(83,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(84,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(85,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(86,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(87,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(88,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(89,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(90,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(91,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(92,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(93,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(94,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(95,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(96,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(97,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(98,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(99,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(100,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(101,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(102,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(103,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(104,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(105,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(106,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(107,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(108,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(109,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(110,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(111,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(112,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(113,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(114,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(115,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(116,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(117,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(118,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(119,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(120,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(121,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(122,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(123,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(124,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(125,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(126,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(127,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(128,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(129,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(130,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(131,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(132,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(133,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(134,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(135,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(136,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(137,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(138,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(139,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(140,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(141,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(142,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(143,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(144,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(145,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(146,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(147,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(148,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(149,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(150,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(151,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(152,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(153,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(154,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(155,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(156,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(157,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','0URRENT_TIMESTAMP',NULL),(158,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(159,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(160,NULL,'Juan Pérez','juanperez@email.com',NULL,'Calle Ficticia 123, Ciudad','555-1234','CURRENT_TIMESTAMP',NULL),(161,NULL,'Ana Gómez','anagomez@email.com',NULL,'Avenida Principal 456, Ciudad','555-5678','CURRENT_TIMESTAMP',NULL),(162,NULL,'Carlos Sánchez','carlossanchez@email.com',NULL,'Calle Real 789, Ciudad','555-8765','CURRENT_TIMESTAMP',NULL),(163,'10123569987','mondongo','caritoh2609@gmail.com',NULL,'dg62Asur#71J09','3182394979','2025-04-05 09:01:41',NULL),(164,'102354896','Mario Perez','hjuandavid742@gmail.com',NULL,'cr1 b n 112-03','31256478925','2025-04-06 05:11:01',NULL),(165,'101236987','catalina','catalina@gmail.com',NULL,'cr1bn11-03','32035697859','2025-05-02 06:24:08',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_empleado_idx` (`id_empleado`),
  CONSTRAINT `fk_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `Empleado` (`idEmpleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `usuarios` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2025-03-01',1,NULL),(2,'2025-03-02',2,NULL),(3,'2025-03-03',3,NULL),(4,'2025-03-01',1,NULL),(5,'2025-03-02',2,NULL),(6,'2025-03-03',3,NULL),(7,'2025-03-01',1,NULL),(8,'2025-03-02',2,NULL),(9,'2025-03-03',3,NULL),(10,'2025-03-01',1,NULL),(11,'2025-03-02',2,NULL),(12,'2025-03-03',3,NULL),(13,'2025-03-01',1,NULL),(14,'2025-03-02',2,NULL),(15,'2025-03-03',3,NULL),(16,'2025-03-01',1,NULL),(17,'2025-03-02',2,NULL),(18,'2025-03-03',3,NULL),(19,'2025-03-01',1,NULL),(20,'2025-03-02',2,NULL),(21,'2025-03-03',3,NULL),(22,'2025-03-01',1,NULL),(23,'2025-03-02',2,NULL),(24,'2025-03-03',3,NULL),(25,'2025-03-01',1,NULL),(26,'2025-03-02',2,NULL),(27,'2025-03-03',3,NULL),(28,'2025-03-01',1,NULL),(29,'2025-03-02',2,NULL),(30,'2025-03-03',3,NULL),(31,'2025-03-01',1,NULL),(32,'2025-03-02',2,NULL),(33,'2025-03-03',3,NULL),(34,'2025-03-01',1,NULL),(35,'2025-03-02',2,NULL),(36,'2025-03-03',3,NULL),(37,'2025-03-01',1,NULL),(38,'2025-03-02',2,NULL),(39,'2025-03-03',3,NULL),(40,'2025-03-01',1,NULL),(41,'2025-03-02',2,NULL),(42,'2025-03-03',3,NULL),(43,'2025-03-01',1,NULL),(44,'2025-03-02',2,NULL),(45,'2025-03-03',3,NULL),(46,'2025-03-01',1,NULL),(47,'2025-03-02',2,NULL),(48,'2025-03-03',3,NULL),(49,'2025-03-01',1,NULL),(50,'2025-03-02',2,NULL),(51,'2025-03-03',3,NULL),(52,'2025-03-01',1,NULL),(53,'2025-03-02',2,NULL),(54,'2025-03-03',3,NULL),(55,'2025-03-01',1,NULL),(56,'2025-03-02',2,NULL),(57,'2025-03-03',3,NULL),(58,'2025-03-01',1,NULL),(59,'2025-03-02',2,NULL),(60,'2025-03-03',3,NULL),(61,'2025-03-01',1,NULL),(62,'2025-03-02',2,NULL),(63,'2025-03-03',3,NULL),(64,'2025-03-01',1,NULL),(65,'2025-03-02',2,NULL),(66,'2025-03-03',3,NULL),(67,'2025-03-01',1,NULL),(68,'2025-03-02',2,NULL),(69,'2025-03-03',3,NULL),(70,'2025-03-01',1,NULL),(71,'2025-03-02',2,NULL),(72,'2025-03-03',3,NULL),(73,'2025-03-01',1,NULL),(74,'2025-03-02',2,NULL),(75,'2025-03-03',3,NULL),(76,'2025-03-01',1,NULL),(77,'2025-03-02',2,NULL),(78,'2025-03-03',3,NULL),(79,'2025-03-01',1,NULL),(80,'2025-03-02',2,NULL),(81,'2025-03-03',3,NULL),(82,'2025-03-01',1,NULL),(83,'2025-03-02',2,NULL),(84,'2025-03-03',3,NULL),(85,'2025-03-01',1,NULL),(86,'2025-03-02',2,NULL),(87,'2025-03-03',3,NULL),(88,'2025-03-01',1,NULL),(89,'2025-03-02',2,NULL),(90,'2025-03-03',3,NULL),(91,'2025-03-01',1,NULL),(92,'2025-03-02',2,NULL),(93,'2025-03-03',3,NULL),(94,'2025-03-01',1,NULL),(95,'2025-03-02',2,NULL),(96,'2025-03-03',3,NULL),(97,'2025-03-01',1,NULL),(98,'2025-03-02',2,NULL),(99,'2025-03-03',3,NULL),(100,'2025-03-01',1,NULL),(101,'2025-03-02',2,NULL),(102,'2025-03-03',3,NULL),(103,'2025-03-01',1,NULL),(104,'2025-03-02',2,NULL),(105,'2025-03-03',3,NULL),(106,'2025-03-01',1,NULL),(107,'2025-03-02',2,NULL),(108,'2025-03-03',3,NULL),(109,'2025-03-01',1,NULL),(110,'2025-03-02',2,NULL),(111,'2025-03-03',3,NULL),(112,'2025-03-01',1,NULL),(113,'2025-03-02',2,NULL),(114,'2025-03-03',3,NULL),(115,'2025-03-01',1,NULL),(116,'2025-03-02',2,NULL),(117,'2025-03-03',3,NULL),(118,'2025-03-01',1,NULL),(119,'2025-03-02',2,NULL),(120,'2025-03-03',3,NULL),(121,'2025-03-01',1,NULL),(122,'2025-03-02',2,NULL),(123,'2025-03-03',3,NULL),(124,'2025-03-01',1,NULL),(125,'2025-03-02',2,NULL),(126,'2025-03-03',3,NULL),(127,'2025-03-01',1,NULL),(128,'2025-03-02',2,NULL),(129,'2025-03-03',3,NULL),(130,'2025-03-01',1,NULL),(131,'2025-03-02',2,NULL),(132,'2025-03-03',3,NULL),(133,'2025-03-01',1,NULL),(134,'2025-03-02',2,NULL),(135,'2025-03-03',3,NULL);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'deintec_2'
--

--
-- Dumping routines for database 'deintec_2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06 11:57:10
