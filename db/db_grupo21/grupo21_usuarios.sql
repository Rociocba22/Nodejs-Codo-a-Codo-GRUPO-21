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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `dirección` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan','Gómez','Av. Colón 123','juangomez@gmail.com','+54 351 1234567','1990-05-15'),(2,'María','López','Av. Sagrada Familia 456','marialopez@gmail.com','+54 351 2345678','1985-08-22'),(3,'Carlos','Martínez','Av. Vélez Sársfield 789','carlosmartinez@gmail.com','+54 351 3456789','1982-04-10'),(4,'Laura','Rodríguez','Av. Olmos 1011','laurarodriguez@gmail.com','+54 351 4567890','1995-12-03'),(5,'Pedro','García','Av. Hipólito Yrigoyen 1213','pedrogarcia@gmail.com','+54 351 5678901','1988-07-18'),(6,'Ana','Pérez','Av. Colón 1415','anaperez@gmail.com','+54 351 6789012','1993-02-28'),(7,'Jorge','Fernández','Av. Rafael Núñez 1617','jorgefernandez@gmail.com','+54 351 7890123','1980-11-09'),(8,'Silvia','Díaz','Av. Pueyrredón 1819','silviadiaz@gmail.com','+54 351 8901234','1987-09-14'),(9,'Martín','Gutiérrez','Av. Castro Barros 2021','martingutierrez@gmail.com','+54 351 9012345','1991-06-25'),(10,'Lucía','Romero','Av. Santa Fe 2223','luciaromero@gmail.com','+54 351 0123456','1984-03-17'),(11,'Gonzalo','Sánchez','Av. Maipú 2425','gonzalosanchez@gmail.com','+54 351 1234567','1989-10-31'),(12,'Valentina','Alvarez','Av. San Jerónimo 2627','valentinaalvarez@gmail.com','+54 351 2345678','1994-01-08'),(13,'Diego','Torres','Av. Colón 2829','diegotorres@gmail.com','+54 351 3456789','1983-08-05'),(14,'Marcela','Acosta','Av. Vélez Sársfield 3031','marcelaacosta@gmail.com','+54 351 4567890','1997-04-20'),(15,'Ricardo','Molina','Av. Olmos 3233','ricardomolina@gmail.com','+54 351 5678901','1986-12-13'),(16,'Florencia','Rojas','Av. Hipólito Yrigoyen 3435','florenciarojas@gmail.com','+54 351 6789012','1992-02-26'),(17,'Roberto','Moreno','Av. Colón 3637','robertomoreno@gmail.com','+54 351 7890123','1981-11-19'),(18,'Natalia','Gómez','Av. Rafael Núñez 3839','nataliagomez@gmail.com','+54 351 8901234','1988-09-24'),(19,'Alejandro','López','Av. Pueyrredón 4041','alejandrolopez@gmail.com','+54 351 9012345','1993-06-17'),(20,'Carolina','Martínez','Av. Castro Barros 4243','carolinamartinez@gmail.com','+54 351 0123456','1985-03-10'),(21,'Miguel','Rodríguez','Av. Santa Fe 4445','miguelrodriguez@gmail.com','+54 351 1234567','1990-10-03'),(22,'Luis','García','Av. Maipú 4647','luisgarcia@gmail.com','+54 351 2345678','1987-01-16'),(23,'Andrea','Pérez','Av. San Jerónimo 4849','andreapertelefonoez@gmail.com','+54 351 3456789','1992-08-29'),(24,'Julián','Fernández','Av. Colón 5051','julianfernandez@gmail.com','+54 351 4567890','1984-05-22'),(25,'Gabriela','Díaz','Av. Vélez Sársfield 5253','gabrieladiaz@gmail.com','+54 351 5678901','1989-12-15'),(26,'Lucas','Gutiérrez','Av. Olmos 5455','lucasgutierrez@gmail.com','+54 351 6789012','1986-02-28'),(27,'Camila','Romero','Av. Hipólito Yrigoyen 5657','camilaromero@gmail.com','+54 351 7890123','1991-09-11'),(28,'Pablo','Sánchez','Av. Colón 5859','pablosanchez@gmail.com','+54 351 8901234','1983-07-04'),(29,'Romina','Alvarez','Av. Rafael Núñez 6061','rominaalvarez@gmail.com','+54 351 9012345','1988-04-27');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 19:39:37
