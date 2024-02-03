-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shms
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES
(1,'ommy'),
(2,'dfghjkl'),
(3,'dfgedfrgthjkmnbvc'),
(4,'dnbfjnvfb'),
(5,'omera'),
(7,'onyooo'),
(9,'mapoz');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES
(1,'14567890'),
(2,'4567890'),
(3,'890567890'),
(4,'8905'),
(5,'456785'),
(6,'6785'),
(7,'4567890');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `room_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES
(1,'wewe',2345),
(2,'mimi',34567345),
(3,'mimi',7890),
(4,'tommwe',234567),
(5,'tommwe',234567),
(7,'ommy',234567);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rollNo` int(11) NOT NULL,
  `dateOfBirth` varchar(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `fatherNumber` bigint(20) DEFAULT NULL,
  `roomNo` int(11) DEFAULT NULL,
  `hostelName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'123345',NULL,'$2b$10$xE5uLS4.WAElGGM0Rbx3PeCYp7F9tQcxfbGTpmrLzmePL71YazUvu'),
(2,'tomas',NULL,'$2b$10$H.3i.WO2AW7saE9AeeRqT.3yK.2pIKrBAhbEkPPnzlfnRDxwleWoi'),
(3,'123345',NULL,'$2b$10$LFkemgXDzGJKdkAS8LFj9enoDByEk6a/3Tcp5DjO1VfQrLXRQ2Aki'),
(4,'123345',NULL,'$2b$10$3LUIXIdHdeuc1UtAYLlHmeCtGJfbYgOiM1X8xsQm2b1dId0A0FYMC'),
(5,'hellen',NULL,'$2b$10$aXGPRkx4toO/rz69AAZAMuJM8mhWaGAlWgty1oV9e/zuXgTwUjcLe'),
(6,'tomas',NULL,'$2b$10$GCHk6PF6fac3ah1I0cTY3Oct38tHWLMVqDCgw0vlytVIjIlL3eEoO'),
(7,'tomas',NULL,'$2b$10$GoMDPPQ6Bge1ebvHQYrqAOyd8xjHs3X13uptjlCQvrCJed1gWEBtW'),
(8,'tomas',NULL,'$2b$10$sfeKgLvbVJyPkfSggapnrOq3v9tNLiJ0.YNyipov8iZRmIhdhdBo.'),
(9,'tomas',NULL,'$2b$10$d3LVz3zNvYdqK5872LoShutL0hQ4hL1th4AdDloUiex9Hyxgzr.xS'),
(10,'tomas',NULL,'$2b$10$Oul2L9uQwat2smknQheH2.gEsItWMpVBxJFTWBhqOcBiguopKADZi'),
(11,'tomas',NULL,'$2b$10$.MIFj12MvqkIc6PSNYIeDeb27pclCjVHqxIS/dSMSoLD7llQL2sVi'),
(12,'tomas',NULL,'$2b$10$b/Wby8xBph9SDzIRLpPnNutCXL4vdTGHk.HhgtP1cOlMp6c3LX/oe'),
(13,'tomas',NULL,'$2b$10$8uf6oAeeLxFHjy8/NOhsDOCxb49qy1aX8Xe4G.HEhKOCOyaCAU6by'),
(14,'tomas',NULL,'$2b$10$DNk1m1Cj..MgC1WTmxJ3UOMKEql3g8IXS8eha38z5tI2cvtmLXCoy'),
(15,'tomas',NULL,'$2b$10$u25nA0lgJk9/cbGtyTizteJPUVx/IciTPFWIDr0HpkJExuuFhGbxe'),
(16,'tomas',NULL,'$2b$10$ij9Bhhwdzhkui25OHjN7aeYkKF8Pwhb3514HGFCeytjaWPFTbQ./O'),
(17,'tomas',NULL,'$2b$10$.oLFlDOc90XkGtLL1r25b.vZ7LIhnbuIxbfvmCOHg1D1k.LgV35OG');
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

-- Dump completed on 2024-02-03 19:08:49
