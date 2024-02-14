-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: dashboard_django
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add rooms',8,'add_rooms'),(30,'Can change rooms',8,'change_rooms'),(31,'Can delete rooms',8,'delete_rooms'),(32,'Can view rooms',8,'view_rooms'),(33,'Can add booking',9,'add_booking'),(34,'Can change booking',9,'change_booking'),(35,'Can delete booking',9,'delete_booking'),(36,'Can view booking',9,'view_booking'),(37,'Can add contact',10,'add_contact'),(38,'Can change contact',10,'change_contact'),(39,'Can delete contact',10,'delete_contact'),(40,'Can view contact',10,'view_contact'),(41,'Can add rooms',11,'add_rooms'),(42,'Can change rooms',11,'change_rooms'),(43,'Can delete rooms',11,'delete_rooms'),(44,'Can view rooms',11,'view_rooms'),(45,'Can add booking',12,'add_booking'),(46,'Can change booking',12,'change_booking'),(47,'Can delete booking',12,'delete_booking'),(48,'Can view booking',12,'view_booking'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$q0WcJ0SaM983KD1ootYQbK$pLBTCGOMijDsF2uMp8uJOnyS/MdKEuqLaQ/0olxW3mM=','2024-02-14 10:09:32.048416',1,'leviAdmin','','','levitorres66@gmail.com',1,1,'2024-02-05 11:48:27.880078'),(3,'pbkdf2_sha256$720000$F5b1A917lS6nzP174hjjRf$b++mh3lqILYqNAxzJLWP2PG/XHm+ix2fQ5TbKdMx1Uw=','2024-02-14 10:07:59.766389',0,'prueba','','','',0,1,'2024-02-13 13:22:19.693099');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'hotelMiranda','booking'),(7,'hotelMiranda','contact'),(8,'hotelMiranda','rooms'),(6,'sessions','session'),(12,'website','booking'),(10,'website','contact'),(13,'website','order'),(11,'website','rooms');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-05 11:47:04.247566'),(2,'auth','0001_initial','2024-02-05 11:47:26.342644'),(3,'admin','0001_initial','2024-02-05 11:47:33.792368'),(4,'admin','0002_logentry_remove_auto_add','2024-02-05 11:47:33.990080'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-05 11:47:34.090693'),(6,'contenttypes','0002_remove_content_type_name','2024-02-05 11:47:40.327233'),(7,'auth','0002_alter_permission_name_max_length','2024-02-05 11:47:42.154825'),(8,'auth','0003_alter_user_email_max_length','2024-02-05 11:47:42.531658'),(9,'auth','0004_alter_user_username_opts','2024-02-05 11:47:42.568672'),(10,'auth','0005_alter_user_last_login_null','2024-02-05 11:47:44.166951'),(11,'auth','0006_require_contenttypes_0002','2024-02-05 11:47:44.273790'),(12,'auth','0007_alter_validators_add_error_messages','2024-02-05 11:47:44.385605'),(13,'auth','0008_alter_user_username_max_length','2024-02-05 11:47:45.451001'),(14,'auth','0009_alter_user_last_name_max_length','2024-02-05 11:47:47.646080'),(15,'auth','0010_alter_group_name_max_length','2024-02-05 11:47:48.300013'),(16,'auth','0011_update_proxy_permissions','2024-02-05 11:47:48.513921'),(17,'auth','0012_alter_user_first_name_max_length','2024-02-05 11:47:52.990398'),(18,'sessions','0001_initial','2024-02-05 11:47:55.748434'),(19,'hotelMiranda','0001_initial','2024-02-06 08:30:27.731540'),(20,'hotelMiranda','0002_booking_email_booking_phone','2024-02-08 15:39:03.058690'),(21,'hotelMiranda','0003_alter_booking_checkintime_alter_booking_checkouttime_and_more','2024-02-09 10:38:04.516318'),(22,'website','0001_initial','2024-02-09 11:31:32.801530'),(23,'website','0002_booking_email_booking_phone_and_more','2024-02-09 11:31:34.126078'),(24,'website','0003_alter_booking_ordertime_alter_contact_datetime','2024-02-09 11:31:34.204272'),(25,'website','0004_alter_booking_ordertime_alter_contact_datetime','2024-02-09 11:31:34.267595'),(26,'website','0005_alter_booking_orderdate_alter_booking_ordertime_and_more','2024-02-12 11:28:53.345145');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0tc7dhmhlsfwjbb0belsthng3awzdzan','.eJxVjMsOwiAURP-FtSFcQB4u3fsN5AIXqRpISrsy_rtt0oVmdnPOzJsFXJca1kFzmDK7MGCn3y5ielLbQX5gu3eeelvmKfJd4Qcd_NYzva6H-3dQcdRtrT1JkUn7bFRxKKxXyaMAkFYrm3Qx6CRE6cyWAgWsUwKVOkcCS0mzzxfBtjbq:1raCCq:DBxIH2G_2aEJ4fHe24yDh303uFyaYW70IW58mBv9lIU','2024-02-28 10:09:32.169449'),('rn5jqdes6vv5gnyxw188iy15aauzv5mq','.eJxVjMsOwiAURP-FtSFcQB4u3fsN5AIXqRpISrsy_rtt0oVmdnPOzJsFXJca1kFzmDK7MGCn3y5ielLbQX5gu3eeelvmKfJd4Qcd_NYzva6H-3dQcdRtrT1JkUn7bFRxKKxXyaMAkFYrm3Qx6CRE6cyWAgWsUwKVOkcCS0mzzxfBtjbq:1rZsm8:Z-pqnVkNGY_Aa3eq0IJ1LZFpQf1oue2a-VbEE_TCHDQ','2024-02-27 13:24:40.060206');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_booking`
--

DROP TABLE IF EXISTS `website_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `orderDate` date NOT NULL,
  `orderTime` time(6) NOT NULL,
  `checkinDate` date NOT NULL,
  `checkinTime` time(6) NOT NULL,
  `checkoutDate` date NOT NULL,
  `checkoutTime` time(6) NOT NULL,
  `notes` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `roomId_id` bigint NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(129) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_booking_roomId_id_2d989d68_fk_website_rooms_id` (`roomId_id`),
  CONSTRAINT `website_booking_roomId_id_2d989d68_fk_website_rooms_id` FOREIGN KEY (`roomId_id`) REFERENCES `website_rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_booking`
--

LOCK TABLES `website_booking` WRITE;
/*!40000 ALTER TABLE `website_booking` DISABLE KEYS */;
INSERT INTO `website_booking` VALUES (26,'https://picsum.photos/seed/NoZQBE3dg/640/480','Mrs. Judy Stamm-Macejkovic III','2023-12-25','01:44:00.000000','2024-01-19','11:44:00.000000','2024-08-10','06:28:00.000000','Alter sodalitas magnam centum casus adduco ea.','booked',29,'example@example.com','999999999'),(27,'https://picsum.photos/seed/cN8Tti/640/480','Anthony Sanford','2023-06-17','11:01:00.000000','2024-01-19','01:44:00.000000','2024-07-13','11:34:00.000000','Confugo censura tamen tempus.','refund',29,'example@example.com','999999999'),(28,'https://picsum.photos/seed/wP1pXz8xUF/640/480','Nina Bartoletti','2023-11-20','02:21:00.000000','2024-01-20','21:51:00.000000','2024-12-14','14:41:00.000000','Ultra deorsum ex canonicus a ciminatio nulla tripudio.','refund',29,'example@example.com','999999999'),(29,'https://picsum.photos/seed/QIx4L/640/480','Lana Stokes','2023-02-18','22:46:00.000000','2024-01-19','03:34:00.000000','2024-04-19','23:52:00.000000','Alias caecus trans pel defero quis decipio votum.','pending',29,'example@example.com','999999999'),(30,'https://picsum.photos/seed/16jQm51K/640/480','test','2023-02-15','13:16:00.000000','2024-01-19','10:05:00.000000','2024-03-30','06:53:00.000000','test','pending',29,'example@example.com','999999999'),(31,'https://picsum.photos/seed/T5gJmRMc/640/480','Dennis Crist V','2023-12-23','23:30:00.000000','2024-01-19','10:40:00.000000','2024-02-21','20:42:00.000000','Demonstro repellat deserunt tempus defendo umerus tricesimus trado creator.','refund',29,'example@example.com','999999999'),(32,'https://picsum.photos/seed/sPr8vF/640/480','David Rodriguez II','2023-12-29','01:06:00.000000','2024-01-19','11:23:00.000000','2025-01-08','07:42:00.000000','Aqua vesica talio communis thesaurus aranea virtus tripudio defessus ara.','booked',34,'example@example.com','999999999'),(33,'https://picsum.photos/seed/tTSxt0i6/640/480','Shelly Schneider DVM','2023-05-06','03:51:00.000000','2024-01-19','00:42:00.000000','2024-09-07','16:58:00.000000','Deserunt traho vado amitto placeat asperiores utpote vomica venio arca.','pending',31,'example@example.com','999999999'),(34,'https://picsum.photos/seed/gdD6TR2/640/480','Kelvin Mayer','2023-04-16','07:45:00.000000','2024-01-19','20:38:00.000000','2024-04-05','05:39:00.000000','Apparatus conservo complectus tempus.','booked',29,'example@example.com','999999999'),(35,'https://picsum.photos/seed/Gm1lir5/640/480','Kristin Reinger','2023-02-22','09:42:00.000000','2024-01-19','09:36:00.000000','2024-09-28','01:49:00.000000','Addo tremo tergiversatio libero.','pending',34,'example@example.com','999999999'),(36,'https://picsum.photos/seed/IOVOm7ym/640/480','Wallace Weissnat','2023-11-19','15:18:00.000000','2024-01-20','17:55:00.000000','2024-07-11','21:53:00.000000','Aro sto sollers beatae demitto tepidus.','booked',35,'example@example.com','999999999'),(37,'https://picsum.photos/seed/knUBdYXFxs/640/480','Miss Jessica Metz','2023-04-27','23:48:00.000000','2024-01-20','22:35:00.000000','2024-09-28','10:40:00.000000','Absque quaerat acies defluo.','refund',33,'example@example.com','999999999'),(38,'https://picsum.photos/seed/O7Af5b/640/480','Spencer Homenick','2023-07-29','12:18:00.000000','2024-01-19','06:41:00.000000','2024-12-28','09:46:00.000000','Pauper adulatio compello cohaero celo apparatus ventus depromo.','refund',37,'example@example.com','999999999'),(39,'https://picsum.photos/seed/f8VPhK46s/640/480','Eleanor Fay-Carroll','2023-07-02','15:21:00.000000','2024-01-20','04:28:00.000000','2024-06-11','00:30:00.000000','Bestia theatrum verus aliquid adipiscor capitulus possimus vox.','booked',32,'example@example.com','999999999'),(40,'https://picsum.photos/seed/wHPJFNt/640/480','Josefina Bradtke','2023-04-11','08:55:00.000000','2024-01-20','11:13:00.000000','2025-01-02','04:29:00.000000','Sponte spectaculum theologus adiuvo molestias artificiose comparo commodi caecus.','booked',33,'example@example.com','999999999');
/*!40000 ALTER TABLE `website_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_contact`
--

DROP TABLE IF EXISTS `website_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(9) NOT NULL,
  `comment` longtext NOT NULL,
  `date` date NOT NULL,
  `dateTime` time(6) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_contact`
--

LOCK TABLES `website_contact` WRITE;
/*!40000 ALTER TABLE `website_contact` DISABLE KEYS */;
INSERT INTO `website_contact` VALUES (25,'https://picsum.photos/seed/kdZIAydVQ/640/480','Beatrice Cartwright','Jo.Orn@gmail.com','639834434','Deleo angelus atrocitas verbum suus et curiositas. Bestia libero auctor avarus quod thymum amicitia esse. Illo corpus arguo chirographum tamquam solium pectus.','2024-01-18','05:26:00.000000',1),(26,'https://picsum.photos/seed/UuycPQlCEG/640/480','April Lang','Mavis77@gmail.com','695943197','Crur video stillicidium sollers porro cupiditate sono crux cupio. Ustilo thorax sum chirographum. Denego triumphus celo taedium.','2024-01-18','00:35:00.000000',0),(27,'https://picsum.photos/seed/AckF4nm/640/480','Blanche Kassulke','Shawn_Farrell38@gmail.com','682662207','Iusto corrumpo administratio. Demitto atque tabernus. Aeger communis varius tutamen ducimus tyrannus speciosus spes valens thymbra.','2024-01-18','16:42:00.000000',0),(28,'https://picsum.photos/seed/Fwl5J63B/640/480','Winston Koepp','Ludwig10@yahoo.com','684907025','Astrum virgo ulciscor minima ulterius vilis nobis cilicium. Adhaero illo vix omnis demitto. Cohors ulciscor sulum coniecto dens.','2024-01-19','09:57:00.000000',0),(29,'https://picsum.photos/seed/Qd51qklGa/640/480','Jackie Orn PhD','Armando.Funk92@hotmail.com','642670573','Quis acies turba cado iste adduco iusto eaque sodalitas. Ancilla thorax illum. Cursim appono doloribus arma patruus thesis possimus curo adsum doloremque.','2024-01-18','14:56:00.000000',1),(30,'https://picsum.photos/seed/qqzkg4/640/480','test','test@test.com','675038080','Terror caecus tamen comparo harum. Tres cum creo solium crastinus audax amoveo denique cohors appositus. Stipes celer aegrus dignissimos.','2024-01-18','11:57:00.000000',1),(31,'https://picsum.photos/seed/FbPnDjSUg/640/480','Marion Bernier','Taurean66@hotmail.com','658307130','Arceo custodia exercitationem adulatio stillicidium confero. Crux usque taceo ara expedita talus ademptio odit. Subvenio blanditiis accendo laudantium.','2024-01-18','09:51:00.000000',1),(32,'https://picsum.photos/seed/6HoTcymT/640/480','Ruth Anderson','Anita.Kuhlman81@hotmail.com','628419521','Vigilo cometes caritas cribro ascisco. Cometes nihil absens brevis terebro dolorum titulus tabella suggero. Adduco taedium vulariter vero recusandae capillus armarium sub anser.','2024-01-19','04:13:00.000000',0),(33,'https://picsum.photos/seed/HgWN2RD/640/480','Erma Quitzon','Cordia19@hotmail.com','682797671','Comes suadeo abscido. Aeneus quisquam tergeo caelum pecus solio harum pecus. Centum vere centum dedico itaque vestrum tres.','2024-01-18','20:18:00.000000',0),(34,'https://picsum.photos/seed/GUyV907g0f/640/480','Blanche Grimes','Stephanie_Wunsch@yahoo.com','665471658','Verecundia adiuvo depereo avaritia. Porro vallum aveho delicate centum stella talus vociferor. Cupiditas asporto cotidie compello.','2024-01-19','02:34:00.000000',1),(35,'https://picsum.photos/seed/649zB/640/480','Whitney Hartmann','Chase_Labadie@hotmail.com','682590497','Comminor necessitatibus virgo vesper tamquam asper arguo. Nobis sto defessus angelus. Conduco atavus utilis toties.','2024-01-18','23:29:00.000000',0),(36,'https://picsum.photos/seed/qXCdP/640/480','Caroline Feest Sr.','Vidal.Morissette11@yahoo.com','652647259','Aestus delicate crux aranea ciminatio. Abduco usitas vir ocer theologus. Esse cavus delego animus tondeo comitatus subito decet trucido videlicet.','2024-01-19','14:26:00.000000',0),(37,'https://picsum.photos/seed/aEdgQfLE/640/480','Delores VonRueden','Pat_Conn@gmail.com','685180395','Alter tenetur commodo tergiversatio acerbitas verumtamen quisquam alioqui. Auxilium appono delego creta nisi autem certe vox degenero. Thesis varius avaritia doloremque atavus tibi cito sponte cribro.','2024-01-18','22:22:00.000000',0),(38,'https://picsum.photos/seed/XYTnsCgX/640/480','Wilbur Kris','Marcos.Koelpin@hotmail.com','685598931','Laudantium minus amoveo texo cohibeo. Similique alius laboriosam conspergo abduco civitas at depromo depopulo. Admoneo ter terreo ex beneficium testimonium vicinus ventus vulgo.','2024-01-18','03:35:00.000000',1),(39,'https://picsum.photos/seed/dO1Wsof8y/640/480','Bryan Yost-Kreiger','Yasmin.Renner45@hotmail.com','686835701','Magnam alter decipio caelum capillus cuius tandem. Voluptatibus temeritas culpa alias ut laborum claudeo umerus argentum somnus. Solum coruscus vorax.','2024-01-18','13:38:00.000000',1),(40,'https://picsum.photos/seed/iAfyqmPrz/640/480','Austin Kohler','Ali50@yahoo.com','632034401','Ustilo umquam adhaero natus adduco aiunt repellat. Communis caelestis acerbitas vobis subito acerbitas. Aspicio summopere magni.','2024-01-18','13:06:00.000000',1);
/*!40000 ALTER TABLE `website_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_order`
--

DROP TABLE IF EXISTS `website_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `timestamps` datetime(6) NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_order_room_id_b504a347_fk_website_rooms_id` (`room_id`),
  KEY `website_order_user_id_13a763ad_fk_auth_user_id` (`user_id`),
  CONSTRAINT `website_order_room_id_b504a347_fk_website_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `website_rooms` (`id`),
  CONSTRAINT `website_order_user_id_13a763ad_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_order`
--

LOCK TABLES `website_order` WRITE;
/*!40000 ALTER TABLE `website_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_rooms`
--

DROP TABLE IF EXISTS `website_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `bed` varchar(255) NOT NULL,
  `amenities` json NOT NULL,
  `description` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  `price` double NOT NULL,
  `discount` int NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_rooms`
--

LOCK TABLES `website_rooms` WRITE;
/*!40000 ALTER TABLE `website_rooms` DISABLE KEYS */;
INSERT INTO `website_rooms` VALUES (29,16,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',0,75,54,1),(31,271,'https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',2,133,85,0),(32,159,'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Small','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',1,184,21,1),(33,77,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.','Double Bed','Big','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',1,183,59,1),(34,36,'https://images.unsplash.com/photo-1566195992011-5f6b21e539aa?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',4,92,44,0),(35,98,'https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',2,142,17,1),(36,292,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.','Suite','Big','[\"TV\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',3,20,86,1),(37,185,'https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.','Suite','Small','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',5,96,91,1),(38,72,'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Small','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',2,93,19,1),(39,294,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.','Single Bed','Medium','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',3,109,39,1),(40,273,'https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Big','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',1,274,98,1),(41,16,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.','Suite','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',3,31,45,0),(42,227,'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Medium','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',3,81,18,1),(43,87,'https://images.unsplash.com/photo-1566195992011-5f6b21e539aa?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Medium','[\"Room service\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',5,10,45,0),(44,182,'https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Small','[\"Sea\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',4,260,41,0),(45,226,'https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Medium','[\"TV\"]','Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.',0,259,85,1);
/*!40000 ALTER TABLE `website_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 15:55:14
