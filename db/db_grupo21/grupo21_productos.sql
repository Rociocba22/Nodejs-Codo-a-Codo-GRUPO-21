CREATE DATABASE  IF NOT EXISTS `grupo21` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `grupo21`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grupo21
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `categoria` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `talla` varchar(10) DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Vestido largo estampado floral','Vestido largo con diseño floral y cinturón ajustable.','Vestidos',59.99,'M','http://ejemplo.com/imagen1.jpg','2023-05-15',1),(2,'Blusa de seda sin mangas','Blusa elegante de seda con cuello redondo y detalles plisados.','Blusas',39.95,'S','http://ejemplo.com/imagen2.jpg','2023-04-20',1),(3,'Jeans skinny fit rasgados','Jeans ajustados con efecto desgastado y roturas.','Pantalones',49.90,'L','http://ejemplo.com/imagen3.jpg','2023-06-01',1),(4,'Falda plisada de cuero sintético','Falda corta plisada con acabado de cuero sintético.','Faldas',34.99,'XS','http://ejemplo.com/imagen4.jpg','2023-03-10',1),(5,'Camiseta básica cuello redondo','Camiseta básica de algodón con cuello redondo.','Camisetas',19.99,'M','http://ejemplo.com/imagen5.jpg','2023-05-02',1),(6,'Abrigo largo de lana','Abrigo largo de lana con solapa amplia y cinturón.','Abrigos',129.95,'L','http://ejemplo.com/imagen6.jpg','2023-01-28',1),(7,'Sudadera con capucha y estampado','Sudadera de algodón con capucha y diseño estampado.','Sudaderas',44.50,'S','http://ejemplo.com/imagen7.jpg','2023-05-19',1),(8,'Pantalones cortos de mezclilla','Shorts de mezclilla con dobladillo deshilachado.','Pantalones cortos',29.99,'M','http://ejemplo.com/imagen8.jpg','2023-04-05',1),(9,'Vestido de cóctel bordado','Vestido elegante de cóctel con bordados y ajuste ceñido.','Vestidos',79.99,'XS','http://ejemplo.com/imagen9.jpg','2023-02-14',1),(10,'Blusa de encaje manga larga','Blusa de encaje con mangas largas y cuello alto.','Blusas',49.95,'L','http://ejemplo.com/imagen10.jpg','2023-06-10',1),(11,'Vaqueros rectos lavado oscuro','Jeans rectos de lavado oscuro y efecto entallado.','Pantalones',54.90,'S','http://ejemplo.com/imagen11.jpg','2023-04-18',1),(12,'Minifalda plisada estampada','Minifalda corta plisada con diseño estampado floral.','Faldas',24.99,'M','http://ejemplo.com/imagen12.jpg','2023-03-25',1),(13,'Top crop con estampado gráfico','Top corto con diseño gráfico y tirantes ajustables.','Camisetas',14.99,'XS','http://ejemplo.com/imagen13.jpg','2023-05-30',1),(14,'Gabardina ligera de primavera','Gabardina ligera ideal para la temporada de primavera.','Abrigos',89.95,'M','http://ejemplo.com/imagen14.jpg','2023-03-02',1),(15,'Jersey de punto cuello vuelto','Jersey de punto con cuello vuelto y tejido suave al tacto.','Sudaderas',39.50,'L','http://ejemplo.com/imagen15.jpg','2023-06-15',1),(16,'Shorts de tela estampados','Shorts de tela ligera con estampado floral y cintura elástica.','Pantalones cortos',19.99,'S','http://ejemplo.com/imagen16.jpg','2023-04-12',1),(17,'Vestido largo de noche','Vestido largo de noche con escote en V y detalle de pedrería.','Vestidos',129.99,'M','http://ejemplo.com/imagen17.jpg','2023-02-05',1),(18,'Blusa con lazo y mangas acampanadas','Blusa con lazo en el cuello y mangas acampanadas.','Blusas',34.95,'XS','http://ejemplo.com/imagen18.jpg','2023-05-08',1),(19,'Pantalones cargo estilo militar','Pantalones cargo con múltiples bolsillos y diseño militar.','Pantalones',59.90,'L','http://ejemplo.com/imagen19.jpg','2023-03-18',1),(20,'Falda larga plisada de satén','Falda larga plisada con tejido de satén y cintura elástica.','Faldas',44.99,'M','http://ejemplo.com/imagen20.jpg','2023-06-20',1),(21,'Camiseta manga larga rayas','Camiseta de manga larga con rayas horizontales y cuello redondo.','Camisetas',24.99,'S','http://ejemplo.com/imagen21.jpg','2023-04-22',1),(22,'Chaqueta acolchada ligera','Chaqueta acolchada ligera con capucha desmontable.','Abrigos',79.95,'XS','http://ejemplo.com/imagen22.jpg','2023-01-31',1),(23,'Sudadera cropped con logo','Sudadera corta con logo estampado y manga larga.','Sudaderas',29.50,'M','http://ejemplo.com/imagen23.jpg','2023-05-05',1),(24,'Shorts vaqueros desgastados','Shorts vaqueros desgastados con detalle de roturas.','Pantalones cortos',29.99,'L','http://ejemplo.com/imagen24.jpg','2023-03-15',1),(25,'Vestido ajustado estilo sirena','Vestido ajustado con diseño estilo sirena y escote corazón.','Vestidos',89.99,'S','http://ejemplo.com/imagen25.jpg','2023-02-10',1),(26,'Blusa de manga corta estampada','Blusa ligera de manga corta con estampado floral.','Blusas',29.95,'M','http://ejemplo.com/imagen26.jpg','2023-06-25',1),(27,'Pantalones de cuero sintético','Pantalones ajustados de cuero sintético con cierre lateral.','Pantalones',69.90,'XS','http://ejemplo.com/imagen27.jpg','2023-04-08',1),(28,'Falda vaquera botones frontales','Falda vaquera con botones frontales y largo hasta la rodilla.','Faldas',39.99,'L','http://ejemplo.com/imagen28.jpg','2023-03-05',1),(29,'Camiseta básica cuello pico','Camiseta básica de algodón con cuello en pico y manga corta.','Camisetas',17.99,'S','http://ejemplo.com/imagen29.jpg','2023-05-12',1),(30,'Abrigo de lana entallado','Abrigo de lana entallado con cuello alto y cierre de botones.','Abrigos',149.95,'M','http://ejemplo.com/imagen30.jpg','2023-02-20',1),(31,'Sudadera con capucha y cremallera','Sudadera con capucha, cremallera frontal y bolsillos laterales.','Sudaderas',49.50,'XS','http://ejemplo.com/imagen31.jpg','2023-06-18',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 19:39:38
