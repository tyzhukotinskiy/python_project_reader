-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: translator
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

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
-- Table structure for table `last_images`
--

DROP TABLE IF EXISTS `last_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path_to_image` text NOT NULL,
  `date` datetime NOT NULL,
  `result_text` text NOT NULL,
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last_images`
--

LOCK TABLES `last_images` WRITE;
/*!40000 ALTER TABLE `last_images` DISABLE KEYS */;
INSERT INTO `last_images` VALUES (34,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-23 23:55:11','HI! How are you? - Im fine, thank you',''),(35,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-23 23:55:35','and the Opera House If pare ee 13 a alta 7 gs',''),(36,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-23 23:55:52','Гриффины — смотреть онлайн на русском языке  ',''),(37,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 00:09:43','HI! How are you? - Im fine, thank you',''),(38,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 00:10:19','HI! How are you? - Im fine, thank you',''),(39,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 00:11:07','HI! How are you? - Im fine, thank you',''),(40,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 00:12:08','HI! How are you? - Im fine, thank you',''),(41,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 00:12:32','HI! How are you? - Im fine, thank you',''),(42,'/home/tymur/PythonEnvironments/basic_env/textte.jpg','2020-05-24 00:12:42','frmua0 YI] O4F UE PEHSZOIN af AQ UY INg “9JAJ',''),(43,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-24 00:12:54','and the Opera House If pare ee 13 a alta 7 gs',''),(44,'/home/tymur/Downloads/Screenshot_2020-05-24 Euroexam sample test Reading comprehension exercise pdf.png','2020-05-24 01:00:33','Scientists have looked at the relationship be',''),(45,'/home/tymur/Downloads/Screenshot_2020-05-24 FCE sample exam Reading comprehension worksheet.png','2020-05-24 01:20:02','Meerkats are animals which are about 30cm tal',''),(46,'/home/tymur/Downloads/Screenshot_2020-05-24 FCE sample exam Reading comprehension worksheet(1).png','2020-05-24 01:23:50','At first we feel silly, and more than a littl',''),(47,'/home/tymur/Downloads/Screenshot_2020-05-24 FCE sample exam Reading comprehension worksheet(2).png','2020-05-24 01:31:47','Unbelievably comical and cute, the youngsters',''),(48,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 22:18:03','HI! How are you? - Im fine, thank you',''),(49,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 22:22:42','HI! How are you? - Im fine, thank you',''),(50,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 22:29:24','HI! How are you? - Im fine, thank you',''),(51,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-24 22:31:05','and the Opera House If pare ee 13 a alta 7 gs',''),(52,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 22:34:05','HI! How are you? - Im fine, thank you',''),(53,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-24 23:58:12','HI! How are you? - Im fine, thank you',''),(54,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:01:57','HI! How are you? - Im fine, thank you','eng'),(55,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:07:30','HI! How are you? - Im fine, thank you','eng'),(56,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 00:07:53','and the Opera House If pare ee 13 a alta 7 gs','eng'),(57,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:07:58','HI! How are you? - Im fine, thank you','eng'),(58,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 00:07:59','and the Opera House If pare ee 13 a alta 7 gs','eng'),(59,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:08:26','Гриффины — смотреть онлайн на русском языке  ','rus'),(60,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:08:35','HI! How are you? - Im fine, thank you','eng'),(61,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:08:36','Гриффины — смотреть онлайн на русском языке  ','rus'),(62,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:16:45','Гриффины — смотреть онлайн на русском языке  ','rus'),(63,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:46:45','HI! How are you? - Im fine, thank you','eng'),(64,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:47:30','HI! How are you? - Im fine, thank you','eng'),(65,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:48:16','HI! How are you? - Im fine, thank you','eng'),(66,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:48:47','HI! How are you? - Im fine, thank you','eng'),(67,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 00:49:19','and the Opera House If pare ee 13 a alta 7 gs','eng'),(68,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:50:33','Гриффины — смотреть онлайн на русском языке  ','rus'),(69,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:51:20','HI! How are you? - Im fine, thank you','eng'),(70,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:54:57','Гриффины — смотреть онлайн на русском языке  ','rus'),(71,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:56:17','HI! How are you? - Im fine, thank you','eng'),(72,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:56:50','Гриффины — смотреть онлайн на русском языке  ','rus'),(73,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:57:49','HI! How are you? - Im fine, thank you','eng'),(74,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 00:59:16','Гриффины — смотреть онлайн на русском языке  ','rus'),(75,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 00:59:23','and the Opera House If pare ee 13 a alta 7 gs','eng'),(76,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 00:59:27','HI! How are you? - Im fine, thank you','eng'),(77,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 00:59:29','and the Opera House If pare ee 13 a alta 7 gs','eng'),(78,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 01:00:08','and the Opera House If pare ee 13 a alta 7 gs','eng'),(79,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 18:19:33','and the Opera House If pare ee 13 a alta 7 gs','eng'),(80,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 18:19:46','Гриффины — смотреть онлайн на русском языке  ','rus'),(81,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 18:19:55','HI! How are you? - Im fine, thank you','eng'),(82,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 18:19:58','Гриффины — смотреть онлайн на русском языке  ','rus'),(83,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 18:20:03','Гриффины — смотреть онлайн на русском языке  ','rus'),(84,'/home/tymur/PythonEnvironments/basic_env/how.png','2020-05-25 18:20:06','HI! How are you? - Im fine, thank you','eng'),(85,'/home/tymur/PythonEnvironments/basic_env/engel.jpg','2020-05-25 20:36:31','and the Opera House If pare ee 13 a alta 7 gs','eng'),(86,'/home/tymur/PythonEnvironments/basic_env/family_guy.png','2020-05-25 20:36:57','Гриффины — смотреть онлайн на русском языке  ','rus'),(87,'/home/tymur/PythonEnvironments/basic_env/шшш.jpg','2020-05-25 20:38:27','Не понимаю встречи выпускников. Вам же дали ш','rus'),(88,'/home/tymur/Downloads/Screenshot_2020-05-28 Elementarism, Independence, and Ontology on JSTOR.png','2020-05-28 15:43:25','Elementarism, Independence, and Ontology  by ','eng');
/*!40000 ALTER TABLE `last_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01  1:16:02
