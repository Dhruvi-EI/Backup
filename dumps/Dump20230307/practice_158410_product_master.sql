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
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_master` (
  `product_no` varchar(6) NOT NULL,
  `description` varchar(15) NOT NULL,
  `p_percent` decimal(4,2) NOT NULL,
  `u_measure` varchar(10) NOT NULL,
  `qty_on_hand` decimal(8,0) NOT NULL,
  `reorder_lvl` decimal(8,0) NOT NULL,
  `new_price` decimal(8,2) NOT NULL,
  `Cost_price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`product_no`),
  CONSTRAINT `product_master_chk_1` CHECK ((`product_no` like _utf8mb4'P%')),
  CONSTRAINT `product_master_chk_2` CHECK ((`new_price` <> 0)),
  CONSTRAINT `product_master_chk_3` CHECK ((`Cost_price` <> 0)),
  CONSTRAINT `product_master_chk_4` CHECK ((`product_no` like _utf8mb4'P%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master`
--

LOCK TABLES `product_master` WRITE;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
INSERT INTO `product_master` VALUES ('P001','Floppies',5.00,'Piece',100,20,525.00,500.00),('P002','Monitor',6.00,'Piece',10,3,12000.00,11280.00),('P003','Mouse',5.00,'Piece',20,5,1050.00,1000.00),('P004','Floppies',5.00,'Piece',100,20,525.00,500.00),('P005','Keyboards',2.00,'Piece',10,3,3150.00,3050.00),('P006','Cd Drive',2.50,'Piece',10,3,5250.00,5100.00),('P007','1.44Drive',4.00,'Piece',10,3,8400.00,8000.00);
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 15:06:53
