-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  `url_image` varchar(300) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `detail_id` bigint NOT NULL AUTO_INCREMENT,
  `information` varchar(300) NOT NULL,
  `fk_producer_has_technique_id` bigint NOT NULL,
  PRIMARY KEY (`detail_id`,`fk_producer_has_technique_id`),
  KEY `fk_Details_Producers_has_Tecniques1_idx` (`fk_producer_has_technique_id`),
  CONSTRAINT `fk_Details_Producers_has_Tecniques1` FOREIGN KEY (`fk_producer_has_technique_id`) REFERENCES `producers_has_tecniques` (`producer_has_technique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `fk_user_id` bigint NOT NULL,
  PRIMARY KEY (`order_id`,`fk_user_id`),
  KEY `fk_Sales_Users1_idx` (`fk_user_id`),
  CONSTRAINT `fk_Sales_Users1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privileges` (
  `privilege_id` bigint NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(20) NOT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
  `producer_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`producer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers_has_tecniques`
--

DROP TABLE IF EXISTS `producers_has_tecniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers_has_tecniques` (
  `producer_has_technique_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_producer_id` bigint NOT NULL,
  `fk_tecnique_id` bigint NOT NULL,
  PRIMARY KEY (`producer_has_technique_id`,`fk_producer_id`,`fk_tecnique_id`),
  KEY `fk_Producers_has_Tecniques_Producers1_idx` (`fk_producer_id`),
  KEY `fk_Producers_has_Tecniques_Tecniques1_idx` (`fk_tecnique_id`),
  CONSTRAINT `fk_Producers_has_Tecniques_Producers1` FOREIGN KEY (`fk_producer_id`) REFERENCES `producers` (`producer_id`),
  CONSTRAINT `fk_Producers_has_Tecniques_Tecniques1` FOREIGN KEY (`fk_tecnique_id`) REFERENCES `tecniques` (`tecnique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers_has_tecniques`
--

LOCK TABLES `producers_has_tecniques` WRITE;
/*!40000 ALTER TABLE `producers_has_tecniques` DISABLE KEYS */;
/*!40000 ALTER TABLE `producers_has_tecniques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
  `order_has_product_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_order_id` bigint NOT NULL,
  `fk_product_id` bigint NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`order_has_product_id`,`fk_order_id`,`fk_product_id`),
  KEY `fk_Products_has_order_order1_idx` (`fk_order_id`),
  KEY `fk_product_order_Products1_idx` (`fk_product_id`),
  CONSTRAINT `fk_product_order_Products1` FOREIGN KEY (`fk_product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `fk_Products_has_order_order1` FOREIGN KEY (`fk_order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` bigint NOT NULL,
  `fk_category_id` bigint NOT NULL,
  `description` varchar(1000) NOT NULL,
  `benefits` varchar(1000) NOT NULL,
  `fk_detalles_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`fk_category_id`,`fk_detalles_id`),
  KEY `fk_Products_Categories_idx` (`fk_category_id`),
  KEY `fk_Products_Details1_idx` (`fk_detalles_id`),
  CONSTRAINT `fk_Products_Categories` FOREIGN KEY (`fk_category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `fk_Products_Details1` FOREIGN KEY (`fk_detalles_id`) REFERENCES `details` (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecniques`
--

DROP TABLE IF EXISTS `tecniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecniques` (
  `tecnique_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`tecnique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecniques`
--

LOCK TABLES `tecniques` WRITE;
/*!40000 ALTER TABLE `tecniques` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecniques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_privilege`
--

DROP TABLE IF EXISTS `user_has_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_privilege` (
  `user_has_privilege_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_privilege_id` bigint NOT NULL,
  `fk_user_id` bigint NOT NULL,
  PRIMARY KEY (`user_has_privilege_id`,`fk_privilege_id`,`fk_user_id`),
  KEY `fk_user_has_privilege_privileges1_idx` (`fk_privilege_id`),
  KEY `fk_user_has_privilege_Users1_idx` (`fk_user_id`),
  CONSTRAINT `fk_user_has_privilege_privileges1` FOREIGN KEY (`fk_privilege_id`) REFERENCES `privileges` (`privilege_id`),
  CONSTRAINT `fk_user_has_privilege_Users1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_privilege`
--

LOCK TABLES `user_has_privilege` WRITE;
/*!40000 ALTER TABLE `user_has_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 16:32:19
