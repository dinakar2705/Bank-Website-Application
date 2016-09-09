-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: ban
-- ------------------------------------------------------
-- Server version	5.7.12

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
-- Table structure for table `cust1`
--

DROP TABLE IF EXISTS `cust1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust1` (
  `AccNo` int(15) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `UserId` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Address` varchar(30) NOT NULL,
  `Balance` int(15) NOT NULL,
  PRIMARY KEY (`AccNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust1`
--

LOCK TABLES `cust1` WRITE;
/*!40000 ALTER TABLE `cust1` DISABLE KEYS */;
INSERT INTO `cust1` VALUES (1,'John','john1','john12','12 Mand Street',200),(2,'King','king1','king12','5 Chres Street',700);
/*!40000 ALTER TABLE `cust1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hey1`
--

DROP TABLE IF EXISTS `hey1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hey1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hey1`
--

LOCK TABLES `hey1` WRITE;
/*!40000 ALTER TABLE `hey1` DISABLE KEYS */;
INSERT INTO `hey1` VALUES ('12/1/12',' ',' ',0,500,500),('12/3/12','WD',' Withdrawal',100,0,398),('12/3/12','SC',' Service Charge',2,0,398),('12/1/2','CD','Customer Deposit',0,200,600),('12/2/12','TR','Account Transfer',0,0,398),('12/2/12','SC',' Service Charge',2,0,398);
/*!40000 ALTER TABLE `hey1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hi1`
--

DROP TABLE IF EXISTS `hi1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hi1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hi1`
--

LOCK TABLES `hi1` WRITE;
/*!40000 ALTER TABLE `hi1` DISABLE KEYS */;
INSERT INTO `hi1` VALUES ('12/3/1',' ',' ',0,500,500),('12/3/1','WD',' Withdrawal',300,0,200),('12/3/1','TR','Account Transfer',0,0,100),('12/1/3','SC',' Service Charge',2,0,48),('12/1/3','TR','Account Transfer',0,0,48),('12/1/3','TR','Account Transfer',0,0,38),('12/1/3','SC',' Service Charge',2,0,38);
/*!40000 ALTER TABLE `hi1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `john1`
--

DROP TABLE IF EXISTS `john1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `john1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `john1`
--

LOCK TABLES `john1` WRITE;
/*!40000 ALTER TABLE `john1` DISABLE KEYS */;
INSERT INTO `john1` VALUES ('10/3/2014',' ',' ',0,500,500),('12/3/2013','WD',' Withdrawal',200,0,300),('12/3/2013','SC',' Service Charge',2,0,298),('12/3/12','CD','Customer Deposit',0,100,400),('12/3/1','TR','Account Transfer',0,0,200),('12/3/1','SC',' Service Charge',2,0,198);
/*!40000 ALTER TABLE `john1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `king1`
--

DROP TABLE IF EXISTS `king1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `king1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `king1`
--

LOCK TABLES `king1` WRITE;
/*!40000 ALTER TABLE `king1` DISABLE KEYS */;
INSERT INTO `king1` VALUES ('12/1/12',' ',' ',0,500,500),('12/3/1','TR','Account Transfer',0,200,700);
/*!40000 ALTER TABLE `king1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rick1`
--

DROP TABLE IF EXISTS `rick1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rick1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rick1`
--

LOCK TABLES `rick1` WRITE;
/*!40000 ALTER TABLE `rick1` DISABLE KEYS */;
INSERT INTO `rick1` VALUES ('12/1/1',' ',' ',0,500,500),('12/1/13','WD',' Withdrawal',100,0,398),('12/1/13','SC',' Service Charge',2,0,398),('12/1/13','WD',' Withdrawal',100,0,298),('12/1/13','SC',' Service Charge',2,0,298),('12/1/2','CD','Customer Deposit',0,200,500);
/*!40000 ALTER TABLE `rick1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim1`
--

DROP TABLE IF EXISTS `sim1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sim1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim1`
--

LOCK TABLES `sim1` WRITE;
/*!40000 ALTER TABLE `sim1` DISABLE KEYS */;
INSERT INTO `sim1` VALUES ('12/1/12',' ',' ',0,500,500),('12/3/12','TR','Account Transfer',0,300,800);
/*!40000 ALTER TABLE `sim1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tin1`
--

DROP TABLE IF EXISTS `tin1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tin1` (
  `Date` varchar(15) NOT NULL,
  `TransactionCode` varchar(3) DEFAULT NULL,
  `TransactionName` varchar(25) DEFAULT NULL,
  `Withdrawn` int(15) DEFAULT NULL,
  `Deposit` int(15) DEFAULT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tin1`
--

LOCK TABLES `tin1` WRITE;
/*!40000 ALTER TABLE `tin1` DISABLE KEYS */;
INSERT INTO `tin1` VALUES ('12/3/4',' ',' ',0,500,500),('12/3/1','CD','Customer Deposit',0,300,800),('12/3/4','CD','Customer Deposit',0,300,1100),('12/3/12','TR','Account Transfer',0,0,800),('12/3/1','TR','Account Transfer',0,100,900),('12/3/1','WD',' Withdrawal',100,0,800),('12/3/1','WD',' Withdrawal',300,0,502),('12/3/1','SC',' Service Charge',300,0,502),('12/3/1','WD',' Withdrawal',300,0,202),('12/3/1','SC',' Service Charge',2,0,202),('12/1/12','WD',' Withdrawal',50,0,148),('12/1/12','SC',' Service Charge',2,0,148),('12/1/3','TR','Account Transfer',0,50,200),('12/1/3','TR','Account Transfer',0,10,210),('12/1/3','WD',' Withdrawal',5,0,203),('12/1/3','SC',' Service Charge',2,0,203),('12/2/12','TR','Account Transfer',0,200,405);
/*!40000 ALTER TABLE `tin1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-09  0:37:54
