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
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turmas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_de_formatura` varchar(255) DEFAULT NULL,
  `data_de_inicio` timestamp NULL DEFAULT NULL,
  `data_de_formatura` timestamp NULL DEFAULT NULL,
  `qtde_estudantes` int DEFAULT NULL,
  `empresa_monitora_id` int DEFAULT NULL,
  `cursos_id` int DEFAULT NULL,
  `equipe_de_sucesso_id` int DEFAULT NULL,
  `monitor_id` int DEFAULT NULL,
  `facilitador_tech_M5_id` int DEFAULT NULL,
  `facilitador_tech_M3e4_id` int DEFAULT NULL,
  `facilitador_tech_M1e2_id` int DEFAULT NULL,
  `facilitador_soft_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_monitora_id` (`empresa_monitora_id`),
  KEY `cursos_id` (`cursos_id`),
  KEY `facilitador_soft_id` (`facilitador_soft_id`),
  KEY `facilitador_tech_M1e2_id` (`facilitador_tech_M1e2_id`),
  KEY `facilitador_tech_M3e4_id` (`facilitador_tech_M3e4_id`),
  KEY `facilitador_tech_M5_id` (`facilitador_tech_M5_id`),
  KEY `monitor_id` (`monitor_id`),
  KEY `equipe_de_sucesso_id` (`equipe_de_sucesso_id`),
  CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`empresa_monitora_id`) REFERENCES `empresa_monitora` (`id`),
  CONSTRAINT `turmas_ibfk_10` FOREIGN KEY (`equipe_de_sucesso_id`) REFERENCES `facilitador` (`id`),
  CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `turmas_ibfk_3` FOREIGN KEY (`equipe_de_sucesso_id`) REFERENCES `equipe_de_sucesso` (`id`),
  CONSTRAINT `turmas_ibfk_4` FOREIGN KEY (`monitor_id`) REFERENCES `monitor` (`id`),
  CONSTRAINT `turmas_ibfk_5` FOREIGN KEY (`facilitador_soft_id`) REFERENCES `facilitador` (`id`),
  CONSTRAINT `turmas_ibfk_6` FOREIGN KEY (`facilitador_tech_M1e2_id`) REFERENCES `facilitador` (`id`),
  CONSTRAINT `turmas_ibfk_7` FOREIGN KEY (`facilitador_tech_M3e4_id`) REFERENCES `facilitador` (`id`),
  CONSTRAINT `turmas_ibfk_8` FOREIGN KEY (`facilitador_tech_M5_id`) REFERENCES `facilitador` (`id`),
  CONSTRAINT `turmas_ibfk_9` FOREIGN KEY (`monitor_id`) REFERENCES `facilitador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 20:38:26
