CREATE DATABASE  IF NOT EXISTS `preferences` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `preferences`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: preferences
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `idUser` int(11) NOT NULL,
  `idPreference` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idUser`,`idPreference`),
  KEY `fk_user_has_preference_preference1_idx` (`idPreference`),
  KEY `fk_user_has_preference_user_idx` (`idUser`),
  CONSTRAINT `fk_user_has_preference_preference1` FOREIGN KEY (`idPreference`) REFERENCES `preference` (`idPreference`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_preference_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,1,9,'2019-12-17 14:30:36'),(1,2,0,'2019-09-23 16:40:41'),(1,3,3,'2019-12-17 13:43:11'),(1,4,0,'2019-09-23 16:40:42'),(1,5,7,'2019-12-17 13:43:11'),(1,6,5,'2019-12-19 14:06:06'),(1,7,0,'2019-09-23 16:40:42'),(1,8,5,'2019-12-17 13:43:11'),(1,9,6,'2019-12-17 13:43:11'),(1,10,4,'2019-12-17 13:43:11'),(2,1,3,'2019-12-17 14:31:04'),(2,2,0,'2019-09-23 16:51:50'),(2,3,9,'2019-10-02 15:32:29'),(2,4,5,'2019-09-23 16:51:51'),(2,5,0,'2019-09-23 16:51:51'),(2,6,5,'2019-12-17 14:31:04'),(2,7,10,'2019-10-04 12:31:09'),(2,8,6,'2019-10-03 13:52:22'),(2,9,0,'2019-09-23 16:51:51'),(2,10,6,'2019-10-01 14:52:18'),(3,1,7,'2019-12-19 14:12:27'),(3,2,4,'2019-12-12 14:27:19'),(3,3,6,'2019-12-12 14:33:36'),(3,4,0,'2019-12-12 14:27:19'),(3,5,0,'2019-12-12 14:27:19'),(3,6,3,'2019-12-12 14:27:20'),(3,7,5,'2019-12-12 14:27:20'),(3,8,3,'2019-12-12 14:27:20'),(3,9,0,'2019-12-12 14:27:20'),(3,10,8,'2019-12-12 14:27:20'),(4,1,0,'2019-12-19 14:13:12'),(4,2,7,'2019-12-19 14:13:12'),(4,3,6,'2019-12-19 14:13:12'),(4,4,0,'2019-12-19 14:13:13'),(4,5,0,'2019-12-19 14:13:13'),(4,6,8,'2019-12-19 14:13:13'),(4,7,0,'2019-12-19 14:13:14'),(4,8,0,'2019-12-19 14:13:14'),(4,9,9,'2019-12-19 14:13:14'),(4,10,8,'2019-12-19 14:13:14');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 16:29:04
