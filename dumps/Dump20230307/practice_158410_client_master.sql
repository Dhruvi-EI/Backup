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
-- Table structure for table `client_master`
--

DROP TABLE IF EXISTS `client_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_master` (
  `client_no` varchar(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `pincode` decimal(6,0) NOT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Bal_due` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`client_no`),
  CONSTRAINT `client_master_chk_1` CHECK ((`client_no` like _utf8mb4'C%')),
  CONSTRAINT `client_master_chk_2` CHECK ((`client_no` like _utf8mb4'C%')),
  CONSTRAINT `client_master_chk_3` CHECK ((`client_no` like _utf8mb4'C%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_master`
--

LOCK TABLES `client_master` WRITE;
/*!40000 ALTER TABLE `client_master` DISABLE KEYS */;
INSERT INTO `client_master` VALUES ('C001','Ivan','Bombay',400054,'Mahashtra',15000.00),('C002','vandana','madras',780001,'tamil nadu',0.00),('C003','pramada','Bombay',400057,'Mahashtra',5000.00),('C004','basu','Bombay',400056,'Mahashtra',0.00),('C005','ravi','delhi',100001,'gujarat',2000.00),('C006','rukmani','Bombay',400050,'Mahashtra',0.00);
/*!40000 ALTER TABLE `client_master` ENABLE KEYS */;
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
