-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `star` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `fk_review_orderId` (`orderId`),
  CONSTRAINT `fk_review_orderId` FOREIGN KEY (`orderId`) REFERENCES `payment` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (6,424,5,'test','test',0,'2024-07-30 15:29:49'),(7,114,3,'테니스 중급 수강 후기 등록 ','테니스 중급 수강 후기 등록 \n테니스 중급 수강 후기 등록 \n테니스 중급 수강 후기 등록 \n테니스 중급 수강 후기 등록 ',0,'2024-07-30 17:23:50'),(8,192,2,'?','????',0,'2024-08-01 14:12:12'),(9,198,5,'adsf','asfd',0,'2024-08-01 17:36:57'),(10,199,2,'asdf','asdf',0,'2024-08-01 17:37:02'),(11,200,1,'asdfasf','asdfasdf',0,'2024-08-01 17:37:06'),(12,201,3,'asdfasf','asdfasdfsad',0,'2024-08-01 17:37:11'),(13,203,3,'asdfasdf','asfasfd',0,'2024-08-01 17:37:18'),(14,213,1,'asdfasdf','asdfsadf',0,'2024-08-01 17:38:51'),(15,214,4,'asdfasdf','asdfasfsad',0,'2024-08-01 17:38:57'),(16,217,2,'asdfasdf','asdfasfsad',0,'2024-08-01 17:39:01'),(17,222,2,'123','123',0,'2024-08-01 17:42:05'),(18,221,5,'12312312','123123123',0,'2024-08-01 17:42:10');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-01 18:14:37
