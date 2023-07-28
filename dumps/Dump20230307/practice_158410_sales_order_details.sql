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
-- Table structure for table `sales_order_details`
--

DROP TABLE IF EXISTS `sales_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_details` (
  `order_no` varchar(6) DEFAULT NULL,
  `product_no` varchar(6) DEFAULT NULL,
  `qty_ordered` decimal(8,0) DEFAULT NULL,
  `qty_disp` decimal(8,0) DEFAULT NULL,
  `product_rate` decimal(10,2) DEFAULT NULL,
  KEY `order_no` (`order_no`),
  KEY `product_no` (`product_no`),
  CONSTRAINT `sales_order_details_ibfk_1` FOREIGN KEY (`order_no`) REFERENCES `sales_order` (`order_no`),
  CONSTRAINT `sales_order_details_ibfk_2` FOREIGN KEY (`product_no`) REFERENCES `product_master` (`product_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_details`
--

LOCK TABLES `sales_order_details` WRITE;
/*!40000 ALTER TABLE `sales_order_details` DISABLE KEYS */;
INSERT INTO `sales_order_details` VALUES ('O1901','P001',4,4,525.00),('O1901','P002',2,1,8400.00),('O1901','P003',2,1,5250.00),('O1902','P001',10,0,525.00),('O1903','P006',2,2,1050.00),('O1903','P004',1,1,12000.00),('O1908','P005',1,0,8400.00),('O1908','P007',10,0,1050.00),('O4665','P002',3,3,3150.00),('O4665','P004',3,1,5250.00),('O4665','P005',10,10,525.00),('O4665','P003',4,4,1050.00);
/*!40000 ALTER TABLE `sales_order_details` ENABLE KEYS */;
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
