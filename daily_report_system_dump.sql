-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_flag` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'a11111','2021-03-21 19:18:30',0,'小貫峻佑','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-21 19:18:30'),(2,1,'b11111','2021-03-21 19:19:34',1,'保坂','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-22 15:37:40'),(3,0,'a22222','2021-03-21 19:19:56',0,'田中','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-21 19:19:56'),(4,0,'b22233','2021-03-21 19:20:10',0,'佐藤　たかし','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-22 13:05:09'),(5,0,'b23232','2021-03-24 14:32:26',0,'清原','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-24 14:32:26'),(6,1,'f23432','2021-03-24 15:48:14',0,'onuki','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-24 15:48:14'),(7,1,'r24543','2021-03-24 18:12:43',0,'細川','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-03-24 18:12:43'),(8,1,'d23453','2021-04-10 17:12:28',0,'山本','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-10 17:12:28'),(9,1,'v34253','2021-04-13 21:22:38',0,'後藤','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-13 21:22:38'),(10,0,'f3rt54','2021-04-26 22:07:40',0,'佐藤','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-26 22:07:40'),(11,1,'i87623','2021-04-29 23:15:09',0,'吉野','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:15:09'),(12,1,'w23657','2021-04-29 23:15:48',0,'細川','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:15:48'),(13,1,'q23756','2021-04-29 23:16:29',0,'木村','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:16:29'),(14,1,'g56732','2021-04-29 23:16:53',0,'福田','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:16:53'),(15,1,'e34523','2021-04-29 23:17:52',0,'銀次','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:17:52'),(16,1,'x12345','2021-04-29 23:18:40',0,'太郎','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:18:40'),(17,1,'v45624','2021-04-29 23:19:30',0,'田代','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:19:30'),(18,1,'b34156','2021-04-29 23:20:01',0,'曽根','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:20:01'),(19,1,'h56432','2021-04-29 23:20:38',0,'真田','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-04-29 23:20:38'),(20,1,'v94846','2021-05-01 21:54:36',0,'夏川','DF17C34BCDCF0294B07777E8063A2567E438CD09F24C8DFD42B580B2A03CB35F','2021-05-01 21:54:36');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `follow_employee_id` int(11) NOT NULL,
  `login_employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK51lh3tmmgs3sks5i2tk09em6h` (`follow_employee_id`),
  KEY `FKj4bmnpp6agv5lh29g6fss6tj3` (`login_employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,'2021-05-02 16:36:35','2021-05-02 16:36:35',1,6),(2,'2021-05-02 16:36:54','2021-05-02 16:36:54',4,6),(3,'2021-05-02 16:39:44','2021-05-02 16:39:44',20,6),(4,'2021-05-06 12:06:23','2021-05-06 12:06:23',8,6),(5,'2021-05-06 12:07:57','2021-05-06 12:07:57',16,6),(6,'2021-05-06 12:15:01','2021-05-06 12:15:01',16,4),(7,'2021-05-06 12:15:09','2021-05-06 12:15:09',20,4),(8,'2021-05-06 12:15:48','2021-05-06 12:15:48',8,4),(9,'2021-05-06 14:02:25','2021-05-06 14:02:25',16,5),(10,'2021-05-06 14:02:33','2021-05-06 14:02:33',1,5),(11,'2021-05-06 14:35:40','2021-05-06 14:35:40',4,5),(12,'2021-05-09 12:55:41','2021-05-09 12:55:41',14,6),(13,'2021-05-09 12:56:44','2021-05-09 12:56:44',18,6);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj1c196w92a949gsjfao48uldc` (`employee_id`),
  KEY `FK1io2phls8opufu7f6w8nkx8ul` (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,'2021-04-23 20:08:09','2021-04-23 20:08:09',6,2),(2,'2021-04-23 20:24:28','2021-04-23 20:24:28',6,4),(3,'2021-04-23 21:35:35','2021-04-23 21:35:35',6,4),(4,'2021-04-23 21:36:43','2021-04-23 21:36:43',6,2),(5,'2021-04-24 17:35:19','2021-04-24 17:35:19',6,4),(6,'2021-04-24 17:39:46','2021-04-24 17:39:46',1,4),(7,'2021-04-24 17:39:53','2021-04-24 17:39:53',1,3),(8,'2021-04-24 17:40:02','2021-04-24 17:40:02',1,2),(9,'2021-04-24 17:41:20','2021-04-24 17:41:20',5,5),(10,'2021-04-24 17:41:45','2021-04-24 17:41:45',5,4),(11,'2021-04-26 22:08:27','2021-04-26 22:08:27',10,4),(12,'2021-04-27 20:32:01','2021-04-27 20:32:01',6,5),(13,'2021-04-29 23:14:35','2021-04-29 23:14:35',3,4),(14,'2021-04-29 23:15:23','2021-04-29 23:15:23',11,4),(15,'2021-04-29 23:16:01','2021-04-29 23:16:01',12,4),(16,'2021-04-29 23:16:38','2021-04-29 23:16:38',13,4),(17,'2021-04-29 23:17:30','2021-04-29 23:17:30',14,4),(18,'2021-04-29 23:18:20','2021-04-29 23:18:20',15,4),(19,'2021-04-29 23:19:02','2021-04-29 23:19:02',16,4),(20,'2021-04-29 23:19:42','2021-04-29 23:19:42',17,4),(21,'2021-04-29 23:20:17','2021-04-29 23:20:17',18,4),(22,'2021-04-29 23:20:56','2021-04-29 23:20:56',19,4),(23,'2021-05-01 21:54:56','2021-05-01 21:54:56',20,4),(24,'2021-05-02 15:43:34','2021-05-02 15:43:34',6,16),(25,'2021-05-02 15:43:51','2021-05-02 15:43:51',6,6),(26,'2021-05-09 12:55:50','2021-05-09 12:55:50',6,18);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created_at` datetime NOT NULL,
  `like_count` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'明日もよろしく','2021-04-23 20:07:05',0,'2021-04-23','お疲れ様でした','2021-04-23 20:07:05',1),(2,'お疲れ様でした','2021-04-23 20:07:35',3,'2021-04-23','4/23','2021-04-23 20:07:35',8),(3,'お疲れ様でした','2021-04-23 20:08:02',1,'2021-04-23','明日もよろしく','2021-04-23 20:08:02',6),(4,'お疲れ','2021-04-23 20:24:09',17,'2021-04-23','お疲れ','2021-04-23 20:24:09',4),(5,'明日もよろしく','2021-04-24 17:39:41',2,'2021-04-24','こんばんは','2021-04-24 17:39:41',1),(6,'また明日','2021-05-01 21:59:17',1,'2021-05-01','お疲れ様でした','2021-05-01 21:59:17',20),(7,'またよろしく','2021-05-01 21:59:46',0,'2021-05-01','よ','2021-05-01 21:59:46',6),(8,'お疲れ様でした','2021-05-01 22:00:14',0,'2021-05-01','日報です','2021-05-01 22:00:14',4),(9,'お疲れ様でした','2021-05-01 22:00:31',0,'2021-05-01','お疲れ様です','2021-05-01 22:00:31',4),(10,'初めまして','2021-05-01 22:01:06',0,'2021-05-01','こんばんは','2021-05-01 22:01:06',4),(11,'これからもよろしく','2021-05-01 22:01:39',0,'2021-05-01','お疲れ様です','2021-05-01 22:01:39',1),(12,'次以降気をつけます','2021-05-01 22:01:58',0,'2021-05-01','ごめんなさい','2021-05-01 22:01:58',1),(13,'明日は晴れです','2021-05-01 22:02:19',0,'2021-05-01','連絡','2021-05-01 22:02:19',1),(14,'ローマ字','2021-05-01 22:02:33',0,'2021-05-01','onuki','2021-05-01 22:02:33',1),(15,'また明日','2021-05-01 22:02:54',0,'2021-05-01','日報','2021-05-01 22:02:54',1),(16,'元気に頑張りましょう','2021-05-01 22:03:14',1,'2021-05-01','明日について','2021-05-01 22:03:14',1),(17,'また明日もよろしく','2021-05-06 12:07:44',0,'2021-05-06','お疲れ様です','2021-05-06 12:07:44',16),(18,'お疲れ様でした','2021-05-09 12:55:27',1,'2021-05-09','GW','2021-05-09 12:55:27',14),(19,'よろしくお願い致します','2021-05-09 12:56:28',0,'2021-05-09','こんにちは','2021-05-09 12:56:28',18),(20,'明日もよろしくお願い致します','2021-05-09 12:57:16',0,'2021-05-09','お疲れ様です','2021-05-09 12:57:16',19);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-09 22:23:24
