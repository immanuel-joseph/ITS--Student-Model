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
-- Table structure for table `demo_table`
--

DROP TABLE IF EXISTS `demo_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_table` (
  `emotion_names` varchar(45) NOT NULL,
  `emotion_id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_table`
--

LOCK TABLES `demo_table` WRITE;
/*!40000 ALTER TABLE `demo_table` DISABLE KEYS */;
INSERT INTO `demo_table` VALUES ('',0,''),('surprised',1,'ding'),('contempt',2,'ding'),('',0,'ding'),('',0,'ding'),('fear',1,'ding'),('contempt',2,'ding'),('',0,'ding'),('',0,''),('happy',1,'ding'),('disgust',2,'ding'),('',0,'ding'),('',0,'ding'),('happy',1,'ding'),('',0,'ding'),('',0,'ding'),('fear',1,'ding'),('surprised',2,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('',0,'ding'),('surprised',3,'ding'),('',0,'ding'),('',0,'ding'),('disgust',4,'ding'),('',0,'ding'),('happy',5,'ding');
/*!40000 ALTER TABLE `demo_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_users`
--

DROP TABLE IF EXISTS `demo_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_users` (
  `iddemo_users` int(11) NOT NULL AUTO_INCREMENT,
  `demo_users_name` varchar(45) NOT NULL,
  `demo_users_time` varchar(45) DEFAULT NULL,
  `currImgId` int(11) NOT NULL,
  PRIMARY KEY (`iddemo_users`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_users`
--

LOCK TABLES `demo_users` WRITE;
/*!40000 ALTER TABLE `demo_users` DISABLE KEYS */;
INSERT INTO `demo_users` VALUES (1,'Immanuel','1585075330',1),(2,'Immanuel','1585075659',1),(3,'Immanuel','1585100180',1),(4,'Immanuel','1585101847',3),(5,'ding','1585102250',1),(6,'ding','1585102269',3),(7,'ding','1585105109',3),(8,'ding','1585105318',1),(9,'ding','1585105350',2),(10,'ding','1585105586',3),(11,'ding','1585106507',4),(12,'ding','1585106841',4),(13,'ding','1585107103',5),(14,'ding','1585107264',6);
/*!40000 ALTER TABLE `demo_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`loginId`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'imman','imman',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
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
INSERT INTO `pictures_data` VALUES (1,'img/anger1.png','anger\r'),(2,'img/contempt1.png','contempt\r'),(3,'img/disgust1.png','disgust\r'),(4,'img/fear1.png','fear\r'),(5,'img/happy1.png','happy\r'),(6,'img/sadness1.png','sadness\r'),(7,'img/surprise1.png','surprise\r'),(8,'img/happy2.png','happy\r'),(9,'img/contempt2.png','contempt\r'),(10,'img/anger2.png','anger\r'),(11,'img/surprise2.png','surprise\r'),(12,'img/sadness2.png','sadness\r'),(13,'img/disgust2.png','disgust\r'),(14,'img/fear2.png','fear\r'),(15,'img/disgust3.png','disgust\r'),(16,'img/fear3.png','fear\r'),(17,'img/sadness3.png','sadness\r'),(18,'img/surprise3.png','surprise\r'),(19,'img/anger3.png','anger\r'),(20,'img/contempt3.png','contempt\r'),(21,'img/happy3.png','happy\r'),(22,'img/contempt4.png','contempt\r'),(23,'img/happy4.png','happy\r'),(24,'img/anger4.png','anger\r'),(25,'img/surprise4.png','surprise\r'),(26,'img/sadness4.png','sadness\r'),(27,'img/fear4.png','fear\r'),(28,'img/disgust4.png','disgust\r'),(29,'img/sadness5.png','sadness\r'),(30,'img/fear5.png','fear\r'),(31,'img/disgust5.png','disgust\r'),(32,'img/happy5.png','happy\r'),(33,'img/anger5.png','anger\r'),(34,'img/contempt5.png','contempt\r'),(35,'img/surprise5.png','surprise\r'),(36,'img/contempt6.png','contempt\r'),(37,'img/surprise6.png','surprise\r'),(38,'img/anger6.png','anger\r'),(39,'img/happy6.png','happy\r'),(40,'img/disgust6.png','disgust\r'),(41,'img/fear6.png','fear\r'),(42,'img/sadness6.png','sadness\r'),(43,'img/anger7.png','anger\r'),(44,'img/disgust7.png','disgust\r'),(45,'img/fear7.png','fear\r'),(46,'img/sadness7.png','sadness\r'),(47,'img/happy7.png','happy\r'),(48,'img/surprise7.png','surprise\r'),(49,'img/contempt7.png','contempt\r'),(50,'img/surprise8.png','surprise\r'),(51,'img/contempt8.png','contempt\r'),(52,'img/sadness8.png','sadness\r'),(53,'img/happy8.png','happy\r'),(54,'img/disgust8.png','disgust\r'),(55,'img/anger8.png','anger\r'),(56,'img/fear8.png','fear\r'),(57,'img/anger9.png','anger\r'),(58,'img/fear9.png','fear\r'),(59,'img/happy9.png','happy\r'),(60,'img/disgust9.png','disgust\r'),(61,'img/sadness9.png','sadness\r'),(62,'img/surprise9.png','surprise\r'),(63,'img/contempt9.png','contempt\r'),(64,'img/surprise10.png','surprise\r'),(65,'img/contempt10.png','contempt\r'),(66,'img/sadness10.png','sadness\r'),(67,'img/happy10.png','happy\r'),(68,'img/disgust10.png','disgust\r'),(69,'img/anger10.png','anger\r'),(70,'img/fear10.png','fear\r'),(71,'img/anger11.png','anger\r'),(72,'img/fear11.png','fear\r'),(73,'img/disgust11.png','disgust\r'),(74,'img/happy11.png','happy\r'),(75,'img/sadness11.png','sadness\r'),(76,'img/contempt11.png','contempt\r'),(77,'img/surprise11.png','surprise\r'),(78,'img/surprise12.png','surprise\r'),(79,'img/contempt12.png','contempt\r'),(80,'img/sadness12.png','sadness\r'),(81,'img/happy12.png','happy\r'),(82,'img/disgust12.png','disgust\r'),(83,'img/fear12.png','fear\r'),(84,'img/anger12.png','anger\r'),(85,'img/fear13.png','fear\r'),(86,'img/disgust13.png','disgust\r'),(87,'img/anger13.png','anger\r'),(88,'img/happy13.png','happy\r'),(89,'img/surprise13.png','surprise\r'),(90,'img/sadness13.png','sadness\r'),(91,'img/contempt13.png','contempt\r'),(92,'img/happy14.png','happy\r'),(93,'img/anger14.png','anger\r'),(94,'img/happy15.png','happy\r'),(95,'img/disgust14.png','disgust\r'),(96,'img/happy16.png','happy\r'),(97,'img/sadness14.png','sadness\r'),(98,'img/happy17.png','happy\r'),(99,'img/sadness15.png','sadness\r'),(100,'img/fear14.png','fear\r'),(101,'img/happy18.png','happy\r'),(102,'img/fear15.png','fear\r'),(103,'img/fear16.png','fear\r');
/*!40000 ALTER TABLE `pictures_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `quizId` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(30) NOT NULL,
  `userId` int(11) NOT NULL,
  `imageId` int(11) NOT NULL,
  PRIMARY KEY (`quizId`),
  KEY `usrId` (`userId`),
  CONSTRAINT `usrId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `userpass` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'imman',''),(2,'ding','dong'),(3,'rey','101'),(4,'jay','77777'),(5,'jayy','sadh'),(6,'',''),(7,'mani','jsaj'),(8,'ijij','sjsj');
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

-- Dump completed on 2020-03-24 22:03:12
