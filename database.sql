CREATE DATABASE  IF NOT EXISTS `DRDO` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DRDO`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: DRDO
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `ColumnsSSPL`
--

DROP TABLE IF EXISTS `ColumnsSSPL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ColumnsSSPL` (
  `sr_no` int NOT NULL,
  `project_number` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `pd_name` varchar(255) DEFAULT NULL,
  `contact_details` varchar(45) DEFAULT NULL,
  `email_of_pd` varchar(45) DEFAULT NULL,
  `type_of_project` varchar(45) DEFAULT NULL,
  `objectives` text,
  `deliverables` text,
  `initial_sanctioned_cost` decimal(10,2) DEFAULT NULL,
  `total_expenditure` decimal(10,2) DEFAULT NULL,
  `date_of_sanction` date DEFAULT NULL,
  `pdc_month` varchar(45) DEFAULT NULL,
  `date_of_completion` date DEFAULT NULL,
  `extended_pdc_1` date DEFAULT NULL,
  `extended_pdc_2` date DEFAULT NULL,
  `extended_pdc_3` date DEFAULT NULL,
  `drds` varchar(45) DEFAULT NULL,
  `drtc` varchar(45) DEFAULT NULL,
  `sanction_year` year DEFAULT NULL,
  `current_status` varchar(45) DEFAULT NULL,
  `date_of_closure` date DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ColumnsSSPL`
--

LOCK TABLES `ColumnsSSPL` WRITE;
/*!40000 ALTER TABLE `ColumnsSSPL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ColumnsSSPL` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29  9:13:30
