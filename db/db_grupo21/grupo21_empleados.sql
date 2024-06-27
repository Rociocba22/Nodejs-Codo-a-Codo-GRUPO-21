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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `local_asignado` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (21,123456789,'Juan','Gómez','Av. Colón 123, Córdoba, Argentina','1980-05-15',1),(22,234567890,'María','López','Av. Sagrada Familia 456, Córdoba, Argentina','1985-08-22',2),(23,345678901,'Carlos','Martínez','Av. Vélez Sársfield 789, Córdoba, Argentina','1990-04-10',3),(24,456789012,'Laura','Rodríguez','Av. Olmos 1011, Córdoba, Argentina','1995-12-03',1),(25,567890123,'Pedro','García','Av. Hipólito Yrigoyen 1213, Córdoba, Argentina','1988-07-18',2),(26,678901234,'Ana','Pérez','Av. Colón 1415, Córdoba, Argentina','1993-02-28',3),(27,789012345,'Jorge','Fernández','Av. Rafael Núñez 1617, Córdoba, Argentina','1984-11-09',1),(28,890123456,'Silvia','Díaz','Av. Pueyrredón 1819, Córdoba, Argentina','1987-09-14',2),(29,901234567,'Martín','Gutiérrez','Av. Castro Barros 2021, Córdoba, Argentina','1978-06-25',3),(30,12345678,'Lucía','Romero','Av. Santa Fe 2223, Córdoba, Argentina','1973-03-17',1),(31,123456789,'Gonzalo','Sánchez','Av. Maipú 2425, Córdoba, Argentina','1990-10-31',2),(32,234567890,'Valentina','Alvarez','Av. San Jerónimo 2627, Córdoba, Argentina','1985-01-08',3),(33,345678901,'Diego','Torres','Av. Colón 2829, Córdoba, Argentina','1983-08-05',1),(34,456789012,'Marcela','Acosta','Av. Vélez Sársfield 3031, Córdoba, Argentina','1997-04-20',2),(35,567890123,'Ricardo','Molina','Av. Olmos 3233, Córdoba, Argentina','1986-12-13',3),(36,678901234,'Florencia','Rojas','Av. Hipólito Yrigoyen 3435, Córdoba, Argentina','1979-02-26',1),(37,789012345,'Roberto','Moreno','Av. Colón 3637, Córdoba, Argentina','1981-11-19',2),(38,890123456,'Natalia','Gómez','Av. Rafael Núñez 3839, Córdoba, Argentina','1988-09-24',3),(39,901234567,'Alejandro','López','Av. Pueyrredón 4041, Córdoba, Argentina','1983-06-17',1),(40,12345678,'Carolina','Martínez','Av. Castro Barros 4243, Córdoba, Argentina','1975-03-10',2);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
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
