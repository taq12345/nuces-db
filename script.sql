CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicants`
--

-- DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `applicants` (
  `jobId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  KEY `Applicants_fk0` (`jobId`),
  KEY `Applicants_fk1` (`userId`),
  CONSTRAINT `Applicants_fk0` FOREIGN KEY (`jobId`) REFERENCES `jobs` (`jobId`),
  CONSTRAINT `Applicants_fk1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `connections`
--

-- DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `connections` (
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  KEY `Connections_fk0` (`id1`),
  KEY `Connections_fk1` (`id2`),
  CONSTRAINT `Connections_fk0` FOREIGN KEY (`id1`) REFERENCES `user` (`id`),
  CONSTRAINT `Connections_fk1` FOREIGN KEY (`id2`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jobs`
--

-- DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `jobs` (
  `userId` int(11) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `Discipline` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL,
  `Tags` varchar(20) NOT NULL,
  `jobId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`jobId`),
  KEY `Jobs_fk0` (`userId`),
  CONSTRAINT `Jobs_fk0` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Table structure for table `qualifications`
--

-- DROP TABLE IF EXISTS `qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `qualifications` (
  `id` int(11) NOT NULL,
  `Accomplishments` varchar(20) NOT NULL,
  `Skills` varchar(20) NOT NULL,
  `Interests` varchar(20) NOT NULL,
  `SemesterProjects` varchar(20) NOT NULL,
  `Graduation` date NOT NULL,
  KEY `Qualifications_fk0` (`id`),
  CONSTRAINT `Qualifications_fk0` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `recommendations`
--

-- DROP TABLE IF EXISTS `recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `recommendations` (
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `Recommendation` varchar(20) NOT NULL,
  KEY `Recommendations_fk0` (`id1`),
  KEY `Recommendations_fk1` (`id2`),
  CONSTRAINT `Recommendations_fk0` FOREIGN KEY (`id1`) REFERENCES `user` (`id`),
  CONSTRAINT `Recommendations_fk1` FOREIGN KEY (`id2`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `statuses`
--

-- DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client    = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `statuses` (
  `statusId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `Status` varchar(255) NOT NULL,
  `Time` datetime DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `user`
--

-- DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `FName` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'test'
--

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-07 21:35:32
