-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: project_updated
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address_decomposed1`
--

DROP TABLE IF EXISTS `address_decomposed1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_decomposed1` (
  `pin_code` int(8) NOT NULL,
  `complete_address` varchar(50) NOT NULL,
  PRIMARY KEY (`complete_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_decomposed1`
--

LOCK TABLES `address_decomposed1` WRITE;
/*!40000 ALTER TABLE `address_decomposed1` DISABLE KEYS */;
INSERT INTO `address_decomposed1` VALUES (98427,'BOBBY, D-32, KAYAK MARG, MUMBAI'),(302003,'HEMA, A-2, OLD CITY, JAIPUR'),(302010,'JAY, A-21, NIRMAN NAGAR, JAIPUR'),(82376,'JAY, A-31, MANA MARG, LUCKNOW'),(24789,'JAY, C-32, TILAK NAGAR, DELHI'),(31928,'KAMAL, C-1, VAISHALI, KOTA'),(24765,'KAMAL, D-10, JAIL ROAD, DELHI'),(92847,'MAYANK, B-3, MALL ROAD, HYDERABAD'),(31928,'MAYANK, B-4, VAISHALI, KOTA'),(302012,'NINA, A-56, TAGORE NAGAR, JAIPUR');
/*!40000 ALTER TABLE `address_decomposed1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_decomposed2`
--

DROP TABLE IF EXISTS `address_decomposed2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_decomposed2` (
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin_code` int(8) NOT NULL,
  PRIMARY KEY (`pin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_decomposed2`
--

LOCK TABLES `address_decomposed2` WRITE;
/*!40000 ALTER TABLE `address_decomposed2` DISABLE KEYS */;
INSERT INTO `address_decomposed2` VALUES ('DELHI','DELHI',24765),('DELHI','DELHI',24789),('KOTA','RAJASTHAN',31928),('LUCKNOW','UP',82376),('HYDERABAD','AP',92847),('MUMBAI','MAHARASHTRA',98427),('JAIPUR','RAJASTHAN',302003),('JAIPUR','RAJASTHAN',302010),('JAIPUR','RAJASTHAN',302012);
/*!40000 ALTER TABLE `address_decomposed2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigns`
--

DROP TABLE IF EXISTS `assigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigns` (
  `employee_id` varchar(20) NOT NULL,
  `supplier_id` varchar(20) NOT NULL,
  KEY `employee_id` (`employee_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `assigns_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `assigns_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_decomposed1` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigns`
--

LOCK TABLES `assigns` WRITE;
/*!40000 ALTER TABLE `assigns` DISABLE KEYS */;
INSERT INTO `assigns` VALUES ('MANAN','INFRACARE'),('SHAMAK','SERVICER'),('VINAY','CUREWO'),('MANAN','BASE12'),('MANOJ12','OPERATE'),('MANOJ12','MACHINE'),('VINAY','COMPUTERS'),('SANJAY','ALLDEVICES'),('SANJAY','REPAIRER'),('VINAY','LEATHERCARE');
/*!40000 ALTER TABLE `assigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches_decomposed1`
--

DROP TABLE IF EXISTS `branches_decomposed1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches_decomposed1` (
  `branch_id` varchar(20) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `branch_address` varchar(50) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches_decomposed1`
--

LOCK TABLES `branches_decomposed1` WRITE;
/*!40000 ALTER TABLE `branches_decomposed1` DISABLE KEYS */;
INSERT INTO `branches_decomposed1` VALUES ('B4090','SPEED','NAMAN ROAD, MATHURA'),('CN8490','SATYAM TOWER','SAHARA MARG, DELHI'),('F398','NAYAK TOWER','NAYAK ROAD, GANGTOK'),('H50J','VINAY TOWER','JAPANESE ZONE, NEEMRANA'),('NCI34','SOLICIT BUILDING','KIRAN NAGAR, JAYPORE'),('V59N4','POST 31','MONK ROAD, HYDERABAD');
/*!40000 ALTER TABLE `branches_decomposed1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches_decomposed2`
--

DROP TABLE IF EXISTS `branches_decomposed2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches_decomposed2` (
  `employee_id` varchar(20) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  `branch_address` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches_decomposed2`
--

LOCK TABLES `branches_decomposed2` WRITE;
/*!40000 ALTER TABLE `branches_decomposed2` DISABLE KEYS */;
INSERT INTO `branches_decomposed2` VALUES ('CHARLIE','NCI34','KIRAN NAGAR, JAYPORE'),('CHARLIE','V59N4','MONK ROAD, HYDERABAD'),('FARHAN','F398','NAYAK ROAD, GANGTOK'),('MANOJ','B4090','NAMAN ROAD, MATHURA'),('MANOJ','CN8490','SAHARA MARG, DELHI'),('MANOJ','H50J','JAPANESE ZONE, NEEMRANA');
/*!40000 ALTER TABLE `branches_decomposed2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `payment_id` varchar(20) NOT NULL,
  `complete_address` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `complete_address` (`complete_address`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`complete_address`) REFERENCES `address_decomposed1` (`complete_address`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment_info` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('BOB007','BOBBY DUDE',818016883,'HDFC_VISA_120317','BOBBY, D-32, KAYAK MARG, MUMBAI'),('HEMA56','HEMA JAIN',888223110,'PAYTM_300916','HEMA, A-2, OLD CITY, JAIPUR'),('JAMAL','JAY MALHOTRA',910292150,'MOBI_210817','JAY, C-32, TILAK NAGAR, DELHI'),('JAY109','JAY MALHOTRA',982031154,'COD_161111','JAY, A-31, MANA MARG, LUCKNOW'),('JAY12','JAY MALHOTRA',918236454,'PAYPAL_VISA_211015','JAY, A-21, NIRMAN NAGAR, JAIPUR'),('KAM43','KAMAL JAIN',992031154,'COD_040413','KAMAL, C-1, VAISHALI, KOTA'),('KAMAL','KAMAL JAIN',918276454,'ICICI_VISA_100213','KAMAL, D-10, JAIL ROAD, DELHI'),('MANK1','MAYANK KUMAR',890706152,'YES_VISA_311214','MAYANK, B-4, VAISHALI, KOTA'),('MAYANK67','MAYANK KUMAR',929011441,'PAYTM_060112','MAYANK, B-3, MALL ROAD, HYDERABAD'),('NIN098','NINA MALIK',900131414,'COD_100511','NINA, A-56, TAGORE NAGAR, JAIPUR');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivers_to`
--

DROP TABLE IF EXISTS `delivers_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivers_to` (
  `pb_name` varchar(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  KEY `pb_name` (`pb_name`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `delivers_to_ibfk_1` FOREIGN KEY (`pb_name`) REFERENCES `post_boy` (`pb_name`),
  CONSTRAINT `delivers_to_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivers_to`
--

LOCK TABLES `delivers_to` WRITE;
/*!40000 ALTER TABLE `delivers_to` DISABLE KEYS */;
INSERT INTO `delivers_to` VALUES ('MANAN','JAY12'),('SHAMAK','MANK1'),('VINAY','NIN098'),('MANAN','JAMAL'),('MANOJ','KAM43'),('MANOJ','MAYANK67'),('VINAY','HEMA56'),('SANJAY','BOB007'),('SANJAY','KAMAL'),('VINAY','JAY109');
/*!40000 ALTER TABLE `delivers_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` varchar(20) NOT NULL,
  `salary` int(6) NOT NULL,
  `designation` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('CHARLIE',50000,'BRANCH HEAD'),('FARHAN',20000,'ASSISTANT'),('KARAN55',10000,'SALES MANAGER'),('KIRAN',30000,'HR OFFICER'),('MANAN',2300,'POST BOY'),('MANOJ',10000,'BRANCH COORDINATOR'),('MANOJ12',4800,'SALES'),('SANJAY',1500,'TEA BOY'),('SHAMAK',5000,'SALES'),('VINAY',4000,'SALES');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchanges_data_with`
--

DROP TABLE IF EXISTS `exchanges_data_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchanges_data_with` (
  `branch_id` varchar(20) NOT NULL,
  `pb_name` varchar(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  KEY `branch_id` (`branch_id`),
  KEY `pb_name` (`pb_name`,`employee_id`),
  CONSTRAINT `exchanges_data_with_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches_decomposed1` (`branch_id`),
  CONSTRAINT `exchanges_data_with_ibfk_2` FOREIGN KEY (`pb_name`, `employee_id`) REFERENCES `post_boy` (`pb_name`, `employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchanges_data_with`
--

LOCK TABLES `exchanges_data_with` WRITE;
/*!40000 ALTER TABLE `exchanges_data_with` DISABLE KEYS */;
INSERT INTO `exchanges_data_with` VALUES ('NCI34','MANAN','MANAN'),('CN8490','SHAMAK','SHAMAK'),('V59N4','VINAY','VINAY'),('CN8490','MANAN','MANAN'),('F398','MANOJ','MANOJ12'),('B4090','MANOJ','MANOJ12'),('B4090','VINAY','VINAY'),('NCI34','SANJAY','SANJAY'),('F398','SANJAY','SANJAY'),('H50J','VINAY','VINAY');
/*!40000 ALTER TABLE `exchanges_data_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handled_by`
--

DROP TABLE IF EXISTS `handled_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handled_by` (
  `mode_of_transport` varchar(20) NOT NULL,
  `pb_name` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  KEY `mode_of_transport` (`mode_of_transport`,`product_id`),
  KEY `pb_name` (`pb_name`,`employee_id`),
  CONSTRAINT `handled_by_ibfk_1` FOREIGN KEY (`mode_of_transport`, `product_id`) REFERENCES `transport` (`mode_of_transport`, `product_id`),
  CONSTRAINT `handled_by_ibfk_2` FOREIGN KEY (`pb_name`, `employee_id`) REFERENCES `post_boy` (`pb_name`, `employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handled_by`
--

LOCK TABLES `handled_by` WRITE;
/*!40000 ALTER TABLE `handled_by` DISABLE KEYS */;
INSERT INTO `handled_by` VALUES (' BY ROAD','MANAN','RING09','MANAN'),(' BY ROAD','SHAMAK','NIKE30','SHAMAK'),(' BY AIR','VINAY','PUMA78','VINAY'),(' BY AIR','MANAN','TOY67','MANAN'),(' BY ROAD','MANOJ','NOVA10','MANOJ12'),(' BY AIR','MANOJ','LENOVO32','MANOJ12'),(' BY ROAD','VINAY','PEN90','VINAY'),(' BY AIR','SANJAY','HP_MOUSE27','SANJAY'),(' BY ROAD','SANJAY','XIAOMI8','SANJAY'),(' BY ROAD','VINAY','BOX2','VINAY');
/*!40000 ALTER TABLE `handled_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintains`
--

DROP TABLE IF EXISTS `maintains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintains` (
  `branch_id` varchar(20) NOT NULL,
  `tracking_number` varchar(20) NOT NULL,
  PRIMARY KEY (`branch_id`,`tracking_number`),
  KEY `tracking_number` (`tracking_number`),
  CONSTRAINT `maintains_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches_decomposed1` (`branch_id`),
  CONSTRAINT `maintains_ibfk_2` FOREIGN KEY (`tracking_number`) REFERENCES `shipment` (`tracking_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintains`
--

LOCK TABLES `maintains` WRITE;
/*!40000 ALTER TABLE `maintains` DISABLE KEYS */;
INSERT INTO `maintains` VALUES ('F398','0239n'),('CN8490','32f90b'),('F398','40ngn094'),('CN8490','4v50540'),('V59N4','9bv434'),('H50J','m032c9'),('B4090','n2309'),('NCI34','v98nvn0'),('B4090','vn034n4v'),('NCI34','z23m239');
/*!40000 ALTER TABLE `maintains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `placed_on` date NOT NULL,
  `price` int(10) DEFAULT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('3FM0','KAMAL','2013-02-10',150,'KARAN55'),('4GK89','JAY109','2011-11-16',400,'SHAMAK'),('BN895','KAM43','2013-04-04',90,'KARAN55'),('CEW83B4','NIN098','2011-05-10',1500,'MANOJ12'),('CH38','MANK1','2014-12-31',6500,'KARAN55'),('F3P8','HEMA56','2016-09-30',300,'MANOJ12'),('NJ069N','JAMAL','2017-08-21',500,'VINAY'),('REIF83','JAY12','2015-10-21',4500,'MANOJ12'),('VH94','MAYANK67','2012-01-06',2700,'VINAY'),('XM298','BOB007','2017-03-12',250,'SHAMAK');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `mode_of_payment` varchar(20) NOT NULL,
  `Total_price` int(10) NOT NULL,
  `payment_id` varchar(20) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES ('COD',90,'COD_040413'),('COD',1500,'COD_100511'),('COD',400,'COD_161111'),('VISA',250,'HDFC_VISA_120317'),('VISA',150,'ICICI_VISA_100213'),('MOBIKWIK',500,'MOBI_210817'),('PAYPAL',4500,'PAYPAL_VISA_211015'),('PAYTM',2700,'PAYTM_060112'),('PAYTM',300,'PAYTM_300916'),('VISA',6500,'YES_VISA_311214');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_boy`
--

DROP TABLE IF EXISTS `post_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_boy` (
  `time_shift` varchar(20) NOT NULL,
  `pb_name` varchar(20) NOT NULL,
  `working_hours` int(2) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`pb_name`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `post_boy_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_boy`
--

LOCK TABLES `post_boy` WRITE;
/*!40000 ALTER TABLE `post_boy` DISABLE KEYS */;
INSERT INTO `post_boy` VALUES ('9:00-15:00','MANAN',6,'MANAN'),('16:00-22:00','MANOJ',6,'MANOJ12'),('9:00-15:00','SANJAY',6,'SANJAY'),('10:00-18:00','SHAMAK',8,'SHAMAK'),('13:00-18:00','VINAY',5,'VINAY');
/*!40000 ALTER TABLE `post_boy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` varchar(20) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `total_price` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `shipment_address` varchar(50) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('BOX2','4GK89',400,2,'JAY, A-31, MANA MARG, LUCKNOW','BLUE BOX'),('HP_MOUSE27','XM298',250,1,'BOBBY, D-32, KAYAK MARG, MUMBAI','HP MOUSE'),('LENOVO32','VH94',2700,1,'MAYANK, B-3, MALL ROAD, HYDERABAD','LENOVO SCREEN'),('NIKE30','CH38',6500,3,'MAYANK, B-4, VAISHAI, KOTA','NIKE SHOE'),('NOVA10','BN895',90,1,'KAMAL, C-1, VAISHALI, KOTA','NOVA PLAY'),('PEN90','F3P8',300,30,'HEMA, A-2, OLD CITY, JAIPUR','BALL PEN'),('PUMA78','CEW83B4',1500,2,'NINA, A-56, TAGORE NAGAR, JAIPUR','PUMA SHOE'),('RING09','REIF83',4500,2,'JAY, A-21, NIRMAN NAGAR, JAIPUR','MAGNUM RING'),('TOY67','NJ069N',500,5,'JAY, C-32, TILAK NAGAR, DELHI','TOY CAR'),('XIAOMI8','3FM0',150,1,'KAMAL, D-10, JAIL ROAD, DELHI','XIAOMI SCREENGUARD');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provides`
--

DROP TABLE IF EXISTS `provides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provides` (
  `supplier_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  PRIMARY KEY (`supplier_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `provides_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_decomposed1` (`supplier_id`),
  CONSTRAINT `provides_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provides`
--

LOCK TABLES `provides` WRITE;
/*!40000 ALTER TABLE `provides` DISABLE KEYS */;
INSERT INTO `provides` VALUES ('LEATHERCARE','BOX2'),('ALLDEVICES','HP_MOUSE27'),('MACHINE','LENOVO32'),('SERVICER','NIKE30'),('OPERATE','NOVA10'),('COMPUTERS','PEN90'),('CUREWO','PUMA78'),('INFRACARE','RING09'),('BASE12','TOY67'),('REPAIRER','XIAOMI8');
/*!40000 ALTER TABLE `provides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment` (
  `tracking_number` varchar(20) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  PRIMARY KEY (`tracking_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES ('0239n','2013-02-18'),('32f90b','2017-08-30'),('40ngn094','2013-04-15'),('4v50540','2015-01-10'),('9bv434','2011-05-20'),('m032c9','2011-11-30'),('n2309','2016-10-05'),('v98nvn0','2015-10-31'),('vn034n4v','2012-01-10'),('z23m239','2017-03-15');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_package`
--

DROP TABLE IF EXISTS `special_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_package` (
  `extra_charges` int(5) NOT NULL,
  `gift_or_not` int(11) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `special_package_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_package`
--

LOCK TABLES `special_package` WRITE;
/*!40000 ALTER TABLE `special_package` DISABLE KEYS */;
INSERT INTO `special_package` VALUES (10,0,'RING09'),(20,1,'NIKE30'),(17,1,'PUMA78'),(50,0,'TOY67'),(30,0,'NOVA10'),(10,0,'LENOVO32'),(40,1,'PEN90'),(72,0,'HP_MOUSE27'),(49,0,'XIAOMI8'),(15,0,'BOX2');
/*!40000 ALTER TABLE `special_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_decomposed1`
--

DROP TABLE IF EXISTS `supplier_decomposed1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_decomposed1` (
  `pickup_time` varchar(20) NOT NULL,
  `supplier_id` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_decomposed1`
--

LOCK TABLES `supplier_decomposed1` WRITE;
/*!40000 ALTER TABLE `supplier_decomposed1` DISABLE KEYS */;
INSERT INTO `supplier_decomposed1` VALUES ('00:30','ALLDEVICES',994038576),('00:30','BASE12',819403856),('09:30','COMPUTERS',93572057),('08:30','CUREWO',782940593),('09:30','INFRACARE',782940593),('20:15','LEATHERCARE',910193847),('09:45','MACHINE',782945938),('21:00','OPERATE',901836927),('08:30','REPAIRER',789405938),('10:00','SERVICER',938572057);
/*!40000 ALTER TABLE `supplier_decomposed1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_decomposed2`
--

DROP TABLE IF EXISTS `supplier_decomposed2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_decomposed2` (
  `address` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_decomposed2`
--

LOCK TABLES `supplier_decomposed2` WRITE;
/*!40000 ALTER TABLE `supplier_decomposed2` DISABLE KEYS */;
INSERT INTO `supplier_decomposed2` VALUES ('TILAK_NAGAR, JAIPUR',782940938),('MALL_ROAD, HYDERABAD',819038576),('TONK_ROAD, DELHI',901013847),('AJMER_ROAD, JAIPUR',901863927),('TONK_ROAD, DELHI',938572051);
/*!40000 ALTER TABLE `supplier_decomposed2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport` (
  `mode_of_transport` varchar(20) NOT NULL,
  `weight` int(4) NOT NULL,
  `distance` int(5) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  PRIMARY KEY (`mode_of_transport`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (' BY AIR',0,100,'HP_MOUSE27'),(' BY AIR',0,2800,'LENOVO32'),(' BY AIR',2,400,'PUMA78'),(' BY AIR',3,230,'TOY67'),(' BY ROAD',5,5,'BOX2'),(' BY ROAD',3,98,'NIKE30'),(' BY ROAD',1,42,'NOVA10'),(' BY ROAD',1,50,'PEN90'),(' BY ROAD',1,50,'RING09'),(' BY ROAD',0,20,'XIAOMI8');
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-30 23:18:39
