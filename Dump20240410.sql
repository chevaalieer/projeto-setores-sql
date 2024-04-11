CREATE DATABASE  IF NOT EXISTS `projeto_setores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `projeto_setores`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_setores
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `emprego`
--

DROP TABLE IF EXISTS `emprego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprego` (
  `employment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `establishment_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `employment` int(11) NOT NULL,
  `wages` decimal(10,2) NOT NULL,
  `causa_falencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprego`
--

LOCK TABLES `emprego` WRITE;
/*!40000 ALTER TABLE `emprego` DISABLE KEYS */;
INSERT INTO `emprego` VALUES (1,1,2023,1,500,50000.00,'Concorrência'),(2,1,2023,2,490,51000.00,'Instabilidade econômica'),(3,3,2023,1,400,45000.00,'Concorrência'),(4,3,2023,2,390,46000.00,'Mudanças tecnológicas'),(5,5,2023,1,200,70000.00,'Concorrência'),(6,5,2023,2,210,71000.00,'Mudanças tecnológicas'),(7,7,2023,1,300,55000.00,'Instabilidade econômica'),(8,7,2023,2,290,56000.00,'Mudanças tecnológicas');
/*!40000 ALTER TABLE `emprego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estabelecimentos`
--

DROP TABLE IF EXISTS `estabelecimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estabelecimentos` (
  `establishment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sector_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `establishments` int(11) NOT NULL,
  PRIMARY KEY (`establishment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estabelecimentos`
--

LOCK TABLES `estabelecimentos` WRITE;
/*!40000 ALTER TABLE `estabelecimentos` DISABLE KEYS */;
INSERT INTO `estabelecimentos` VALUES (1,1,2023,1,150),(2,1,2023,2,145),(3,2,2023,1,120),(4,2,2023,2,115),(5,3,2023,1,80),(6,3,2023,2,85),(7,4,2023,1,100),(8,4,2023,2,95);
/*!40000 ALTER TABLE `estabelecimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setores`
--

DROP TABLE IF EXISTS `setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setores` (
  `sector_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(255) NOT NULL,
  PRIMARY KEY (`sector_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setores`
--

LOCK TABLES `setores` WRITE;
/*!40000 ALTER TABLE `setores` DISABLE KEYS */;
INSERT INTO `setores` VALUES (1,'restaurantes'),(2,'lojas de varejo'),(3,'tecnologia'),(4,'construção');
/*!40000 ALTER TABLE `setores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 22:10:37
