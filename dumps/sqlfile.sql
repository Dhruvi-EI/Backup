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

--
-- Table structure for table `cmaster`
--

DROP TABLE IF EXISTS `cmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmaster` (
  `Client_no` varchar(6) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `pincode` decimal(6,0) NOT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Bal_due` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmaster`
--

LOCK TABLES `cmaster` WRITE;
/*!40000 ALTER TABLE `cmaster` DISABLE KEYS */;
INSERT INTO `cmaster` VALUES ('C001','Ivan','Bombay',400054,'Mahashtra',1000.00),('C001','Ivan','Bombay',400054,'Mahashtra',1000.00),('C003','pramada','Bombay',400057,'Mahashtra',5000.00),('C004','basu','Bombay',400056,'Mahashtra',0.00),('C006','rukmani','Bombay',400050,'Mahashtra',0.00);
/*!40000 ALTER TABLE `cmaster` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `order_no` varchar(6) DEFAULT NULL,
  `client_no` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('O1901','C001'),('O1902','C002'),('O4665','C003'),('O1903','C001'),('O4666','C004'),('O1908','C005'),('O1901','C001'),('O1902','C002'),('O4665','C003'),('O1903','C001'),('O4666','C004'),('O1908','C005');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order` (
  `order_no` varchar(6) NOT NULL,
  `order_date` date DEFAULT NULL,
  `Client_no` varchar(6) DEFAULT NULL,
  `S_no` varchar(6) DEFAULT NULL,
  `dely_type` char(1) NOT NULL DEFAULT 'F',
  `billed_yn` char(1) DEFAULT NULL,
  `Dely_date` date DEFAULT NULL,
  `order_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_no`),
  KEY `Client_no` (`Client_no`),
  KEY `S_no` (`S_no`),
  CONSTRAINT `sales_order_ibfk_1` FOREIGN KEY (`Client_no`) REFERENCES `client_master` (`client_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_order_ibfk_2` FOREIGN KEY (`S_no`) REFERENCES `sman_mast` (`s_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_order_chk_1` CHECK ((`order_no` like _utf8mb4'o%')),
  CONSTRAINT `sales_order_chk_2` CHECK ((`dely_date` > `order_date`)),
  CONSTRAINT `sales_order_chk_3` CHECK ((`order_status` in (_utf8mb4'inprocess',_utf8mb4'fullfilled',_utf8mb4'backorder',_utf8mb4'cancelled')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order`
--

LOCK TABLES `sales_order` WRITE;
/*!40000 ALTER TABLE `sales_order` DISABLE KEYS */;
INSERT INTO `sales_order` VALUES ('O1901','2015-06-12','C001','S001','F','N','2015-06-20','InProcess'),('O1902','2015-01-25','C002','S002','P','N','2015-06-27','Cancelled'),('O1903','2015-04-03','C001','S001','F','Y','2015-04-07','Fullfilled'),('O1908','2015-05-24','C005','S003','F','N','2015-05-26','InProcess'),('O4665','2015-02-18','C003','S003','F','Y','2015-02-20','Fullfilled'),('O4666','2015-05-20','C004','S002','P','N','2015-05-22','Cancelled');
/*!40000 ALTER TABLE `sales_order` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-03-07 15:16:16
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dhruvivirani
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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'tiger'),(2,'dog'),(3,'cat'),(4,'tiger'),(5,'dog'),(6,'cat'),(7,'duck'),(8,'lion');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int DEFAULT NULL,
  `brandname` varchar(40) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  UNIQUE KEY `brandname` (`brandname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'pantaloons','38'),(1,'allensolly','38');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Client_no` varchar(6) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `pincode` decimal(6,0) NOT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Bal_due` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_info`
--

DROP TABLE IF EXISTS `client_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_info` (
  `Client_no` varchar(6) DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `pincode` decimal(6,0) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Bal_due` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_info`
--

LOCK TABLES `client_info` WRITE;
/*!40000 ALTER TABLE `client_info` DISABLE KEYS */;
INSERT INTO `client_info` VALUES ('1','joy','pune',345216,'maharshtra',12.20),('2','NULL','surat',352681,'gujarat',1.90),('2','bob','surat',352681,'gujarat',1.90),('2','NULL','surat',352681,'gujarat',1.90);
/*!40000 ALTER TABLE `client_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `Address` varchar(40) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES ('abc','gmail','123'),('def','yahoo','456'),('ghi','firefox','789');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `order_id` int NOT NULL,
  `order_num` int NOT NULL,
  `FK_person_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_person_id` (`FK_person_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`FK_person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (5,10,7);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (4,'abc','singhania'),(7,'xyz','malhotra');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placements`
--

DROP TABLE IF EXISTS `placements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placements` (
  `company_name` varchar(30) DEFAULT NULL,
  `track` varchar(20) DEFAULT NULL,
  `Sub_track` varchar(20) DEFAULT NULL,
  `global_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placements`
--

LOCK TABLES `placements` WRITE;
/*!40000 ALTER TABLE `placements` DISABLE KEYS */;
INSERT INTO `placements` VALUES ('Einfo','IA','python',158317),('Argusoft','IA','Python',158320),('Odoo','IA','Python',158341);
/*!40000 ALTER TABLE `placements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shirts`
--

DROP TABLE IF EXISTS `shirts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shirts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `size` enum('small','medium','large') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shirts`
--

LOCK TABLES `shirts` WRITE;
/*!40000 ALTER TABLE `shirts` DISABLE KEYS */;
INSERT INTO `shirts` VALUES (1,'tshirt','medium'),(2,'shirts','small'),(3,'formal','large');
/*!40000 ALTER TABLE `shirts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `ROLL_NO` int DEFAULT '1005',
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  CONSTRAINT `students_chk_1` CHECK ((`ROLL_NO` > 1000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1001,'aman','tiwari'),(1002,'shubham','sinha'),(1003,'jigar','dhankara'),(1001,'aman','tiwari'),(1002,'shubham','sinha'),(1003,'jigar','dhankara'),(1004,'dhruvi','virani'),(1005,'jyoti','prajapati'),(1005,'dhruvi','virani');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject1`
--

DROP TABLE IF EXISTS `subject1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject1` (
  `subject_name` varchar(20) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_teacher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject1`
--

LOCK TABLES `subject1` WRITE;
/*!40000 ALTER TABLE `subject1` DISABLE KEYS */;
INSERT INTO `subject1` VALUES ('OOPs',90,3711090,'Khushi'),('Maths',87,3420196,'Dhruvi'),('SOCIAL SCIENCE',85,3261829,'JYOTI');
/*!40000 ALTER TABLE `subject1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university` (
  `stream` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES ('engineering','CE','INDIA','Surat');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 15:16:17
