-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: projektadatbazis
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `felhasznalonev` varchar(32) NOT NULL,
  `email` varchar(320) NOT NULL,
  `jelszo` varchar(500) NOT NULL,
  `rang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','Admin@admin.hu','$2b$10$A0TwSpQ7vUIj5Ogztqxr1uRWuotPiv.6pHnUiJYVxVdJEhKIiJwC.','Admin'),(4,'NemTudom','NemTudom@passz.hu','$2b$10$9X9XbsE9/i9U20DUfTZTeOvfLF1cfC.2fVhuVAjgebYippmSOSsaS','Admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asztalfoglalas`
--

DROP TABLE IF EXISTS `asztalfoglalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asztalfoglalas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) NOT NULL,
  `telszam` int(20) NOT NULL,
  `asztal` int(20) NOT NULL,
  `foglalas` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asztalfoglalas`
--

LOCK TABLES `asztalfoglalas` WRITE;
/*!40000 ALTER TABLE `asztalfoglalas` DISABLE KEYS */;
INSERT INTO `asztalfoglalas` VALUES (1,'Kiss Pista',709876543,2,'2022 Apr 29, 04:10'),(2,'Nagy G??za',201234567,5,'2022 Apr 24, 14:22'),(3,'Egresi N??ra',305555555,1,'2022 Jan 2, 16:10');
/*!40000 ALTER TABLE `asztalfoglalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (13,'Gomb??s Pizza','Paradicsomsz??sz, gomba, oreg??n??, sajt',1250,'Sima Pizza','termekek/gombas.jpg'),(14,'Sonk??s Pizza','Paradicsomsz??sz, sonka, sajt',1250,'Sima Pizza','termekek/sonkas.jpg'),(15,'Szal??mis Pizza','Paradicsomsz??sz, Pick szal??mi, sajt',1450,'Sima Pizza','termekek/szalamis.jpg'),(16,'Viharsarok Pizza','Kolb??sszal ??s er??spaprik??val t??lt??tt fekete szez??mmagos perem, paradicsomos er??s alap, kolb??sz, tarja, hagyma, pfefferoni paprika, sajt',2090,'T??lt??tt Perem?? Pizza','termekek/viharsarok.jpg'),(17,'??zbomba Pizza','2-f??le sajttal t??lt??tt szez??mmagos perem, sajtkr??mes alap, sonka, csirkemell, szal??mi, lapkasajt, sajt',2090,'T??lt??tt Perem?? Pizza','termekek/izbomba.jpg'),(18,'Lakt??zmentes Kolb??szos Pizza','lakt??zmentes t??szta, paradicsomsz??sz, kolb??sz, lakt??zmentes sajt',1490,'Lakt??zmentes Pizza','termekek/lkolbaszos.jpg'),(19,'Sajtos Hamburger','Sz??sz, hamburgerh??s, z??lds??gek, sajt',770,'Hamburger','termekek/sajtoshambi.jpg'),(20,'Anan??szos Hamburger','Sz??sz, hamburgerh??s, z??lds??gek, anan??sz, sajt',830,'Hamburger','termekek/ananaszoshambi.jpg'),(21,'XIXO Epres Fekete Tea','250ml',170,'??d??t??','termekek/xixoeper.jpg'),(22,'Coca-Cola','0,5l',370,'??d??t??','termekek/cocacola.jpg'),(23,'Burn Original Energiaital','250ml',390,'Energiaital','termekek/burn.jpg'),(24,' Szent Andr??s Meggyes S??r','1,33l',670,'S??r','termekek/meggyessor.jpg'),(25,'G??sser Natur Zitrone Citromos Alkoholmentes S??r','0,5l',370,'Alkoholmentes S??r','termekek/gosser.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  5:18:16
