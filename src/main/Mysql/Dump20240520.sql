CREATE DATABASE  IF NOT EXISTS `stock_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stock_management_system`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: stock_management_system
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `deposit_withdrawal`
--

DROP TABLE IF EXISTS `deposit_withdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_withdrawal` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_type` enum('deposit','withdrawal') NOT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `deposit_withdrawal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_withdrawal`
--

LOCK TABLES `deposit_withdrawal` WRITE;
/*!40000 ALTER TABLE `deposit_withdrawal` DISABLE KEYS */;
INSERT INTO `deposit_withdrawal` VALUES (1,5,50.00,'deposit','completed','2024-05-08 15:57:59','2024-05-08 21:46:37'),(2,5,2500.00,'deposit','completed','2024-05-08 17:19:13','2024-05-08 21:43:07'),(3,5,30.00,'withdrawal','completed','2024-05-08 22:36:29','2024-05-08 22:37:52'),(4,5,50.00,'withdrawal','completed','2024-05-08 22:38:09','2024-05-08 22:38:36'),(5,5,100.00,'withdrawal','completed','2024-05-08 22:38:57','2024-05-08 22:39:09'),(6,5,100.00,'withdrawal','cancelled','2024-05-08 22:49:01','2024-05-08 23:07:52'),(7,5,100.00,'withdrawal','completed','2024-05-08 22:49:12','2024-05-08 22:53:10'),(8,5,50.00,'deposit','completed','2024-05-08 22:49:19','2024-05-08 23:03:10'),(9,5,390.00,'withdrawal','completed','2024-05-08 23:09:17','2024-05-08 23:10:34'),(10,5,300.00,'deposit','completed','2024-05-08 23:18:12','2024-05-08 23:19:30'),(11,5,300.00,'withdrawal','completed','2024-05-08 23:18:21','2024-05-08 23:19:20'),(12,5,500.00,'deposit','completed','2024-05-08 23:24:32','2024-05-08 23:28:38'),(13,5,200.00,'deposit','completed','2024-05-08 23:24:34','2024-05-08 23:28:36'),(14,5,100.00,'deposit','completed','2024-05-08 23:24:36','2024-05-08 23:28:34'),(15,5,300.00,'deposit','completed','2024-05-08 23:24:38','2024-05-08 23:28:25'),(16,5,250.00,'withdrawal','cancelled','2024-05-08 23:24:40','2024-05-08 23:25:31'),(17,5,270.00,'withdrawal','cancelled','2024-05-08 23:24:43','2024-05-08 23:28:12'),(18,5,20.00,'deposit','cancelled','2024-05-08 23:31:20','2024-05-08 23:32:31'),(19,5,70.00,'withdrawal','completed','2024-05-08 23:31:23','2024-05-08 23:32:37'),(20,5,70.00,'withdrawal','cancelled','2024-05-08 23:31:26','2024-05-08 23:32:41'),(21,5,100.00,'withdrawal','cancelled','2024-05-08 23:31:31','2024-05-08 23:32:19'),(22,2,50.00,'deposit','cancelled','2024-05-09 00:56:52','2024-05-09 00:59:56'),(23,2,2500.00,'deposit','completed','2024-05-09 00:56:58','2024-05-09 00:59:40'),(24,2,200.00,'deposit','cancelled','2024-05-09 00:57:01','2024-05-09 00:59:43'),(28,2,100.00,'withdrawal','cancelled','2024-05-09 01:01:48','2024-05-09 05:31:40'),(29,2,400.00,'withdrawal','completed','2024-05-09 01:01:54','2024-05-09 05:31:43'),(30,2,500.00,'withdrawal','cancelled','2024-05-09 01:02:06','2024-05-09 05:31:38'),(31,2,2000.00,'deposit','cancelled','2024-05-10 13:21:40','2024-05-10 21:19:12'),(32,2,200.00,'withdrawal','completed','2024-05-10 21:21:12','2024-05-14 10:16:39'),(33,2,3000.00,'withdrawal','completed','2024-05-14 09:32:34','2024-05-14 10:16:37'),(34,2,200.00,'deposit','pending','2024-05-14 23:08:31','2024-05-14 23:08:31'),(35,2,520000.00,'deposit','cancelled','2024-05-14 23:08:35','2024-05-14 23:09:12'),(36,2,2300.00,'deposit','pending','2024-05-14 23:08:38','2024-05-14 23:08:38'),(37,2,100.00,'deposit','pending','2024-05-14 23:08:41','2024-05-14 23:08:41'),(38,2,7.54,'deposit','completed','2024-05-14 23:08:45','2024-05-14 23:09:18'),(39,2,343.00,'deposit','pending','2024-05-14 23:08:46','2024-05-14 23:08:46'),(40,8,200.00,'deposit','pending','2024-05-18 06:43:55','2024-05-18 06:43:55'),(41,8,40.00,'deposit','pending','2024-05-18 06:43:59','2024-05-18 06:43:59'),(42,8,245.00,'deposit','pending','2024-05-18 06:44:02','2024-05-18 06:44:02'),(43,8,0.00,'withdrawal','pending','2024-05-18 06:44:10','2024-05-18 06:44:10'),(44,2,300.00,'deposit','completed','2024-05-19 11:53:57','2024-05-19 12:34:12'),(45,2,2000.00,'withdrawal','completed','2024-05-19 11:55:27','2024-05-19 12:34:16');
/*!40000 ALTER TABLE `deposit_withdrawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_history`
--

DROP TABLE IF EXISTS `price_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_history` (
  `price_id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`price_id`),
  KEY `stock_id` (`stock_id`),
  CONSTRAINT `price_history_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_history`
--

LOCK TABLES `price_history` WRITE;
/*!40000 ALTER TABLE `price_history` DISABLE KEYS */;
INSERT INTO `price_history` VALUES (1,1,137.35,'2024-04-28 14:27:43'),(2,1,135.83,'2024-04-28 14:28:33'),(3,1,141.85,'2024-04-28 14:28:34'),(4,1,136.50,'2024-04-28 14:28:35'),(5,1,141.71,'2024-04-28 14:28:36'),(6,2,2389.28,'2024-04-28 14:29:27'),(7,2,2384.05,'2024-04-28 14:29:36'),(8,3,3285.14,'2024-04-28 14:29:50'),(9,3,3288.80,'2024-04-28 14:29:51'),(10,3,3284.33,'2024-04-28 14:29:52'),(11,11,170.30,'2024-04-01 07:00:00'),(12,11,171.25,'2024-04-02 07:00:00'),(13,11,169.80,'2024-04-03 07:00:00'),(14,11,172.50,'2024-04-04 07:00:00'),(15,11,175.00,'2024-04-05 07:00:00'),(16,11,174.20,'2024-04-06 07:00:00'),(17,11,173.90,'2024-04-07 07:00:00'),(18,11,172.75,'2024-04-08 07:00:00'),(19,11,172.00,'2024-04-09 07:00:00'),(20,11,174.00,'2024-04-10 07:00:00'),(21,1,135.50,'2024-04-28 06:30:00'),(22,1,136.25,'2024-04-29 06:30:00'),(23,1,137.00,'2024-04-30 06:30:00'),(24,1,138.00,'2024-05-01 06:30:00'),(25,1,139.00,'2024-05-02 06:30:00'),(26,2,2350.00,'2024-04-28 06:30:00'),(27,2,2355.75,'2024-04-29 06:30:00'),(28,2,2360.50,'2024-04-30 06:30:00'),(29,2,2365.25,'2024-05-01 06:30:00'),(30,2,2370.00,'2024-05-02 06:30:00'),(31,3,3250.50,'2024-04-28 06:30:00'),(32,3,3255.25,'2024-04-29 06:30:00'),(33,3,3260.00,'2024-04-30 06:30:00'),(34,3,3264.75,'2024-05-01 06:30:00'),(35,3,3269.50,'2024-05-02 06:30:00'),(36,4,245.75,'2024-04-28 06:30:00'),(37,4,246.50,'2024-04-29 06:30:00'),(38,4,247.25,'2024-04-30 06:30:00'),(39,4,248.00,'2024-05-01 06:30:00'),(40,4,248.50,'2024-05-02 06:30:00'),(41,5,700.25,'2024-04-28 06:30:00'),(42,5,705.00,'2024-04-29 06:30:00'),(43,5,710.00,'2024-04-30 06:30:00'),(44,5,712.50,'2024-05-01 06:30:00'),(45,5,715.00,'2024-05-02 06:30:00'),(46,6,315.75,'2024-04-28 06:30:00'),(47,6,317.25,'2024-04-29 06:30:00'),(48,6,318.75,'2024-04-30 06:30:00'),(49,6,320.00,'2024-05-01 06:30:00'),(50,6,320.25,'2024-05-02 06:30:00'),(51,7,530.80,'2024-04-28 06:30:00'),(52,7,535.00,'2024-04-29 06:30:00'),(53,7,537.50,'2024-04-30 06:30:00'),(54,7,538.50,'2024-05-01 06:30:00'),(55,7,540.25,'2024-05-02 06:30:00'),(56,8,625.40,'2024-04-28 06:30:00'),(57,8,627.50,'2024-04-29 06:30:00'),(58,8,629.25,'2024-04-30 06:30:00'),(59,8,630.00,'2024-05-01 06:30:00'),(60,8,630.75,'2024-05-02 06:30:00'),(61,9,475.60,'2024-04-28 06:30:00'),(62,9,478.00,'2024-04-29 06:30:00'),(63,9,479.50,'2024-04-30 06:30:00'),(64,9,479.75,'2024-05-01 06:30:00'),(65,9,480.25,'2024-05-02 06:30:00'),(66,10,265.90,'2024-04-28 06:30:00'),(67,10,268.00,'2024-04-29 06:30:00'),(68,10,269.25,'2024-04-30 06:30:00'),(69,10,269.50,'2024-05-01 06:30:00'),(70,10,270.00,'2024-05-02 06:30:00'),(71,11,170.30,'2024-04-28 06:30:00'),(72,11,172.50,'2024-04-29 06:30:00'),(73,11,173.25,'2024-04-30 06:30:00'),(74,11,174.50,'2024-05-01 06:30:00'),(75,11,175.00,'2024-05-02 06:30:00'),(76,12,5.00,'2024-05-04 06:30:00'),(77,12,5.05,'2024-05-05 06:30:00'),(78,12,5.15,'2024-05-06 06:30:00'),(79,12,5.25,'2024-05-07 06:30:00'),(80,12,5.31,'2024-05-08 06:30:00'),(81,13,7.50,'2024-05-04 06:30:00'),(82,13,7.60,'2024-05-05 06:30:00'),(83,13,7.70,'2024-05-06 06:30:00'),(84,13,8.00,'2024-05-07 06:30:00'),(85,13,8.08,'2024-05-08 06:30:00'),(86,14,1.88,'2024-05-04 06:30:00'),(87,14,1.90,'2024-05-05 06:30:00'),(88,14,1.95,'2024-05-06 06:30:00'),(89,14,2.00,'2024-05-07 06:30:00'),(90,14,2.12,'2024-05-08 06:30:00'),(91,12,5.00,'2024-05-09 06:30:00'),(92,12,5.05,'2024-05-10 06:30:00'),(93,12,5.10,'2024-05-11 06:30:00'),(94,12,5.15,'2024-05-12 06:30:00'),(95,12,5.31,'2024-05-13 06:30:00'),(96,12,5.35,'2024-05-14 06:30:00'),(97,12,5.40,'2024-05-15 06:30:00'),(98,12,5.45,'2024-05-16 06:30:00'),(99,12,5.50,'2024-05-17 06:30:00'),(100,12,5.55,'2024-05-18 06:30:00'),(101,12,5.60,'2024-05-19 06:30:00'),(102,12,6.00,'2024-05-15 23:38:14'),(103,13,-5.00,'2024-05-15 23:46:02'),(104,13,10.00,'2024-05-15 23:47:32'),(105,14,2.50,'2024-05-16 02:08:50'),(106,14,1.40,'2024-05-16 02:09:01'),(107,14,0.50,'2024-05-16 02:09:09'),(108,14,3.60,'2024-05-16 02:09:15'),(109,14,2.70,'2024-05-16 02:09:42'),(110,14,2.20,'2024-05-16 02:09:47'),(118,14,4.50,'2024-05-17 13:38:53'),(119,9,100.00,'2024-05-19 12:30:18');
/*!40000 ALTER TABLE `price_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `initial_price` decimal(10,2) NOT NULL,
  `trading_price` decimal(10,2) NOT NULL,
  `dividends` decimal(10,2) DEFAULT NULL,
  `available_stocks` int NOT NULL,
  `profit_percentage` decimal(5,2) DEFAULT NULL,
  `other_properties` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stock_id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'AAPL','Apple Inc.',135.50,140.25,1.50,10000,12.50,NULL,'2024-04-28 11:17:15','2024-04-28 11:17:15'),(2,'GOOGL','Alphabet Inc.',2350.00,2385.75,2.25,15000,14.20,NULL,'2024-04-28 11:17:28','2024-04-28 11:17:28'),(3,'AMZN','Amazon.com Inc.',3250.50,3289.25,0.00,20000,9.80,NULL,'2024-04-28 11:17:45','2024-05-14 21:55:25'),(4,'MSFT','Microsoft Corporation',245.75,248.50,1.75,20000,11.00,NULL,'2024-04-28 11:17:51','2024-04-28 11:17:51'),(5,'TSLA','Tesla Inc.',700.25,715.00,0.00,8000,15.60,NULL,'2024-04-28 11:17:56','2024-04-28 11:17:56'),(6,'FB','Meta Platforms Inc.',315.75,320.25,1.00,15000,13.20,NULL,'2024-04-28 11:18:03','2024-04-28 11:18:03'),(7,'NFLX','Netflix Inc.',530.80,540.25,0.75,10000,10.80,NULL,'2024-04-28 11:18:58','2024-04-28 11:18:58'),(8,'NVDA','NVIDIA Corporation',625.40,630.75,1.50,12000,12.30,NULL,'2024-04-28 11:19:07','2024-04-28 11:19:07'),(9,'ADBE','Adobe Inc.',475.60,480.25,0.50,18000,9.50,NULL,'2024-04-28 11:19:17','2024-05-14 21:55:25'),(10,'PYPL','PayPal Holdings Inc.',265.90,270.00,0.25,15000,11.20,NULL,'2024-04-28 11:19:24','2024-05-14 10:18:30'),(11,'JNJ','Johnson & Johnson',170.30,175.00,2.00,20000,8.70,NULL,'2024-04-28 11:19:30','2024-05-14 23:03:34'),(12,'CIB','Commercial International Bank (Egypt) S.A.E.',5.00,5.31,0.31,14998,6.25,'Leading private-sector bank in Egypt with a wide range of financial services.','2024-05-04 11:02:09','2024-05-19 11:55:14'),(13,'OCI','Orascom Construction Industries',7.50,8.08,0.50,8000,7.69,'Construction and engineering company involved in infrastructure projects.','2024-05-04 11:02:09','2024-05-04 11:02:09'),(14,'TE','Telecom Egypt',1.88,2.12,0.06,15000,11.76,'Leading telecommunications company providing fixed-line and mobile services in Egypt.','2024-05-04 11:02:09','2024-05-14 21:55:25');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_order`
--

DROP TABLE IF EXISTS `stock_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `order_type` enum('buy','sell') NOT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `order_quantity` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `stock_id` (`stock_id`),
  CONSTRAINT `stock_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stock_order_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_order`
--

LOCK TABLES `stock_order` WRITE;
/*!40000 ALTER TABLE `stock_order` DISABLE KEYS */;
INSERT INTO `stock_order` VALUES (1,5,12,'buy',5.31,1,'2024-05-08 21:50:59','completed'),(2,5,12,'buy',5.31,2,'2024-05-08 21:59:57','completed'),(3,2,12,'buy',5.31,8,'2024-05-09 05:32:54','completed'),(4,2,9,'buy',480.25,3,'2024-05-09 05:49:52','completed'),(5,2,9,'buy',480.25,0,'2024-05-09 05:51:16','completed'),(6,2,3,'buy',3289.25,0,'2024-05-09 05:51:58','completed'),(7,2,12,'buy',5.31,0,'2024-05-09 06:32:34','completed'),(8,2,14,'buy',2.12,0,'2024-05-14 08:29:28','completed'),(9,2,14,'sell',2.12,1,'2024-05-14 09:21:56','completed'),(10,2,14,'sell',2.12,0,'2024-05-14 09:26:23','completed'),(11,2,14,'sell',2.12,1,'2024-05-14 09:26:29','completed'),(12,2,14,'sell',2.12,1,'2024-05-14 09:26:49','completed'),(13,2,12,'sell',5.60,2,'2024-05-14 09:28:39','completed'),(14,2,12,'sell',5.60,1,'2024-05-14 09:28:44','completed'),(15,2,12,'sell',5.60,12,'2024-05-14 09:29:17','completed'),(16,2,3,'sell',3269.50,1,'2024-05-14 09:30:11','completed'),(17,2,9,'sell',480.25,2,'2024-05-14 09:30:24','completed'),(18,2,10,'buy',270.00,0,'2024-05-14 09:30:38','completed'),(19,2,10,'sell',270.00,2,'2024-05-14 09:30:55','completed'),(20,2,10,'sell',270.00,1,'2024-05-14 10:18:30','completed'),(21,2,9,'sell',480.25,1,'2024-05-14 20:12:40','completed'),(22,2,11,'buy',175.00,0,'2024-05-14 23:03:15','completed'),(23,2,11,'sell',175.00,2,'2024-05-14 23:03:34','completed'),(24,2,12,'buy',5.31,2,'2024-05-19 11:54:52','completed'),(25,2,12,'sell',5.60,3,'2024-05-19 11:55:14','completed');
/*!40000 ALTER TABLE `stock_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_session`
--

DROP TABLE IF EXISTS `trading_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trading_session` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `admin_user_id` int DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_session`
--

LOCK TABLES `trading_session` WRITE;
/*!40000 ALTER TABLE `trading_session` DISABLE KEYS */;
INSERT INTO `trading_session` VALUES (1,'2024-05-07 02:26:18','2024-05-07 02:34:23','closed',1),(2,'2024-05-07 02:37:39','2024-05-07 02:37:48','closed',1),(3,'2024-05-07 02:39:56','2024-05-07 02:39:58','closed',1),(4,'2024-05-07 02:57:31','2024-05-07 03:01:51','closed',1),(5,'2024-05-07 03:02:02','2024-05-07 03:03:33','closed',1),(6,'2024-05-07 05:51:19','2024-05-07 13:57:09','closed',1),(7,'2024-05-08 21:50:24','2024-05-09 00:39:14','closed',1),(8,'2024-05-09 05:32:06','2024-05-10 13:21:11','closed',1),(9,'2024-05-10 21:19:30','2024-05-14 23:10:03','closed',1),(10,'2024-05-19 11:52:21',NULL,'open',1);
/*!40000 ALTER TABLE `trading_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `balance` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mahmoud','Khawaja','mahmoud.khawaja97@gmail.com','Ilovebitches2024','2024-05-03 16:25:22','2024-05-03 16:25:22',1,0.00),(2,'Leo','Messi','messi@gmail.com','abdomota2024','2024-05-03 16:27:13','2024-05-19 12:34:12',0,508.02),(5,'Abdelfattah','Elsisi','elsisi@gmail.com','el3rs2027','2024-05-04 19:32:31','2024-05-08 23:32:41',0,1030.00),(8,'احمد','قرموطي','2armooty@gmail.com','2rmt4rmt2024','2024-05-18 06:43:20','2024-05-18 06:43:20',0,0.00);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 14:04:24
