CREATE DATABASE  IF NOT EXISTS `jensl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jensl`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jensl
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actorID` int(11) NOT NULL AUTO_INCREMENT,
  `actorFirstName` varchar(45) DEFAULT NULL,
  `actorLastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`actorID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Tom ','Cruise'),(2,'Brad','Pitt'),(3,'Gary','Oldman'),(4,'Corey','Feldman'),(5,'Johnny','Depp'),(6,'Alicia','Silverstone'),(7,'Nicolas','Cage'),(8,'Benicio','Deltoro'),(9,'Tom','Hanks'),(10,'Kevin','Costner'),(11,'Will','Smith'),(12,'Olivia','Wilde'),(13,'Natalie','Portman'),(14,'Angelina','Jolie'),(15,'Marilyn','Monroe'),(16,'Jennifer','Lawrence'),(17,'Julia','Roberts'),(18,'Meryl','Streep'),(19,'Nicole','Kidman'),(20,'Audrey','Hepburn'),(21,'Nicole','Kidman'),(22,'Mila','Kunis'),(23,'Sandra','Bullock');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adressess`
--

DROP TABLE IF EXISTS `adressess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adressess` (
  `adressID` int(11) NOT NULL AUTO_INCREMENT,
  `streetAdress` varchar(45) DEFAULT NULL,
  `zipCode` int(20) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adressID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adressess`
--

LOCK TABLES `adressess` WRITE;
/*!40000 ALTER TABLE `adressess` DISABLE KEYS */;
INSERT INTO `adressess` VALUES (1,'Nygatan 89',60234,'Norrköping','Östergötland'),(2,'Bäckgatan 12',60534,'Norrköping','Östergötland'),(3,'Mariehovs Gård',60255,'Söderköping','Östergötland'),(4,'Broddgatan 55',60222,'Norrköping','Östergötland'),(5,'Tornvägen 12',60003,'Söderköping','Östergötland'),(6,'Bredgatan 33',60332,'Norrköping','Östergötland'),(7,'Smalgatan 3',62311,'Norrköping','Östergötland'),(8,'Waywaygatan 2',63423,'Söderköping','Östergötland'),(9,'Konstvägen 66',62342,'Söderköpign','Östergötland'),(10,'Bordsvägen 65',63532,'Söderköping','Östergötland');
/*!40000 ALTER TABLE `adressess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Adressess_adressID` int(11) NOT NULL,
  PRIMARY KEY (`customerID`),
  KEY `fk_Persons_Adressess1_idx` (`Adressess_adressID`),
  CONSTRAINT `fk_Persons_Adressess10` FOREIGN KEY (`Adressess_adressID`) REFERENCES `adressess` (`adressID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Tuva','Linghult','t.linghult@gmail.com',1),(2,'Tone','Linghult','to.linghult@gmail.com',1),(3,'Ulf','Linghult','u.linghult@gmail.ciom',2),(4,'Helena','Forst','h.fors@gmail.com',2),(5,'Jens','Paulin','j.paulin@gmail.com',3),(6,'Evelyn','Contreras','e.contreras@gmailc.om',3),(7,'Patrik','Sjöberg','p.sjöberg@gmail.com',4),(8,'Liz','Libro','l.libro@gmail.com',5),(9,'Toto','Africa','t.africa@gmail.com',6),(10,'Remem','Ber','r.ber@gmail.com',7),(11,'Callme','Maybe','c.maybe@gmail.com',8),(12,'Wishi','Wasapunkrocker','w.wasapunkrocker@gmail.com',9),(13,'With','Flowers','w.flowers@gmail.com',10);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Roles_roleID` int(11) NOT NULL,
  `Adressess_adressID` int(11) NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `fk_Persons_Roles1_idx` (`Roles_roleID`),
  KEY `fk_Persons_Adressess1_idx` (`Adressess_adressID`),
  CONSTRAINT `fk_Persons_Adressess1` FOREIGN KEY (`Adressess_adressID`) REFERENCES `adressess` (`adressID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persons_Roles1` FOREIGN KEY (`Roles_roleID`) REFERENCES `roles` (`roleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Lisa','Lind','l.lind@gmail.com',1,7),(2,'Dark','Ness','d.ness@gmail.com',2,8),(3,'Pero','Blanco','p.blanco@gmail.com',3,9),(4,'Sven','Svensson','s.svensson@gmail.com',1,7);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `releaseYear` varchar(45) DEFAULT NULL,
  `available` enum('no','yes') DEFAULT NULL,
  `PublisherID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`),
  KEY `fk_Movies_Publishers1_idx` (`PublisherID`),
  CONSTRAINT `fk_Movies_Publishers1` FOREIGN KEY (`PublisherID`) REFERENCES `publishers` (`publisherID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (2,'Where The Wild Things Are','horror','Jay Franco','1999',NULL,1),(3,'Boondock Saints','action','Master Windu','1985',NULL,1),(4,'Terminator','action','Who Knew','1989',NULL,2),(5,'Babylon','history','Babe Ruth','2001',NULL,3),(6,'Baywatch','comedy','Love Hamburgers','2010',NULL,4),(7,'Facebook INC','drama','Daryl Flower','2011',NULL,4),(8,'Shreck','comedy','Donkey Mcdonk','2012',NULL,5),(9,'Boulevard Of Dreams','romance','Elmo Marks','2018',NULL,6),(10,'Dank Memes','comedy','Michael Cera','2017',NULL,7),(11,'Dunder Mifflin','romance','Michael Scott','2004',NULL,8);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_actor`
--

DROP TABLE IF EXISTS `movies_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_actor` (
  `Movies_movieID` int(11) NOT NULL,
  `Actor_actorID` int(11) NOT NULL,
  PRIMARY KEY (`Movies_movieID`,`Actor_actorID`),
  KEY `fk_Movies_has_Actor_Actor1_idx` (`Actor_actorID`),
  KEY `fk_Movies_has_Actor_Movies1_idx` (`Movies_movieID`),
  CONSTRAINT `fk_Movies_has_Actor_Actor1` FOREIGN KEY (`Actor_actorID`) REFERENCES `actor` (`actorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Actor_Movies1` FOREIGN KEY (`Movies_movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_actor`
--

LOCK TABLES `movies_has_actor` WRITE;
/*!40000 ALTER TABLE `movies_has_actor` DISABLE KEYS */;
INSERT INTO `movies_has_actor` VALUES (2,1),(11,1),(2,2),(10,2),(2,3),(9,3),(2,4),(8,4),(2,5),(7,5),(2,6),(6,6),(2,7),(5,7),(3,8),(4,8),(3,9),(2,10),(4,10),(2,11),(4,11),(5,12),(5,13),(6,14),(6,15),(6,16),(7,17),(7,18),(8,19),(9,20),(10,21),(11,22),(11,23);
/*!40000 ALTER TABLE `movies_has_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `publisherID` int(11) NOT NULL AUTO_INCREMENT,
  `publisherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`publisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Warner Bros'),(2,'Colombia Studios'),(3,'Pixar'),(4,'Disney'),(5,'The Bro Hos'),(6,'Dark Times Entertainment'),(7,'Bright Fluffy Cloud'),(8,'The Yes Man Entertainment'),(9,'I Wonder What Life Is Publishing');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentreceipt`
--

DROP TABLE IF EXISTS `rentreceipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentreceipt` (
  `rentReceiptID` int(11) NOT NULL AUTO_INCREMENT,
  `rentedOutBy` varchar(45) DEFAULT NULL,
  `rentedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rentReceiptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentreceipt`
--

LOCK TABLES `rentreceipt` WRITE;
/*!40000 ALTER TABLE `rentreceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentreceipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'cashier'),(2,'manager'),(3,'cleaner');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_list_all_movies`
--

DROP TABLE IF EXISTS `vw_list_all_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_list_all_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_list_all_movies` AS SELECT 
 1 AS `Title`,
 1 AS `MovieID`,
 1 AS `Genre`,
 1 AS `Producer`,
 1 AS `ReleaseYear`,
 1 AS `Publisher`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'jensl'
--

--
-- Dumping routines for database 'jensl'
--

--
-- Final view structure for view `vw_list_all_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_all_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Linghult`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_all_movies` AS select `m`.`title` AS `Title`,`m`.`movieID` AS `MovieID`,`m`.`genre` AS `Genre`,`m`.`producer` AS `Producer`,`m`.`releaseYear` AS `ReleaseYear`,`p`.`publisherName` AS `Publisher` from (`movies` `m` left join `publishers` `p` on((`p`.`publisherID` = `m`.`PublisherID`))) group by `m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-07 15:08:42
