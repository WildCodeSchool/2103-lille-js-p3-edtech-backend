-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edtech
-- ------------------------------------------------------
-- Server version	8.0.23

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
  `imgSrc` varchar(128) NOT NULL,
  `imgAlt` varchar(64) DEFAULT NULL,
  `link` varchar(128) NOT NULL,
  `content` varchar(255) NOT NULL,
  `dateTime` datetime DEFAULT NULL,
  `isActive` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actus`
--

LOCK TABLES `actus` WRITE;
/*!40000 ALTER TABLE `actus` DISABLE KEYS */;
INSERT INTO `actus` VALUES (1,'actu n°1','https://www.voyageway.com/wp-content/uploads/2020/05/visiter-lille-740x459.jpg','actu1','https://www.voyageway.com/visiter-lille','Lille, surnommée la capitale des Flandres, est une ville idéale pour un week-end de 2 ou 3 jours. De plus, aller visiter Lille est vraiment facile grâce à sa situation géographique, avec un accès facile en train','2021-06-27 10:10:10','true'),(2,'actu n°2','https://www.voyageway.com/wp-content/uploads/2020/05/visiter-lille-740x459.jpg','actu2','https://www.voyageway.com/visiter-lille','Lille, surnommée la capitale des Flandres, est une ville idéale pour un week-end de 2 ou 3 jours. De plus, aller visiter Lille est vraiment facile grâce à sa situation géographique, avec un accès facile en train','2021-06-29 10:30:25','true'),(3,'actu n°3','','actu3','https://www.voyageway.com/visiter-lille','Lille, surnommée la capitale des Flandres, est une ville idéale pour un week-end de 2 ou 3 jours. De plus, aller visiter Lille est vraiment facile grâce à sa situation géographique, avec un accès facile en train','2021-06-29 10:30:25','true'),(4,'actu n°4','https://www.voyageway.com/wp-content/uploads/2020/05/visiter-lille-740x459.jpg','actu5','https://www.voyageway.com/visiter-lille','Lille, surnommée la capitale des Flandres, est une ville idéale pour un week-end de 2 ou 3 jours. De plus, aller visiter Lille est vraiment facile grâce à sa situation géographique, avec un accès facile en train','2021-06-29 10:30:25','false'),(5,'actu n°5','https://www.voyageway.com/wp-content/uploads/2020/05/visiter-lille-740x459.jpg','actu5','https://www.voyageway.com/visiter-lille','Lille, surnommée la capitale des Flandres, est une ville idéale pour un week-end de 2 ou 3 jours. De plus, aller visiter Lille est vraiment facile grâce à sa situation géographique, avec un accès facile en train','2021-06-29 10:30:25','false');
/*!40000 ALTER TABLE `actus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(45) NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_name_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'navbar_text_color','#2c2875'),(2,'navbar_background_color','#FFFFFF'),(3,'header_text_color',NULL),(4,'header_background_color',NULL),(5,'slider_text_color','#FFFFFF'),(6,'slider_background_color','rgba(55, 106, 182, 0.5)'),(7,'map_background_color','#2c2875'),(8,'map_text_color','#FFFFFF'),(9,'map_button_background_color','#e61937'),(10,'map_button_text_color','#FFFFFF'),(11,'members_text_color','#2c2875'),(12,'members_background_color','#FFFFFF'),(13,'partners_text_color','#2c2875'),(14,'partners_background_color','#FFFFFF'),(15,'hdfTwitter_text_color','#FFFFFF'),(16,'hdfTwitter_background_color','#e61937'),(17,'contact_text_color','#FFFFFF'),(18,'contact_background_color','#2c2875'),(19,'footer_text_color','#FFFFFF'),(20,'footer_background_color','#1b175b'),(21,'contact_button_background_color','#e61937'),(22,'contact_button_text_color','#FFFFFF'),(23,'contact_button_background_color_inactive','#2aa11d'),(24,'contact_button_text_color_inactive','#FFFFFF'),(25,'contact_button_background_color_hover','#FF1919'),(26,'newsletter_background_color','#FFFFFF'),(27,'newsletter_text_color','#2c2875'),(28,'newsletter_button_background_color','#e61937'),(29,'newsletter_button_text_color','#FFFFFF'),(30,'actu_background_color','#2c2875'),(31,'actu_link_color','#FFFFFF'),(32,'accordion_background_color','#2c2875'),(33,'accordion_text_color','#FFFFFF'),(34,'contact_background_alert','#e61937'),(35,'contact_background_alert_bar','#FFFFFF'),(36,'contact_text_alert','#FFFFFF');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
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
  `linkTo` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_links`
--

LOCK TABLES `external_links` WRITE;
/*!40000 ALTER TABLE `external_links` DISABLE KEYS */;
INSERT INTO `external_links` VALUES (1,'link_helloasso','http://www.helloasso.com/associations/edtech-hauts-de-france'),(2,'link_newsletter','http://eepurl.com/hhJSqj'),(3,'link_facebook','https://www.facebook.com/Edtech.HdF'),(4,'link_linkedIn','https://www.linkedin.com/company/edtech-hauts-de-france/'),(5,'link_twitter','https://twitter.com/edtech_hdf'),(6,'link_map','https://livemap.getwemap.com/embed.html?emmid=15883&iframeid=ed23008b-869a-482f-8f70-21c1041b88ed&parentLocation=https%3A%2F%2Flivemap.getwemap.com%2Fembed.html&parentOrigin=https%3A%2F%2Flivemap.getwemap.com&token=CQW96JV4PEI60Z56A7MBB7G2X#/search@48.8526893,2.3282879,5.00'),(7,'link_widget','https://platform.twitter.com/widgets.js');
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
  `src` varchar(512) NOT NULL,
  `alt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'logo_header','/img/header/logo.png','logo'),(2,'picto_newsletter','/img/navBar/pictogrammes/Picto_Newsletter.png','picto_newsletter'),(3,'picto_facebook','/img/navBar/pictogrammes/Picto_Facebook.png','picto_facebook'),(4,'picto_linkedIn','/img/navBar/pictogrammes/Picto_Linkedin.png','picto_linkedIn'),(5,'picto_twitter','/img/navBar/pictogrammes/Picto_Twitter.png','picto_twitter'),(6,'logo_footer','/img/footer/Logo_EdTech_HdF_Typo.jpeg','picto_footer'),(7,'img_map','/img/HDFcarte.jpg','image_map'),(8,'header_background_img','https://images.france.fr/zeaejvyq9bhj/dAZLYQVKQoU6a8gUeU0Mi/02f9938c1c421a313d6b238f670d2ab6/article_ImP_Lille-NordFrance_1120x490.jpg?w=1120&h=490&q=70&fm=webp&fit=fill','background_img');
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
  `logoSrc` varchar(128) DEFAULT NULL,
  `logoAlt` varchar(64) DEFAULT NULL,
  `link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'tabuleo','/img/members/Tabuleo.png','tabuleo','https://www.tabuleo.com/'),(2,'orientoi','/img/members/Orientoi.jpg','orientoi','https://www.orientoi.fr/'),(3,'wild_code_school','/img/members/WildCodeSchool.png','wildcodeschool','https://www.wildcodeschool.com/fr-FR'),(4,'agence_dad','/img/members/Agencedad.jpg','agencedad','https://www.dad-agence.fr/'),(5,'cantoo_scribe','/img/members/CantooScribe.png','cantooscribe','https://www.cantoo.fr/'),(6,'edhec','/img/members/EDHEC.jpg','edhec','https://www.edhec.edu/fr'),(8,'babaoo','/img/members/Babaoo.png','Babaoo',NULL),(9,'be_smart','/img/members/BeSMART-edu.png','BeSmart',NULL),(10,'corneille','/img/members/Corneille.png','Corneille',NULL),(11,'edukeasy','/img/members/edukeasy.png','edukeasy',NULL),(12,'gowizyou','/img/members/GoWizYou.png','GoWizYou',NULL),(13,'ID6','/img/members/ID6.png','ID6',NULL),(14,'junia','/img/members/Junia.png','Junia',NULL),(15,'KOoOl','/img/members/KOoOl.png','KOoOl',NULL),(16,'Kwartz','/img/members/Kwartz.png','Kwartz',NULL),(17,'Neuronys','/img/members/Neuronys.png','Neuronys',NULL),(18,'Niryo','/img/members/Niryo.png','Niryo',NULL),(19,'Popschool','/img/members/Popschool.png','Popschool',NULL),(20,'Skema','/img/members/Skema.png','Skema',NULL),(21,'Skill_you','/img/members/Skill_You.png','Skill_You',NULL),(22,'Trézorium','/img/members/Trézorium.png','Trézorium',NULL),(23,'Whispeak','/img/members/Whispeak.png','Whispeak',NULL),(24,'Wooclap','/img/members/Wooclap.png','Wooclap',NULL);
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
  `logoSrc` varchar(128) NOT NULL,
  `logoAlt` varchar(64) DEFAULT NULL,
  `link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
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
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `place` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `place_UNIQUE` (`place`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Header',1),(2,'NavBar',2),(3,'Slider',3),(4,'HdfMap',4),(5,'Members',5),(6,'Partners',6),(7,'HdfTwitter',7),(8,'ContactForm',8),(9,'Footer',10),(11,'Newsletter',9);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_carousel`
--

LOCK TABLES `settings_carousel` WRITE;
/*!40000 ALTER TABLE `settings_carousel` DISABLE KEYS */;
INSERT INTO `settings_carousel` VALUES (1,'slider_duration','3500'),(2,'slider_transitionDuration','500'),(3,'slider_infinite','true'),(4,'carousel_duration','4000'),(5,'items_number','4');
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
  `title` varchar(128) NOT NULL,
  `imgSrc` varchar(128) NOT NULL,
  `imgAlt` varchar(64) DEFAULT NULL,
  `subtext` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Mettre la technologie au service de l’éducation et de la formation.','/img/slider/school.jpg','school','L’association EdTech France fédère les entrepreneurs français qui ont décidé de rendre la technologie et l’innovation utiles à l’éducation, à l’enseignement supérieur et à la formation tout au long de la vie.'),(2,'Repenser les apprentissages à l’ère du numérique.','/img/slider/students.jpg','slide','L’association EdTech France rassemble tous ceux qui pensent que la technologie peut aider à répondre aux nouveaux défis du paysage numérique, au service des apprenants et des formateurs.'),(3,'Développer les compétences tout au long de la vie.','/img/slider/presentation.jpg','slide','L’association EdTEch France rapprochent entreprises innovantes, organismes de formation et acteurs institutionnels pour promouvoir l’usage du numérique au service du développement des compétences.');
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
  `fr` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texts`
--

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;
INSERT INTO `texts` VALUES (1,'first_btn','Actualités'),(2,'second_btn','J\'adhère'),(3,'third_btn','Contact'),(4,'first_section','Cartographie des membres'),(5,'second_section','Membres'),(6,'third_section','Partenaires'),(7,'fourth_section','Actualités'),(8,'fifth_section','Contact'),(9,'description_map','Consultez la cartographie de nos membres'),(10,'cgu','CGU / Mentions légales'),(11,'date','©️2021'),(12,'first_input','Prénom *:'),(13,'second_input','Nom*:'),(14,'third_input','Structure :'),(15,'fourth_input','Numéro de téléphone :'),(16,'fifth_input','Adresse mail *:'),(17,'sixth_input','Message *:'),(19,'requirable_first_input','obligatoire'),(20,'requirable_second_input','obligatoire'),(21,'requirable_third_input','non obligatoire'),(28,'requirable_fourth_input','non obligatoire'),(29,'requirable_fifth_input','obligatoire'),(30,'requirable_sixth_input','obligatoire'),(31,'contact_catchPhrase','N\'hésitez pas à nous contacter si vous souhaitez plus d\'informations... '),(32,'edtechhdf_title','Edtech Hauts-de-France'),(33,'edtech_adress','165 Avenue de Bretagne'),(34,'edtech_city','59000 Lille'),(35,'adress_field1',''),(36,'adress_field2',''),(37,'adress_field3',''),(38,'adress_field4',''),(39,'isImgMapFirst','false'),(40,'btn_map','Lien vers la carte'),(54,'RGPD','J\'accepte de partager mes informations à l\'association edTech HdF.'),(55,'contact_messageSent','Message envoyé !'),(56,'contact_sendMessage','Envoyer'),(57,'sixth_section','Newsletter'),(58,'description_newsletter','Abonnez-vous à notre newsletter !'),(59,'btn_newsletter','Je m\'inscris !'),(60,'fourth_btn','Présentation');
/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (34,'FORTRY','GEORGES','gfortry@hotmail.com','$2b$08$asyGwpGso9HifA7pLYvfTOr6qt7TnYrG3WgAWkGZ6U95PFysllHc2');
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

-- Dump completed on 2021-07-23 14:16:46
