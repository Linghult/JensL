CREATE DATABASE  IF NOT EXISTS `jensl` /*!40100 DEFAULT CHARACTER SET utf8 */;
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
-- Table structure for table `copies`
--

DROP TABLE IF EXISTS `copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copies` (
  `copyID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `rentDate` date DEFAULT NULL,
  `availability` enum('yes','no') NOT NULL,
  PRIMARY KEY (`copyID`),
  KEY `fk_Copies_Movies1_idx` (`movieID`),
  KEY `fk_Copies_customers1_idx` (`customerID`),
  KEY `employeeID_idx` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies`
--

LOCK TABLES `copies` WRITE;
/*!40000 ALTER TABLE `copies` DISABLE KEYS */;
INSERT INTO `copies` VALUES (1,2,3,1,'2018-05-03','no'),(2,3,3,1,'2018-05-03','no'),(3,3,3,1,'2018-04-01','no'),(4,3,4,2,'2018-04-06','no'),(5,3,5,1,'2018-04-01','no'),(6,3,6,2,'2018-03-31','no'),(7,4,8,1,'2018-03-30','no'),(8,5,9,2,'2018-03-29','no'),(9,6,10,1,'2018-03-28','no'),(10,7,11,2,'2018-03-27','no'),(11,8,12,1,'2018-03-21','no'),(12,9,13,3,'2018-03-26','no'),(13,10,2,4,'2018-03-30','no'),(14,11,7,4,'2018-04-04','no'),(15,5,NULL,NULL,NULL,'yes'),(16,6,NULL,NULL,NULL,'yes'),(17,7,NULL,NULL,NULL,'yes'),(18,8,NULL,NULL,NULL,'yes'),(19,9,NULL,NULL,NULL,'yes');
/*!40000 ALTER TABLE `copies` ENABLE KEYS */;
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
  `adressID` int(11) NOT NULL,
  PRIMARY KEY (`customerID`),
  KEY `fk_Persons_Adressess1_idx` (`adressID`)
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
  `employeeID` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `adressID` int(11) NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `fk_Persons_Adressess1_idx` (`adressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Lisa','Lind','l.lind@gmail.com',0),(2,'Dark','Ness','d.ness@gmail.com',0),(3,'Pero','Blanco','p.blanco@gmail.com',0),(4,'Sven','Svensson','s.svensson@gmail.com',0);
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
  `releaseYear` int(4) DEFAULT NULL,
  `publisherID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`),
  KEY `fk_Movies_Publishers1_idx` (`publisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (2,'Where The Wild Things Are','horror','Jay Franco',1999,1),(3,'Boondock Saints','action','Master Windu',1978,1),(4,'Terminator','action','Who Knew',1997,2),(5,'Babylon','history','Babe Ruth',2015,9),(6,'Baywatch','comedy','Love Hamburgers',2013,3),(7,'Facebook INC','drama','Daryl Flower',2010,4),(8,'Shreck','comedy','Donkey Mcdonk',2001,5),(9,'Boulevard Of Dreams','romance','Elmo Marks',2000,6),(10,'Dank Memes','comedy','Michael Cera',2004,7),(11,'Dunder Mifflin','romance','Michael Scott',2005,8);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_actor`
--

DROP TABLE IF EXISTS `movies_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_actor` (
  `movieID` int(11) NOT NULL,
  `actorID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`actorID`),
  KEY `fk_Movies_has_Actor_Actor1_idx` (`actorID`),
  KEY `fk_Movies_has_Actor_Movies1_idx` (`movieID`)
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
-- Temporary view structure for view `vw_list_all_comedies`
--

DROP TABLE IF EXISTS `vw_list_all_comedies`;
/*!50001 DROP VIEW IF EXISTS `vw_list_all_comedies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_list_all_comedies` AS SELECT 
 1 AS `Title`,
 1 AS `MovieID`,
 1 AS `Genre`,
 1 AS `Producer`,
 1 AS `ReleaseYear`,
 1 AS `Publisher`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `vw_list_all_rented_movies`
--

DROP TABLE IF EXISTS `vw_list_all_rented_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_list_all_rented_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_list_all_rented_movies` AS SELECT 
 1 AS `copyID`,
 1 AS `Title`,
 1 AS `Customer`,
 1 AS `Employee`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_list_employees_rentals`
--

DROP TABLE IF EXISTS `vw_list_employees_rentals`;
/*!50001 DROP VIEW IF EXISTS `vw_list_employees_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_list_employees_rentals` AS SELECT 
 1 AS `Employee`,
 1 AS `Copies Rented Out`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_list_overdue_rentals`
--

DROP TABLE IF EXISTS `vw_list_overdue_rentals`;
/*!50001 DROP VIEW IF EXISTS `vw_list_overdue_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_list_overdue_rentals` AS SELECT 
 1 AS `copyID`,
 1 AS `Title`,
 1 AS `Customer`,
 1 AS `RentDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'jensl'
--

--
-- Dumping routines for database 'jensl'
--

--
-- Final view structure for view `vw_list_all_comedies`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_all_comedies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Linghult`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_all_comedies` AS select `m`.`title` AS `Title`,`m`.`movieID` AS `MovieID`,`m`.`genre` AS `Genre`,`m`.`producer` AS `Producer`,`m`.`releaseYear` AS `ReleaseYear`,`p`.`publisherName` AS `Publisher` from (`movies` `m` left join `publishers` `p` on((`p`.`publisherID` = `m`.`publisherID`))) where (`m`.`genre` = 'comedy') group by `m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!50001 VIEW `vw_list_all_movies` AS select `m`.`title` AS `Title`,`m`.`movieID` AS `MovieID`,`m`.`genre` AS `Genre`,`m`.`producer` AS `Producer`,`m`.`releaseYear` AS `ReleaseYear`,`p`.`publisherName` AS `Publisher` from (`movies` `m` left join `publishers` `p` on((`p`.`publisherID` = `m`.`publisherID`))) group by `m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_list_all_rented_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_all_rented_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Linghult`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_all_rented_movies` AS select `c`.`copyID` AS `copyID`,`m`.`title` AS `Title`,concat(`cu`.`firstName`,' ',`cu`.`lastName`) AS `Customer`,concat(`em`.`firstName`,' ',`em`.`lastName`) AS `Employee` from (((`copies` `c` left join `movies` `m` on((`m`.`movieID` = `c`.`movieID`))) left join `customers` `cu` on((`cu`.`customerID` = `c`.`customerID`))) left join `employees` `em` on((`em`.`employeeID` = `c`.`employeeID`))) where ((`c`.`employeeID` is not null) and (`c`.`customerID` is not null)) order by `c`.`movieID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_list_employees_rentals`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_employees_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Linghult`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_employees_rentals` AS select concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Employee`,count(0) AS `Copies Rented Out` from (`copies` `c` left join `employees` `e` on((`e`.`employeeID` = `c`.`employeeID`))) where (`e`.`employeeID` is not null) group by `e`.`employeeID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_list_overdue_rentals`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_overdue_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Linghult`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_overdue_rentals` AS select `c`.`copyID` AS `copyID`,`m`.`title` AS `Title`,concat(`cu`.`firstName`,' ',`cu`.`lastName`) AS `Customer`,`c`.`rentDate` AS `RentDate` from ((`copies` `c` left join `movies` `m` on((`m`.`movieID` = `c`.`movieID`))) left join `customers` `cu` on((`cu`.`customerID` = `c`.`customerID`))) where ((`c`.`employeeID` is not null) and (`c`.`customerID` is not null) and ((to_days(curdate()) - to_days(`c`.`rentDate`)) > 4)) order by `c`.`rentDate` */;
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

-- Dump completed on 2018-04-08 18:26:28
