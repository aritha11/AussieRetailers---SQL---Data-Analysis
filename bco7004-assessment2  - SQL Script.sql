CREATE DATABASE  IF NOT EXISTS `bco7004_assessment2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bco7004_assessment2`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bco7004_assessment2
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branchdetails`
--

DROP TABLE IF EXISTS `branchdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchdetails` (
  `branch_id` int NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchdetails`
--

LOCK TABLES `branchdetails` WRITE;
/*!40000 ALTER TABLE `branchdetails` DISABLE KEYS */;
INSERT INTO `branchdetails` VALUES (1,'Branch 1','Location 1'),(2,'Branch 2','Location 2'),(3,'Branch 3','Location 3'),(4,'Branch 4','Location 4'),(5,'Branch 5','Location 5'),(6,'Branch 6','Location 6'),(7,'Branch 7','Location 7'),(8,'Branch 8','Location 8'),(9,'Branch 9','Location 9'),(10,'Branch 10','Location 10'),(11,'Branch 11','Location 11'),(12,'Branch 12','Location 12'),(13,'Branch 13','Location 13'),(14,'Branch 14','Location 14'),(15,'Branch 15','Location 15'),(16,'Branch 16','Location 16'),(17,'Branch 17','Location 17'),(18,'Branch 18','Location 18'),(19,'Branch 19','Location 19'),(20,'Branch 20','Location 20'),(21,'Branch 21','Location 21'),(22,'Branch 22','Location 22'),(23,'Branch 23','Location 23'),(24,'Branch 24','Location 24'),(25,'Branch 25','Location 25'),(26,'Branch 26','Location 26'),(27,'Branch 27','Location 27'),(28,'Branch 28','Location 28'),(29,'Branch 29','Location 29'),(30,'Branch 30','Location 30'),(31,'Branch 31','Location 31'),(32,'Branch 32','Location 32'),(33,'Branch 33','Location 33'),(34,'Branch 34','Location 34'),(35,'Branch 35','Location 35'),(36,'Branch 36','Location 36'),(37,'Branch 37','Location 37'),(38,'Branch 38','Location 38'),(39,'Branch 39','Location 39'),(40,'Branch 40','Location 40');
/*!40000 ALTER TABLE `branchdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaintdetails`
--

DROP TABLE IF EXISTS `complaintdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaintdetails` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `complaint_date` date NOT NULL,
  `resolution_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `complaintdetails_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customerdetails` (`customer_id`),
  CONSTRAINT `complaintdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productdetails` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaintdetails`
--

LOCK TABLES `complaintdetails` WRITE;
/*!40000 ALTER TABLE `complaintdetails` DISABLE KEYS */;
INSERT INTO `complaintdetails` VALUES (1,13,25,'2022-03-02','Under Review'),(2,10,62,'2022-01-20','Closed'),(3,21,56,'2022-07-01','Closed'),(4,23,6,'2022-09-11','Pending'),(5,48,12,'2022-05-25','Pending'),(6,41,21,'2022-03-04','Under Review'),(7,34,37,'2022-11-15','Under Review'),(8,4,15,'2022-02-10','Resolved'),(9,31,61,'2022-07-07','Resolved'),(10,12,10,'2022-06-15','Resolved'),(11,42,37,'2022-07-02','Closed'),(12,17,41,'2022-10-30','Under Review'),(13,25,52,'2022-05-28','Under Review'),(14,40,15,'2022-01-11','Resolved'),(15,20,68,'2022-09-17','Closed'),(16,48,33,'2022-05-17','Closed'),(17,10,41,'2022-01-29','Pending'),(18,48,45,'2022-10-07','Closed'),(19,50,51,'2022-12-22','Pending'),(20,9,62,'2022-09-23','Closed'),(21,45,29,'2022-03-31','Under Review'),(22,5,47,'2022-07-31','Closed'),(23,13,39,'2022-01-24','Pending'),(24,10,37,'2022-06-17','Pending'),(25,43,65,'2022-03-15','Resolved'),(26,18,44,'2022-01-05','Pending'),(27,21,63,'2022-07-16','Pending'),(28,42,9,'2022-08-28','Pending'),(29,48,47,'2022-09-19','Resolved'),(30,8,58,'2022-09-16','Closed'),(31,22,24,'2022-09-23','Closed'),(32,41,52,'2022-01-17','Resolved'),(33,26,24,'2022-02-09','Pending'),(34,11,47,'2022-01-08','Under Review'),(35,40,12,'2022-10-05','Closed'),(36,23,70,'2022-03-02','Closed'),(37,42,2,'2022-07-17','Closed'),(38,10,27,'2022-07-19','Resolved'),(39,31,60,'2022-01-02','Under Review'),(40,26,12,'2022-12-03','Closed'),(41,6,67,'2022-07-21','Resolved'),(42,41,70,'2022-10-12','Pending'),(43,16,15,'2022-11-10','Under Review'),(44,31,14,'2022-02-05','Closed'),(45,2,43,'2022-12-29','Pending'),(46,13,44,'2022-07-25','Under Review'),(47,20,70,'2022-01-21','Pending'),(48,6,55,'2022-04-03','Resolved'),(49,16,48,'2022-03-09','Resolved'),(50,6,55,'2022-06-25','Under Review'),(51,20,5,'2022-01-08','Under Review'),(52,23,31,'2022-06-02','Pending'),(53,37,66,'2022-06-01','Resolved'),(54,40,55,'2022-04-26','Under Review'),(55,30,18,'2022-11-03','Pending'),(56,24,68,'2022-11-08','Pending'),(57,30,15,'2022-11-28','Under Review'),(58,5,61,'2022-05-26','Closed'),(59,47,59,'2022-05-09','Resolved'),(60,46,21,'2022-11-27','Closed');
/*!40000 ALTER TABLE `complaintdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact_details` varchar(255) DEFAULT NULL,
  `loyalty_program_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (1,'Customer 1','Email1@example.com',1),(2,'Customer 2','Email2@example.com',1),(3,'Customer 3','Email3@example.com',1),(4,'Customer 4','Email4@example.com',0),(5,'Customer 5','Email5@example.com',0),(6,'Customer 6','Email6@example.com',0),(7,'Customer 7','Email7@example.com',0),(8,'Customer 8','Email8@example.com',0),(9,'Customer 9','Email9@example.com',0),(10,'Customer 10','Email10@example.com',1),(11,'Customer 11','Email11@example.com',0),(12,'Customer 12','Email12@example.com',0),(13,'Customer 13','Email13@example.com',1),(14,'Customer 14','Email14@example.com',0),(15,'Customer 15','Email15@example.com',0),(16,'Customer 16','Email16@example.com',0),(17,'Customer 17','Email17@example.com',1),(18,'Customer 18','Email18@example.com',0),(19,'Customer 19','Email19@example.com',0),(20,'Customer 20','Email20@example.com',0),(21,'Customer 21','Email21@example.com',0),(22,'Customer 22','Email22@example.com',1),(23,'Customer 23','Email23@example.com',0),(24,'Customer 24','Email24@example.com',0),(25,'Customer 25','Email25@example.com',1),(26,'Customer 26','Email26@example.com',0),(27,'Customer 27','Email27@example.com',1),(28,'Customer 28','Email28@example.com',1),(29,'Customer 29','Email29@example.com',1),(30,'Customer 30','Email30@example.com',0),(31,'Customer 31','Email31@example.com',0),(32,'Customer 32','Email32@example.com',0),(33,'Customer 33','Email33@example.com',1),(34,'Customer 34','Email34@example.com',1),(35,'Customer 35','Email35@example.com',1),(36,'Customer 36','Email36@example.com',1),(37,'Customer 37','Email37@example.com',1),(38,'Customer 38','Email38@example.com',1),(39,'Customer 39','Email39@example.com',0),(40,'Customer 40','Email40@example.com',0),(41,'Customer 41','Email41@example.com',1),(42,'Customer 42','Email42@example.com',1),(43,'Customer 43','Email43@example.com',1),(44,'Customer 44','Email44@example.com',1),(45,'Customer 45','Email45@example.com',0),(46,'Customer 46','Email46@example.com',1),(47,'Customer 47','Email47@example.com',0),(48,'Customer 48','Email48@example.com',0),(49,'Customer 49','Email49@example.com',1),(50,'Customer 50','Email50@example.com',0),(51,'Customer 51','Email51@example.com',1),(52,'Customer 52','Email52@example.com',1),(53,'Customer 53','Email53@example.com',1),(54,'Customer 54','Email54@example.com',0),(55,'Customer 55','Email55@example.com',1),(56,'Customer 56','Email56@example.com',1),(57,'Customer 57','Email57@example.com',0),(58,'Customer 58','Email58@example.com',1),(59,'Customer 59','Email59@example.com',1),(60,'Customer 60','Email60@example.com',1),(61,'Customer 61','Email61@example.com',1),(62,'Customer 62','Email62@example.com',1),(63,'Customer 63','Email63@example.com',0),(64,'Customer 64','Email64@example.com',0),(65,'Customer 65','Email65@example.com',0),(66,'Customer 66','Email66@example.com',0),(67,'Customer 67','Email67@example.com',1),(68,'Customer 68','Email68@example.com',1),(69,'Customer 69','Email69@example.com',1),(70,'Customer 70','Email70@example.com',1),(71,'Customer 71','Email71@example.com',0),(72,'Customer 72','Email72@example.com',0),(73,'Customer 73','Email73@example.com',0),(74,'Customer 74','Email74@example.com',0),(75,'Customer 75','Email75@example.com',1),(76,'Customer 76','Email76@example.com',1),(77,'Customer 77','Email77@example.com',0),(78,'Customer 78','Email78@example.com',1),(79,'Customer 79','Email79@example.com',0),(80,'Customer 80','Email80@example.com',1),(81,'Customer 81','Email81@example.com',1),(82,'Customer 82','Email82@example.com',1),(83,'Customer 83','Email83@example.com',1),(84,'Customer 84','Email84@example.com',1),(85,'Customer 85','Email85@example.com',1),(86,'Customer 86','Email86@example.com',1),(87,'Customer 87','Email87@example.com',0),(88,'Customer 88','Email88@example.com',0),(89,'Customer 89','Email89@example.com',0),(90,'Customer 90','Email90@example.com',1),(91,'Customer 91','Email91@example.com',0),(92,'Customer 92','Email92@example.com',1),(93,'Customer 93','Email93@example.com',0),(94,'Customer 94','Email94@example.com',1),(95,'Customer 95','Email95@example.com',1),(96,'Customer 96','Email96@example.com',0),(97,'Customer 97','Email97@example.com',1),(98,'Customer 98','Email98@example.com',0),(99,'Customer 99','Email99@example.com',0),(100,'Customer 100','Email100@example.com',1);
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetails`
--

DROP TABLE IF EXISTS `productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productdetails` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_level` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetails`
--

LOCK TABLES `productdetails` WRITE;
/*!40000 ALTER TABLE `productdetails` DISABLE KEYS */;
INSERT INTO `productdetails` VALUES (1,'Product 1','Category 2',10.50,55),(2,'Product 2','Category 3',11.00,60),(3,'Product 3','Category 4',11.50,65),(4,'Product 4','Category 5',12.00,70),(5,'Product 5','Category 6',12.50,75),(6,'Product 6','Category 7',13.00,80),(7,'Product 7','Category 8',13.50,85),(8,'Product 8','Category 9',14.00,90),(9,'Product 9','Category 10',14.50,95),(10,'Product 10','Category 1',15.00,50),(11,'Product 11','Category 2',15.50,55),(12,'Product 12','Category 3',16.00,60),(13,'Product 13','Category 4',16.50,65),(14,'Product 14','Category 5',17.00,70),(15,'Product 15','Category 6',17.50,75),(16,'Product 16','Category 7',18.00,80),(17,'Product 17','Category 8',18.50,85),(18,'Product 18','Category 9',19.00,90),(19,'Product 19','Category 10',19.50,95),(20,'Product 20','Category 1',20.00,50),(21,'Product 21','Category 2',20.50,55),(22,'Product 22','Category 3',21.00,60),(23,'Product 23','Category 4',21.50,65),(24,'Product 24','Category 5',22.00,70),(25,'Product 25','Category 6',22.50,75),(26,'Product 26','Category 7',23.00,80),(27,'Product 27','Category 8',23.50,85),(28,'Product 28','Category 9',24.00,90),(29,'Product 29','Category 10',24.50,95),(30,'Product 30','Category 1',25.00,50),(31,'Product 31','Category 2',25.50,55),(32,'Product 32','Category 3',26.00,60),(33,'Product 33','Category 4',26.50,65),(34,'Product 34','Category 5',27.00,70),(35,'Product 35','Category 6',27.50,75),(36,'Product 36','Category 7',28.00,80),(37,'Product 37','Category 8',28.50,85),(38,'Product 38','Category 9',29.00,90),(39,'Product 39','Category 10',29.50,95),(40,'Product 40','Category 1',30.00,50),(41,'Product 41','Category 2',30.50,55),(42,'Product 42','Category 3',31.00,60),(43,'Product 43','Category 4',31.50,65),(44,'Product 44','Category 5',32.00,70),(45,'Product 45','Category 6',32.50,75),(46,'Product 46','Category 7',33.00,80),(47,'Product 47','Category 8',33.50,85),(48,'Product 48','Category 9',34.00,90),(49,'Product 49','Category 10',34.50,95),(50,'Product 50','Category 1',35.00,50),(51,'Product 51','Category 2',35.50,55),(52,'Product 52','Category 3',36.00,60),(53,'Product 53','Category 4',36.50,65),(54,'Product 54','Category 5',37.00,70),(55,'Product 55','Category 6',37.50,75),(56,'Product 56','Category 7',38.00,80),(57,'Product 57','Category 8',38.50,85),(58,'Product 58','Category 9',39.00,90),(59,'Product 59','Category 10',39.50,95),(60,'Product 60','Category 1',40.00,50),(61,'Product 61','Category 2',40.50,55),(62,'Product 62','Category 3',41.00,60),(63,'Product 63','Category 4',41.50,65),(64,'Product 64','Category 5',42.00,70),(65,'Product 65','Category 6',42.50,75),(66,'Product 66','Category 7',43.00,80),(67,'Product 67','Category 8',43.50,85),(68,'Product 68','Category 9',44.00,90),(69,'Product 69','Category 10',44.50,95),(70,'Product 70','Category 1',45.00,50);
/*!40000 ALTER TABLE `productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `sale_date` date NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `productdetails` (`product_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customerdetails` (`customer_id`),
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branchdetails` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2022-05-01',51,10,46,40),(2,'2022-02-21',67,8,20,38),(3,'2022-05-23',7,1,34,20),(4,'2022-07-21',39,6,25,37),(5,'2022-06-15',50,4,9,29),(6,'2022-06-04',20,5,31,6),(7,'2022-02-04',53,5,37,24),(8,'2022-11-16',27,5,41,3),(9,'2022-03-31',31,8,28,18),(10,'2022-05-17',69,1,6,34),(11,'2022-04-14',54,2,1,15),(12,'2022-04-08',24,6,34,9),(13,'2022-12-10',3,1,2,32),(14,'2022-03-17',26,1,38,22),(15,'2022-08-27',61,6,36,7),(16,'2022-01-30',4,5,26,3),(17,'2022-07-25',32,2,10,35),(18,'2022-06-12',22,5,18,22),(19,'2022-07-18',16,3,49,13),(20,'2022-02-15',4,4,31,27),(21,'2022-03-05',24,9,2,30),(22,'2022-02-10',68,2,48,26),(23,'2022-11-03',65,3,36,19),(24,'2022-02-23',43,7,4,31),(25,'2022-12-25',69,3,32,15),(26,'2022-01-26',11,5,39,8),(27,'2022-04-10',1,3,35,25),(28,'2022-03-15',1,4,41,6),(29,'2022-01-08',69,5,43,38),(30,'2022-06-10',16,9,6,8),(31,'2022-03-15',10,10,2,11),(32,'2022-07-14',35,6,21,25),(33,'2022-01-10',3,10,39,23),(34,'2022-04-09',31,1,9,38),(35,'2022-01-23',62,8,39,40),(36,'2022-11-27',17,9,15,15),(37,'2022-03-08',34,7,45,31),(38,'2022-04-03',13,7,32,9),(39,'2022-01-17',35,8,1,18),(40,'2022-03-08',34,7,45,31),(41,'2022-04-03',13,7,32,9),(42,'2022-01-17',35,8,1,18),(43,'2022-04-02',54,7,51,27),(44,'2022-10-02',56,9,51,7),(45,'2022-04-11',34,7,54,13),(46,'2022-07-26',34,3,60,36),(47,'2022-06-28',39,2,56,27),(48,'2022-07-30',50,5,54,27),(49,'2022-11-20',42,4,60,5),(50,'2022-03-09',70,4,59,19),(51,'2022-12-08',22,1,55,32),(52,'2022-02-09',59,1,54,21),(53,'2022-01-08',52,5,58,38),(54,'2022-09-22',37,7,58,28),(55,'2022-08-10',40,8,58,39),(56,'2022-05-25',47,3,57,22),(57,'2022-11-22',20,8,53,15),(58,'2022-03-08',5,8,56,40),(59,'2022-09-11',17,3,57,11),(60,'2022-02-03',46,3,56,2),(61,'2022-07-18',42,9,51,8),(62,'2022-12-27',3,4,59,9),(63,'2022-12-01',23,7,51,18),(64,'2022-09-13',32,3,59,13),(65,'2022-06-29',12,3,58,6),(66,'2022-05-25',8,7,57,11),(67,'2022-01-06',1,3,58,28),(68,'2022-10-03',5,3,55,39),(69,'2022-04-14',30,7,55,11),(70,'2022-10-29',12,10,51,14),(71,'2022-06-04',9,1,52,33),(72,'2022-08-13',15,1,53,31),(73,'2022-02-17',43,8,55,37),(74,'2022-12-29',65,9,52,24),(75,'2022-11-05',59,1,59,29),(76,'2022-11-04',18,9,51,1),(77,'2022-07-25',19,9,52,25),(78,'2022-07-07',67,7,51,5),(79,'2022-01-11',67,5,60,17),(80,'2022-03-08',1,4,53,38),(81,'2022-10-11',45,6,53,7),(82,'2022-04-02',45,7,52,4),(83,'2022-04-03',51,10,56,1),(84,'2022-08-02',69,4,55,17),(85,'2022-09-08',56,5,60,14),(86,'2022-01-19',39,7,60,39),(87,'2022-01-25',59,7,58,33),(88,'2022-11-15',14,9,59,6),(89,'2022-05-08',46,6,56,39),(90,'2022-08-06',44,1,54,2),(91,'2022-12-23',35,9,58,36),(92,'2022-02-23',17,6,56,10);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffshiftdetails`
--

DROP TABLE IF EXISTS `staffshiftdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffshiftdetails` (
  `staff_id` int NOT NULL,
  `branch_id` int NOT NULL,
  `shift_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`staff_id`,`branch_id`,`shift_date`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `staffshiftdetails_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchdetails` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffshiftdetails`
--

LOCK TABLES `staffshiftdetails` WRITE;
/*!40000 ALTER TABLE `staffshiftdetails` DISABLE KEYS */;
INSERT INTO `staffshiftdetails` VALUES (1,15,'2022-12-28','09:25:00','19:04:00'),(2,9,'2022-12-14','08:09:00','12:30:00'),(3,5,'2022-08-15','09:20:00','17:20:00'),(4,33,'2022-04-22','11:50:00','19:34:00'),(5,37,'2022-10-05','12:23:00','16:23:00'),(6,22,'2022-08-23','13:42:00','14:56:00'),(7,38,'2022-08-12','12:26:00','12:37:00'),(8,31,'2022-09-30','14:04:00','18:58:00'),(9,1,'2022-12-12','12:08:00','14:58:00'),(10,4,'2022-03-16','11:47:00','16:32:00'),(11,6,'2022-08-19','11:02:00','18:49:00'),(12,21,'2022-08-21','09:36:00','19:36:00'),(13,39,'2022-09-15','14:42:00','17:45:00'),(14,23,'2022-03-08','09:00:00','17:15:00'),(15,2,'2022-10-03','12:31:00','15:16:00'),(16,36,'2022-12-08','08:28:00','18:20:00'),(17,18,'2022-07-05','10:01:00','15:01:00'),(18,5,'2022-05-30','11:07:00','15:15:00'),(19,16,'2022-03-30','15:56:00','12:37:00'),(20,7,'2022-03-02','10:13:00','17:31:00'),(21,15,'2022-10-24','15:52:00','19:07:00'),(22,31,'2022-07-01','13:00:00','19:22:00'),(23,15,'2022-05-28','14:35:00','19:59:00'),(24,37,'2022-05-31','08:48:00','19:09:00'),(25,31,'2022-07-31','16:13:00','18:40:00'),(26,12,'2022-07-30','15:10:00','17:08:00'),(27,14,'2022-07-22','12:06:00','15:21:00'),(28,9,'2022-11-19','10:33:00','19:23:00'),(29,36,'2022-06-04','14:43:00','18:34:00'),(30,7,'2022-12-22','15:36:00','15:17:00'),(31,19,'2022-07-12','13:16:00','14:16:00'),(32,37,'2022-08-14','09:18:00','19:25:00'),(33,27,'2022-01-03','11:41:00','18:32:00'),(34,27,'2022-06-24','14:21:00','17:25:00'),(35,25,'2022-10-02','14:08:00','12:52:00'),(36,37,'2022-06-28','10:33:00','16:05:00'),(37,34,'2022-10-17','14:29:00','15:57:00'),(38,12,'2022-12-23','16:21:00','13:42:00'),(39,2,'2022-07-13','14:43:00','15:44:00'),(40,28,'2022-12-17','11:58:00','18:12:00'),(41,30,'2022-10-28','13:33:00','16:17:00'),(42,12,'2022-01-21','11:29:00','19:37:00'),(43,35,'2022-11-16','16:53:00','17:02:00'),(44,10,'2022-04-03','14:45:00','12:43:00'),(45,34,'2022-09-14','08:01:00','12:44:00'),(46,6,'2022-07-27','08:10:00','16:25:00'),(47,6,'2022-06-17','12:45:00','16:06:00'),(48,24,'2022-06-02','08:37:00','19:46:00'),(49,31,'2022-01-04','09:39:00','19:56:00'),(50,4,'2022-05-16','15:25:00','12:19:00');
/*!40000 ALTER TABLE `staffshiftdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 12:55:05

-- Question 1 List all products and their categories with sales greater than 100 units.

-- Selecting the product ID, name, category, and total quantity sold for products
SELECT 
    p.product_id,
    p.name AS product_name,
    p.category,
    SUM(s.quantity) AS total_quantity_sold
-- From the productdetails table aliased as 'p'
FROM 
    productdetails p
-- Joining with the sales table aliased as 's' based on matching product IDs
JOIN 
    sales s ON p.product_id = s.product_id
-- Grouping the results by product ID
GROUP BY 
    p.product_id
-- Filtering the grouped results to only include products with a total quantity sold greater than 100
HAVING 
    SUM(s.quantity) > 100;

-- 2. Calculate the total revenue per branch, considering the quantity sold and product prices.
SELECT
    s.branch_id,
    SUM(s.quantity * p.price) AS total_revenue -- Calculating the total revenue for each branch
FROM
    sales s
INNER JOIN
    productdetails p ON s.product_id = p.product_id -- Joining to include product price in the revenue calculation
GROUP BY
    s.branch_id -- Grouping by branch ID to aggregate revenue by branch
ORDER BY
    total_revenue DESC -- Ordering by total revenue in descending order to find the highest first
LIMIT 10; -- Limiting to top 10 results for highest revenue branches

    
-- 3. Identify customers who have made purchases in more than 3 different branches.
-- Selecting customer_id, customer_name, and counting the distinct branches visited by each customer
SELECT 
    cd.customer_id,
    cd.name AS customer_name,
    COUNT(DISTINCT s.branch_id) AS branches_visited
-- Joining the sales table with the customerdetails table based on customer_id
FROM 
    sales s
JOIN 
    customerdetails cd ON s.customer_id = cd.customer_id
-- Grouping the results by customer_id and customer_name
GROUP BY 
    cd.customer_id, cd.name
-- Filtering the results to include only customers who visited more than 3 different branches
HAVING 
    COUNT(DISTINCT s.branch_id) > 3;

-- 4. Determines the average sale quantity of products by category for sales made in Q4 of 2022

SELECT pd.category, AVG(s.quantity) AS AverageQuantity
FROM sales s
JOIN productdetails pd ON s.product_id = pd.product_id
WHERE s.sale_date BETWEEN '2022-10-01' AND '2022-12-31' -- Selects sales from 2022's last quarter
GROUP BY pd.category; -- Groups by product category and calculates average sale quantity




 -- 5. Rank products within each category based on the total sales quantity using a window function.
 
-- Selecting product_id, name, category, total_quantity, and ranking within each category
SELECT
    product_id,
    name,
    category,
    total_quantity,
-- Ranking products within each category based on total quantity sold
    RANK() OVER(PARTITION BY category ORDER BY total_quantity DESC) AS rank_within_category
FROM (
-- Subquery to calculate total quantity sold for each product
    SELECT
        p.product_id,
        p.name,
        p.category,
        SUM(s.quantity) AS total_quantity
    FROM
        productdetails p
-- Joining with sales table to get the quantity sold
    LEFT JOIN
        sales s ON p.product_id = s.product_id
    GROUP BY
        p.product_id, p.name, p.category
) AS product_sales;

-- 6. Show the month-over-month percentage growth in sales for the top 5 products by total quantity sold.

WITH ranked_products AS (
    -- Selecting the top 5 products by total quantity sold
    SELECT
        product_id,
        SUM(quantity) AS total_quantity,
        RANK() OVER (ORDER BY SUM(quantity) DESC) AS product_rank
    FROM
        sales
    GROUP BY
        product_id
    ORDER BY
        total_quantity DESC
    LIMIT 5
),
monthly_sales AS (
    -- Calculating total quantity sold for each of the top 5 products for each month
    SELECT
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        product_id,
        SUM(quantity) AS total_quantity
    FROM
        sales
    WHERE
        product_id IN (SELECT product_id FROM ranked_products)
    GROUP BY
        YEAR(sale_date),
        MONTH(sale_date),
        product_id
)
-- Calculating month-over-month percentage growth in sales for the top 5 products
SELECT
    m1.year,
    m1.month,
    m1.product_id,
    (m1.total_quantity - COALESCE(LAG(m1.total_quantity) OVER (PARTITION BY m1.product_id ORDER BY m1.year, m1.month), 0)) / COALESCE(LAG(m1.total_quantity) OVER (PARTITION BY m1.product_id ORDER BY m1.year, m1.month), 1) AS percentage_growth
FROM
    monthly_sales m1
JOIN
    ranked_products rp ON m1.product_id = rp.product_id
WHERE
    rp.product_rank <= 5
ORDER BY
    m1.year,
    m1.month,
    m1.product_id;


-- 7. Find all products that have not been sold in the last 6 months (from June to December 2022) but have stock levels above 50.

-- Select all columns from the productdetails table where products have not been sold between June 2022 and December 2022
-- and their stock levels are above 50
SELECT *
FROM productdetails
WHERE product_id NOT IN (
-- Subquery to find distinct product_ids from sales between June 2022 and December 2022
    SELECT DISTINCT product_id
    FROM sales
    WHERE sale_date BETWEEN '2022-06-01' AND '2022-12-31'
)
AND stock_level > 50;

-- 8. Calculate the total number of complaints lodged against products in each category.

SELECT p.category, COUNT(c.complaint_id) AS total_complaints -- Selecting the category column from the productdetails table -- Counting the number of complaints for each category
FROM productdetails p -- Alias for the productdetails table 
JOIN complaintdetails c ON p.product_id = c.product_id -- Joining the productdetails and complaintdetails tables on product_id
GROUP BY p.category; -- Grouping the results by category


-- 9. List the top 10 customers by total spending and show their most frequently bought product category.

SELECT 
    cd.customer_id, -- Selecting the customer ID
    cd.name AS customer_name, -- Selecting the customer name
    SUM(s.quantity * p.price) AS total_spending, -- Calculating the total spending for each customer
    MAX(p.category) AS most_frequent_category -- Selecting the most frequently bought product category for each customer
FROM 
    sales s -- Alias for the sales table
JOIN 
    customerdetails cd ON s.customer_id = cd.customer_id -- Joining the sales and customerdetails tables on customer_id
JOIN 
    productdetails p ON s.product_id = p.product_id -- Joining the sales and products tables on product_id
GROUP BY 
    cd.customer_id, cd.name -- Grouping the results by customer ID and name
ORDER BY 
    total_spending DESC -- Sorting the results by total spending in descending order
LIMIT 
    10;
    
-- 10. Identify days of the week with the highest sales transactions volume.

SELECT
    DAYNAME(s.sale_date) AS day_of_week,
    COUNT(*) AS transaction_volume
FROM
    sales s
GROUP BY
    DAYNAME(s.sale_date)
ORDER BY
    transaction_volume DESC;

-- 11. Determine the branch with the lowest stock levels across all products.

-- Selecting the branch ID and calculating the estimated remaining stock for each branch
SELECT
    s.branch_id,
    -- Summing up the difference between initial stock level and total quantity sold for each product at each branch
    SUM(p.stock_level - IFNULL(sq.total_quantity_sold, 0)) AS estimated_remaining_stock
FROM
    branchdetails b -- Starting from the branch details table to ensure all branches are considered
LEFT JOIN sales s ON b.branch_id = s.branch_id -- Joining with sales to get sales data for each branch
LEFT JOIN (
    -- Subquery to calculate the total quantity sold for each product across all branches
    SELECT
        product_id,
        SUM(quantity) AS total_quantity_sold
    FROM
        sales
    GROUP BY
        product_id
) sq ON s.product_id = sq.product_id -- Joining the sales data with the subquery to get total sales per product
LEFT JOIN productdetails p ON s.product_id = p.product_id -- Joining with product details to get stock levels for each product
GROUP BY
    s.branch_id -- Grouping the results by branch ID to aggregate data at the branch level
ORDER BY
    estimated_remaining_stock ASC -- Ordering by the estimated remaining stock in ascending order to find the lowest first
LIMIT 10; -- Adjusted to limit the results to the top 10 branches with the lowest estimated remaining stock

-- 12. Analyze the correlation between loyalty program status and the average transaction value per customer.

-- Calculating the average transaction value per customer, grouped by loyalty program status
SELECT
    cd.loyalty_program_status, -- Indicates whether the customer is part of the loyalty program
    COUNT(DISTINCT cd.customer_id) AS number_of_customers, -- Counts unique customers in each group
    AVG(s.transaction_value) AS average_transaction_value -- Calculates the average transaction value
FROM
    customerdetails cd -- From the customer details table
JOIN
    (SELECT
        customer_id,
        sale_id,
        SUM(quantity * p.price) AS transaction_value -- Calculates the transaction value for each sale
     FROM
        sales
     JOIN
        productdetails p ON sales.product_id = p.product_id -- Joining with product details to get the price
     GROUP BY
        customer_id, sale_id) s ON cd.customer_id = s.customer_id -- Joining subquery with customer details
GROUP BY
    cd.loyalty_program_status; -- Grouping results by loyalty program status
    
    
-- 13. Calculate the average duration between complaint registration and resolution.

-- Calculate the average duration (in days) between complaint registration and resolution
SELECT
    AVG(DATEDIFF(complaint_date, complaint_date)) AS average_resolution_duration -- Since resolution_date is not available, using complaint_date for simplification
FROM
    complaintdetails -- From the table containing complaint details
WHERE
    resolution_status = 'Resolved'; -- Considering only resolved complaints for this calculation

-- 14. Identify staff members with shifts longer than 8 hours and list their corresponding branches and shift dates.
    
-- Selecting staff members, their branches, and shift dates for shifts longer than 8 hours
SELECT
    ss.staff_id, -- The ID of the staff member
    b.branch_name, -- The name of the branch where the shift took place
    ss.shift_date, -- The date of the shift
    TIMEDIFF(ss.end_time, ss.start_time) AS shift_duration -- The duration of the shift
FROM
    staffshiftdetails ss -- From the staff shift details table
JOIN
    branchdetails b ON ss.branch_id = b.branch_id -- Joining with branch details to get branch names
WHERE
    TIMEDIFF(ss.end_time, ss.start_time) > '08:00:00'; -- Filtering for shifts longer than 8 hours


-- 15. Find the product with the highest number of complaints and detail the nature of these complaints.

SELECT
    pd.product_id, -- Selecting the product ID
    pd.name AS product_name, -- Selecting the product name for readability
    COUNT(c.complaint_id) AS number_of_complaints -- Counting the number of complaints for each product
FROM
    complaintdetails c -- From the table containing complaint details
JOIN
    productdetails pd ON c.product_id = pd.product_id -- Joining with product details to get product names
GROUP BY
    pd.product_id -- Grouping the results by product ID to aggregate complaints per product
ORDER BY
    number_of_complaints DESC; -- Ordering the results by the number of complaints in descending order
    
    
-- 16.What is the average stock level for each product category? 

SELECT
    category, -- Selecting the category column to group the results by product category
    AVG(stock_level) AS average_stock_level -- Calculating the average stock level for products in each category
FROM
    productdetails -- Extracting data from the productdetails table, which contains product information including stock levels
GROUP BY
    category; -- Grouping the results by product category to calculate the average stock level per category
    

-- 17. Which product has the highest average sales price within each category?

-- Selecting the category, product name, and highest average price for each category
SELECT
    pp.category, -- The category of the product
    pp.product_name, -- The name of the product with the highest average price within its category
    pp.average_price AS highest_average_price -- The highest average price of the product within its category
FROM (
    -- Subquery to calculate average prices and rank products within each category
    SELECT
        p.category, -- The category of the product
        p.name AS product_name, -- The name of the product
        -- Calculating the average price of each product
        AVG(s.quantity * p.price) / AVG(s.quantity) AS average_price,
        -- Assigning a row number to each product within its category based on the average price in descending order
        ROW_NUMBER() OVER(PARTITION BY p.category ORDER BY AVG(s.quantity * p.price) / AVG(s.quantity) DESC) AS rn
    FROM
        sales s -- From the sales table
    JOIN
        productdetails p ON s.product_id = p.product_id -- Joining with product details to link sales with products
    GROUP BY
        p.product_id, p.name -- Grouping the results by product ID and name to calculate averages per product
) AS pp -- Alias for the subquery
WHERE pp.rn = 1; -- Filtering to only include the top-ranked product in each category

-- 18. How many customers are repeat buyers, and what is their average spending?

SELECT
    COUNT(customer_id) AS repeat_buyers, -- Counts the number of repeat buyers
    AVG(total_spending) AS average_spending -- Calculates the average spending of repeat buyers
FROM (
    SELECT
        s.customer_id,
        SUM(p.price * s.quantity) AS total_spending, -- Sums up the spending per customer
        COUNT(s.sale_id) AS number_of_purchases -- Counts the number of purchases per customer
    FROM
        sales s
    JOIN
        productdetails p ON s.product_id = p.product_id -- Joining to include product price in the spending calculation
    GROUP BY
        s.customer_id -- Grouping by customer ID to aggregate their purchases
    HAVING
        COUNT(s.sale_id) > 1 -- Filtering for customers with more than one purchase
) AS RepeatBuyers;

-- 19. What is the month with the highest number of complaints, and what are the common themes?

-- Find the month with the highest number of complaints
SELECT
    EXTRACT(YEAR_MONTH FROM complaint_date) AS month, 
    COUNT(complaint_id) AS number_of_complaints
FROM
    complaintdetails
GROUP BY
    month
ORDER BY
    number_of_complaints DESC
LIMIT 1;

-- 20.Compare the sales performance of loyalty program members versus non-members.

SELECT
    cd.loyalty_program_status, -- Indicates whether the customer is a member of the loyalty program
    COUNT(s.sale_id) AS total_sales_transactions, -- Counts the total number of sales transactions for each group
    SUM(s.quantity) AS total_units_sold, -- Sums up the total quantity of products sold for each group
    SUM(s.quantity * pd.price) AS total_revenue -- Calculates the total revenue by multiplying quantity by product price and summing up for each group
FROM
    sales s -- From the sales table, where each record represents a sale transaction
JOIN
    customerdetails cd ON s.customer_id = cd.customer_id -- Joining with customer details to access loyalty program status
JOIN
    productdetails pd ON s.product_id = pd.product_id -- Joining with product details to get the price of each product sold
GROUP BY
    cd.loyalty_program_status; -- Grouping the results by loyalty program status to separate members from non-members
    

