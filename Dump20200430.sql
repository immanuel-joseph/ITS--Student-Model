-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: projectdb
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `idnew_table` int(11) NOT NULL,
  `eyes` int(11) NOT NULL,
  `eyebrows` int(11) NOT NULL,
  `forehead` int(11) NOT NULL,
  `nose` int(11) NOT NULL,
  `mouth` int(11) NOT NULL,
  `origin_value` int(11) NOT NULL,
  PRIMARY KEY (`idnew_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,3,12,15,13,5,6),(2,1,10,15,14,5,4),(3,3,12,16,13,5,7),(4,1,11,16,14,6,3),(5,1,9,15,14,4,1),(6,1,10,16,13,8,2),(7,1,10,15,14,4,5),(8,1,9,15,14,7,1),(9,1,9,15,14,5,4),(10,3,9,15,13,5,6),(11,1,10,15,14,4,5),(12,1,11,16,14,8,2),(13,3,12,16,13,6,7),(14,1,10,16,13,4,3),(15,3,12,16,13,6,7),(16,3,12,16,13,4,3),(17,1,10,16,14,8,2),(18,1,10,15,13,4,5),(19,1,12,15,13,5,6),(20,1,9,15,14,7,4),(21,3,9,15,13,7,1),(22,1,9,15,14,8,4),(23,2,9,15,14,7,1),(24,3,12,15,13,5,6),(25,1,10,16,14,4,5),(26,3,11,16,13,8,2),(27,1,10,16,13,5,3),(28,2,11,16,13,5,7),(29,1,10,15,13,8,2),(30,1,10,16,13,6,3),(31,3,9,15,13,6,7),(32,1,9,15,13,7,1),(33,2,9,15,13,5,6),(34,1,10,15,14,7,4),(35,1,10,16,14,4,5),(36,1,9,15,14,7,4),(37,1,10,16,14,4,5),(38,2,9,15,14,5,6),(39,1,9,15,13,7,1),(40,3,11,16,13,8,7),(41,1,10,16,14,6,3),(42,1,10,15,14,5,2),(43,1,9,16,14,5,6),(44,3,11,16,13,6,7),(45,1,12,16,14,6,3),(46,1,9,15,14,8,2),(47,3,9,15,13,4,1),(48,1,10,15,14,4,5),(49,1,9,15,14,7,4),(50,1,10,16,14,4,5),(51,1,9,15,14,7,4),(52,1,9,15,14,8,2),(53,3,9,15,13,7,1),(54,3,10,15,13,5,7),(55,1,9,16,14,5,6),(56,1,10,16,14,6,3),(57,1,11,15,14,5,6),(58,1,11,16,13,4,3),(59,1,9,15,14,4,1),(60,3,12,16,13,6,7),(61,1,9,15,14,8,2),(62,1,10,15,14,4,5),(63,1,9,15,14,5,4),(64,1,10,16,13,4,5),(65,1,9,15,14,5,4),(66,1,12,15,14,8,2),(67,1,9,15,14,4,1),(68,2,9,15,14,6,7),(69,3,12,16,14,5,6),(70,1,11,16,14,6,3),(71,1,12,15,14,5,6),(72,3,12,15,14,4,3),(73,2,12,15,13,5,7),(74,1,9,15,14,7,1),(75,1,9,15,14,5,2),(76,1,9,15,14,7,4),(77,1,10,15,14,4,5),(78,1,10,16,14,4,5),(79,1,12,16,14,8,4),(80,1,12,16,14,8,2),(81,1,9,15,13,7,1),(82,3,12,15,13,6,7),(83,1,9,15,13,6,3),(84,1,12,15,14,5,6),(85,1,10,16,14,6,3),(86,3,11,16,13,7,7),(87,1,12,15,14,5,6),(88,1,9,15,14,7,1),(89,1,10,15,13,4,5),(90,2,11,15,13,8,2),(91,1,9,15,14,5,4),(92,1,9,15,14,7,1),(93,1,12,15,14,6,6),(94,3,10,15,14,7,1),(95,1,12,15,13,5,7),(96,3,9,15,13,7,1),(97,1,9,15,13,5,2),(98,3,9,15,14,7,1),(99,1,12,16,14,8,2),(100,1,9,15,14,6,3),(101,3,9,15,14,7,1),(102,1,12,15,14,6,3),(103,1,12,16,14,6,3);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 12:11:25
