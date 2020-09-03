
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
-- Table structure for table `pictures_data`
--

DROP TABLE IF EXISTS `pictures_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures_data` (
  `imageid` int(11) NOT NULL AUTO_INCREMENT,
  `imagePath` blob NOT NULL,
  `emotion` varchar(30) NOT NULL,
  PRIMARY KEY (`imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures_data`
--

LOCK TABLES `pictures_data` WRITE;
/*!40000 ALTER TABLE `pictures_data` DISABLE KEYS */;
INSERT INTO `pictures_data` VALUES (1,'img/anger1.png','anger'),(2,'img/contempt1.png','contempt'),(3,'img/disgust1.png','disgust'),(4,'img/fear1.png','fear'),(5,'img/happy1.png','happy'),(6,'img/sadness1.png','sadness'),(7,'img/surprise1.png','surprise'),(8,'img/happy2.png','happy'),(9,'img/contempt2.png','contempt'),(10,'img/anger2.png','anger'),(11,'img/surprise2.png','surprise'),(12,'img/sadness2.png','sadness'),(13,'img/disgust2.png','disgust'),(14,'img/fear2.png','fear'),(15,'img/disgust3.png','disgust'),(16,'img/fear3.png','fear'),(17,'img/sadness3.png','sadness'),(18,'img/surprise3.png','surprise'),(19,'img/anger3.png','anger'),(20,'img/contempt3.png','contempt'),(21,'img/happy3.png','happy'),(22,'img/contempt4.png','contempt'),(23,'img/happy4.png','happy'),(24,'img/anger4.png','anger'),(25,'img/surprise4.png','surprise'),(26,'img/sadness4.png','sadness'),(27,'img/fear4.png','fear'),(28,'img/disgust4.png','disgust'),(29,'img/sadness5.png','sadness'),(30,'img/fear5.png','fear'),(31,'img/disgust5.png','disgust'),(32,'img/happy5.png','happy'),(33,'img/anger5.png','anger'),(34,'img/contempt5.png','contempt'),(35,'img/surprise5.png','surprise'),(36,'img/contempt6.png','contempt'),(37,'img/surprise6.png','surprise'),(38,'img/anger6.png','anger'),(39,'img/happy6.png','happy'),(40,'img/disgust6.png','disgust'),(41,'img/fear6.png','fear'),(42,'img/sadness6.png','sadness'),(43,'img/anger7.png','anger'),(44,'img/disgust7.png','disgust'),(45,'img/fear7.png','fear'),(46,'img/sadness7.png','sadness'),(47,'img/happy7.png','happy'),(48,'img/surprise7.png','surprise'),(49,'img/contempt7.png','contempt'),(50,'img/surprise8.png','surprise'),(51,'img/contempt8.png','contempt'),(52,'img/sadness8.png','sadness'),(53,'img/happy8.png','happy'),(54,'img/disgust8.png','disgust'),(55,'img/anger8.png','anger'),(56,'img/fear8.png','fear'),(57,'img/anger9.png','anger'),(58,'img/fear9.png','fear'),(59,'img/happy9.png','happy'),(60,'img/disgust9.png','disgust'),(61,'img/sadness9.png','sadness'),(62,'img/surprise9.png','surprise'),(63,'img/contempt9.png','contempt'),(64,'img/surprise10.png','surprise'),(65,'img/contempt10.png','contempt'),(66,'img/sadness10.png','sadness'),(67,'img/happy10.png','happy'),(68,'img/disgust10.png','disgust'),(69,'img/anger10.png','anger'),(70,'img/fear10.png','fear'),(71,'img/anger11.png','anger'),(72,'img/fear11.png','fear'),(73,'img/disgust11.png','disgust'),(74,'img/happy11.png','happy'),(75,'img/sadness11.png','sadness'),(76,'img/contempt11.png','contempt'),(77,'img/surprise11.png','surprise'),(78,'img/surprise12.png','surprise'),(79,'img/contempt12.png','contempt'),(80,'img/sadness12.png','sadness'),(81,'img/happy12.png','happy'),(82,'img/disgust12.png','disgust'),(83,'img/fear12.png','fear'),(84,'img/anger12.png','anger'),(85,'img/fear13.png','fear'),(86,'img/disgust13.png','disgust'),(87,'img/anger13.png','anger'),(88,'img/happy13.png','happy'),(89,'img/surprise13.png','surprise'),(90,'img/sadness13.png','sadness'),(91,'img/contempt13.png','contempt'),(92,'img/happy14.png','happy'),(93,'img/anger14.png','anger'),(94,'img/happy15.png','happy'),(95,'img/disgust14.png','disgust'),(96,'img/happy16.png','happy'),(97,'img/sadness14.png','sadness'),(98,'img/happy17.png','happy'),(99,'img/sadness15.png','sadness'),(100,'img/fear14.png','fear'),(101,'img/happy18.png','happy'),(102,'img/fear15.png','fear'),(103,'img/fear16.png','fear');
/*!40000 ALTER TABLE `pictures_data` ENABLE KEYS */;
UNLOCK TABLES;
