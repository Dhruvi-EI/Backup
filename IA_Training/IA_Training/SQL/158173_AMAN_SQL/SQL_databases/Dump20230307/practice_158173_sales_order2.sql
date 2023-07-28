-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: practice_158173
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
-- Table structure for table `sales_order2`
--

DROP TABLE IF EXISTS `sales_order2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order2` (
  `order_no` varchar(6) NOT NULL,
  `order_date` date DEFAULT NULL,
  `client_no` varchar(6) DEFAULT NULL,
  `s_no` varchar(6) DEFAULT NULL,
  `dely_type` char(1) DEFAULT 'F',
  `billed_yn` char(1) DEFAULT NULL,
  `dely_date` date DEFAULT NULL,
  `order_status` enum('inprocess','fulfilled','backorder','cancelled') DEFAULT NULL,
  PRIMARY KEY (`order_no`),
  KEY `client_no` (`client_no`),
  KEY `s_no` (`s_no`),
  CONSTRAINT `sales_order2_ibfk_1` FOREIGN KEY (`client_no`) REFERENCES `client_master2` (`client_no`),
  CONSTRAINT `sales_order2_ibfk_2` FOREIGN KEY (`s_no`) REFERENCES `salesman_master2` (`S_no`),
  CONSTRAINT `sales_order2_chk_1` CHECK ((`order_no` like _utf8mb4'O%')),
  CONSTRAINT `sales_order2_chk_2` CHECK (((`dely_type` = _utf8mb4'P') or (`dely_type` = _utf8mb4'F'))),
  CONSTRAINT `sales_order2_chk_3` CHECK ((`dely_date` > `order_date`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order2`
--

LOCK TABLES `sales_order2` WRITE;
/*!40000 ALTER TABLE `sales_order2` DISABLE KEYS */;
INSERT INTO `sales_order2` VALUES ('O1901','2015-06-12','C001','S001','F','N','2015-06-20','inprocess'),('O1902','2015-01-25','C002','S002','P','N','2015-06-27','cancelled'),('O1903','2015-04-03','C001','S001','F','Y','2015-04-07','fulfilled'),('O1908','2015-05-24','C005','S003','F','N','2015-05-26','inprocess'),('O4665','2015-02-18','C003','S003','F','Y','2015-02-20','fulfilled'),('O4666','2015-05-20','C004','S002','P','N','2015-05-22','cancelled');
/*!40000 ALTER TABLE `sales_order2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 22:33:38
