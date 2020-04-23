CREATE DATABASE  IF NOT EXISTS `tale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `tale`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: tale
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `t_attach`
--

DROP TABLE IF EXISTS `t_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` varchar(100) NOT NULL DEFAULT '',
  `author_id` int(10) DEFAULT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_attach`
--

LOCK TABLES `t_attach` WRITE;
/*!40000 ALTER TABLE `t_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comments`
--

DROP TABLE IF EXISTS `t_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `author_id` int(10) unsigned DEFAULT '0',
  `owner_id` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comments`
--

LOCK TABLES `t_comments` WRITE;
/*!40000 ALTER TABLE `t_comments` DISABLE KEYS */;
INSERT INTO `t_comments` VALUES (12,1,1587628563,'iblog',0,1,'iblog.run@foxmail.com','https://ishacker.net','127.0.0.1',NULL,'let&#39;s test the comment feature.','comment','approved',0),(13,22,1587628726,'iblog',0,1,'iblog.run@foxmail.com','https://ishacker.net','127.0.0.1',NULL,'give a personal comment to the nineteenth article.','comment','approved',0);
/*!40000 ALTER TABLE `t_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_contents`
--

DROP TABLE IF EXISTS `t_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `author_id` int(10) unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(10) unsigned DEFAULT '0',
  `comments_num` int(10) unsigned DEFAULT '0',
  `allow_comment` tinyint(1) DEFAULT '1',
  `allow_ping` tinyint(1) DEFAULT '1',
  `allow_feed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contents`
--

LOCK TABLES `t_contents` WRITE;
/*!40000 ALTER TABLE `t_contents` DISABLE KEYS */;
INSERT INTO `t_contents` VALUES (1,'about my blog','about',1487853610,1587628220,'## :sunflower: there is no personal introductions',1,'page','publish',NULL,NULL,72,1,1,1,1),(3,'the first article','Java-Thread',1497322995,1587625624,'## :sunflower: the first article',1,'post','publish','testing,demo','testing',22,0,1,1,1),(4,'the second article','HashMap-HashTable',1497323623,1587625744,'## :sunflower: the second article',1,'post','publish','testing,demo','testing',3,0,1,1,1),(5,'the third article','Pyspider-v2ex',1497323771,1587625863,'## :sunflower: the third article',1,'post','publish','testing,demo','testing',30,0,1,1,1),(6,'the fourth article','Java-16-lession',1497325618,1587625959,'## :sunflower: the fourth article',1,'post','publish','testing,demo','testing',52,0,1,1,1),(7,'the fifth article',NULL,1587470797,1587626356,'## :sunflower: the fifth article',1,'post','publish','testing,demo','testing',208,0,1,1,1),(8,'the sixth article',NULL,1587542538,1587626435,'## :sunflower: the sixth article',1,'post','publish','testing,demo','testing',115,0,1,1,1),(9,'the seventh article',NULL,1587550807,1587626623,'## :sunflower: the seventh article',1,'post','publish','testing,demo','testing',77,0,1,1,1),(10,'the eighth article',NULL,1587619704,1587626712,'## :sunflower: the eighth article',1,'post','publish','testing,demo','testing',3,0,1,1,1),(11,'the ninth article',NULL,1587621189,1587626790,'## :sunflower: the ninth article',1,'post','publish','testing,demo','testing',4,0,1,1,1),(12,'the tenth article',NULL,1587621722,1587626851,'## :sunflower: the tenth article',1,'post','publish','testing,demo','testing',14,0,1,1,1),(13,'the eleventh article',NULL,1587621894,1587626961,'## :sunflower: the eleventh article',1,'post','publish','testing,demo','testing',3,0,1,1,1),(14,'the twelfth article',NULL,1587622130,1587627053,'## :sunflower: the twelfth article',1,'post','publish','testing,demo','testing',14,0,1,1,1),(15,'the thirteenth article',NULL,1587622500,1587627115,'## :sunflower: the thirteenth article',1,'post','publish','testing,demo','testing',4,0,1,1,1),(16,'the fourteenth article',NULL,1587622672,1587627191,'## :sunflower: the fourteenth article',1,'post','publish','testing,demo','testing',4,0,1,1,1),(17,'the fifteenth article',NULL,1587622930,1587627235,'## :sunflower: the fifteenth article',1,'post','publish','testing,demo','testing',3,0,1,1,1),(18,'the sixteenth article',NULL,1587623204,1587627297,'## :sunflower: the sixteenth article',1,'post','publish','testing,demo','testing',3,0,1,1,1),(19,'the seventeeth article',NULL,1587623587,1587627370,'## :sunflower: the seventeeth article',1,'post','publish','testing,demo','testing',4,0,1,1,1),(20,'the eighteenth article',NULL,1587623766,1587627448,'## :sunflower: the eighteenth article',1,'post','publish','testing,demo','testing',5,0,1,1,1),(22,' the nineteenth article',NULL,1587624726,1587627531,'## :sunflower: the nineteenth article',1,'post','publish','testing,demo','testing',24,1,1,1,1);
/*!40000 ALTER TABLE `t_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_logs`
--

DROP TABLE IF EXISTS `t_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_logs`
--

LOCK TABLES `t_logs` WRITE;
/*!40000 ALTER TABLE `t_logs` DISABLE KEYS */;
INSERT INTO `t_logs` VALUES (1,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815277),(2,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815280),(3,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815318),(4,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815398),(5,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815482),(6,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815492),(7,'保存系统设置','{\"site_keywords\":\"Blog\",\"site_description\":\"SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统\",\"site_title\":\"Blog\",\"site_theme\":\"default\",\"allow_install\":\"\"}',1,'0:0:0:0:0:0:0:1',1496815955),(8,'保存系统设置','{\"site_keywords\":\"Blog\",\"site_description\":\"SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统\",\"site_title\":\"Blog\",\"site_theme\":\"default\",\"allow_install\":\"\"}',1,'0:0:0:0:0:0:0:1',1496815964),(9,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496989015),(10,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496989366),(11,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497317863),(12,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_twitter\":\"\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1497318696),(13,'修改个人信息','{\"uid\":1,\"email\":\"1041218129@qq.com\",\"screenName\":\"admin\"}',1,'0:0:0:0:0:0:0:1',1497319220),(14,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497319856),(15,'登录后台',NULL,1,'127.0.0.1',1497321561),(16,'登录后台',NULL,1,'127.0.0.1',1497322738),(17,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497323446),(18,'删除文章','2',1,'0:0:0:0:0:0:0:1',1497323495),(19,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497427641),(20,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497428250),(21,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497428290),(22,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497428556),(23,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497674581),(24,'修改个人信息','{\"uid\":1,\"email\":\"1041218129@qq.com\",\"screenName\":\"admin\"}',1,'0:0:0:0:0:0:0:1',1497674690),(25,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497676623),(26,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497683817),(27,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1497685128),(28,'登录后台',NULL,1,'127.0.0.1',1497689032),(29,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587470565),(30,'删除文章','/upload/2017/06/t93vgdj6o8irgo87ds56u0ou0s.jpeg',1,'0:0:0:0:0:0:0:1',1587470622),(31,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587470666),(32,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587471255),(33,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587471834),(34,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587471883),(35,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587536815),(36,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587538250),(37,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587539428),(38,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587540012),(39,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587540651),(40,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541035),(41,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541349),(42,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541511),(43,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541664),(44,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541798),(45,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587541861),(46,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587542188),(47,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587542457),(48,'删除文章','/upload/2020/04/v0r6229ebqgv4p2n1slsbu1fcj.png',1,'0:0:0:0:0:0:0:1',1587542574),(49,'删除文章','/upload/2020/04/4kqqe8tc96ilrq8194rpfo3gmm.png',1,'0:0:0:0:0:0:0:1',1587542578),(50,'修改个人信息','{\"uid\":1,\"email\":\"1041218129@qq.com\",\"screenName\":\"admin\"}',1,'0:0:0:0:0:0:0:1',1587542755),(51,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587542814),(52,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587544126),(53,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587544171),(54,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587549053),(55,'删除文章','/upload/2020/04/4agphgo7vqg3jpg62dsntgdu1g.png',1,'0:0:0:0:0:0:0:1',1587549091),(56,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587550647),(57,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587550916),(58,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587552522),(59,'删除文章','/upload/2020/04/4idi9jfu8mii6o22rbp8c49hem.png',1,'0:0:0:0:0:0:0:1',1587552559),(60,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587552924),(61,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587553105),(62,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587598728),(63,'删除文章','/upload/2020/04/oemqrl5la2jg3rgtrl3tgj5460.png',1,'0:0:0:0:0:0:0:1',1587598964),(64,'保存系统设置','{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_weibo\":\"\"}',1,'0:0:0:0:0:0:0:1',1587599000),(65,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587619601),(66,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587621163),(67,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587621694),(68,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587621872),(69,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587622103),(70,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587622479),(71,'登录后台',NULL,1,'127.0.0.1',1587622648),(72,'登录后台',NULL,1,'127.0.0.1',1587622910),(73,'登录后台',NULL,1,'127.0.0.1',1587623178),(74,'登录后台',NULL,1,'127.0.0.1',1587623566),(75,'登录后台',NULL,1,'127.0.0.1',1587623751),(76,'登录后台',NULL,1,'127.0.0.1',1587624207),(77,'删除文章','21',1,'127.0.0.1',1587624741),(78,'登录后台',NULL,1,'127.0.0.1',1587625040),(79,'删除文章','/upload/2020/04/q25mlke1bmh85ociu0m69bmq5l.ico',1,'127.0.0.1',1587628868),(80,'删除文章','/upload/2020/04/sme9vbe7osh5mqh5o81k2m3eiu.png',1,'127.0.0.1',1587628871),(81,'删除文章','/upload/2020/04/pa6h67iktegmgpjk25re7bgorg.png',1,'127.0.0.1',1587628876),(82,'删除文章','/upload/2020/04/5k5gfnblnqgqhqjetqfg81bsmp.png',1,'127.0.0.1',1587628880),(83,'删除文章','/upload/2020/04/749lv4s04cg42p1jrugo5r6hgd.png',1,'127.0.0.1',1587628894),(84,'保存系统设置','{\"social_zhihu\":\"\",\"social_github\":\"\",\"social_weibo\":\"\"}',1,'127.0.0.1',1587628931),(85,'保存系统设置','{\"site_keywords\":\"\",\"site_description\":\"an ultra lightweight blogging system\",\"site_title\":\"blog\",\"allow_install\":\"\"}',1,'127.0.0.1',1587628967),(86,'保存系统设置','{\"site_keywords\":\"\",\"site_description\":\"an ultra lightweight blogging system\",\"site_title\":\"blog\",\"allow_install\":\"\"}',1,'127.0.0.1',1587628972),(87,'保存系统设置','{\"social_zhihu\":\"\",\"social_github\":\"\",\"social_weibo\":\"\"}',1,'127.0.0.1',1587628976),(88,'修改个人信息','{\"uid\":1,\"email\":\"iblog.run@foxmail.com\",\"screenName\":\"ishacker.net\"}',1,'127.0.0.1',1587629226),(89,'修改密码',NULL,1,'127.0.0.1',1587629258),(90,'修改个人信息','{\"uid\":1,\"email\":\"iblog.run@foxmail.com\",\"screenName\":\"ishacker.net\"}',1,'127.0.0.1',1587629293),(91,'登录后台',NULL,1,'127.0.0.1',1587629557),(92,'修改个人信息','{\"uid\":1,\"email\":\"iblog.run@foxmail.com\",\"screenName\":\"admin\"}',1,'127.0.0.1',1587629567),(93,'修改个人信息','{\"uid\":1,\"email\":\"iblog.run@foxmail.com\",\"screenName\":\"admin\"}',1,'127.0.0.1',1587629570),(94,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1587631001);
/*!40000 ALTER TABLE `t_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_metas`
--

DROP TABLE IF EXISTS `t_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_metas`
--

LOCK TABLES `t_metas` WRITE;
/*!40000 ALTER TABLE `t_metas` DISABLE KEYS */;
INSERT INTO `t_metas` VALUES (1,'default',NULL,'category',NULL,0,0),(7,'iblog docs','https://docs.iblog.run','link','',0,0),(21,'testing',NULL,'category',NULL,0,0),(22,'demo','demo','tag',NULL,0,0),(23,'testing','testing','tag',NULL,0,0),(34,'hexo blog','https://ishacker.net','link','',1,0);
/*!40000 ALTER TABLE `t_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_options`
--

DROP TABLE IF EXISTS `t_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_options`
--

LOCK TABLES `t_options` WRITE;
/*!40000 ALTER TABLE `t_options` DISABLE KEYS */;
INSERT INTO `t_options` VALUES ('allow_install','',''),('site_description','an ultra lightweight blogging system',NULL),('site_keywords','',NULL),('site_theme','default',NULL),('site_title','blog',''),('social_github','',NULL),('social_twitter','',NULL),('social_weibo','',NULL),('social_zhihu','',NULL);
/*!40000 ALTER TABLE `t_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_relationships`
--

DROP TABLE IF EXISTS `t_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_relationships`
--

LOCK TABLES `t_relationships` WRITE;
/*!40000 ALTER TABLE `t_relationships` DISABLE KEYS */;
INSERT INTO `t_relationships` VALUES (3,21),(3,22),(3,23),(4,21),(4,22),(4,23),(5,21),(5,22),(5,23),(6,21),(6,22),(6,23),(7,21),(7,22),(7,23),(8,21),(8,22),(8,23),(9,21),(9,22),(9,23),(10,21),(10,22),(10,23),(11,21),(11,22),(11,23),(12,21),(12,22),(12,23),(13,21),(13,22),(13,23),(14,21),(14,22),(14,23),(15,21),(15,22),(15,23),(16,21),(16,22),(16,23),(17,21),(17,22),(17,23),(18,21),(18,22),(18,23),(19,21),(19,22),(19,23),(20,21),(20,22),(20,23),(22,21),(22,22),(22,23);
/*!40000 ALTER TABLE `t_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_url` varchar(200) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group_name` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `mail` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (1,'admin','c860f412579c92fba103a4f6b2003108','iblog.run@foxmail.com',NULL,'admin',1490756162,0,0,'visitor');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 17:19:45
