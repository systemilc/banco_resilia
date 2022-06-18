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
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudante_id` int DEFAULT NULL,
  `repositorio` varchar(255) DEFAULT NULL,
  `modulo_projeto` varchar(30) DEFAULT NULL,
  `conceito` varchar(100) DEFAULT NULL,
  `email_estudante` text,
  `turma_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estudante_id` (`estudante_id`),
  CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`estudante_id`) REFERENCES `estudantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1,11,'https://githutb.com/rep_1','MD1','Mais que pronto','fulano@email.com','t18'),(2,12,'https://githutb.com/rep_1','MD2','Tudo Pronto','fulano2@email.com','t18'),(3,13,'https://githutb.com/rep_1','MD3','Pronto','fulano3@email.com','t18'),(4,14,'https://githutb.com/rep_1','MD4','Mais que pronto','fulano4@email.com','t15'),(5,15,'https://githutb.com/rep_1','MD5','Tudo Pronto','fulano5@email.com','t15'),(6,16,'https://githutb.com/rep_1','MD1','Pronto','fulano6@email.com','t15'),(7,17,'https://githutb.com/rep_1','MD2','Mais que pronto','fulano7@email.com','t15'),(8,18,'https://githutb.com/rep_1','MD3','Tudo Pronto','fulano8@email.com','t12'),(9,19,'https://githutb.com/rep_1','MD4','Pronto','fulano9@email.com','t13'),(10,20,'https://githutb.com/rep_1','MD5','Mais que pronto','fulano10@email.com','t16');
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
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
