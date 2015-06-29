-- MySQL dump 10.13  Distrib 5.6.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cmc_cpm_development
-- ------------------------------------------------------
-- Server version	5.6.24-0ubuntu2

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
-- Table structure for table `cpm_comments`
--

DROP TABLE IF EXISTS `cpm_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `cpm_issue_id` int(11) DEFAULT NULL,
  `cpm_task_id` int(11) DEFAULT NULL,
  `cpm_project_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_comments`
--

LOCK TABLES `cpm_comments` WRITE;
/*!40000 ALTER TABLE `cpm_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_files`
--

DROP TABLE IF EXISTS `cpm_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `cpm_task_id` int(11) DEFAULT NULL,
  `cpm_issue_id` int(11) DEFAULT NULL,
  `cpm_comment_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_files`
--

LOCK TABLES `cpm_files` WRITE;
/*!40000 ALTER TABLE `cpm_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_histories`
--

DROP TABLE IF EXISTS `cpm_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpm_project_id` int(11) DEFAULT NULL,
  `cpm_task_id` int(11) DEFAULT NULL,
  `cpm_issue_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_histories`
--

LOCK TABLES `cpm_histories` WRITE;
/*!40000 ALTER TABLE `cpm_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_issues`
--

DROP TABLE IF EXISTS `cpm_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `cpm_project_id` int(11) DEFAULT NULL,
  `man_hour` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `cpm_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpm_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpm_process_id` int(11) DEFAULT NULL,
  `cpm_priority_id` int(11) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_issues`
--

LOCK TABLES `cpm_issues` WRITE;
/*!40000 ALTER TABLE `cpm_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_priorities`
--

DROP TABLE IF EXISTS `cpm_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_priorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_priorities`
--

LOCK TABLES `cpm_priorities` WRITE;
/*!40000 ALTER TABLE `cpm_priorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_processes`
--

DROP TABLE IF EXISTS `cpm_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_processes`
--

LOCK TABLES `cpm_processes` WRITE;
/*!40000 ALTER TABLE `cpm_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_projects`
--

DROP TABLE IF EXISTS `cpm_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_projects`
--

LOCK TABLES `cpm_projects` WRITE;
/*!40000 ALTER TABLE `cpm_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_projects_users`
--

DROP TABLE IF EXISTS `cpm_projects_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_projects_users` (
  `cpm_project_id` int(11) NOT NULL,
  `cpm_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_projects_users`
--

LOCK TABLES `cpm_projects_users` WRITE;
/*!40000 ALTER TABLE `cpm_projects_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_projects_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_tasks`
--

DROP TABLE IF EXISTS `cpm_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpm_user_id` int(11) DEFAULT NULL,
  `cpm_project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `cpm_process_id` int(11) DEFAULT NULL,
  `cpm_priority_id` int(11) DEFAULT NULL,
  `man_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_tasks`
--

LOCK TABLES `cpm_tasks` WRITE;
/*!40000 ALTER TABLE `cpm_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_teams`
--

DROP TABLE IF EXISTS `cpm_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_teams`
--

LOCK TABLES `cpm_teams` WRITE;
/*!40000 ALTER TABLE `cpm_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpm_users`
--

DROP TABLE IF EXISTS `cpm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pasword_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `your_story` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cpm_team_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpm_users`
--

LOCK TABLES `cpm_users` WRITE;
/*!40000 ALTER TABLE `cpm_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpm_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150625023403'),('20150625023539'),('20150625023547'),('20150625023554'),('20150625023601'),('20150625023614'),('20150625023623'),('20150625023633'),('20150625023649'),('20150625023655'),('20150625023701');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-29 15:12:38
