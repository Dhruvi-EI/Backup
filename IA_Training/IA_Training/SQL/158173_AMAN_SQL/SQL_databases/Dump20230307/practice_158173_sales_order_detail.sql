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
-- Table structure for table `sales_order_detail`
--

DROP TABLE IF EXISTS `sales_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_detail` (
  `order_no` varchar(6) NOT NULL,
  `product_no` varchar(6) NOT NULL,
  `qty_ordered` decimal(8,0) DEFAULT NULL,
  `qty_disp` decimal(8,0) DEFAULT NULL,
  `product_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_no`,`product_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_detail`
--

LOCK TABLES `sales_order_detail` WRITE;
/*!40000 ALTER TABLE `sales_order_detail` DISABLE KEYS */;
INSERT INTO `sales_order_detail` VALUES ('o1901','p001',4,4,525.00),('o1901','p002',2,1,8400.00),('o1901','p003',2,1,5250.00),('o1902','p001',10,0,525.00),('o1903','p004',1,1,12000.00),('o1903','p006',2,2,1050.00),('o1908','p005',1,0,8400.00),('o1908','p007',10,0,1050.00),('o4665','p002',3,3,3150.00),('o4665','p003',4,4,1050.00),('o4665','p004',3,1,5250.00),('o4665','p005',10,10,525.00);
/*!40000 ALTER TABLE `sales_order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 22:33:37
