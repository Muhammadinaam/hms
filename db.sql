CREATE DATABASE  IF NOT EXISTS `hdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hdb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hdb
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ward_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `hourly_charges` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Free',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,1,1,100,'Free','2017-06-13 02:55:18','2017-06-13 03:04:42');
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2017-06-08 22:21:44',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-08 22:22:22',NULL),(2,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-09 22:33:21',NULL),(3,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-09 22:33:41',NULL),(4,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-09 22:34:04',NULL),(5,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-09 22:34:32',NULL),(6,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-09 22:34:45',NULL),(7,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-13 00:37:53',NULL),(8,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/departments/add-save','Add New Data Children at Departments',1,'2017-06-13 00:45:08',NULL),(9,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/doctors/add-save','Add New Data Dr. Ismail Naeem at Doctors',1,'2017-06-13 01:12:06',NULL),(10,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/wards/add-save','Add New Data Medical 3 at Wards',1,'2017-06-13 02:51:00',NULL),(11,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/beds/add-save','Add New Data 1 at Beds',1,'2017-06-13 02:55:18',NULL),(12,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/beds/edit-save/1','Update data  at Beds',1,'2017-06-13 03:04:42',NULL),(13,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/edit-save/2','Update data Doctors at Menu Management',1,'2017-06-13 04:16:37',NULL),(14,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/edit-save/5','Update data Patients at Menu Management',1,'2017-06-13 04:18:18',NULL),(15,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/add-save','Add New Data Test at Patients',1,'2017-06-13 04:20:50',NULL),(16,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/edit-save/1','Update data Test at Patients',1,'2017-06-13 04:21:41',NULL),(17,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/add-save','Add New Data TEst 2 at Patients',1,'2017-06-13 04:49:58',NULL),(18,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-17 03:52:46',NULL),(19,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/add-save','Add New Data 1 at OPD Visits',1,'2017-06-17 10:51:51',NULL),(20,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/add-save','Add New Data 2 at OPD Visits',1,'2017-06-17 12:15:20',NULL),(21,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/delete/2','Delete data 2 at OPD Visits',1,'2017-06-17 12:15:28',NULL),(22,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/delete/1','Delete data 1 at OPD Visits',1,'2017-06-17 12:15:34',NULL),(23,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/action-selected','Delete data 4,3,2,1 at OPD Visits',1,'2017-06-17 12:26:24',NULL),(24,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/delete/2','Delete data TEst 2 at Patients',1,'2017-06-17 14:37:34',NULL),(25,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/delete/1','Delete data Test at Patients',1,'2017-06-17 14:37:39',NULL),(26,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/delete/1','Delete data 1 at OPD Visits',1,'2017-06-17 14:38:07',NULL),(27,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/add-save','Add New Data Test Patient 1 at Patients',1,'2017-06-17 14:38:36',NULL),(28,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/patients/add-save','Add New Data Test Patient 2 at Patients',1,'2017-06-17 14:39:03',NULL),(29,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/add-save','Add New Data print_header at Settings',1,'2017-06-17 14:54:54',NULL),(30,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-18 02:20:42',NULL),(31,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-19 10:05:16',NULL),(32,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-20 00:30:43',NULL),(33,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/add-save','Add New Data print_size at Settings',1,'2017-06-20 00:43:47',NULL),(34,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/edit-save/18','Update data  at Settings',1,'2017-06-20 00:44:46',NULL),(35,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-20 02:53:27',NULL),(36,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-20 02:54:55',NULL),(37,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-20 03:36:50',NULL),(38,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/doctors/edit-save/1','Update data Dr. Ismail Naeem at Doctors',1,'2017-06-20 03:56:34',NULL),(39,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-20 04:34:52',NULL),(40,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-20 04:37:39',NULL),(41,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-20 04:55:14',NULL),(42,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-21 02:43:29',NULL),(43,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/facilities/add-save','Add New Data Panadol Tablet at Facilities',1,'2017-06-21 04:31:05',NULL),(44,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/add-save','Add New Data Setup at Menu Management',1,'2017-06-21 04:35:54',NULL),(45,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/symptoms/add-save','Add New Data Headache at Symptoms',1,'2017-06-21 04:55:26',NULL),(46,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/symptoms/add-save','Add New Data Vomitting at Symptoms',1,'2017-06-21 04:55:35',NULL),(47,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/3','Update data  at OPD Visits',1,'2017-06-21 05:31:27',NULL),(48,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/3','Update data  at OPD Visits',1,'2017-06-21 05:36:25',NULL),(49,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 05:50:10',NULL),(50,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:26:31',NULL),(51,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:27:17',NULL),(52,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:30:53',NULL),(53,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:31:12',NULL),(54,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:32:38',NULL),(55,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:35:17',NULL),(56,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:35:46',NULL),(57,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 06:35:53',NULL),(58,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-21 09:42:08',NULL),(59,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 09:50:04',NULL),(60,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 09:56:46',NULL),(61,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 10:12:52',NULL),(62,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/diagnoses/add-save','Add New Data Acne at Diagnoses',1,'2017-06-21 10:44:04',NULL),(63,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/diagnoses/add-save','Add New Data Asthama at Diagnoses',1,'2017-06-21 10:44:13',NULL),(64,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 10:48:49',NULL),(65,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/facilities/add-save','Add New Data Drip at Facilities',1,'2017-06-21 11:31:03',NULL),(66,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 11:56:03',NULL),(67,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 13:06:46',NULL),(68,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 13:37:25',NULL),(69,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 14:33:30',NULL),(70,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-21 22:08:40',NULL),(71,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/4','Update data  at OPD Visits',1,'2017-06-21 22:12:24',NULL),(72,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/add-save','Add New Data show_symptoms_in_opd_visit at Settings',1,'2017-06-21 22:14:41',NULL),(73,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/add-save','Add New Data show_diagnoses_in_opd_visit at Settings',1,'2017-06-21 22:15:16',NULL),(74,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/add-save','Add New Data Test User at Users',1,'2017-06-21 22:23:51',NULL),(75,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-21 22:24:05',NULL),(76,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','test@crudbooster.com login with IP Address ::1',2,'2017-06-21 22:24:14',NULL),(77,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/delete/2','Delete data Test User at Users',2,'2017-06-21 22:24:52',NULL),(78,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout',' logout',2,'2017-06-21 22:24:56',NULL),(79,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-21 22:25:31',NULL),(80,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/delete/1','Delete data Departments at Menu Management',1,'2017-06-21 22:28:33',NULL),(81,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/add-save','Add New Data Departments at Menu Management',1,'2017-06-21 22:30:20',NULL),(82,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-22 00:11:33',NULL),(83,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-22 03:11:53',NULL),(84,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:21:22',NULL),(85,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 00:22:29',NULL),(86,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:22:38',NULL),(87,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:22:38',NULL),(88,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 00:22:42',NULL),(89,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:22:47',NULL),(90,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 00:26:43',NULL),(91,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:31:47',NULL),(92,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/add-save','Add New Data login_screen_background_colour at Settings',1,'2017-06-24 00:33:30',NULL),(93,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/settings/edit-save/21','Update data  at Settings',1,'2017-06-24 00:34:17',NULL),(94,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 00:53:57',NULL),(95,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 01:07:01',NULL),(96,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 01:10:17',NULL),(97,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 01:11:18',NULL),(98,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 01:14:34',NULL),(99,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 01:26:43',NULL),(100,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 02:27:09',NULL),(101,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 02:29:53',NULL),(102,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 02:32:19',NULL),(103,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 02:32:22',NULL),(104,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 03:26:04',NULL),(105,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-24 04:35:58',NULL),(106,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/edit-save/5','Update data  at OPD Visits',1,'2017-06-24 04:39:06',NULL),(107,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-24 04:39:43',NULL),(108,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout',' logout',NULL,'2017-06-27 23:43:12',NULL),(109,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-28 23:38:24',NULL),(110,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits/delete/5','Delete data 5 at OPD Visits',1,'2017-06-28 23:58:46',NULL),(111,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 00:48:22',NULL),(112,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/add-save','Add New Data test Admin at Users',1,'2017-06-29 01:38:46',NULL),(113,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 01:39:02',NULL),(114,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 01:39:11',NULL),(115,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 01:51:55',NULL),(116,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 01:51:58',NULL),(117,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 01:53:54',NULL),(118,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 01:54:02',NULL),(119,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/delete-image','Try delete the image of test Admin data at Users',2,'2017-06-29 02:01:48',NULL),(120,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 02:02:21',NULL),(121,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 02:02:25',NULL),(122,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout',' logout',NULL,'2017-06-29 02:14:27',NULL),(123,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 02:20:06',NULL),(124,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/1','Update data Super Admin at Users',1,'2017-06-29 02:23:25',NULL),(125,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/1','Update data Super Admina at Users',1,'2017-06-29 02:23:31',NULL),(126,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/1','Update data Super Admin at Users',1,'2017-06-29 02:23:44',NULL),(127,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 02:57:53',NULL),(128,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 02:58:03',NULL),(129,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 02:58:17',NULL),(130,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 02:58:21',NULL),(131,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 02:58:50',NULL),(132,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 02:58:59',NULL),(133,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits','Try view the data :name at OPD Visits',2,'2017-06-29 02:59:03',NULL),(134,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits','Try view the data :name at OPD Visits',2,'2017-06-29 02:59:06',NULL),(135,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/opd_visits','Try view the data :name at OPD Visits',2,'2017-06-29 02:59:10',NULL),(136,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 02:59:37',NULL),(137,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 02:59:41',NULL),(138,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 03:00:45',NULL),(139,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 03:00:53',NULL),(140,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 03:06:41',NULL),(141,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 03:06:45',NULL),(142,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 03:11:10',NULL),(143,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 03:11:18',NULL),(144,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 03:33:44',NULL),(145,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 03:33:47',NULL),(146,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/add-save','Add New Data Reports at Menu Management',1,'2017-06-29 04:21:35',NULL),(147,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/menu_management/edit-save/26','Update data Reports at Menu Management',1,'2017-06-29 04:22:24',NULL),(148,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 06:12:38',NULL),(149,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 06:12:51',NULL),(150,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 06:13:06',NULL),(151,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 06:13:11',NULL),(152,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 06:14:21',NULL),(153,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 06:14:33',NULL),(154,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 06:15:01',NULL),(155,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 06:15:10',NULL),(156,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 06:15:19',NULL),(157,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 06:15:22',NULL),(158,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:16:30',NULL),(159,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 06:16:34',NULL),(160,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 06:17:20',NULL),(161,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:17:38',NULL),(162,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','admin@crudbooster.com logout',1,'2017-06-29 06:17:53',NULL),(163,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','testadmin@gmail.com login with IP Address ::1',2,'2017-06-29 06:18:00',NULL),(164,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/logout','testadmin@gmail.com logout',2,'2017-06-29 06:18:09',NULL),(165,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-06-29 06:18:28',NULL),(166,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:18:37',NULL),(167,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:22:59',NULL),(168,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:23:11',NULL),(169,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://localhost/hms/public/admin/users/edit-save/2','Update data test Admin at Users',1,'2017-06-29 06:23:22',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (12,'Departments','Module','departments','normal','fa fa-home',8,1,0,1,1,'2017-06-21 22:30:20',NULL),(2,'Doctors','Route','AdminDoctorsControllerGetIndex','normal','fa fa-user-md',0,1,0,1,2,'2017-06-13 00:55:39','2017-06-13 04:16:37'),(3,'Wards','Route','AdminWardsControllerGetIndex',NULL,'fa fa-home',8,1,0,1,2,'2017-06-13 01:59:07',NULL),(4,'Beds','Route','AdminBedsControllerGetIndex',NULL,'fa fa-bed',8,1,0,1,3,'2017-06-13 02:47:44',NULL),(5,'Patients','Route','AdminPatientsControllerGetIndex','normal','fa fa-users',0,1,0,1,3,'2017-06-13 04:12:54','2017-06-13 04:18:18'),(6,'OPD Visits','Route','AdminOpdVisitsControllerGetIndex',NULL,'fa fa-align-center',0,1,0,1,4,'2017-06-17 05:26:09',NULL),(7,'Facilities','Route','AdminFacilitiesControllerGetIndex',NULL,'fa fa-dropbox',8,1,0,1,4,'2017-06-21 04:03:59',NULL),(8,'Setup','URL','#','normal','fa fa-database',0,1,0,1,1,'2017-06-21 04:35:54',NULL),(9,'Symptoms','Route','AdminSymptomsControllerGetIndex',NULL,'fa fa-flag',8,1,0,1,5,'2017-06-21 04:47:26',NULL),(10,'Diagnoses','Route','AdminDiagnosesControllerGetIndex',NULL,'fa fa-volume-up',8,1,0,1,6,'2017-06-21 04:48:19',NULL),(26,'Reports','URL','reports/doctor_fee_collection','normal','fa fa-line-chart',0,1,0,1,5,'2017-06-29 04:21:35','2017-06-29 04:22:24'),(37,'Reports','URL','reports/doctor_fee_collection','normal','fa fa-line-chart',0,1,0,2,5,'2017-06-29 04:21:35','2017-06-29 04:22:24'),(36,'Diagnoses','Route','AdminDiagnosesControllerGetIndex',NULL,'fa fa-volume-up',34,1,0,2,6,'2017-06-21 04:48:19',NULL),(35,'Symptoms','Route','AdminSymptomsControllerGetIndex',NULL,'fa fa-flag',34,1,0,2,5,'2017-06-21 04:47:26',NULL),(34,'Setup','URL','#','normal','fa fa-database',0,1,0,2,1,'2017-06-21 04:35:54',NULL),(33,'Facilities','Route','AdminFacilitiesControllerGetIndex',NULL,'fa fa-dropbox',34,1,0,2,4,'2017-06-21 04:03:59',NULL),(32,'OPD Visits','Route','AdminOpdVisitsControllerGetIndex',NULL,'fa fa-align-center',0,1,0,2,4,'2017-06-17 05:26:09',NULL),(31,'Patients','Route','AdminPatientsControllerGetIndex','normal','fa fa-users',0,1,0,2,3,'2017-06-13 04:12:54','2017-06-13 04:18:18'),(30,'Beds','Route','AdminBedsControllerGetIndex',NULL,'fa fa-bed',34,1,0,2,3,'2017-06-13 02:47:44',NULL),(29,'Wards','Route','AdminWardsControllerGetIndex',NULL,'fa fa-home',34,1,0,2,2,'2017-06-13 01:59:07',NULL),(28,'Doctors','Route','AdminDoctorsControllerGetIndex','normal','fa fa-user-md',0,1,0,2,2,'2017-06-13 00:55:39','2017-06-13 04:16:37'),(27,'Departments','Module','departments','normal','fa fa-home',34,1,0,2,1,'2017-06-21 22:30:20',NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,NULL,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2017-06-08 22:21:44',NULL),(2,NULL,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2017-06-08 22:21:44',NULL),(3,NULL,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2017-06-08 22:21:44',NULL),(4,NULL,'Users','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2017-06-08 22:21:44',NULL),(5,NULL,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2017-06-08 22:21:44',NULL),(6,NULL,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2017-06-08 22:21:44',NULL),(7,NULL,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2017-06-08 22:21:44',NULL),(8,NULL,'Email Template','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2017-06-08 22:21:44',NULL),(9,NULL,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2017-06-08 22:21:44',NULL),(10,NULL,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2017-06-08 22:21:44',NULL),(11,NULL,'Logs','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2017-06-08 22:21:44',NULL),(12,'Setup','Departments','fa fa-bed','departments','departments','AdminDepartmentsController',0,0,'2017-06-13 00:43:28',NULL),(13,NULL,'Doctors','fa fa-user-md','doctors','doctors','AdminDoctorsController',0,0,'2017-06-13 00:55:39',NULL),(14,NULL,'Wards','fa fa-home','wards','wards','AdminWardsController',0,0,'2017-06-13 01:59:07',NULL),(15,'Setup','Beds','fa fa-bed','beds','beds','AdminBedsController',0,0,'2017-06-13 02:47:44',NULL),(16,NULL,'Patients','fa fa-users','patients','patients','AdminPatientsController',0,0,'2017-06-13 04:12:54',NULL),(17,NULL,'OPD Visits','fa fa-align-center','opd_visits','opd_visits','AdminOpdVisitsController',0,0,'2017-06-17 05:26:09',NULL),(18,NULL,'Facilities','fa fa-dropbox','facilities','facilities','AdminFacilitiesController',0,0,'2017-06-21 04:03:59',NULL),(19,NULL,'Symptoms','fa fa-flag','symptoms','symptoms','AdminSymptomsController',0,0,'2017-06-21 04:47:26',NULL),(20,NULL,'Diagnoses','fa fa-volume-up','diagnoses','diagnoses','AdminDiagnosesController',0,0,'2017-06-21 04:48:19',NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_other_permissions`
--

DROP TABLE IF EXISTS `cms_other_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_other_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT NULL,
  `permission_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_other_permissions`
--

LOCK TABLES `cms_other_permissions` WRITE;
/*!40000 ALTER TABLE `cms_other_permissions` DISABLE KEYS */;
INSERT INTO `cms_other_permissions` VALUES (1,1,'Settings','OPD Visit Settings',NULL,NULL),(2,2,'Reports','Report 1',NULL,NULL),(3,2,'Reports','Report 2',NULL,NULL);
/*!40000 ALTER TABLE `cms_other_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-red','2017-06-08 22:21:44',NULL),(2,'Admin',0,'skin-blue',NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_other_permissions`
--

DROP TABLE IF EXISTS `cms_privileges_other_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_other_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cms_privilege_id` int(11) NOT NULL,
  `cms_other_permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_other_permissions`
--

LOCK TABLES `cms_privileges_other_permissions` WRITE;
/*!40000 ALTER TABLE `cms_privileges_other_permissions` DISABLE KEYS */;
INSERT INTO `cms_privileges_other_permissions` VALUES (3,1,1,NULL,NULL),(4,1,3,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_other_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (1,1,0,0,0,0,1,1,'2017-06-08 22:21:44',NULL),(2,1,1,1,1,1,1,2,'2017-06-08 22:21:44',NULL),(3,0,1,1,1,1,1,3,'2017-06-08 22:21:44',NULL),(4,1,1,1,1,1,1,4,'2017-06-08 22:21:44',NULL),(5,1,1,1,1,1,1,5,'2017-06-08 22:21:44',NULL),(6,1,1,1,1,1,1,6,'2017-06-08 22:21:44',NULL),(7,1,1,1,1,1,1,7,'2017-06-08 22:21:44',NULL),(8,1,1,1,1,1,1,8,'2017-06-08 22:21:44',NULL),(9,1,1,1,1,1,1,9,'2017-06-08 22:21:44',NULL),(10,1,1,1,1,1,1,10,'2017-06-08 22:21:44',NULL),(11,1,0,1,0,1,1,11,'2017-06-08 22:21:44',NULL),(12,1,1,1,1,1,1,12,NULL,NULL),(13,1,1,1,1,1,1,13,NULL,NULL),(14,1,1,1,1,1,1,14,NULL,NULL),(15,1,1,1,1,1,1,15,NULL,NULL),(16,1,1,1,1,1,1,16,NULL,NULL),(17,1,1,1,1,1,1,17,NULL,NULL),(18,1,1,1,1,1,1,18,NULL,NULL),(19,1,1,1,1,1,1,19,NULL,NULL),(20,1,1,1,1,1,1,20,NULL,NULL),(21,1,1,1,1,1,2,17,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2017-06-08 22:21:44',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2017-06-08 22:21:44',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2017-06-08 22:21:44',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2017-06-08 22:21:44',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2017-06-08 22:21:44',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Email Setting','SMTP Password'),(10,'appname','Maqbool Hospital','text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Application Setting','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2017-06-08 22:21:44',NULL,'Application Setting','Default Paper Print Size'),(12,'logo','uploads/2017-06/2b7281eb8022634d78d1b8d4cbce2abd.png','upload_image',NULL,NULL,'2017-06-08 22:21:44',NULL,'Application Setting','Logo'),(15,'favicon',NULL,'upload_image',NULL,NULL,'2017-06-08 22:21:44',NULL,'Application Setting','Favicon'),(16,'api_debug_mode','true','select','true,false',NULL,'2017-06-08 22:21:44',NULL,'Application Setting','API Debug Mode'),(17,'google_api_key',NULL,'text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Application Setting','Google API Key'),(18,'google_fcm_key',NULL,'text',NULL,NULL,'2017-06-08 22:21:44',NULL,'Application Setting','Google FCM Key'),(19,'header_image','uploads/2017-06/cf13d09d3aa699d2b7bf1bdf74e50e8c.png','upload_image',NULL,NULL,'2017-06-17 14:54:54',NULL,'OPD Visit Settings','Header Image'),(20,'print_size','Detailed','radio','Brief,Detailed',NULL,'2017-06-20 00:43:47','2017-06-20 00:44:46','OPD Visit Settings','Print Size'),(21,'show_symptoms_in_opd_visit','Yes','select','Yes,No',NULL,'2017-06-21 22:14:41',NULL,'OPD Visit Settings','Show Symptoms in OPD Visit'),(22,'show_diagnoses_in_opd_visit','Yes','select','Yes,No',NULL,'2017-06-21 22:15:16',NULL,'OPD Visit Settings','Show Diagnoses in OPD Visit'),(14,'login_screen_background_colour','white','text',NULL,'Use color codes or color name, example: #FF0000 or red. This option will work if Background Image (above) has not been set','2017-06-24 00:33:30','2017-06-24 00:34:17','Application Setting','Login Screen Background Colour'),(13,'login_screen_background_image',NULL,'upload_image',NULL,NULL,'2017-06-24 00:33:30','2017-06-24 00:33:30','Application Setting','Login Screen Background Image');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Super Admin','uploads/2017-06/2initial-feature-explanation.jpeg','admin@crudbooster.com','$2y$10$E2dXzMhha0X0JrZ6AtJfbOrnEjTX4UzJoube/Ch4EgVUWMwwj7Wqy',1,'2017-06-08 22:21:44','2017-06-29 02:23:44','Active'),(2,'test Admin','uploads/2017-06/3feature-multivendor-exp.jpeg','testadmin@gmail.com','$2y$10$CJitaD9YkuyCgzfwpedtduuPiR08PMQR6G3ZNEHyFR1i9AY4CpNcm',2,'2017-06-29 01:38:46','2017-06-29 06:23:22',NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_doctor`
--

DROP TABLE IF EXISTS `department_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_doctor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_doctor`
--

LOCK TABLES `department_doctor` WRITE;
/*!40000 ALTER TABLE `department_doctor` DISABLE KEYS */;
INSERT INTO `department_doctor` VALUES (1,1,1);
/*!40000 ALTER TABLE `department_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Children','Children Children...','2017-06-13 00:45:08',NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnoses`
--

DROP TABLE IF EXISTS `diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnoses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (1,'Acne','2017-06-21 10:44:03',NULL),(2,'Asthama','2017-06-21 10:44:13',NULL);
/*!40000 ALTER TABLE `diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opd_current_token_number` int(11) DEFAULT NULL,
  `opd_fee` int(11) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT NULL,
  `deactivation_reason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Ismail Naeem','MBBS',8,400,1,NULL,'2017-06-13 01:12:06','2017-06-20 03:56:34');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facility_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Panadol Tablet','Product','Tablet',1.00,0.00,'2017-06-21 04:31:05',NULL),(2,'Drip','Product','Bottle',1000.00,1200.00,'2017-06-21 11:31:03',NULL);
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_152014_add_table_cms_privileges',1),(5,'2016_08_07_152214_add_table_cms_privileges_roles',1),(6,'2016_08_07_152320_add_table_cms_settings',1),(7,'2016_08_07_152421_add_table_cms_users',1),(8,'2016_08_07_154624_add_table_cms_moduls',1),(9,'2016_08_17_225409_add_status_cms_users',1),(10,'2016_08_20_125418_add_table_cms_notifications',1),(11,'2016_09_04_033706_add_table_cms_email_queues',1),(12,'2016_09_16_035347_add_group_setting',1),(13,'2016_09_16_045425_add_label_setting',1),(14,'2016_09_17_104728_create_nullable_cms_apicustom',1),(15,'2016_10_01_141740_add_method_type_apicustom',1),(16,'2016_10_01_141846_add_parameters_apicustom',1),(17,'2016_10_01_141934_add_responses_apicustom',1),(18,'2016_10_01_144826_add_table_apikey',1),(19,'2016_11_14_141657_create_cms_menus',1),(20,'2016_11_15_132350_create_cms_email_templates',1),(21,'2016_11_15_190410_create_cms_statistics',1),(22,'2016_11_17_102740_create_cms_statistic_components',1),(23,'2017_06_13_053853_create_table_departments',2),(25,'2017_06_13_054816_create_table_doctors',3),(26,'2017_06_13_060302_create_table_department_doctor',4),(27,'2017_06_13_065447_create_table_wards',5),(28,'2017_06_13_065959_create_table_beds',6),(29,'2017_06_13_090124_create_table_patients',7),(32,'2017_06_17_100756_create_table_opd_visits',8),(34,'2017_06_21_085520_create_table_facilities',9),(35,'2017_06_21_094427_create_table_symptoms',10),(36,'2017_06_21_094447_create_table_diagnoses',10),(38,'2017_06_21_095513_create_table_opd_visit_symptoms',11),(39,'2017_06_21_153635_create_table_opd_visit_diagnoses',12),(42,'2017_06_21_160211_create_table_opd_visit_facilities',13),(45,'2017_06_22_060039_add_table_cms_other_permissions',14),(46,'2017_06_22_060136_add_table_cms_privileges_other_permissions',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_visit_diagnoses`
--

DROP TABLE IF EXISTS `opd_visit_diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opd_visit_diagnoses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `opd_visit_id` bigint(20) unsigned NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_visit_diagnoses`
--

LOCK TABLES `opd_visit_diagnoses` WRITE;
/*!40000 ALTER TABLE `opd_visit_diagnoses` DISABLE KEYS */;
INSERT INTO `opd_visit_diagnoses` VALUES (1,4,1,NULL,NULL);
/*!40000 ALTER TABLE `opd_visit_diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_visit_facilities`
--

DROP TABLE IF EXISTS `opd_visit_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opd_visit_facilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `opd_visit_id` bigint(20) unsigned NOT NULL,
  `facility_id` int(11) NOT NULL,
  `days` int(11) DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` decimal(8,2) NOT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_visit_facilities`
--

LOCK TABLES `opd_visit_facilities` WRITE;
/*!40000 ALTER TABLE `opd_visit_facilities` DISABLE KEYS */;
INSERT INTO `opd_visit_facilities` VALUES (1,4,2,NULL,NULL,1.00,1000.00,1200.00,1200.00,NULL,NULL),(2,5,2,NULL,NULL,4.00,1000.00,1200.00,4800.00,NULL,NULL);
/*!40000 ALTER TABLE `opd_visit_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_visit_symptoms`
--

DROP TABLE IF EXISTS `opd_visit_symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opd_visit_symptoms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `opd_visit_id` bigint(20) unsigned NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_visit_symptoms`
--

LOCK TABLES `opd_visit_symptoms` WRITE;
/*!40000 ALTER TABLE `opd_visit_symptoms` DISABLE KEYS */;
INSERT INTO `opd_visit_symptoms` VALUES (1,4,4,NULL,NULL),(2,4,1,NULL,NULL),(3,4,3,NULL,NULL),(4,4,2,NULL,NULL);
/*!40000 ALTER TABLE `opd_visit_symptoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_visits`
--

DROP TABLE IF EXISTS `opd_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opd_visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `patient_id` bigint(20) unsigned NOT NULL,
  `token_number` int(11) NOT NULL,
  `date_of_visit` datetime NOT NULL,
  `doctor_fee` decimal(8,2) NOT NULL,
  `bp_up` decimal(8,2) DEFAULT NULL,
  `bp_down` decimal(8,2) DEFAULT NULL,
  `temperature` decimal(8,2) DEFAULT NULL,
  `blood_sugar` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `pulse_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_visits`
--

LOCK TABLES `opd_visits` WRITE;
/*!40000 ALTER TABLE `opd_visits` DISABLE KEYS */;
INSERT INTO `opd_visits` VALUES (1,1,1,3,'2017-06-17 19:39:31',400.00,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-17 14:39:31',NULL),(2,1,1,4,'2017-06-19 19:33:05',400.00,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-19 14:33:05',NULL),(3,1,2,5,'2017-06-20 05:40:46',400.00,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-20 00:40:46','2017-06-21 05:36:25'),(4,1,2,6,'2017-06-20 07:38:56',400.00,120.00,80.00,97.00,120.00,70.00,72.00,'2017-06-20 02:38:56','2017-06-21 22:12:24');
/*!40000 ALTER TABLE `opd_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Test Patient 1','a','Male',NULL,'123','123',22,'2017-06-17 14:38:36',NULL),(2,'Test Patient 2','tp2','Male','123123','123','123',12,'2017-06-17 14:39:03',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptoms`
--

LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
INSERT INTO `symptoms` VALUES (1,'Headache','2017-06-21 04:55:26',NULL),(2,'Vomitting','2017-06-21 04:55:35',NULL),(3,'Short Breath',NULL,NULL),(4,'Chest Pain',NULL,NULL);
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards`
--

LOCK TABLES `wards` WRITE;
/*!40000 ALTER TABLE `wards` DISABLE KEYS */;
INSERT INTO `wards` VALUES (1,'Medical 3','asdf','2017-06-13 02:51:00',NULL);
/*!40000 ALTER TABLE `wards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-29 16:26:21
