-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: file_manager
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `createdAt` bigint(13) DEFAULT NULL,
  `updatedAt` bigint(13) DEFAULT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `userId` int(10) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'exemplo.csv','static/admin/elder/exemplo.csv',1556892644,1556892644,NULL,1,31,NULL),(2,'pp.jpeg','static/admin/elder/pp.jpeg',1556900581,1556900581,NULL,1,17931,NULL),(9,'pp.jpeg','/igor/pp.jpeg',1556906116,1556906116,'jpeg',21,17931,'image/jpeg'),(10,'banner.png','/igor/banner.png',1556906719,1556906719,'png',21,177749,'image/png'),(11,'Hapvida - Comprovante Consulta.pdf','/igor/Hapvida - Comprovante Consulta.pdf',1556908760,1556908760,'pdf',21,69899,'application/pdf'),(13,'icomoon.zip','/igor/icomoon.zip',1556911666,1556911666,'zip',21,2088454,'application/zip'),(14,'demo.css','/igor/demo.css',1556912258,1556912258,'css',21,1996,'text/css'),(15,'Captura de tela de 2018-11-27 15-49-56.png','/igor/Captura de tela de 2018-11-27 15-49-56.png',1556913309,1556913309,'png',21,362169,'image/png'),(16,'Captura de tela de 2018-10-09 18-38-11.png','/igor/Captura de tela de 2018-10-09 18-38-11.png',1556913325,1556913325,'png',21,291964,'image/png'),(17,'Captura de tela de 2018-10-09 16-27-51.png','/igor/Captura de tela de 2018-10-09 16-27-51.png',1556913334,1556913334,'png',21,1159976,'image/png'),(18,'Captura de tela de 2018-10-10 12-53-24.png','/igor/Captura de tela de 2018-10-10 12-53-24.png',1556914076,1556914076,'png',21,300781,'image/png'),(19,'Captura de tela de 2018-11-29 12-55-32.png','/igor/Captura de tela de 2018-11-29 12-55-32.png',1558015936,1558015936,'png',21,233612,'image/png'),(20,'grub-2.02-for-windows.zip','/igor/grub-2.02-for-windows.zip',1558015972,1558015972,'zip',21,11750182,'application/zip');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Usuário');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(120) DEFAULT NULL,
  `role` int(1) DEFAULT NULL,
  `folder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Elder Amaral de Carvalho','eld.carv@gmail.com','$2a$10$aPc9dbr0r.ifa9nxBfXxaOBk6ItTR0Yf5t/./sdofYYoBkHoXDoB6',1,'/elder'),(18,'Vinichan','vini@gmail.com','$2a$10$m6ZMvzZ4c59kGMHST2.x0exDhHG1EcC0m4697FR2uYWa2MVwclHm2',2,'/vinichan'),(19,'Marcos','marcos@gmail.com','$2a$10$ncgfJBqE6/GeWrpkljBxYejSQ7xrmR08JYh1idm0KkZt4uITl.3C.',2,'/marcos'),(20,'Victor','victor@gmail.com','$2a$10$RWqt7soAGTuqpIXO17J8rujS08pNGnhEOSbZ2gYbodZtKz8XtL3vy',2,'/victor'),(21,'Igor Sarmento Guerra','igor@gmail.com','$2a$10$0FWtR9lwwzAZtIcRPkSn8OxvmiLjWfFXbvLK75NyDddKccx/H8QkS',2,'/igor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31 18:47:23
