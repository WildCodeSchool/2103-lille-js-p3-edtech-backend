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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texts`
--

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;
INSERT INTO `texts` VALUES (1,'first_btn','Actualités'),(2,'second_btn','J\'adhère'),(3,'third_btn','Contact'),(4,'first_section','Cartographie des membres'),(5,'second_section','Membres'),(6,'third_section','Partenaires'),(7,'fourth_section','Actualités'),(8,'fifth_section','Contact'),(9,'description_map','Lorem ipsum dolor sit amet consectetur adipis'),(10,'cgu','CGU / Mentions légales'),(11,'date','©️2021'),(12,'first_input','Prénom *:'),(13,'second_input','Nom*:'),(14,'third_input','Structure :'),(15,'fourth_input','Numéro de téléphone :'),(16,'fifth_input','Adresse mail *:'),(17,'sixth_input','Message *:'),(19,'requirable_first_input','obligatoire'),(20,'requirable_second_input','obligatoire'),(21,'requirable_third_input','non obligatoire'),(28,'requirable_fourth_input','non obligatoire'),(29,'requirable_fifth_input','obligatoire'),(30,'requirable_sixth_input','obligatoire'),(31,'contact_catchPhrase','Lorem, ipsum dolor sit amet consectetur...'),(32,'edtechhdf_title','Edtech Hauts-de-France'),(33,'edtech_adress','165 Avenue de Bretagne'),(34,'edtech_city','59000 Lille'),(35,'adress_field1',''),(36,'adress_field2',''),(37,'adress_field3',''),(38,'adress_field4',''),(39,'isImgMapFirst','false'),(40,'btn_map','Lien vers la carte'),(54,'RGPD','J\'accepte de partager mes informations à l\'as'),(55,'contact_messageSent','Message envoyé !'),(56,'contact_sendMessage','Envoyer'),(57,'sixth_section','Newsletter'),(58,'description_newsletter','Abonnez-vous à notre newsletter !'),(59,'btn_newsletter','Je m\'inscris !'),(60,'fourth_btn','Présentation');
/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15  9:54:24
