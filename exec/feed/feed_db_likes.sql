-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: j11c205a.p.ssafy.io    Database: feed_db
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `feed_id` bigint NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feed_id` (`feed_id`),
  CONSTRAINT `fk_feed_id` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6623 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (6092,2896,302,'2024-10-10 11:31:17','2024-10-10 08:41:31',0),(6093,2896,2413,'2024-10-10 11:31:27','2024-10-10 08:41:31',0),(6095,2896,6190,'2024-10-10 11:31:51','2024-10-10 08:41:31',0),(6096,2896,861,'2024-10-10 11:39:57','2024-10-10 08:41:31',0),(6097,2896,862,'2024-10-10 11:40:05','2024-10-10 08:41:31',0),(6098,2896,3,'2024-10-10 11:56:50','2024-10-10 08:41:31',0),(6099,2896,2,'2024-10-10 11:56:52','2024-10-10 08:41:31',0),(6100,2896,111,'2024-10-10 11:56:56','2024-10-10 08:41:31',0),(6101,2896,202,'2024-10-10 11:56:57','2024-10-10 08:41:31',0),(6102,2896,204,'2024-10-10 11:56:59','2024-10-10 08:41:31',0),(6105,2896,37,'2024-10-10 11:57:10','2024-10-10 08:41:31',0),(6106,2896,901,'2024-10-10 12:00:14','2024-10-10 08:41:31',0),(6107,2895,308,'2024-10-10 12:08:20','2024-10-10 08:41:31',0),(6109,2895,6191,'2024-10-10 12:10:24','2024-10-10 08:41:31',0),(6110,2895,6192,'2024-10-10 12:10:27','2024-10-10 08:41:31',0),(6111,2895,6260,'2024-10-10 12:10:29','2024-10-10 08:41:31',0),(6112,2895,7661,'2024-10-10 12:10:31','2024-10-10 08:41:31',0),(6114,2895,4315,'2024-10-10 12:12:06','2024-10-10 08:41:31',0),(6115,2895,4315,'2024-10-10 12:12:09','2024-10-10 08:41:31',0),(6116,2895,308,'2024-10-10 12:12:15','2024-10-10 08:41:31',0),(6117,2895,4315,'2024-10-10 12:12:21','2024-10-10 08:41:31',0),(6118,2895,4315,'2024-10-10 12:12:25','2024-10-10 08:41:31',0),(6119,2895,4315,'2024-10-10 12:12:27','2024-10-10 08:41:31',0),(6120,2895,4315,'2024-10-10 12:12:29','2024-10-10 08:41:31',0),(6121,2895,6260,'2024-10-10 12:12:32','2024-10-10 08:41:31',0),(6122,2895,7661,'2024-10-10 12:12:43','2024-10-10 08:41:31',0),(6125,2896,8441,'2024-10-10 12:13:20','2024-10-10 08:41:31',0),(6127,2896,2960,'2024-10-10 12:13:38','2024-10-10 08:41:31',0),(6128,2896,3,'2024-10-10 12:13:42','2024-10-10 08:41:31',0),(6129,2896,3,'2024-10-10 12:13:45','2024-10-10 08:41:31',0),(6130,2891,7661,'2024-10-10 13:32:54','2024-10-10 08:41:31',0),(6131,2891,264,'2024-10-10 13:33:02','2024-10-10 08:41:31',0),(6132,2891,808,'2024-10-10 13:33:07','2024-10-10 08:41:31',0),(6133,2891,1254,'2024-10-10 13:33:12','2024-10-10 08:41:31',0),(6134,2891,3110,'2024-10-10 13:33:19','2024-10-10 08:41:31',0),(6135,2891,720,'2024-10-10 13:33:42','2024-10-10 08:41:31',0),(6136,2891,2934,'2024-10-10 13:33:48','2024-10-10 08:41:31',0),(6137,2891,6366,'2024-10-10 13:34:01','2024-10-10 08:41:31',0),(6138,2891,10280,'2024-10-10 13:34:15','2024-10-10 08:41:31',0),(6139,2891,10951,'2024-10-10 13:34:19','2024-10-10 08:41:31',0),(6140,2891,193,'2024-10-10 13:36:17','2024-10-10 08:41:31',0),(6141,2893,1,'2024-10-10 14:58:25','2024-10-10 08:41:31',0),(6142,2893,85,'2024-10-10 14:58:27','2024-10-10 08:41:31',0),(6143,2893,307,'2024-10-10 14:58:30','2024-10-10 08:41:31',0),(6144,2893,381,'2024-10-10 14:58:31','2024-10-10 08:41:31',0),(6145,2893,919,'2024-10-10 14:58:33','2024-10-10 08:41:31',0),(6146,2893,1132,'2024-10-10 14:58:35','2024-10-10 08:41:31',0),(6147,2893,1133,'2024-10-10 14:58:37','2024-10-10 08:41:31',0),(6148,2893,1256,'2024-10-10 14:58:40','2024-10-10 08:41:31',0),(6149,2893,1449,'2024-10-10 14:58:43','2024-10-10 08:41:31',0),(6150,2893,1562,'2024-10-10 14:58:44','2024-10-10 08:41:31',0),(6151,2893,1671,'2024-10-10 14:58:47','2024-10-10 08:41:31',0),(6152,2893,1685,'2024-10-10 14:58:48','2024-10-10 08:41:31',0),(6153,2893,1787,'2024-10-10 14:58:50','2024-10-10 08:41:31',0),(6154,2893,2057,'2024-10-10 14:58:51','2024-10-10 08:41:31',0),(6155,2893,2220,'2024-10-10 14:58:54','2024-10-10 08:41:31',0),(6156,2893,3272,'2024-10-10 14:58:56','2024-10-10 08:41:31',0),(6157,2893,3386,'2024-10-10 14:58:58','2024-10-10 08:41:31',0),(6158,2893,3450,'2024-10-10 14:59:00','2024-10-10 08:41:31',0),(6159,2893,3535,'2024-10-10 14:59:02','2024-10-10 08:41:31',0),(6160,2893,3862,'2024-10-10 14:59:05','2024-10-10 08:41:31',0),(6161,2893,3994,'2024-10-10 14:59:06','2024-10-10 08:41:31',0),(6162,2893,4201,'2024-10-10 14:59:08','2024-10-10 08:41:31',0),(6163,2893,4605,'2024-10-10 14:59:10','2024-10-10 08:41:31',0),(6164,2893,4612,'2024-10-10 14:59:13','2024-10-10 08:41:31',0),(6165,2893,4787,'2024-10-10 14:59:16','2024-10-10 08:41:31',0),(6166,2893,273,'2024-10-10 14:59:17','2024-10-10 08:41:31',0),(6167,2893,335,'2024-10-10 14:59:19','2024-10-10 08:41:31',0),(6168,2893,573,'2024-10-10 14:59:21','2024-10-10 08:41:31',0),(6169,2893,2360,'2024-10-10 14:59:24','2024-10-10 08:41:31',0),(6170,2893,2952,'2024-10-10 14:59:26','2024-10-10 08:41:31',0),(6171,2893,3030,'2024-10-10 14:59:29','2024-10-10 08:41:31',0),(6172,2893,3033,'2024-10-10 14:59:32','2024-10-10 08:41:31',0),(6173,2893,3228,'2024-10-10 14:59:34','2024-10-10 08:41:31',0),(6174,2893,3646,'2024-10-10 14:59:37','2024-10-10 08:41:31',0),(6175,2893,3960,'2024-10-10 14:59:39','2024-10-10 08:41:31',0),(6176,2893,4006,'2024-10-10 14:59:41','2024-10-10 08:41:31',0),(6177,2893,4025,'2024-10-10 14:59:43','2024-10-10 08:41:31',0),(6178,2893,4402,'2024-10-10 14:59:44','2024-10-10 08:41:31',0),(6179,2893,4647,'2024-10-10 14:59:46','2024-10-10 08:41:31',0),(6180,2893,5086,'2024-10-10 14:59:48','2024-10-10 08:41:31',0),(6181,2893,5518,'2024-10-10 14:59:50','2024-10-10 08:41:31',0),(6182,2893,6809,'2024-10-10 14:59:51','2024-10-10 08:41:31',0),(6183,2893,7115,'2024-10-10 14:59:52','2024-10-10 08:41:31',0),(6184,2893,8295,'2024-10-10 14:59:54','2024-10-10 08:41:31',0),(6185,2893,10275,'2024-10-10 14:59:56','2024-10-10 08:41:31',0),(6186,2893,11350,'2024-10-10 14:59:59','2024-10-10 08:41:31',0),(6187,2893,11686,'2024-10-10 15:00:00','2024-10-10 08:41:31',0),(6188,2893,12174,'2024-10-10 15:00:02','2024-10-10 08:41:31',0),(6189,2893,13216,'2024-10-10 15:00:05','2024-10-10 08:41:31',0),(6190,2893,13308,'2024-10-10 15:00:07','2024-10-10 08:41:31',0),(6191,2893,5081,'2024-10-10 15:00:09','2024-10-10 08:41:31',0),(6192,2893,9171,'2024-10-10 15:00:12','2024-10-10 08:41:31',0),(6193,2893,14618,'2024-10-10 15:00:13','2024-10-10 08:41:31',0),(6194,2893,17929,'2024-10-10 15:00:16','2024-10-10 08:41:31',0),(6195,2893,22854,'2024-10-10 15:00:17','2024-10-10 08:41:31',0),(6196,2893,29222,'2024-10-10 15:00:19','2024-10-10 08:41:31',0),(6197,2893,30942,'2024-10-10 15:00:22','2024-10-10 08:41:31',0),(6198,2893,32492,'2024-10-10 15:00:25','2024-10-10 08:41:31',0),(6199,2893,33193,'2024-10-10 15:00:26','2024-10-10 08:41:31',0),(6200,2893,33647,'2024-10-10 15:00:29','2024-10-10 08:41:31',0),(6201,2893,34656,'2024-10-10 15:00:30','2024-10-10 08:41:31',0),(6202,2893,35549,'2024-10-10 15:00:33','2024-10-10 08:41:31',0),(6203,2893,38658,'2024-10-10 15:00:34','2024-10-10 08:41:31',0),(6204,2893,40141,'2024-10-10 15:00:36','2024-10-10 08:41:31',0),(6205,2893,42305,'2024-10-10 15:00:38','2024-10-10 08:41:31',0),(6206,2893,44274,'2024-10-10 15:00:40','2024-10-10 08:41:31',0),(6207,2893,47042,'2024-10-10 15:00:43','2024-10-10 08:41:31',0),(6208,2893,47130,'2024-10-10 15:00:44','2024-10-10 08:41:31',0),(6209,2893,699,'2024-10-10 15:00:46','2024-10-10 08:41:31',0),(6210,2893,1134,'2024-10-10 15:00:48','2024-10-10 08:41:31',0),(6211,2893,1248,'2024-10-10 15:00:51','2024-10-10 08:41:31',0),(6212,2893,3075,'2024-10-10 15:00:54','2024-10-10 08:41:31',0),(6213,2893,3808,'2024-10-10 15:00:55','2024-10-10 08:41:31',0),(6214,2893,3994,'2024-10-10 15:00:58','2024-10-10 08:41:31',0),(6215,2893,4088,'2024-10-10 15:01:01','2024-10-10 08:41:31',0),(6216,2893,5808,'2024-10-10 15:01:04','2024-10-10 08:41:31',0),(6217,2893,6208,'2024-10-10 15:01:07','2024-10-10 08:41:31',0),(6218,2893,7120,'2024-10-10 15:01:09','2024-10-10 08:41:31',0),(6219,2893,9558,'2024-10-10 15:01:12','2024-10-10 08:41:31',0),(6220,2893,9973,'2024-10-10 15:01:13','2024-10-10 08:41:31',0),(6221,2893,10803,'2024-10-10 15:01:14','2024-10-10 08:41:31',0),(6222,2893,11486,'2024-10-10 15:01:16','2024-10-10 08:41:31',0),(6223,2893,12349,'2024-10-10 15:01:18','2024-10-10 08:41:31',0),(6224,2893,12351,'2024-10-10 15:01:20','2024-10-10 08:41:31',0),(6225,2893,12567,'2024-10-10 15:01:23','2024-10-10 08:41:31',0),(6226,2893,13534,'2024-10-10 15:01:26','2024-10-10 08:41:31',0),(6227,2893,15205,'2024-10-10 15:01:27','2024-10-10 08:41:31',0),(6228,2893,15376,'2024-10-10 15:01:28','2024-10-10 08:41:31',0),(6229,2893,15800,'2024-10-10 15:01:30','2024-10-10 08:41:31',0),(6230,2893,17109,'2024-10-10 15:01:33','2024-10-10 08:41:31',0),(6231,2893,18562,'2024-10-10 15:01:35','2024-10-10 08:41:31',0),(6232,2893,18609,'2024-10-10 15:01:37','2024-10-10 08:41:31',0),(6233,2893,18662,'2024-10-10 15:01:39','2024-10-10 08:41:31',0),(6234,2893,855,'2024-10-10 15:01:42','2024-10-10 08:41:31',0),(6235,2893,2395,'2024-10-10 15:01:44','2024-10-10 08:41:31',0),(6236,2893,34022,'2024-10-10 15:01:47','2024-10-10 08:41:31',0),(6237,2893,34150,'2024-10-10 15:01:49','2024-10-10 08:41:31',0),(6238,2893,35377,'2024-10-10 15:01:51','2024-10-10 08:41:31',0),(6239,2893,35550,'2024-10-10 15:01:53','2024-10-10 08:41:31',0),(6240,2893,35558,'2024-10-10 15:01:56','2024-10-10 08:41:31',0),(6241,2893,35772,'2024-10-10 15:01:57','2024-10-10 08:41:31',0),(6242,2893,36242,'2024-10-10 15:02:00','2024-10-10 08:41:31',0),(6243,2893,36591,'2024-10-10 15:02:02','2024-10-10 08:41:31',0),(6244,2893,38367,'2024-10-10 15:02:04','2024-10-10 08:41:31',0),(6245,2893,39010,'2024-10-10 15:02:07','2024-10-10 08:41:31',0),(6246,2893,39019,'2024-10-10 15:02:08','2024-10-10 08:41:31',0),(6247,2893,40298,'2024-10-10 15:02:10','2024-10-10 08:41:31',0),(6248,2893,40859,'2024-10-10 15:02:13','2024-10-10 08:41:31',0),(6249,2893,43137,'2024-10-10 15:02:16','2024-10-10 08:41:31',0),(6250,2893,43401,'2024-10-10 15:02:17','2024-10-10 08:41:31',0),(6251,2893,829,'2024-10-10 15:02:20','2024-10-10 08:41:31',0),(6252,2893,3796,'2024-10-10 15:02:22','2024-10-10 08:41:31',0),(6253,2893,3797,'2024-10-10 15:02:24','2024-10-10 08:41:31',0),(6254,2893,7062,'2024-10-10 15:02:25','2024-10-10 08:41:31',0),(6255,2893,14278,'2024-10-10 15:02:27','2024-10-10 08:41:31',0),(6256,2893,2319,'2024-10-10 15:02:28','2024-10-10 08:41:31',0),(6257,2893,2647,'2024-10-10 15:02:30','2024-10-10 08:41:31',0),(6258,2893,3180,'2024-10-10 15:02:31','2024-10-10 08:41:31',0),(6259,2893,7315,'2024-10-10 15:02:34','2024-10-10 08:41:31',0),(6260,2893,22793,'2024-10-10 15:02:35','2024-10-10 08:41:31',0),(6261,2893,31756,'2024-10-10 15:02:37','2024-10-10 08:41:31',0),(6262,2893,125,'2024-10-10 15:02:39','2024-10-10 08:41:31',0),(6263,2893,80,'2024-10-10 15:02:42','2024-10-10 08:41:31',0),(6264,2893,239,'2024-10-10 15:02:44','2024-10-10 08:41:31',0),(6265,2893,584,'2024-10-10 15:02:47','2024-10-10 08:41:31',0),(6266,2893,760,'2024-10-10 15:02:48','2024-10-10 08:41:31',0),(6267,2893,1402,'2024-10-10 15:02:49','2024-10-10 08:41:31',0),(6268,2893,2072,'2024-10-10 15:02:51','2024-10-10 08:41:31',0),(6269,2893,2527,'2024-10-10 15:02:54','2024-10-10 08:41:31',0),(6270,2893,2938,'2024-10-10 15:02:56','2024-10-10 08:41:31',0),(6271,2893,3497,'2024-10-10 15:02:58','2024-10-10 08:41:31',0),(6272,2893,3598,'2024-10-10 15:03:00','2024-10-10 08:41:31',0),(6273,2893,3980,'2024-10-10 15:03:01','2024-10-10 08:41:31',0),(6274,2893,4085,'2024-10-10 15:03:03','2024-10-10 08:41:31',0),(6275,2893,5055,'2024-10-10 15:03:05','2024-10-10 08:41:31',0),(6276,2893,5306,'2024-10-10 15:03:07','2024-10-10 08:41:31',0),(6277,2893,5675,'2024-10-10 15:03:09','2024-10-10 08:41:31',0),(6278,2893,6661,'2024-10-10 15:03:12','2024-10-10 08:41:31',0),(6279,2893,6784,'2024-10-10 15:03:13','2024-10-10 08:41:31',0),(6280,2893,7205,'2024-10-10 15:03:15','2024-10-10 08:41:31',0),(6281,2893,7320,'2024-10-10 15:03:16','2024-10-10 08:41:31',0),(6282,2893,7649,'2024-10-10 15:03:18','2024-10-10 08:41:31',0),(6283,2893,7845,'2024-10-10 15:03:20','2024-10-10 08:41:31',0),(6284,2893,7847,'2024-10-10 15:03:21','2024-10-10 08:41:31',0),(6285,2893,7881,'2024-10-10 15:03:24','2024-10-10 08:41:31',0),(6286,2893,7885,'2024-10-10 15:03:26','2024-10-10 08:41:31',0),(6287,2893,7935,'2024-10-10 15:03:28','2024-10-10 08:41:31',0),(6288,2893,24,'2024-10-10 15:03:30','2024-10-10 08:41:31',0),(6289,2893,42,'2024-10-10 15:03:33','2024-10-10 08:41:31',0),(6290,2893,43,'2024-10-10 15:03:36','2024-10-10 08:41:31',0),(6291,2893,69,'2024-10-10 15:03:39','2024-10-10 08:41:31',0),(6292,2893,101,'2024-10-10 15:03:40','2024-10-10 08:41:31',0),(6293,2893,230,'2024-10-10 15:03:41','2024-10-10 08:41:31',0),(6294,2893,246,'2024-10-10 15:03:44','2024-10-10 08:41:31',0),(6295,2893,253,'2024-10-10 15:03:46','2024-10-10 08:41:31',0),(6296,2893,271,'2024-10-10 15:03:48','2024-10-10 08:41:31',0),(6297,2893,325,'2024-10-10 15:03:50','2024-10-10 08:41:31',0),(6298,2893,368,'2024-10-10 15:03:53','2024-10-10 08:41:31',0),(6299,2893,421,'2024-10-10 15:03:55','2024-10-10 08:41:31',0),(6300,2893,438,'2024-10-10 15:03:56','2024-10-10 08:41:31',0),(6301,2893,474,'2024-10-10 15:03:58','2024-10-10 08:41:31',0),(6302,2893,479,'2024-10-10 15:04:00','2024-10-10 08:41:31',0),(6303,2893,527,'2024-10-10 15:04:01','2024-10-10 08:41:31',0),(6304,2893,533,'2024-10-10 15:04:03','2024-10-10 08:41:31',0),(6305,2893,548,'2024-10-10 15:04:05','2024-10-10 08:41:31',0),(6306,2893,594,'2024-10-10 15:04:06','2024-10-10 08:41:31',0),(6307,2893,604,'2024-10-10 15:04:08','2024-10-10 08:41:31',0),(6308,2893,661,'2024-10-10 15:04:10','2024-10-10 08:41:31',0),(6309,2893,848,'2024-10-10 15:04:12','2024-10-10 08:41:31',0),(6310,2893,906,'2024-10-10 15:04:13','2024-10-10 08:41:31',0),(6311,2893,920,'2024-10-10 15:04:15','2024-10-10 08:41:31',0),(6312,2893,925,'2024-10-10 15:04:18','2024-10-10 08:41:31',0),(6313,2893,59,'2024-10-10 15:04:21','2024-10-10 08:41:31',0),(6314,2893,1207,'2024-10-10 15:04:23','2024-10-10 08:41:31',0),(6315,2893,1398,'2024-10-10 15:04:26','2024-10-10 08:41:31',0),(6316,2893,2480,'2024-10-10 15:04:27','2024-10-10 08:41:31',0),(6317,2893,2706,'2024-10-10 15:04:30','2024-10-10 08:41:31',0),(6318,2893,2720,'2024-10-10 15:04:32','2024-10-10 08:41:31',0),(6319,2893,2815,'2024-10-10 15:04:34','2024-10-10 08:41:31',0),(6320,2893,3354,'2024-10-10 15:04:36','2024-10-10 08:41:31',0),(6321,2893,3666,'2024-10-10 15:04:39','2024-10-10 08:41:31',0),(6322,2893,3691,'2024-10-10 15:04:43','2024-10-10 08:41:31',0),(6323,2893,4405,'2024-10-10 15:04:44','2024-10-10 08:41:31',0),(6324,2893,5122,'2024-10-10 15:04:45','2024-10-10 08:41:31',0),(6325,2893,5196,'2024-10-10 15:04:47','2024-10-10 08:41:31',0),(6326,2893,6854,'2024-10-10 15:04:49','2024-10-10 08:41:31',0),(6327,2893,7069,'2024-10-10 15:04:51','2024-10-10 08:41:31',0),(6328,2893,8063,'2024-10-10 15:04:54','2024-10-10 08:41:31',0),(6329,2893,9672,'2024-10-10 15:04:57','2024-10-10 08:41:31',0),(6330,2893,9866,'2024-10-10 15:04:59','2024-10-10 08:41:31',0),(6331,2893,14049,'2024-10-10 15:05:01','2024-10-10 08:41:31',0),(6332,2893,15323,'2024-10-10 15:05:04','2024-10-10 08:41:31',0),(6333,2893,16012,'2024-10-10 15:05:06','2024-10-10 08:41:31',0),(6334,2893,17208,'2024-10-10 15:05:08','2024-10-10 08:41:31',0),(6335,2893,17241,'2024-10-10 15:05:10','2024-10-10 08:41:31',0),(6336,2893,17320,'2024-10-10 15:05:12','2024-10-10 08:41:31',0),(6337,2893,17597,'2024-10-10 15:05:13','2024-10-10 08:41:31',0),(6338,2891,17050,'2024-10-10 20:00:50','2024-10-10 20:00:50',0),(6339,2891,17052,'2024-10-10 20:00:54','2024-10-10 20:00:54',0),(6340,2891,18464,'2024-10-10 20:01:07','2024-10-10 20:01:07',0),(6341,2891,2938,'2024-10-10 20:01:25','2024-10-10 20:01:25',0),(6342,2891,2438,'2024-10-10 20:01:29','2024-10-10 20:01:29',0),(6343,2891,2939,'2024-10-10 20:01:35','2024-10-10 20:01:35',0),(6344,2891,3596,'2024-10-10 20:01:48','2024-10-10 20:01:48',0),(6345,2891,3997,'2024-10-10 20:01:51','2024-10-10 20:01:51',0),(6346,2891,16674,'2024-10-10 20:02:06','2024-10-10 20:02:06',0),(6347,2891,16764,'2024-10-10 20:02:10','2024-10-10 20:02:10',0),(6348,2891,17259,'2024-10-10 20:02:17','2024-10-10 20:02:17',0),(6349,2892,861,'2024-10-10 20:30:35','2024-10-10 20:30:35',0),(6350,2892,204,'2024-10-10 20:30:38','2024-10-10 20:30:38',0),(6351,2892,202,'2024-10-10 20:30:41','2024-10-10 20:30:41',0),(6352,2892,271,'2024-10-10 20:30:44','2024-10-10 20:30:44',0),(6353,2892,28300,'2024-10-10 20:30:46','2024-10-10 20:30:46',0),(6354,2892,6260,'2024-10-10 20:31:17','2024-10-10 20:31:17',0),(6355,2892,28238,'2024-10-10 20:31:20','2024-10-10 20:31:20',0),(6356,2892,264,'2024-10-10 20:31:22','2024-10-10 20:31:22',0),(6357,2892,28305,'2024-10-10 20:31:25','2024-10-10 20:31:25',0),(6358,2892,808,'2024-10-10 20:31:30','2024-10-10 20:31:30',0),(6359,2892,29109,'2024-10-10 20:31:34','2024-10-10 20:31:34',0),(6360,2892,30988,'2024-10-10 20:31:47','2024-10-10 20:31:47',0),(6361,2892,31212,'2024-10-10 20:31:54','2024-10-10 20:31:54',0),(6362,2892,31557,'2024-10-10 20:32:09','2024-10-10 20:32:09',0),(6363,2892,31560,'2024-10-10 20:32:11','2024-10-10 20:32:11',0),(6364,2892,31561,'2024-10-10 20:32:17','2024-10-10 20:32:17',0),(6365,2892,31443,'2024-10-10 20:33:00','2024-10-10 20:33:00',0),(6366,2891,43002,'2024-10-10 21:33:55','2024-10-10 21:33:55',0),(6368,2891,4088,'2024-10-10 21:34:09','2024-10-10 21:34:09',0),(6369,2891,38367,'2024-10-10 21:34:14','2024-10-10 21:34:14',0),(6370,2891,15323,'2024-10-10 21:34:19','2024-10-10 21:34:19',0),(6371,2891,7649,'2024-10-10 21:53:34','2024-10-10 21:53:34',0),(6372,2896,69,'2024-10-10 22:40:33','2024-10-10 22:40:33',0),(6373,2896,1,'2024-10-10 22:40:34','2024-10-10 22:40:34',0),(6374,2896,760,'2024-10-10 22:40:37','2024-10-10 22:40:37',0),(6375,2896,661,'2024-10-10 22:40:38','2024-10-10 22:40:38',0),(6376,2896,438,'2024-10-10 22:40:39','2024-10-10 22:40:39',0),(6377,2896,1671,'2024-10-10 22:40:41','2024-10-10 22:40:41',0),(6378,2896,1562,'2024-10-10 22:40:42','2024-10-10 22:40:42',0),(6379,2896,3797,'2024-10-10 22:40:44','2024-10-10 22:40:44',0),(6380,2896,3796,'2024-10-10 22:40:45','2024-10-10 22:40:45',0),(6381,2896,3497,'2024-10-10 22:40:47','2024-10-10 22:40:47',0),(6382,2896,47,'2024-10-10 22:40:50','2024-10-10 22:40:50',0),(6383,2896,49,'2024-10-10 22:40:51','2024-10-10 22:40:51',0),(6384,2891,18464,'2024-10-11 00:33:38','2024-10-11 00:33:38',0),(6385,2891,17050,'2024-10-11 00:33:41','2024-10-11 00:33:41',0),(6386,2896,2720,'2024-10-11 00:33:42','2024-10-11 00:33:42',0),(6387,2896,2057,'2024-10-11 00:33:43','2024-10-11 00:33:43',0),(6388,2891,32507,'2024-10-11 00:33:46','2024-10-11 00:33:46',0),(6389,2896,6854,'2024-10-11 00:33:49','2024-10-11 00:33:49',0),(6390,2896,6809,'2024-10-11 00:33:51','2024-10-11 00:33:51',0),(6391,2896,7062,'2024-10-11 00:33:53','2024-10-11 00:33:53',0),(6392,2891,32560,'2024-10-11 00:33:53','2024-10-11 00:33:53',0),(6393,2896,11686,'2024-10-11 00:33:54','2024-10-11 00:33:54',0),(6394,2896,11486,'2024-10-11 00:33:56','2024-10-11 00:33:56',0),(6395,2896,533,'2024-10-11 00:33:58','2024-10-11 00:33:58',0),(6396,2891,32989,'2024-10-11 00:34:00','2024-10-11 00:34:00',0),(6397,2896,527,'2024-10-11 00:34:00','2024-10-11 00:34:00',0),(6398,2891,2939,'2024-10-11 00:34:11','2024-10-11 00:34:11',0),(6399,2891,3997,'2024-10-11 00:34:14','2024-10-11 00:34:14',0),(6400,2891,2438,'2024-10-11 00:34:24','2024-10-11 00:34:24',0),(6402,2891,33838,'2024-10-11 00:35:04','2024-10-11 00:35:04',0),(6403,2891,33839,'2024-10-11 00:35:07','2024-10-11 00:35:07',0),(6404,2891,33848,'2024-10-11 00:35:12','2024-10-11 00:35:12',0),(6405,2891,17896,'2024-10-11 00:35:36','2024-10-11 00:35:36',0),(6406,2891,20085,'2024-10-11 00:36:04','2024-10-11 00:36:04',0),(6407,2891,20094,'2024-10-11 00:36:09','2024-10-11 00:36:09',0),(6408,2891,20569,'2024-10-11 00:36:12','2024-10-11 00:36:12',0),(6409,2891,32826,'2024-10-11 00:43:46','2024-10-11 00:43:46',0),(6410,2891,32720,'2024-10-11 00:44:32','2024-10-11 00:44:32',0),(6411,2891,32819,'2024-10-11 00:44:35','2024-10-11 00:44:35',0),(6412,2891,32823,'2024-10-11 00:44:38','2024-10-11 00:44:38',0),(6413,2891,25075,'2024-10-11 00:44:45','2024-10-11 00:44:45',0),(6414,2891,27646,'2024-10-11 00:44:53','2024-10-11 00:44:53',0),(6415,2891,30461,'2024-10-11 00:45:08','2024-10-11 00:45:08',0),(6416,2891,22302,'2024-10-11 00:46:05','2024-10-11 00:46:05',0),(6417,2896,59,'2024-10-11 03:12:03','2024-10-11 03:12:03',0),(6418,2896,24,'2024-10-11 03:12:05','2024-10-11 03:12:05',0),(6419,2896,85,'2024-10-11 03:12:08','2024-10-11 03:12:08',0),(6420,2896,1685,'2024-10-11 03:12:12','2024-10-11 03:12:12',0),(6421,2896,20,'2024-10-11 03:12:13','2024-10-11 03:12:13',0),(6422,2896,14278,'2024-10-11 03:12:15','2024-10-11 03:12:15',0),(6423,2896,4787,'2024-10-11 03:12:17','2024-10-11 03:12:17',0),(6424,2891,1,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6425,2891,85,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6426,2891,307,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6427,2891,381,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6428,2891,919,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6429,2891,1132,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6430,2891,1133,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6431,2891,1256,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6432,2891,1449,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6433,2891,1562,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6434,2891,1671,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6435,2891,1685,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6436,2891,1787,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6437,2891,2057,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6438,2891,2220,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6439,2891,3272,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6440,2891,3386,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6441,2891,3450,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6442,2891,3535,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6443,2891,3862,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6444,2891,3994,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6445,2891,4201,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6446,2891,4605,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6447,2891,4612,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6448,2891,4787,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6449,2891,273,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6450,2891,335,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6451,2891,573,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6452,2891,2360,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6453,2891,2952,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6454,2891,3030,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6455,2891,3033,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6456,2891,3228,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6457,2891,3646,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6458,2891,3960,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6459,2891,4006,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6460,2891,4025,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6461,2891,4402,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6462,2891,4647,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6463,2891,5086,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6464,2891,5518,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6465,2891,6809,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6466,2891,7115,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6467,2891,8295,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6468,2891,10275,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6469,2891,11350,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6470,2891,11686,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6471,2891,12174,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6472,2891,13216,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6473,2891,13308,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6474,2891,5081,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6475,2891,9171,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6476,2891,14618,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6477,2891,17929,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6478,2891,22854,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6479,2891,29222,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6480,2891,30942,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6481,2891,32492,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6482,2891,33193,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6483,2891,33647,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6484,2891,34656,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6485,2891,35549,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6486,2891,38658,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6487,2891,40141,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6488,2891,42305,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6489,2891,44274,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6490,2891,47042,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6491,2891,47130,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6492,2891,699,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6493,2891,1134,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6494,2891,1248,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6495,2891,3075,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6496,2891,3808,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6497,2891,3994,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6498,2891,4088,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6499,2891,5808,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6500,2891,6208,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6501,2891,7120,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6502,2891,9558,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6503,2891,9973,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6504,2891,10803,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6505,2891,11486,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6506,2891,12349,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6507,2891,12351,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6508,2891,12567,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6509,2891,13534,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6510,2891,15205,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6511,2891,15376,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6512,2891,15800,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6513,2891,17109,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6514,2891,18562,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6515,2891,18609,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6516,2891,18662,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6517,2891,855,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6518,2891,2395,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6519,2891,34022,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6520,2891,34150,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6521,2891,35377,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6522,2891,35550,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6523,2891,35558,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6524,2891,35772,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6525,2891,36242,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6526,2891,36591,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6527,2891,38367,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6528,2891,39010,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6529,2891,39019,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6530,2891,40298,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6531,2891,40859,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6532,2891,43137,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6533,2891,43401,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6534,2891,829,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6535,2891,3796,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6536,2891,3797,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6537,2891,7062,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6538,2891,14278,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6539,2891,2319,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6540,2891,2647,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6541,2891,3180,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6542,2891,7315,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6543,2891,22793,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6544,2891,31756,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6545,2891,125,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6546,2891,80,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6547,2891,239,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6548,2891,584,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6549,2891,760,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6550,2891,1402,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6551,2891,2072,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6552,2891,2527,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6553,2891,2938,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6554,2891,3497,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6555,2891,3598,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6556,2891,3980,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6557,2891,4085,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6558,2891,5055,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6559,2891,5306,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6560,2891,5675,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6561,2891,6661,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6562,2891,6784,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6563,2891,7205,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6564,2891,7320,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6565,2891,7649,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6566,2891,7845,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6567,2891,7847,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6568,2891,7881,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6569,2891,7885,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6570,2891,7935,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6571,2891,24,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6572,2891,42,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6573,2891,43,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6574,2891,69,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6575,2891,101,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6576,2891,230,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6577,2891,246,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6578,2891,253,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6579,2891,271,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6580,2891,325,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6581,2891,368,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6582,2891,421,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6583,2891,438,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6584,2891,474,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6585,2891,479,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6586,2891,527,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6587,2891,533,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6588,2891,548,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6589,2891,594,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6590,2891,604,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6591,2891,661,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6592,2891,848,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6593,2891,906,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6594,2891,920,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6595,2891,925,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6596,2891,59,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6597,2891,1207,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6598,2891,1398,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6599,2891,2480,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6600,2891,2706,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6601,2891,2720,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6602,2891,2815,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6603,2891,3354,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6604,2891,3666,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6605,2891,3691,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6606,2891,4405,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6607,2891,5122,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6608,2891,5196,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6609,2891,6854,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6610,2891,7069,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6611,2891,8063,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6612,2891,9672,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6613,2891,9866,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6614,2891,14049,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6615,2891,15323,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6616,2891,16012,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6617,2891,17208,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6618,2891,17241,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6619,2891,17320,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6620,2891,17597,'2024-10-10 19:43:52','2024-10-10 19:43:52',NULL),(6621,2892,16468,'2024-10-11 05:25:52','2024-10-11 05:25:52',NULL),(6622,2891,479,'2024-10-11 06:25:37','2024-10-11 06:25:37',NULL);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11  8:48:11