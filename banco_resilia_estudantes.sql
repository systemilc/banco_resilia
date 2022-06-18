-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: banco_resilia
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `estudantes`
--

DROP TABLE IF EXISTS `estudantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `cursos_id` int DEFAULT NULL,
  `turmas_id` int DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `email` text,
  `usuario_code_wars` varchar(30) DEFAULT NULL,
  `usuario_discord` varchar(30) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `tipo_de_pagamento` varchar(255) DEFAULT NULL,
  `data_de_matricula` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursos_id` (`cursos_id`),
  KEY `turmas_id` (`turmas_id`),
  CONSTRAINT `estudantes_ibfk_1` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `estudantes_ibfk_2` FOREIGN KEY (`turmas_id`) REFERENCES `turmas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudantes`
--

LOCK TABLES `estudantes` WRITE;
/*!40000 ALTER TABLE `estudantes` DISABLE KEYS */;
INSERT INTO `estudantes` VALUES (11,'Luciano Paiva',NULL,NULL,'12365478911','email1@email.com','code1','discord1','31123654','FINANCIAMENTO','2000-01-01'),(12,'Luana Mara',NULL,NULL,'32145279571','email2@email.com','code2','discord2','21254789','FINANCIAMENTO','2001-01-01'),(13,'Isaac Costa',NULL,NULL,'12479354781','email3@email.com','code3','discord3','32123654','ANTECIPADO','2002-01-01'),(14,'Lucas Dias',NULL,NULL,'32548964153','email4@email.com','code4',' dicord4','11999999999','PARCELADO','2003-01-01'),(15,'Silene Maria',NULL,NULL,'31054978542','email5@email.com','code5','discord5','13988888888','ANTECIPADO','2004-01-01'),(16,'Luciano Paiva',NULL,NULL,'12365478911','email1@email.com','code1','discord1','31123654','FINANCIAMENTO','2000-01-01'),(17,'Luana Mara',NULL,NULL,'32145279571','email2@email.com','code2','discord2','21254789','FINANCIAMENTO','2001-01-01'),(18,'Isaac Costa',NULL,NULL,'12479354781','email3@email.com','code3','discord3','32123654','ANTECIPADO','2002-01-01'),(19,'Lucas Dias',NULL,NULL,'32548964153','email4@email.com','code4',' dicord4','11999999999','PARCELADO','2003-01-01'),(20,'Silene Maria',NULL,NULL,'31054978542','email5@email.com','code5','discord5','13988888888','ANTECIPADO','2004-01-01');
/*!40000 ALTER TABLE `estudantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 20:38:27
