-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: deintec
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(2,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(3,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(4,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(5,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(6,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(7,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(8,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(9,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(10,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(11,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(12,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(13,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(14,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(15,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(16,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(17,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(18,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(19,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(20,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(21,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(22,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(23,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(24,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(25,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(26,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(27,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(28,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(29,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(30,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(31,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(32,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(33,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(34,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(35,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(36,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(37,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(38,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(39,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(40,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(41,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(42,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(43,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(44,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(45,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(46,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(47,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(48,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(49,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(50,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(51,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(52,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(53,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(54,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(55,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(56,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(57,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(58,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(59,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(60,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(61,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(62,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(63,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(64,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(65,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(66,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(67,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(68,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(69,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(70,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(71,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(72,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(73,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(74,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(75,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(76,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(77,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(78,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(79,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(80,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(81,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(82,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(83,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(84,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(85,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(86,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(87,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(88,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(89,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(90,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(91,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(92,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(93,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(94,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(95,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(96,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(97,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(98,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(99,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(100,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(101,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(102,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(103,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(104,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(105,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(106,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(107,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(108,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(109,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(110,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(111,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(112,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(113,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(114,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(115,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(116,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(117,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(118,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(119,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(120,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(121,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(122,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(123,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(124,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(125,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(126,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(127,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(128,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(129,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(130,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(131,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(132,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(133,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(134,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(135,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(136,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(137,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(138,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(139,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(140,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(141,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(142,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(143,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(144,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(145,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(146,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(147,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(148,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(149,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(150,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(151,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(152,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(153,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(154,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(155,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(156,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(157,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(158,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(159,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(160,'Juan Pérez','Calle Ficticia 123, Ciudad','555-1234','juanperez@email.com',NULL,'0000-00-00 00:00:00'),(161,'Ana Gómez','Avenida Principal 456, Ciudad','555-5678','anagomez@email.com',NULL,'0000-00-00 00:00:00'),(162,'Carlos Sánchez','Calle Real 789, Ciudad','555-8765','carlossanchez@email.com',NULL,'0000-00-00 00:00:00'),(163,'mondongo','dg62Asur#71J09','3182394979','caritoh2609@gmail.com','10123569987','2025-04-05 09:01:41'),(164,'Mario Perez','cr1 b n 112-03','31256478925','hjuandavid742@gmail.com','102354896','2025-04-06 05:11:01'),(165,'catalina','cr1bn11-03','32035697859','catalina@gmail.com','101236987','2025-05-02 06:24:08');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id cliente` int NOT NULL,
  `servicios` varchar(245) NOT NULL DEFAULT 'NOT NULL',
  `descripcion` text,
  `fecha_solicitud` date NOT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `costo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReguistro`),
  KEY `fk_cliente_idx` (`id cliente`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`id cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_servicios`
--

LOCK TABLES `registro_servicios` WRITE;
/*!40000 ALTER TABLE `registro_servicios` DISABLE KEYS */;
INSERT INTO `registro_servicios` VALUES (1,1,'Reparación de Computadora','Cambio de disco duro y reinstalación de sistema','2025-03-04','2025-03-04','Pendiente','120.50'),(2,16,'Reparación de Computadora','lentitud y rendimiento','2025-03-04','2025-03-04','Pendiente','115.20'),(3,14,'instalacion','lentitud y rendimiento','2025-03-04','2025-03-04','Pendiente','115.20'),(4,2,'configuracion pc','falla pin de inicio seccion','2025-03-04','2025-03-04','Completado','110.35'),(5,3,'instalacion','herramienta mysql como configuracion','2025-03-04','2025-03-04','Completado','110.35'),(6,3,'instalacion','herramienta mysql como configuracion','2025-03-04','2025-03-04','Completado','110.35'),(7,3,'configuracion','activacion de windows10','2025-03-04','2025-03-04','Completado','300.35'),(8,10,'mantenimiento','limpieza y optimizacion portatil','2025-03-04','2025-03-04','Completado','400.35');
/*!40000 ALTER TABLE `registro_servicios` ENABLE KEYS */;
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
  CONSTRAINT `fk_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
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
-- Dumping events for database 'deintec'
--

--
-- Dumping routines for database 'deintec'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23 22:21:49
