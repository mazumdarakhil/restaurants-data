-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: food_delivery_service
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `appartment_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Devin','7121 Metus. Street','0944 449 7864','Apartment Complex'),(2,'Colorado','Ap #281-3930 Malesuada Avenue','0800 546 8797','Single Unit'),(3,'Aurelia','P.O. Box 462, 4480 Mi St.','0800 969 0359','Apartment Complex'),(4,'Cathleen','Ap #805-5535 Luctus Ave','0500 991598','Single Unit'),(5,'Perry','5977 Nostra, Av.','070 6497 9735','Apartment Complex'),(6,'Rhea','P.O. Box 353, 5148 Natoque St.','(024) 8488 7913','Single Unit'),(7,'Emery','2636 Consequat Ave','0800 1111','Apartment Complex'),(8,'Yvette','942-2071 Erat Rd.','(016977) 0375','Single Unit'),(9,'Barry','352-8764 Eu, St.','(01134) 32375','Single Unit'),(10,'Carissa','Ap #740-6085 Suspendisse Rd.','(01934) 397930','Apartment Complex');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_drivers`
--

DROP TABLE IF EXISTS `delivery_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_drivers` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `vehicle_name` varchar(255) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `vehicle_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_drivers`
--

LOCK TABLES `delivery_drivers` WRITE;
/*!40000 ALTER TABLE `delivery_drivers` DISABLE KEYS */;
INSERT INTO `delivery_drivers` VALUES (1,'Cooper','9219 Nec Ave','0930 422 4477','Infiniti','2016','3592'),(2,'Raja','Ap #441-8693 Lorem. Ave','(0116) 250 7205','Kia Motors','2014','1536'),(3,'Violet','Ap #172-4337 Ornare Rd.','(016977) 9108','Porsche','2007','3704'),(4,'Tamara','P.O. Box 641, 5983 Accumsan Avenue','0800 433563','MINI','2013','5233'),(5,'Jessica','991-5781 Mauris Avenue','(01124) 606463','Jeep','2013','2059'),(6,'Jonah','6906 Quis St.','(01769) 24829','Seat','2010','2315'),(7,'Ebony','P.O. Box 343, 2242 Luctus, Ave','076 4310 5594','Vauxhall','2012','1478'),(8,'Velma','Ap #571-8797 Mauris St.','07624 685866','Porsche','2006','4622'),(9,'Bryar','1279 Scelerisque Road','07764 073843','Renault','2015','2469'),(10,'Idona','564-1764 Et Street','(0116) 949 9448','Dacia','2014','2209');
/*!40000 ALTER TABLE `delivery_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_details`
--

DROP TABLE IF EXISTS `drink_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drink_details` (
  `drink_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`drink_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_details`
--

LOCK TABLES `drink_details` WRITE;
/*!40000 ALTER TABLE `drink_details` DISABLE KEYS */;
INSERT INTO `drink_details` VALUES (1,'Coca Cola',' 300ML'),(2,'Dew',' 300ML'),(3,'7 up',' 300ML'),(4,'Dew',' 80ML'),(5,'Dew',' 250ML '),(6,'Fanta',' 80ML'),(7,'Fanta',' 300ML'),(8,'7 up',' 250ML '),(9,'Coca Cola',' 250ML '),(10,'Dew',' 250ML ');
/*!40000 ALTER TABLE `drink_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_items` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `unit_price` varchar(20) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `protien_source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_items`
--

LOCK TABLES `food_items` WRITE;
/*!40000 ALTER TABLE `food_items` DISABLE KEYS */;
INSERT INTO `food_items` VALUES (1,'stews','46','2668','Chinese','Mutton'),(2,'tikka','39','2095','Italian','Tofu'),(3,'karahi','38','1355','Chinese','Beef'),(4,'chicken burger','15','2094','Mexican','Mutton'),(5,'soups','26','634','Mexican','Chicken'),(6,'Zinger','20','1153','Chinese','Mutton'),(7,'seafood','23','2622','Mexican','Beef'),(8,'salads','23','215','Italian','Tofu'),(9,'Chinese salads','30','2856','Chinese','Chicken'),(10,'Italian stews','6','1607','Italian','Mutton');
/*!40000 ALTER TABLE `food_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `food_id` int DEFAULT NULL,
  `drink_id` int DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `resturant_id` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `menu_fk` (`resturant_id`),
  KEY `menu_fk_1` (`drink_id`),
  KEY `menu_fk_2` (`food_id`),
  CONSTRAINT `menu_fk` FOREIGN KEY (`resturant_id`) REFERENCES `restaurant_details` (`restuarant_id`),
  CONSTRAINT `menu_fk_1` FOREIGN KEY (`drink_id`) REFERENCES `drink_details` (`drink_id`),
  CONSTRAINT `menu_fk_2` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,8,7,'28/02/2020','06/04/2019','1436',10),(2,8,2,'30/05/2020','02/02/2020','2366',6),(3,4,5,'22/03/2021','07/04/2019','120',2),(4,4,7,'01/03/2020','25/11/2020','2990',5),(5,6,3,'10/02/2020','21/09/2020','2094',2),(6,10,3,'23/05/2019','06/08/2019','4406',1),(7,1,8,'30/04/2019','02/05/2019','4820',6),(8,8,2,'03/12/2020','25/02/2020','3098',6),(9,9,3,'06/06/2020','25/02/2020','3607',8),(10,9,9,'29/01/2020','11/08/2020','2572',4);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `resturant_id` int DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_items_fk` (`resturant_id`),
  KEY `order_items_fk_1` (`order_id`),
  CONSTRAINT `order_items_fk` FOREIGN KEY (`resturant_id`) REFERENCES `restaurant_details` (`restuarant_id`),
  CONSTRAINT `order_items_fk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,10,5),(2,5,9),(3,3,2),(4,10,9),(5,2,2),(6,5,5),(7,8,6),(8,1,1),(9,7,4),(10,3,4);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `total_charges` varchar(20) DEFAULT NULL,
  `tip` decimal(12,2) DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `orders_fk` (`customer_id`),
  KEY `orders_fk_1` (`driver_id`),
  KEY `orders_fk_2` (`menu_id`),
  CONSTRAINT `orders_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_fk_1` FOREIGN KEY (`driver_id`) REFERENCES `delivery_drivers` (`driver_id`),
  CONSTRAINT `orders_fk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,4,'26/05/2019','2933',402.00,5),(2,3,2,'07/08/2019','4692',539.00,6),(3,1,9,'09/06/2020','2719',764.00,10),(4,4,7,'09/08/2019','366',662.00,6),(5,7,3,'12/09/2020','2904',678.00,4),(6,9,1,'23/03/2021','930',483.00,5),(7,1,4,'21/11/2020','70',110.00,9),(8,2,4,'24/12/2019','2603',876.00,8),(9,7,5,'07/11/2020','3238',479.00,7),(10,8,8,'02/09/2019','3280',977.00,5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_details`
--

DROP TABLE IF EXISTS `restaurant_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_details` (
  `restuarant_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `food_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`restuarant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_details`
--

LOCK TABLES `restaurant_details` WRITE;
/*!40000 ALTER TABLE `restaurant_details` DISABLE KEYS */;
INSERT INTO `restaurant_details` VALUES (1,'Francis','9950 Sagittis Street','0800 771264','Mexican'),(2,'Violet','662-644 Maecenas St.','(0114) 656 8330','Mexican'),(3,'Ethan','Ap #266-4685 Tincidunt St.','(01875) 15224','Italian'),(4,'Austin','2211 Dapibus Av.','07624 702916','Mexican'),(5,'Phelan','Ap #496-6435 Urna, St.','(01021) 12635','Chinese'),(6,'Merrill','649-156 Eget Road','0800 528459','Mexican'),(7,'Gage','P.O. Box 207, 6603 Suspendisse Road','(0110) 112 9201','Lebanese'),(8,'Alika','P.O. Box 826, 8418 Mi Rd.','0919 685 1488','Chinese'),(9,'Dennis','6159 Amet Street','076 9191 6988','Lebanese'),(10,'Kelly','P.O. Box 305, 2996 Vel Av.','0800 1111','Lebanese');
/*!40000 ALTER TABLE `restaurant_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-07 21:23:22
