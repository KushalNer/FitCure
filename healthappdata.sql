-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: healthapp
-- ------------------------------------------------------
-- Server version	8.0.42

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add account',10,'add_account'),(38,'Can change account',10,'change_account'),(39,'Can delete account',10,'delete_account'),(40,'Can view account',10,'view_account'),(41,'Can add user account',10,'add_useraccount'),(42,'Can change user account',10,'change_useraccount'),(43,'Can delete user account',10,'delete_useraccount'),(44,'Can view user account',10,'view_useraccount'),(45,'Can add wishlist',11,'add_wishlist'),(46,'Can change wishlist',11,'change_wishlist'),(47,'Can delete wishlist',11,'delete_wishlist'),(48,'Can view wishlist',11,'view_wishlist');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$0NZAKhv7N0Ehki2YGL2cgw$uNhVXwE+iz0sOkcE0tOMmuLLLQrbhRDlEUPVpOIi0Z4=','2025-08-07 18:13:22.563860',1,'kushal','','','nerkushal@gmail.com',1,1,'2025-06-06 09:59:12.000000'),(4,'pbkdf2_sha256$1000000$VuX3u4lbCur6bL2YdnPlLv$pcAnDza6jJxsw8sTV28iqz4EoLd8rcPnzfIOI/mIVqM=','2025-06-10 05:33:13.659038',0,'Dhanu07','','','dhanu@gmail.com',0,1,'2025-06-07 12:38:28.000000'),(5,'pbkdf2_sha256$1000000$88Dok48e3MRkp62xA1u0Rz$0dBci2fngtugt454Gop46JasRNOAY6JUGuPJByh9FqE=','2025-06-08 12:09:36.991509',0,'Pranali21','','','pranaliner21@gmail.com',0,1,'2025-06-08 12:08:36.866856');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-06-06 10:02:38.950207','1','weightloss',1,'[{\"added\": {}}]',9,1),(2,'2025-06-06 10:39:24.714662','1','Weight Loss',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(3,'2025-06-06 11:23:19.581910','1','Mitolyn',1,'[{\"added\": {}}]',8,1),(4,'2025-06-06 11:25:56.860079','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Buy link\"]}}]',8,1),(5,'2025-06-06 11:26:53.793941','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Benefits\"]}}]',8,1),(6,'2025-06-06 13:21:57.463144','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Benefits\"]}}]',8,1),(7,'2025-06-06 13:23:44.806798','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Ingredients\"]}}]',8,1),(8,'2025-06-06 14:49:14.463952','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',8,1),(9,'2025-06-06 15:21:56.233087','1','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Seo description\"]}}]',8,1),(10,'2025-06-06 15:36:38.496156','1','Mitolyn',2,'[]',8,1),(11,'2025-06-07 09:31:51.103531','2','pranaliner21@gmail.com',2,'[]',7,1),(12,'2025-06-07 10:23:11.237895','1','nerkushal@gmail.com',2,'[]',10,1),(13,'2025-06-07 10:23:17.403626','2','dhanu@gmail.com',2,'[]',10,1),(14,'2025-06-07 10:41:00.587877','1','kushal',2,'[]',4,1),(15,'2025-06-07 12:36:05.557352','2','dhanu',3,'',4,1),(16,'2025-06-07 12:36:05.557352','3','dhanu0010',3,'',4,1),(17,'2025-06-07 12:36:23.150875','5','dhanu@gmail.com',3,'',10,1),(18,'2025-06-07 12:36:23.150875','4','kushalner0002@gmail.com',3,'',10,1),(19,'2025-06-07 12:36:23.151872','3','dhanu@gmail.com',3,'',10,1),(20,'2025-06-07 12:36:23.151872','2','dhanu@gmail.com',3,'',10,1),(21,'2025-06-07 12:38:57.898549','4','Dhanu07',2,'[]',4,1),(22,'2025-06-08 08:51:25.427595','1','Mitolyn',2,'[]',8,1),(23,'2025-06-09 04:43:03.604050','2','kushal',1,'[{\"added\": {}}]',9,1),(24,'2025-06-09 04:43:09.909172','3','pranali',1,'[{\"added\": {}}]',9,1),(25,'2025-06-09 04:43:21.133312','4','dhanashri',1,'[{\"added\": {}}]',9,1),(26,'2025-06-09 04:43:25.752164','5','sneha',1,'[{\"added\": {}}]',9,1),(27,'2025-06-09 04:43:31.444563','6','kunal',1,'[{\"added\": {}}]',9,1),(28,'2025-06-09 06:14:47.417773','6','kunal',3,'',9,1),(29,'2025-06-09 06:14:47.418774','5','sneha',3,'',9,1),(30,'2025-06-09 06:14:47.418774','4','dhanashri',3,'',9,1),(31,'2025-06-09 06:14:47.418774','3','pranali',3,'',9,1),(32,'2025-06-09 06:14:47.418774','2','kushal',3,'',9,1),(33,'2025-06-09 06:21:50.804508','1','Weight Loss',3,'',9,1),(34,'2025-06-09 06:22:43.895062','7','Weight Loss',1,'[{\"added\": {}}]',9,1),(35,'2025-06-09 06:25:13.741635','2','Mitolyn',1,'[{\"added\": {}}]',8,1),(36,'2025-06-09 11:13:01.532653','2','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Buy link\"]}}]',8,1),(37,'2025-06-09 11:14:24.248124','8','Beauty',1,'[{\"added\": {}}]',9,1),(38,'2025-06-09 11:40:06.274705','3','PrimeBiome',1,'[{\"added\": {}}]',8,1),(39,'2025-06-09 11:51:59.853719','3','PrimeBiome',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(40,'2025-06-09 11:59:56.796710','2','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(41,'2025-06-09 12:17:09.039611','3','PrimeBiome',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(42,'2025-06-09 12:17:19.050287','2','Mitolyn',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(43,'2025-06-09 12:30:41.083208','9','Health Supplement',1,'[{\"added\": {}}]',9,1),(44,'2025-06-09 12:44:41.348388','4','ProstaVive',1,'[{\"added\": {}}]',8,1),(45,'2025-06-09 12:48:01.312444','4','ProstaVive',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(46,'2025-06-09 13:18:33.317601','5','HepatoBurn',1,'[{\"added\": {}}]',8,1),(47,'2025-06-10 08:56:28.927031','6','Breathe',1,'[{\"added\": {}}]',8,1),(48,'2025-06-10 08:58:13.698576','6','Breathe',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(49,'2025-06-10 09:04:18.484090','6','Breathe',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(50,'2025-06-10 09:15:02.741176','10','Dental Health',1,'[{\"added\": {}}]',9,1),(51,'2025-06-10 09:43:19.699300','7','ProDentim',1,'[{\"added\": {}}]',8,1),(52,'2025-06-10 09:49:16.616510','7','ProDentim',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(53,'2025-06-10 09:51:54.967947','11','Dietary Supplements',1,'[{\"added\": {}}]',9,1),(54,'2025-06-10 11:16:35.048405','8','Quietum Plus',1,'[{\"added\": {}}]',8,1),(55,'2025-06-10 11:47:58.118438','9','Nitric Boost',1,'[{\"added\": {}}]',8,1),(56,'2025-06-10 11:48:32.875144','9','Nitric Boost',2,'[{\"changed\": {\"fields\": [\"Benefits\"]}}]',8,1),(57,'2025-06-10 12:27:44.978261','10','BIODYNAMIX',1,'[{\"added\": {}}]',8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'healthapp','category'),(7,'healthapp','contact'),(8,'healthapp','product'),(10,'healthapp','useraccount'),(11,'healthapp','wishlist'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-06-06 09:56:15.905657'),(2,'auth','0001_initial','2025-06-06 09:56:16.451567'),(3,'admin','0001_initial','2025-06-06 09:56:16.595143'),(4,'admin','0002_logentry_remove_auto_add','2025-06-06 09:56:16.603157'),(5,'admin','0003_logentry_add_action_flag_choices','2025-06-06 09:56:16.612162'),(6,'contenttypes','0002_remove_content_type_name','2025-06-06 09:56:16.733758'),(7,'auth','0002_alter_permission_name_max_length','2025-06-06 09:56:16.815037'),(8,'auth','0003_alter_user_email_max_length','2025-06-06 09:56:16.850549'),(9,'auth','0004_alter_user_username_opts','2025-06-06 09:56:16.859050'),(10,'auth','0005_alter_user_last_login_null','2025-06-06 09:56:16.920758'),(11,'auth','0006_require_contenttypes_0002','2025-06-06 09:56:16.923753'),(12,'auth','0007_alter_validators_add_error_messages','2025-06-06 09:56:16.931989'),(13,'auth','0008_alter_user_username_max_length','2025-06-06 09:56:16.997196'),(14,'auth','0009_alter_user_last_name_max_length','2025-06-06 09:56:17.075689'),(15,'auth','0010_alter_group_name_max_length','2025-06-06 09:56:17.100471'),(16,'auth','0011_update_proxy_permissions','2025-06-06 09:56:17.109617'),(17,'auth','0012_alter_user_first_name_max_length','2025-06-06 09:56:17.184686'),(18,'healthapp','0001_initial','2025-06-06 09:56:17.226895'),(19,'sessions','0001_initial','2025-06-06 09:56:17.268979'),(20,'healthapp','0002_category_product_category','2025-06-06 10:02:11.536309'),(21,'healthapp','0003_alter_product_short_description','2025-06-06 10:44:49.890470'),(22,'healthapp','0004_product_price_alter_product_seo_description','2025-06-06 14:43:44.482451'),(23,'healthapp','0005_account','2025-06-07 05:18:07.517150'),(24,'healthapp','0006_rename_account_useraccount','2025-06-07 05:20:04.027206'),(25,'healthapp','0007_rename_city_useraccount_username','2025-06-07 08:59:33.534954'),(26,'healthapp','0008_alter_useraccount_date','2025-06-07 09:30:14.480809'),(27,'healthapp','0009_wishlist','2025-06-08 08:49:36.077093'),(28,'healthapp','0010_alter_wishlist_user','2025-06-08 09:38:41.053394'),(29,'healthapp','0011_category_slug','2025-06-09 06:22:24.503072'),(30,'healthapp','0012_remove_category_slug','2025-06-09 06:22:24.563858'),(31,'healthapp','0013_category_slug','2025-06-09 06:22:24.644988'),(32,'healthapp','0014_remove_category_slug','2025-06-09 06:22:24.692553'),(33,'healthapp','0015_category_slug','2025-06-09 06:22:24.762910');
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
INSERT INTO `django_session` VALUES ('5b2n7u18l23uaswkb18glzefquw4jj1h','.eJxVjEEOwiAUBe_C2hCgQMGle89APg-QqqFJaVfGu2uTLnT7Zua9WKBtrWHreQlTYmcm2el3i4RHbjtId2q3mWNu6zJFviv8oJ1f55Sfl8P9O6jU67dWBDhFxVlfBA0kYVzRpox-9ChGRqeFz1HbQUFASljACBiKyloSmr0_7_o39Q:1uk57C:uYb4oVbE6WYLkYTd3el8vEsVCBhVFgFeliWIxEwRpZs','2025-08-21 18:13:22.567868'),('xv6cdeo1hmgwn6wrxzqk37n80m7rih75','.eJxVjEEOwiAUBe_C2hCgQMGle89APg-QqqFJaVfGu2uTLnT7Zua9WKBtrWHreQlTYmcm2el3i4RHbjtId2q3mWNu6zJFviv8oJ1f55Sfl8P9O6jU67dWBDhFxVlfBA0kYVzRpox-9ChGRqeFz1HbQUFASljACBiKyloSmr0_7_o39Q:1uOtkN:xICsABqEE1ECPdPyphv_UOpAZmleWHWS6AjWeNMzAbQ','2025-06-24 07:50:15.172368');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthapp_category`
--

DROP TABLE IF EXISTS `healthapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthapp_category`
--

LOCK TABLES `healthapp_category` WRITE;
/*!40000 ALTER TABLE `healthapp_category` DISABLE KEYS */;
INSERT INTO `healthapp_category` VALUES (7,'Weight Loss','weight-loss'),(8,'Beauty','beauty'),(9,'Health Supplement','health-supplement'),(10,'Dental Health','dental-health'),(11,'Dietary Supplements','dietary-supplements');
/*!40000 ALTER TABLE `healthapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthapp_contact`
--

DROP TABLE IF EXISTS `healthapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthapp_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthapp_contact`
--

LOCK TABLES `healthapp_contact` WRITE;
/*!40000 ALTER TABLE `healthapp_contact` DISABLE KEYS */;
INSERT INTO `healthapp_contact` VALUES (1,'Kushal Ner','nerkushal@gmail.com','hello welcome to new database healthapp','2025-06-06'),(2,'kuma','pranaliner21@gmail.com','Enter Message','2025-06-07'),(3,'kdk','nerkushal@gmail.com','Enter Message','2025-06-07'),(4,'Kushal Ner','kushalner0002@gmail.com','Enter Message','2025-06-07'),(5,'Kushal Ner','nerkushal@gmail.com','Enter Message','2025-06-07');
/*!40000 ALTER TABLE `healthapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthapp_product`
--

DROP TABLE IF EXISTS `healthapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `ingredients` longtext,
  `usage` longtext,
  `benefits` longtext,
  `manufacturer` longtext,
  `buy_link` varchar(200) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_description` varchar(300) DEFAULT NULL,
  `created` date NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `healthapp_product_category_id_ee7a0407_fk_healthapp_category_id` (`category_id`),
  CONSTRAINT `healthapp_product_category_id_ee7a0407_fk_healthapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `healthapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthapp_product`
--

LOCK TABLES `healthapp_product` WRITE;
/*!40000 ALTER TABLE `healthapp_product` DISABLE KEYS */;
INSERT INTO `healthapp_product` VALUES (2,'Mitolyn','mitolyn','produt_images/mitolyn.png','Mitolyn is a natural health supplement that enhances your energy levels and metabolism. Its purpose is to support in weight loss and improve overall health.','Mitolyn is made from herbal plant elements that work collectively to provide your physique greater energy, assist you burn fat, and experience higher overall. It helps your mitochondria—these are like little batteries in your cells that produce energy. When they work better, your physique feels extra active, your metabolism improves, and even your temper can get better. It\'s safe, gentle, and doesn’t use sturdy stimulants like some weight-loss pills.','Maqui Berry – A fruit wealthy in antioxidants that helps your coronary heart and electricity levels.\r\nRhodiola Rosea – A root that reduces stress and boosts your mood.\r\nAmla (Indian Gooseberry) – A established fruit for enhancing digestion and eyesight.\r\nHaematococcus Pluvialis – A type of algae that helps your joints, skin, and muscles.\r\nCocoa Extract (Theobroma Cacao) – Helps your physique make electricity naturally.\r\nCoQ10 (Coenzyme Q10) – Important for making strength in your cells.\r\nALA (Alpha-Lipoic Acid) – Helps manipulate blood sugar and helps nerve health.','Take two pills each and every day, ideally after a meal, with a glass of water. For exceptional results, use it every day for a few weeks.','Boosts herbal power (less tiredness)\r\nHelps your physique burn fats better\r\nSupports healthful weight loss\r\nImproves focal point and intellectual clarity\r\nReduces stress and improves sleep\r\nSafe for daily use','','https://a0d568wjlvmdnd98nrzjaa2t65.hop.clickbank.net','Mitolyn Capsules – Natural Energy & Weight Loss Supplement','Mitolyn is a plant-based supplement that helps boost energy, metabolism, and supports healthy weight loss. Includes Amla, CoQ10, and more. Safe, natural and effective.','2025-06-09',7,'41$ to 79$'),(3,'PrimeBiome','primebiome','produt_images/primebiome.png','A herbal probiotic and natural blend that helps digestion, healthful skin, and youthful power from the inside out.','PrimeBiome is a plant-based complement that helps balance your intestine and enhance your pores and skin health. It includes probiotics (good bacteria) and effective herbs that help digestion, minimize bloating, and promote clear, glowing skin. One of the key methods it works is through supporting your body renew pores and skin cells—this natural procedure replaces historic pores and skin cells with new ones, maintaining your pores and skin youthful and fresh.\r\n\r\nBy enhancing gut fitness and assisting pores and skin phone turnover, PrimeBiome helps your physique age in a wholesome way. A balanced gut additionally potential higher absorption of nutrients, improved mood, and superior immunity. With everyday use, many customers sense greater energetic, lighter, and extra assured in their skin.','Bacillus Coagulans – Strong probiotic for intestine stability and clear skin\r\nBabchi (Bakuchiol) – Supports collagen and smooths quality lines\r\nDandelion – Cleanses the liver, helps with digestion and clearer skin\r\nFennel – Reduces gasoline and bloating, suitable for pores and skin tone\r\nInulin – A prebiotic fiber that feeds excellent intestine bacteria\r\nFenugreek – Reduces infection and helps metabolism\r\nLemon Balm – Soothes digestion and calms stress\r\nCeylon Ginger – Helps with digestion and reduces swelling\r\nSlippery Elm Bark – Coats and protects the belly lining\r\nLion’s Mane – Supports the gut-brain connection and intellectual readability','Take two tablets or gummies every day after a meal with water.\r\nUse consistently for 4–6 weeks for exceptional results.','Supports gut fitness and digestion\r\nHelps reduce bloating and gas\r\nPromotes clearer, brighter, and youthful-looking skin\r\nSupports pores and skin cell renewal for healthy aging\r\nCalms stress and helps mood\r\nBoosts energy naturally\r\nHelps nutrient absorption and pores and skin hydration','Manufactured in the USA in FDA-registered, GMP-certified facilities. Free from GMOs, fillers, and artificial ingredients.','https://hop.clickbank.net/?affiliate=kushalner&vendor=primebiome&cbpage=tsl&affop=1','PrimeBiome – Gut Health & Skin Renewal Probiotic Supplement','PrimeBiome is a herbal probiotic and natural system that helps intestine balance, healthy digestion, and youthful pores and skin via increased pores and skin cell turnover and beneficial bacteria.','2025-06-09',8,'49$ to 79$'),(4,'ProstaVive','prostavive','produt_images/prostavive.png','A natural once-daily powder designed to support a healthy prostate, stronger urine flow, improved sleep, and a more active sex life.','ProstaVive is a clean, herbal prostate fitness complement designed for each day use. It helps prostate size, urinary function, comfortable nights, and a extra active and assured every day life.\r\nThousands of men of all ages are supporting a healthy, youthful prostate with ProstaVive. This easy-to-use formula is packed with powerful plant-based nutrients that support prostate activity, healthy cell metabolism, and strong blood circulation.\r\nThese nutrients work together to help maintain normal prostate size, support strong urine flow, boost sleep quality, and enhance sexual vitality. Plus, better blood flow around the prostate also supports deep, satisfying sleep and more energy throughout the day','Boron – Helps detox and irritation response.\r\nTongkat Ali – Supports sexual health and blood flow.\r\nAshwagandha – Reduces stress, helps prostate and sleep.\r\nFenugreek – Supports hormones and irritation control.\r\nPanax Ginseng – Improves blood flow, vitality, and prostate health.\r\nMaca Root – Boosts stamina, libido, and hormones.\r\nArtichoke Extract – Supports prostate health, antioxidants and circulation.\r\nNettle Root – Helps urinary drift and hormone balance.\r\nZinc, Magnesium, Vitamin D, Vitamin B6 – Support prostate function, immunity, sleep, and energy.','Mix one scoop of powder (daily) into water or any beverage, ideally with a meal. It\'s a convenient, once-a-day routine.','Supports healthy prostate size and function\r\nPromotes stronger, clearer urine flow\r\nReduces dead night bathroom journeys for better sleep\r\nEnhances libido, sexual performance, and vitality\r\nBoosts strength stages and intellectual clarity\r\nSupports healthful blood flow and circulation\r\nHelps minimize inflammation\r\nSupports immune fitness and usual wellbeing','Branded by ProstaVive, produced in the U.S. in certified facilities that follow high-standard manufacturing practices','https://hop.clickbank.net/?affiliate=kushalner&vendor=provive&pid=20&tid=track','ProstaVive – Natural Prostate Support Powder for Healthy Flow & Sleep','ProstaVive is a herbal once-daily powder with herbs and minerals like Tongkat Ali, Zinc, and Ashwagandha to support prostate health, strong urine flow, restful sleep, and vitality.','2025-06-09',9,'$39 to $79'),(5,'HepatoBurn','hepatoburn','produt_images/heptoburn.png','A natural daily supplement designed to support liver health, boost metabolism, help burn belly fat, and improve energy levels.','HepatoBurn is a clean, herbal supplement targeted on liver health—the body’s fat-burning hub. Users frequently record higher digestion, extra energy, increased skin, and constant fats loss.\r\nHepatoBurn is a carefully formulated combination of plant-based substances that help your liver—the body’s herbal detox center. A more healthy liver can procedure fats and toxins extra efficiently. This helps your body burn cussed fats (especially round the belly), boosts energy, improves digestion, and even offers your pores and skin a clearer glow. It works gently except stimulants, providing long-term health assist by using addressing the root cause: your liver’s feature','Resveratrol – Antioxidant that boosts fats burning and helps coronary heart and cell health\r\nGreen Tea Extract (Camellia Sinensis) – Helps burn fats and helps coronary heart health\r\nGenistein – Helps stability hormones, reduce inflammation, and burn fat\r\nChlorogenic Acid – Slows carb absorption, helps weight loss and blood sugar\r\nCholine – Moves fats out of the liver and helps brain function\r\nSilymarin (Milk Thistle Extract) – Helps liver detox, repair, and protect\r\nBetaine – Supports detox and fats metabolism\r\nBerberine – Reduces inflammation, helps metabolic health\r\nMolybdenum – Helps clear toxins with the aid of liver enzymes\r\nGlutathione – The body’s grasp antioxidant for detox and liver support','Take 2 capsules daily, one in the morning and one in the evening with water, preferably before meals. Use consistently for at least 60 days to see full benefits','Boosts liver detox and cell repair\r\nSpeeds up metabolism and helps reduce stubborn fat\r\nSupports digestion and reduces bloating\r\nProvides steady energy without crashes\r\nAids in clearer skin and mental clarity\r\nHelps balance blood sugar and cholesterol levels\r\nSupports heart health and inflammation reduction','Manufactured in the USA \r\nMade in an FDA-registered, GMP-certified facility','https://64400jyoxzxjuj0bqbekyy0ir8.hop.clickbank.net','HepatoBurn – Natural Liver Cleanse & Metabolism Booster','HepatoBurn is a science-backed liver help supplement crafted with milk thistle, green tea, berberine, glutathione, and extra to assist detoxify your liver, burn fat, increase energy, and aid liver metabolism.','2025-06-09',9,'$39 to $79'),(6,'Breathe','breathe','produt_images/breathe_9XIk7t0.png','A fast-acting liquid complement made from herbal components to help clear mucus, reduce airway inflammation, and support easy, full breathing.','Breathe is a scientifically crafted liquid tincture designed to decorate lung feature and make breathing easier. Created through Herbal Tea Therapy with enter from respiratory therapist Dr. Elizabeth Moffett, it goals the underlying troubles of respiratory discomfort—like mucus buildup, airway irritation, and inflammation. Breathe™ helps control overactive immune proteins in the lungs, reduces mucus, and opens airways, so you can breathe freely and quite simply again.\r\n\r\nBreathe is designed to support lung health and respiratory strength, specifically for these who choose to regain the easy, energizing breaths of their youth. With its blend of natural ingredients, Breathe helps clear the airways, decrease inflammation, and promote healthy lung function. Whether you’re looking to enhance endurance, breathe less complicated at some stage in day by day activities, or support your lungs towards environmental stressors, Breathe is right here to assist you experience your excellent and breathe freely again.','Mullein Leaf Extract – Soothes airways and helps skinny mucus\r\nPeppermint – Clears nasal passages and eases breathing\r\nManuka Honey – Antimicrobial; soothes throat and chest\r\nLemon Peel – Rich in vitamin C and antioxidants; helps immune feature and mucus clearance\r\nGinger – Reduces infection and promotes respiratory relief','Take 2–3 mL (about 1–3 droppers), 2–3 times daily. Use directly under the tongue or mixed in water/tea. Shake well before each use.','Promotes clearer airways and deeper breathing\r\nReduces cough and phlegm buildup\r\nEases chest congestion and soothes annoyed lungs\r\nHelps with signs and symptoms from colds, allergies, or continual lung irritation\r\nSupports more healthy lung feature and endurance\r\nBoosts immune fitness thanks to herbal antimicrobial and anti-inflammatory elements','Produced in the USA by Herbal Tea Therapy in FDA-registered, GMP-certified facilities under sterile conditions. Uses 100% natural, non-GMO, plant-based ingredients.','https://hop.clickbank.net/?vendor=scalefast&affiliate=kushalner&v=y','Breathe – Natural Lung Support Tincture for Clear, Comfortable Breathing','Breathe is a plant-based liquid tincture with mullein, peppermint, manuka honey, and ginger to support clear airways, ease chest congestion, and promote easier breathing. Try it risk-free with a 90-day guarantee.','2025-06-10',9,'$39 to $69'),(7,'ProDentim','prodentim','produt_images/prodentim.png','A natural probiotic tablet designed to promote healthful gums, strong teeth, clean breath, and normal oral hygiene.','ProDentim™ is a scientifically formulated chewable tablet created to support your oral microbiome—the community of right micro organism that stay in your mouth. Each pill carries 3.5 billion CFUs of probiotic traces alongside with integral minerals and plant-based nutrients. Together, they work to rebalance mouth bacteria, minimize dangerous microbes, enhance enamel, soothe gums, combat terrible breath, and guide normal oral health. It’s made in the U.S. below strict quality standards and is convenient to take—just one pill a day.\r\nProDentim™ provides an easy, gentle way to enhance your oral health—strengthening enamel, soothing gums, and freshening breath—by using beneficial probiotics and natural nutrients.','Lactobacillus paracasei – helps gum fitness and plaque reduction\r\nBifidobacterium lactis BL-04 – fights dangerous micro organism in the mouth\r\nLactobacillus reuteri – reduces gum irritation and freshens breath\r\nInulin – feeds good bacteria\r\nMalic acid – helps whitening and balances pH\r\nTricalcium phosphate – strengthens enamel\r\nPeppermint – gives refreshing style and soothes gums','Chew one pill daily, preferably after brushing or at some point of your normal oral care routine. No water required—just let it dissolve in your mouth. Continue for at least 2–4 months to help lasting oral benefits.','Promotes healthy, balanced oral microbiome\r\nReduces plaque buildup and helps enamel strength\r\nHelps soothe irritated gums and limit inflammation\r\nFreshens breath naturally\r\nMay enhance digestive and general immune health\r\nEasy-to-use chewable with no harsh chemical compounds','Made in the USA in an FDA-registered, GMP-certified facility.','https://158d3iznk7-8tich6jq7xrp927.hop.clickbank.net','ProDentim – Oral Probiotic Chewable for Healthy Gums & Fresh Breath','ProDentim is a chewable probiotic tablet with 3.5 billion CFUs, inulin, malic acid, and peppermint to support gum health, reduce plaque, freshen breath, and promote a balanced oral microbiome.','2025-06-10',10,'$49 to $69'),(8,'Quietum Plus','quietum-plus','produt_images/quietumplus.png','A natural dietary supplement that supports ear health, helps reduce tinnitus (ringing in the ears), sharpens hearing, and supports brain function.','Quietum Plus stands out as one of the most complete herbal dietary supplements for tinnitus and ear health. It goals inflammation, nerve repair, and circulation with natural and nutrient-rich ingredients.\r\n\r\nQuietum  Plus is a plant-based capsule method made to guide your internal ear, auditory nerves, and intelligence connection. It makes use of herbs, minerals, and nutritional vitamins to fight underlying causes of listening to issues—like inflammation, nerve damage, and free radicals. As a result, customers frequently trip clearer hearing, decreased ear ringing, and higher intellectual clarity. It’s made in the USA in excellent services and comes with a 60-day money-back guarantee.','Mucuna Pruriens & Maca Root – Reduce irritation and guide nerve repair\r\nEpimedium & Tribulus Terrestris – Regulate neuro‑inflammation and raise blood flow\r\nDong Quai – Supports ear circulation and Genius health\r\nMuira Puama & Ginger – Powerful antioxidants that assist nerve regeneration\r\nCatuaba Powder & Damiana – Balance ear blood go with the flow and guard ageing nerves\r\nAshwagandha & Piperine – Reduce stress, enhance absorption, and guide mental focus\r\nSarsaparilla, Asparagus, L‑Tyrosine, L‑Arginine, Vitamins A, B, Zinc – Aid detox, preserve nerve health, aid brain function, and immune protection','Take 2 capsules daily with water, ideally with a meal. Results typically appear within 9–12 weeks of consistent use.','Reduces ear ringing (tinnitus)\r\nSupports clearer, sharper hearing\r\nEases irritation in the ear and brain pathways\r\nPromotes nerve fitness and repair\r\nImproves focus, mood, energy, and sleep\r\nSupports herbal earwax stability and immune fitness','Produced by Quietum  Plus in the USA under strict quality control—using high-grade, natural, non-GMO ingredients.','https://bd4c2i9kkzvbnkca9gifuk1e9n.hop.clickbank.net','Quietum Plus – Natural Ear & Tinnitus Support Supplement','Quietum Plus is a herbal ear assist tablet with over 18 herbs and vitamins like Mucuna Pruriens, Dong Quai, Ashwagandha, and nutritional vitamins to assist enhance hearing, reduce ringing, soothe ear inflammation, and assist talent health.','2025-06-10',11,'49$ to 69$'),(9,'Nitric Boost','nitric-boost','produt_images/nitricboost.png','A refreshing daily powder that boosts your blood flow, energy, and sexual performance by naturally increasing nitric oxide levels.','Nitric Boost is designed to help guys maintain strong, long-lasting erections by using improving nitric oxide—the substance your body makes use of to loosen up and widen blood vessels. With simply one scoop daily, it helps higher circulation, greater confidence, and extra persistence in all areas of life. The system combines nitrate-rich beets with sexual health herbs and key amino acids to enhance blood flow, intellectual clarity, and stamina—all without stimulants or capsules','Beet Root Powder – Converts to nitrates that enhance circulation\r\nHorny Goat Weed – Contains icariin to support erectile health\r\nDong Quai – May enhance blood flow\r\nGinkgo Biloba – An antioxidant that helps vessel health\r\nL‑Arginine – A precursor to nitric oxide for vessel relaxation\r\nL‑Citrulline DL‑Malate – Helps preserve nitric oxide and energy\r\nD‑Aspartic Acid – Supports testosterone and sexual drive\r\nNiacin (Vitamin B3) – Aids circulation and erection quality','Mix 1 scoop of powder into water, tea, or a smoothie as soon as per day. You can take it anytime—morning, earlier than a workout, or earlier than intimacy','Promotes stronger, more difficult erections\r\nEnhances stamina and sexual confidence\r\nSupports healthful blood flow during the body\r\nBoosts intellectual readability and focus\r\nMade with natural, plant-based ingredients\r\nNon-stimulant and non-habit forming','Made in the USA in a GMP-certified','https://hop.clickbank.net/?vendor=noboost&pid=17&affiliate=kushalner','Nitric Boost – Natural Powder for Harder Erections & Energy','Nitric Boost is a powerful powder blend with beet, amino acids, and herbs to enhance blood flow, strengthen erections, boost stamina, and support sexual vitality','2025-06-10',11,'49$ to 69$'),(10,'BIODYNAMIX','biodynamix','produt_images/biodynamix.png','BIODYNAMIX Joint Genesis™ provides a unique, hyaluronan-focused answer to joint discomfort. With science-backed ingredients, legal backing from a physician, and high manufacturing standards, it helps smoother, extra satisfied movement.','Joint Genesis™ brings a special strategy to joint care through addressing a key cause of joint brittleness: thinning synovial fluid. As we age, we lose natural joint \"jelly\" (hyaluronan), main to stiff and infected joints. This method combines a patented ingredient to raise hyaluronan manufacturing via ten times, alongside with different nutrient-rich extracts, to rehydrate and cushion your joints. The result? Improved comfort, flexibility, and smoother motion even after age-related put on begins.\r\nA doctor-formulated each day pill that helps thicker, better-lubricated joint fluid, lowering stiffness and enhancing remedy and flexibility.','Mobilee (hyaluronan complex) – Encourages herbal manufacturing of joint-lubricating fluid\r\nFrench Maritime Pine Bark Extract – Supports antioxidant safety and joint support\r\nGinger Root Extract – Reduces irritation and soothes discomfort\r\nBoswellia Serrata – Helps ease joint infection and promote flexibility\r\nBioPerine (black pepper extract) – Enhances absorption of different key substances','Take one capsule per day with water, or as directed by a healthcare provider. Each bottle offers a 30-day supply.','Replenishes natural joint \"jelly\" for smoother, stress-free movement\r\nCushions and nourishes cartilage for long-term joint support\r\nReduces joint stiffness and inflammation\r\nEnhances mobility, flexibility, and energetic life-style longevity\r\nVegan, gluten-free, dairy-free, soy-free, and GMO-free','Formulated by BIODYNAMIX®, co-developed by Dr. Mark Weis, M.D. Manufactured in the USA in FDA-inspected, cGMP-compliant, climate-controlled facilities. Free of gluten, dairy, nuts, soy, egg, GMOs, and BPA.','https://daf8bcvqm3wkmbe7shvoodsr5b.hop.clickbank.net','BIODYNAMIX Joint Genesis – Doctor‑Formulated Joint Support Capsules','Joint Genesis by BIODYNAMIX is a joint support capsule that boosts hyaluronan-rich fluid using Mobilee®, pine bark, ginger, and Boswellia to reduce stiffness and improve mobility with a 180-day guarantee.','2025-06-10',9,'39$ to 59$');
/*!40000 ALTER TABLE `healthapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthapp_useraccount`
--

DROP TABLE IF EXISTS `healthapp_useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthapp_useraccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthapp_useraccount`
--

LOCK TABLES `healthapp_useraccount` WRITE;
/*!40000 ALTER TABLE `healthapp_useraccount` DISABLE KEYS */;
INSERT INTO `healthapp_useraccount` VALUES (1,'Kushal','Ner','Kushal','nerkushal@gmail.com','12345','2025-06-07'),(6,'Dhanashri','Sonawane','Dhanu07','dhanu@gmail.com','12345','2025-06-07'),(7,'Pranali','Ner','Pranali21','pranaliner21@gmail.com','12345','2025-06-08');
/*!40000 ALTER TABLE `healthapp_useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthapp_wishlist`
--

DROP TABLE IF EXISTS `healthapp_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthapp_wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `healthapp_wishlist_user_id_product_id_45ac8a77_uniq` (`user_id`,`product_id`),
  KEY `healthapp_wishlist_product_id_640d3995_fk_healthapp_product_id` (`product_id`),
  CONSTRAINT `healthapp_wishlist_product_id_640d3995_fk_healthapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `healthapp_product` (`id`),
  CONSTRAINT `healthapp_wishlist_user_id_772c5f46_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthapp_wishlist`
--

LOCK TABLES `healthapp_wishlist` WRITE;
/*!40000 ALTER TABLE `healthapp_wishlist` DISABLE KEYS */;
INSERT INTO `healthapp_wishlist` VALUES (21,2,1),(16,3,1),(19,6,1),(23,8,1),(18,3,4);
/*!40000 ALTER TABLE `healthapp_wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-16 15:24:27
