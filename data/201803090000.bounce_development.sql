-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Linux (x86_64)
--
-- Host: db    Database: bounce_development
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Current Database: `bounce_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bounce_development` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bounce_development`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-02-08 21:22:04','2018-02-08 21:22:04');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `winner_id` bigint(20) DEFAULT NULL,
  `loser_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_games_on_winner_id` (`winner_id`),
  KEY `index_games_on_loser_id` (`loser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (3,5,6,'2018-02-23 01:29:15','2018-02-23 01:29:30',1),(5,9,10,'2018-02-23 01:52:42','2018-02-23 01:52:53',1),(7,10,11,'2018-02-25 19:00:45','2018-02-25 19:16:10',1),(9,14,15,'2018-02-26 00:00:14','2018-02-26 00:01:26',1),(10,15,14,'2018-02-26 00:00:22','2018-02-26 00:00:47',1),(14,16,17,'2018-02-26 03:33:34','2018-02-26 03:33:51',1),(15,10,18,'2018-02-26 19:10:54','2018-02-26 19:14:24',1),(16,19,20,'2018-02-26 19:34:39','2018-02-26 19:34:55',1),(17,14,15,'2018-02-27 00:10:45','2018-02-27 00:23:00',1),(18,14,15,'2018-02-27 00:11:05','2018-02-27 00:23:01',1),(19,15,21,'2018-02-27 03:47:17','2018-02-27 03:48:03',1),(20,17,16,'2018-02-27 04:23:34','2018-02-27 04:23:43',1),(21,18,10,'2018-02-27 19:18:30','2018-02-27 19:31:57',1),(22,23,15,'2018-02-27 20:09:29','2018-02-27 20:09:43',1),(23,24,25,'2018-02-27 22:18:44','2018-02-27 22:18:53',1),(24,16,17,'2018-02-27 22:41:31','2018-02-27 22:47:21',1),(25,26,27,'2018-02-27 23:02:52','2018-02-27 23:06:36',1),(26,28,29,'2018-02-28 00:37:08','2018-02-28 00:41:29',1),(27,30,31,'2018-02-28 00:58:07','2018-02-28 00:58:18',1),(28,15,32,'2018-02-28 03:27:22','2018-02-28 03:27:34',1),(29,15,14,'2018-02-28 04:23:26','2018-02-28 04:23:49',1),(30,14,15,'2018-02-28 04:23:53','2018-02-28 04:24:01',1),(31,15,14,'2018-02-28 04:24:08','2018-02-28 04:24:22',1),(32,20,33,'2018-02-28 19:17:37','2018-02-28 19:17:49',1),(33,34,15,'2018-03-01 03:30:02','2018-03-01 03:30:11',1),(34,10,18,'2018-03-01 19:01:37','2018-03-01 19:02:06',1),(35,16,17,'2018-03-01 23:45:05','2018-03-01 23:47:14',1),(36,6,5,'2018-03-02 02:23:41','2018-03-02 02:23:52',1),(37,35,28,'2018-03-02 03:19:13','2018-03-02 03:20:41',1),(38,10,18,'2018-03-04 18:58:55','2018-03-04 19:02:51',1),(39,36,37,'2018-03-05 00:04:40','2018-03-05 00:06:04',1),(40,38,30,'2018-03-05 00:29:53','2018-03-05 00:30:45',1),(41,16,17,'2018-03-05 01:43:18','2018-03-05 01:43:33',1),(42,10,18,'2018-03-05 19:02:45','2018-03-05 19:06:01',1),(43,16,17,'2018-03-06 00:40:09','2018-03-06 00:44:02',1),(44,36,39,'2018-03-06 01:20:43','2018-03-06 01:22:19',1),(45,36,15,'2018-03-06 04:11:06','2018-03-06 04:11:29',1),(46,15,21,'2018-03-06 04:12:55','2018-03-06 04:13:08',1),(47,18,10,'2018-03-06 20:16:58','2018-03-06 20:17:07',1),(48,40,41,'2018-03-06 20:17:20','2018-03-06 20:31:16',1),(49,16,17,'2018-03-06 21:40:50','2018-03-06 21:41:58',1),(50,42,26,'2018-03-06 22:07:51','2018-03-06 22:09:42',1),(51,16,17,'2018-03-06 23:52:50','2018-03-06 23:53:45',1),(52,43,28,'2018-03-06 23:54:04','2018-03-06 23:54:58',1),(53,44,45,'2018-03-07 03:12:36','2018-03-07 03:13:04',1),(54,46,17,'2018-03-07 03:14:19','2018-03-07 03:14:26',1),(55,10,18,'2018-03-07 19:20:18','2018-03-07 20:16:58',1),(56,47,48,'2018-03-08 03:09:25','2018-03-08 03:09:37',1),(57,17,16,'2018-03-08 03:20:18','2018-03-08 03:20:27',1),(58,49,50,'2018-03-08 03:43:04','2018-03-08 04:04:57',1),(59,51,52,'2018-03-08 04:05:09','2018-03-08 04:05:20',1),(60,10,18,'2018-03-08 19:04:24','2018-03-08 19:24:13',1),(61,53,54,'2018-03-08 20:32:56','2018-03-08 20:33:13',1),(62,17,16,'2018-03-08 21:32:17','2018-03-08 21:32:30',1),(63,55,37,'2018-03-08 21:56:36','2018-03-08 21:56:58',1),(64,49,10,'2018-03-08 23:40:13','2018-03-08 23:40:23',1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_players_on_provider_and_uid` (`provider`,`uid`),
  KEY `index_players_on_provider` (`provider`),
  KEY `index_players_on_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (4,'slack','U0EK41LTC',NULL,'ben','Benedict','Aluan',NULL,'https://avatars.slack-edge.com/2015-11-16/14644567988_8a855196e9bb067e9113_192.jpg',NULL,'2018-02-22 23:21:17','2018-02-22 23:21:17'),(5,'slack','U85G63U2F',NULL,'tim','tim','',NULL,'https://avatars.slack-edge.com/2017-12-14/287331290598_24d188c2cbc557fe31d2_192.png',NULL,'2018-02-22 23:31:35','2018-02-22 23:31:35'),(6,'slack','U393L8H7Y',NULL,'brayden',NULL,NULL,NULL,'https://secure.gravatar.com/avatar/dcd4d9e093442a9a6cbc865c81db2399.jpg?s=192&d=https%3A%2F%2Fa.slack-edge.com%2F7fa9%2Fimg%2Favatars%2Fava_0019-192.png',NULL,'2018-02-22 23:38:21','2018-02-22 23:38:21'),(7,'slack','U0UBDP0G2',NULL,'yar',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/yar.png',NULL,'2018-02-23 01:03:48','2018-02-23 01:03:48'),(8,'slack','U25PRNSTZ',NULL,'james',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/james.png',NULL,'2018-02-23 01:43:09','2018-02-23 01:43:09'),(9,'slack','U0EJCBR4Z',NULL,'rebecca',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/rebecca.png',NULL,'2018-02-23 01:43:45','2018-02-23 01:43:45'),(10,'slack','U0EJ9LUGK',NULL,'richard',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/richard.png',NULL,'2018-02-23 01:46:43','2018-02-23 01:46:43'),(11,'slack','U5W7QQH8A',NULL,'emma',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/emma.png',NULL,'2018-02-23 01:48:12','2018-02-23 01:48:12'),(12,'slack','U1F9QAFLN',NULL,'andy',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/andy.png',NULL,'2018-02-23 01:48:49','2018-02-23 01:48:49'),(13,'slack','U0EJEBQ2K',NULL,'eddy',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/eddy.png',NULL,'2018-02-25 23:58:40','2018-02-25 23:58:40'),(14,'slack','U5SJK4KJ4',NULL,'theopaul',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/theopaul.png',NULL,'2018-02-25 23:59:43','2018-02-25 23:59:43'),(15,'slack','U3XBHLY8Z',NULL,'nick.butler',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/nick.butler.png',NULL,'2018-02-26 19:03:28','2018-02-26 19:03:28'),(16,'slack','U0EJA8JQM',NULL,'gavin',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/gavin.png',NULL,'2018-02-27 03:46:52','2018-02-27 03:46:52'),(17,'slack','U0EJ8NG4C',NULL,'gus',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/gus.png',NULL,'2018-02-27 21:42:13','2018-02-27 21:42:13'),(18,'slack','U21GUK6AF',NULL,'oliver',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/oliver.png',NULL,'2018-02-27 22:01:23','2018-02-27 22:01:23'),(19,'slack','U0F32CJAY',NULL,'dan',NULL,NULL,NULL,'https://api.adorable.io/avatars/285/dan.png',NULL,'2018-02-27 22:09:58','2018-02-27 22:09:58');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_teams`
--

DROP TABLE IF EXISTS `players_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players_teams` (
  `team_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  KEY `index_players_teams_on_team_id_and_player_id` (`team_id`,`player_id`),
  KEY `index_players_teams_on_player_id_and_team_id` (`player_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_teams`
--

LOCK TABLES `players_teams` WRITE;
/*!40000 ALTER TABLE `players_teams` DISABLE KEYS */;
INSERT INTO `players_teams` VALUES (1,2),(2,1),(5,7),(6,4),(9,8),(9,12),(10,4),(10,7),(11,5),(11,6),(14,13),(14,14),(15,9),(15,11),(16,13),(17,11),(18,6),(18,15),(19,4),(19,9),(20,7),(20,11),(21,13),(21,16),(22,4),(22,6),(23,6),(23,8),(24,15),(25,14),(26,11),(26,17),(27,18),(27,19),(28,13),(28,17),(29,8),(29,9),(30,4),(30,11),(31,5),(31,7),(32,8),(32,16),(33,4),(33,15),(34,12),(34,16),(35,12),(35,18),(36,17),(36,18),(37,6),(37,10),(38,7),(38,13),(39,10),(39,14),(40,6),(40,7),(41,4),(41,13),(42,15),(42,18),(43,11),(43,14),(44,14),(44,16),(45,11),(45,13),(46,8),(47,16),(47,17),(48,13),(48,18),(49,6),(49,17),(50,9),(50,12),(51,6),(51,16),(52,7),(52,9),(53,4),(53,18),(54,7),(54,17),(55,9),(55,17);
/*!40000 ALTER TABLE `players_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20171020020418'),('20171130205010'),('20171130205729'),('20171201004340'),('20180208221625');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (5,NULL,'2018-02-23 01:04:04','2018-02-23 01:04:04'),(6,NULL,'2018-02-23 01:04:04','2018-02-23 01:04:04'),(7,NULL,'2018-02-23 01:48:12','2018-02-23 01:48:12'),(8,NULL,'2018-02-23 01:48:12','2018-02-23 01:48:12'),(9,NULL,'2018-02-23 01:52:42','2018-02-23 01:52:42'),(10,NULL,'2018-02-23 01:52:42','2018-02-23 01:52:42'),(11,NULL,'2018-02-25 19:00:45','2018-02-25 19:00:45'),(12,NULL,'2018-02-25 23:45:57','2018-02-25 23:45:57'),(13,NULL,'2018-02-25 23:45:57','2018-02-25 23:45:57'),(14,NULL,'2018-02-26 00:00:14','2018-02-26 00:00:14'),(15,NULL,'2018-02-26 00:00:14','2018-02-26 00:00:14'),(16,NULL,'2018-02-26 03:33:34','2018-02-26 03:33:34'),(17,NULL,'2018-02-26 03:33:34','2018-02-26 03:33:34'),(18,NULL,'2018-02-26 19:10:54','2018-02-26 19:10:54'),(19,NULL,'2018-02-26 19:34:39','2018-02-26 19:34:39'),(20,NULL,'2018-02-26 19:34:39','2018-02-26 19:34:39'),(21,NULL,'2018-02-27 03:47:17','2018-02-27 03:47:17'),(22,NULL,'2018-02-27 08:06:20','2018-02-27 08:06:20'),(23,NULL,'2018-02-27 20:09:29','2018-02-27 20:09:29'),(24,NULL,'2018-02-27 22:18:44','2018-02-27 22:18:44'),(25,NULL,'2018-02-27 22:18:44','2018-02-27 22:18:44'),(26,NULL,'2018-02-27 23:02:52','2018-02-27 23:02:52'),(27,NULL,'2018-02-27 23:02:52','2018-02-27 23:02:52'),(28,NULL,'2018-02-28 00:37:08','2018-02-28 00:37:08'),(29,NULL,'2018-02-28 00:37:08','2018-02-28 00:37:08'),(30,NULL,'2018-02-28 00:58:07','2018-02-28 00:58:07'),(31,NULL,'2018-02-28 00:58:07','2018-02-28 00:58:07'),(32,NULL,'2018-02-28 03:27:22','2018-02-28 03:27:22'),(33,NULL,'2018-02-28 19:17:37','2018-02-28 19:17:37'),(34,NULL,'2018-03-01 03:30:01','2018-03-01 03:30:01'),(35,NULL,'2018-03-02 03:19:13','2018-03-02 03:19:13'),(36,NULL,'2018-03-05 00:04:40','2018-03-05 00:04:40'),(37,NULL,'2018-03-05 00:04:40','2018-03-05 00:04:40'),(38,NULL,'2018-03-05 00:29:52','2018-03-05 00:29:52'),(39,NULL,'2018-03-06 01:20:43','2018-03-06 01:20:43'),(40,NULL,'2018-03-06 20:17:20','2018-03-06 20:17:20'),(41,NULL,'2018-03-06 20:17:20','2018-03-06 20:17:20'),(42,NULL,'2018-03-06 22:07:51','2018-03-06 22:07:51'),(43,NULL,'2018-03-06 23:54:04','2018-03-06 23:54:04'),(44,NULL,'2018-03-07 03:12:36','2018-03-07 03:12:36'),(45,NULL,'2018-03-07 03:12:36','2018-03-07 03:12:36'),(46,NULL,'2018-03-07 03:14:19','2018-03-07 03:14:19'),(47,NULL,'2018-03-08 03:09:25','2018-03-08 03:09:25'),(48,NULL,'2018-03-08 03:09:25','2018-03-08 03:09:25'),(49,NULL,'2018-03-08 03:43:04','2018-03-08 03:43:04'),(50,NULL,'2018-03-08 03:43:04','2018-03-08 03:43:04'),(51,NULL,'2018-03-08 04:05:09','2018-03-08 04:05:09'),(52,NULL,'2018-03-08 04:05:09','2018-03-08 04:05:09'),(53,NULL,'2018-03-08 20:32:56','2018-03-08 20:32:56'),(54,NULL,'2018-03-08 20:32:56','2018-03-08 20:32:56'),(55,NULL,'2018-03-08 21:56:36','2018-03-08 21:56:36');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-09  0:00:01
