-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: edtech
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `actus`
--

DROP TABLE IF EXISTS `actus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `img_src` varchar(128) NOT NULL,
  `img_alt` varchar(64) DEFAULT NULL,
  `subtext` varchar(64) DEFAULT NULL,
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actus`
--

LOCK TABLES `actus` WRITE;
/*!40000 ALTER TABLE `actus` DISABLE KEYS */;
/*!40000 ALTER TABLE `actus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_links`
--

DROP TABLE IF EXISTS `external_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(64) NOT NULL,
  `link_to` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_links`
--

LOCK TABLES `external_links` WRITE;
/*!40000 ALTER TABLE `external_links` DISABLE KEYS */;
INSERT INTO `external_links` VALUES (1,'link_helloasso','https://www.helloasso.com/associations/edtech-hauts-de-france'),(2,'link_newsletter','http://eepurl.com/hhJSqj'),(3,'link_facebook','https://www.facebook.com/Edtech.HdF'),(4,'link_linkedIn','https://www.linkedin.com/company/edtech-hauts-de-france/'),(5,'link_twitter','https://twitter.com/edtech_hdf'),(6,'link_map','https://livemap.getwemap.com/embed.html?emmid=15883&iframeid=ed23008b-869a-482f-8f70-21c1041b88ed&parentLocation=https%3A%2F%2Flivemap.getwemap.com%2Fembed.html&parentOrigin=https%3A%2F%2Flivemap.getwemap.com&token=CQW96JV4PEI60Z56A7MBB7G2X#/search@48.8526893,2.3282879,5.00');
/*!40000 ALTER TABLE `external_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(64) NOT NULL,
  `src` varchar(128) NOT NULL,
  `alt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'logo_header','/img/header/logo.png','logo'),(2,'picto_newsletter','/img/navBar/pictogrammes/Picto_Newsletter.png','picto_newsletter'),(3,'picto_facebook','/img/navBar/pictogrammes/Picto_Facebook.png','picto_facebook'),(4,'picto_linkedIn','/img/navBar/pictogrammes/Picto_Linkedin.png','picto_linkedIn'),(5,'picto_twitter','/img/navBar/pictogrammes/Picto_Twitter.png','picto_twitter'),(6,'logo_footer','/img/footer/Logo_EdTech_HdF_Typo.jpeg','picto_footer');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `logo_src` varchar(128) DEFAULT NULL,
  `logo_alt` varchar(64) DEFAULT NULL,
  `link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'tabuleo','/img/members/Tabuleo.png','tabuleo','https://www.tabuleo.com/'),(2,'orientoi','/img/members/Orientoi.jpg','orientoi','https://www.orientoi.fr/'),(3,'wild_code_school','/img/members/WildCodeSchool.png','wildcodeschool','https://www.wildcodeschool.com/fr-FR'),(4,'agence_dad','/img/members/Agencedad.jpg','agencedad','https://www.dad-agence.fr/'),(5,'cantoo_scribe','/img/members/CantooScribe.png','cantooscribe','https://www.cantoo.fr/'),(6,'edhec','/img/members/EDHEC.jpg','edhec','https://www.edhec.edu/fr');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `logo_src` varchar(128) NOT NULL,
  `logo_alt` varchar(64) DEFAULT NULL,
  `link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Bande Ka','/img/partners/BandeKa.png','BandeKa','https://pod.univ-lille.fr/bande-ka/'),(2,'C2RP','/img/partners/C2RP.png','C2RP','https://www.c2rp.fr/'),(3,'EdtechFrance','/img/partners/EdtechFrance.jpg','EdtechFrance','https://edtechfrance.fr/'),(4,'EFAP','/img/partners/EFAP.png','EFAP','https://www.efap.com/'),(5,'Euratechnologies','/img/partners/Euratechnologies.jpg','Euratechnologies','https://www.euratechnologies.com/'),(6,'FrenchtechLille','/img/partners/FrenchtechLille.png','FrenchtechLille','https://ftlille.com/'),(7,'HangarK','/img/partners/HangarK.png','HangarK','https://www.hangark.be/'),(8,'Nordledépartement','/img/partners/NordleDépartement.jpg','Nord','https://lenord.fr/jcms/j_6/accueil'),(9,'PlaineImages','/img/partners/PlaineImages.gif','PlaineImages','https://www.plaine-images.fr/'),(10,'RégionHautsdeFrance','/img/partners/RégionHdF.png','RegionHautsdeFrance','https://www.hautsdefrance.fr/'),(11,'UniversitédeLille','/img/partners/UniversitédeLille.png','UniversitédeLille','https://www.univ-lille.fr/');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_carousel`
--

DROP TABLE IF EXISTS `settings_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_carousel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(64) NOT NULL,
  `value` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_carousel`
--

LOCK TABLES `settings_carousel` WRITE;
/*!40000 ALTER TABLE `settings_carousel` DISABLE KEYS */;
INSERT INTO `settings_carousel` VALUES (1,'slider_duration','1000'),(2,'slider_transitionDuration','500'),(3,'slider_infinite','true'),(4,'carousel_duration','4000'),(5,'items_number','4');
/*!40000 ALTER TABLE `settings_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `img_src` varchar(128) NOT NULL,
  `img_alt` varchar(64) DEFAULT NULL,
  `subtext` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Lorem ipsum','/img/slider/bureau1.jpeg','slide','Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, quaerat necessitatibus voluptatem eos amet qui sit at a magnam nihil ullam numquam labore, accusantium ducimus est quo, debitis dolorum cumque.'),(2,'Lorem ipsum','/img/slider/bureau2.jpeg','slide','Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, quaerat necessitatibus voluptatem eos amet qui sit at a magnam nihil ullam numquam labore, accusantium ducimus est quo, debitis dolorum cumque.'),(3,'Lorem ipsum','/img/slider/bureau3.jpeg','slide','Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, quaerat necessitatibus voluptatem eos amet qui sit at a magnam nihil ullam numquam labore, accusantium ducimus est quo, debitis dolorum cumque.');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texts`
--

DROP TABLE IF EXISTS `texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(64) NOT NULL,
  `fr` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texts`
--

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;
INSERT INTO `texts` VALUES (1,'first_btn','Actualités'),(2,'second_btn','J\'adhère'),(3,'third_btn','Contact'),(4,'first_section','Cartographie des membres'),(5,'second_section','Membres'),(6,'third_section','Partenaires'),(7,'fourth_section','Actualités'),(8,'fifth_section','Contact'),(9,'description_map','Lorem ipsum dolor sit amet consectetur adipis'),(10,'cgu','CGU / Mentions légales'),(11,'date','©️2021'),(12,'first_input','Nom *:'),(13,'second_input','Prénom *:'),(14,'third_input','Société :'),(15,'fourth_input','Numéro de téléphone *:'),(16,'fifth_input','Adresse mail *:'),(17,'sixth_input','Message *:');
/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-06-23 13:39:43
