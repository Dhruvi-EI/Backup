-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: practice_158410
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `sman_mast`
--

DROP TABLE IF EXISTS `sman_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sman_mast` (
  `s_no` varchar(6) NOT NULL,
  `s_name` varchar(15) NOT NULL,
  `city` varchar(10) DEFAULT NULL,
  `pincode` decimal(8,0) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL,
  `sal_amt` decimal(8,2) NOT NULL,
  `Tgt_to_get` decimal(6,2) NOT NULL,
  `ytd_sales` decimal(6,2) NOT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  CONSTRAINT `sman_mast_chk_1` CHECK ((`sal_amt` <> 0)),
  CONSTRAINT `sman_mast_chk_2` CHECK ((`tgt_to_get` <> 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sman_mast`
--

LOCK TABLES `sman_mast` WRITE;
/*!40000 ALTER TABLE `sman_mast` DISABLE KEYS */;
INSERT INTO `sman_mast` VALUES ('S001','Kiran','Bombay',400002,'Maharashtra',3000.00,100.00,50.00,'Excellent'),('S002','Manish','Bombay',400001,'Maharashtra',3000.00,200.00,100.00,'Good'),('S003','Ravi','Bombay',400032,'Maharashtra',3000.00,200.00,100.00,'Average'),('S004','Ashish','Bombay',400044,'Maharashtra',3500.00,200.00,150.00,'Good');
/*!40000 ALTER TABLE `sman_mast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 15:06:52
