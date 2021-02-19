-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pokedex
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `ataque_pokemon`
--

DROP TABLE IF EXISTS `ataque_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ataque_pokemon` (
  `id_ataque_pokemon` int NOT NULL,
  `id_ataque` int NOT NULL,
  `id_pokemon` int NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_ataque_pokemon`),
  UNIQUE KEY `id_ataque_pokemon_UNIQUE` (`id_ataque_pokemon`),
  KEY `fk_ataque_idx` (`id_ataque`),
  KEY `fk_pokemon_idx` (`id_pokemon`),
  CONSTRAINT `fk_ataque` FOREIGN KEY (`id_ataque`) REFERENCES `tb_ataque` (`id_ataque`),
  CONSTRAINT `fk_pokemon_ataque` FOREIGN KEY (`id_pokemon`) REFERENCES `tb_pokemon` (`id_pokemon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataque_pokemon`
--

LOCK TABLES `ataque_pokemon` WRITE;
/*!40000 ALTER TABLE `ataque_pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataque_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension_pokemon`
--

DROP TABLE IF EXISTS `dimension_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimension_pokemon` (
  `id_dimension_pokemon` int NOT NULL,
  `id_pokemon` int NOT NULL,
  `id_dimension` int NOT NULL,
  `minimo` decimal(2,0) DEFAULT NULL,
  `maximo` decimal(2,0) DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_dimension_pokemon`),
  UNIQUE KEY `id_dimension_pokemon_UNIQUE` (`id_dimension_pokemon`),
  KEY `fk_pokemon_idx` (`id_pokemon`),
  KEY `fk_dimension_idx` (`id_dimension`),
  CONSTRAINT `fk_dimension` FOREIGN KEY (`id_dimension`) REFERENCES `tb_dimension` (`id_dimension`),
  CONSTRAINT `fk_pokemon` FOREIGN KEY (`id_pokemon`) REFERENCES `tb_pokemon` (`id_pokemon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension_pokemon`
--

LOCK TABLES `dimension_pokemon` WRITE;
/*!40000 ALTER TABLE `dimension_pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimension_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon_tipo_modo`
--

DROP TABLE IF EXISTS `pokemon_tipo_modo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_tipo_modo` (
  `id_pokemon_tipo_modo` int NOT NULL,
  `id_pokemon` int NOT NULL,
  `id_tipo` int NOT NULL,
  `id_modo` int NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pokemon_tipo_modo`),
  UNIQUE KEY `id_pokemon_tipo_modo_UNIQUE` (`id_pokemon_tipo_modo`),
  KEY `fk_pokemon_tb_pokemon_idx` (`id_pokemon`),
  KEY `fk_tipo_tb_tipo_idx` (`id_tipo`),
  KEY `fk_modo_idx` (`id_modo`),
  CONSTRAINT `fk_modo` FOREIGN KEY (`id_modo`) REFERENCES `tb_modo` (`id_modo`),
  CONSTRAINT `fk_pokemon_tb_pokemon` FOREIGN KEY (`id_pokemon`) REFERENCES `tb_pokemon` (`id_pokemon`),
  CONSTRAINT `fk_tipo_tb_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_tipo_modo`
--

LOCK TABLES `pokemon_tipo_modo` WRITE;
/*!40000 ALTER TABLE `pokemon_tipo_modo` DISABLE KEYS */;
INSERT INTO `pokemon_tipo_modo` VALUES (1,1,1,1,1),(2,1,2,1,1),(3,1,5,2,1),(4,1,8,2,1),(5,1,1,2,1),(6,1,10,2,1),(7,1,3,3,1),(8,1,15,3,1),(9,1,4,3,1),(10,1,12,3,1),(11,2,1,1,1),(12,2,2,1,1),(13,2,5,2,1),(14,2,8,2,1),(15,2,1,2,1),(16,2,10,2,1),(17,2,3,3,1),(18,2,15,3,1),(19,2,4,3,1),(20,2,12,3,1),(21,3,1,1,1),(22,3,2,1,1),(23,3,5,2,1),(24,3,8,2,1),(25,3,1,2,1),(26,3,10,2,1),(27,3,3,3,1),(28,3,15,3,1),(29,3,4,3,1),(30,3,12,3,1),(31,4,3,1,1),(32,4,3,2,1),(33,4,1,2,1),(34,4,4,2,1),(35,4,6,2,1),(36,4,14,2,1),(37,4,10,2,1),(38,4,5,3,1),(39,4,9,3,1),(40,4,13,3,1),(41,5,3,1,1),(42,5,3,2,1),(43,5,1,2,1),(44,5,4,2,1),(45,5,6,2,1),(46,5,14,2,1),(47,5,10,2,1),(48,5,5,3,1),(49,5,9,3,1),(50,5,13,3,1),(51,6,3,1,1),(52,6,3,2,1),(53,6,1,2,1),(54,6,4,2,1),(55,6,6,2,1),(56,6,14,2,1),(57,6,10,2,1),(58,6,5,3,1),(59,6,9,3,1),(60,6,13,3,1),(61,7,5,1,1),(62,7,3,2,1),(63,7,5,2,1),(64,7,15,2,1),(65,7,14,2,1),(66,7,8,3,1),(67,7,1,3,1),(68,8,5,1,1),(69,8,3,2,1),(70,8,5,2,1),(71,8,15,2,1),(72,8,14,2,1),(73,8,8,3,1),(74,8,1,3,1),(75,9,5,1,1),(76,9,3,2,1),(77,9,5,2,1),(78,9,15,2,1),(79,9,14,2,1),(80,9,8,3,1),(81,9,1,3,1),(82,10,6,1,1),(83,10,1,2,1),(84,10,11,2,1),(85,10,9,2,1),(86,10,3,3,1),(87,10,4,3,1),(88,10,13,3,1),(89,11,6,1,1),(90,11,1,2,1),(91,11,11,2,1),(92,11,9,2,1),(93,11,3,3,1),(94,11,4,3,1),(95,11,13,3,1),(96,12,6,1,1),(97,12,4,1,1),(98,12,1,2,1),(99,12,11,2,1),(100,12,9,2,1),(101,12,6,2,1),(102,12,3,3,1),(103,12,8,3,1),(104,12,15,3,1),(105,12,4,3,1),(106,12,13,3,1),(107,13,6,1,1),(108,13,2,1,1),(109,13,1,2,1),(110,13,11,2,1),(111,13,2,2,1),(112,13,6,2,1),(113,13,10,2,1),(114,13,3,3,1),(115,13,4,3,1),(116,13,12,3,1),(117,13,13,3,1),(118,14,6,1,1),(119,14,2,1,1),(120,14,1,2,1),(121,14,11,2,1),(122,14,2,2,1),(123,14,6,2,1),(124,14,10,2,1),(125,14,3,3,1),(126,14,4,3,1),(127,14,12,3,1),(128,14,13,3,1),(129,15,6,1,1),(130,15,2,1,1),(131,15,1,2,1),(132,15,11,2,1),(133,15,2,2,1),(134,15,6,2,1),(135,15,10,2,1),(136,15,3,3,1),(137,15,4,3,1),(138,15,12,3,1),(139,15,13,3,1),(140,16,7,1,1),(141,16,4,1,1),(142,16,1,2,1),(143,16,9,2,1),(144,16,6,2,1),(145,16,16,2,1),(146,16,8,3,1),(147,16,15,3,1),(148,16,13,3,1),(149,17,7,1,1),(150,17,4,1,1),(151,17,1,2,1),(152,17,9,2,1),(153,17,6,2,1),(154,17,16,2,1),(155,17,8,3,1),(156,17,15,3,1),(157,17,13,3,1),(158,18,7,1,1),(159,18,4,1,1),(160,18,1,2,1),(161,18,9,2,1),(162,18,6,2,1),(163,18,16,2,1),(164,18,8,3,1),(165,18,15,3,1),(166,18,13,3,1),(167,19,7,1,1),(168,19,16,2,1),(169,19,11,3,1),(170,20,7,1,1),(171,20,16,2,1),(172,20,11,3,1),(173,21,7,1,1),(174,21,4,1,1),(175,21,1,2,1),(176,21,9,2,1),(177,21,6,2,1),(178,21,16,2,1),(179,21,8,3,1),(180,21,15,3,1),(181,21,13,3,1),(182,22,7,1,1),(183,22,4,1,1),(184,22,1,2,1),(185,22,9,2,1),(186,22,6,2,1),(187,22,16,2,1),(188,22,8,3,1),(189,22,15,3,1),(190,22,13,3,1),(191,23,2,1,1),(192,23,1,2,1),(193,23,11,2,1),(194,23,2,2,1),(195,23,6,2,1),(196,23,10,2,1),(197,23,9,3,1),(198,23,12,3,1),(199,24,2,1,1),(200,24,1,2,1),(201,24,11,2,1),(202,24,2,2,1),(203,24,6,2,1),(204,24,10,2,1),(205,24,9,3,1),(206,24,12,3,1),(207,25,8,1,1),(208,25,8,2,1),(209,25,4,2,1),(210,25,14,2,1),(211,25,9,3,1),(212,26,8,1,1),(213,26,8,2,1),(214,26,4,2,1),(215,26,14,2,1),(216,26,9,3,1),(217,27,9,1,1),(218,27,8,2,1),(219,27,2,2,1),(220,27,13,2,1),(221,27,5,3,1),(222,27,1,3,1),(223,27,15,3,1),(224,28,9,1,1),(225,28,8,2,1),(226,28,2,2,1),(227,28,13,2,1),(228,28,5,3,1),(229,28,1,3,1),(230,28,15,3,1),(231,29,2,1,1),(232,29,1,2,1),(233,29,11,2,1),(234,29,2,2,1),(235,29,6,2,1),(236,29,10,2,1),(237,29,9,3,1),(238,29,12,3,1),(239,30,2,1,1),(240,30,1,2,1),(241,30,11,2,1),(242,30,2,2,1),(243,30,6,2,1),(244,30,10,2,1),(245,30,9,3,1),(246,30,12,3,1),(247,31,2,1,1),(248,31,9,1,1),(249,31,8,2,1),(250,31,11,2,1),(251,31,2,2,1),(252,31,6,2,1),(253,31,13,2,1),(254,31,10,2,1),(255,31,5,3,1),(256,31,15,3,1),(257,31,9,3,1),(258,31,12,3,1),(259,32,2,1,1),(260,32,1,2,1),(261,32,11,2,1),(262,32,2,2,1),(263,32,6,2,1),(264,32,10,2,1),(265,32,9,3,1),(266,32,12,3,1),(267,33,2,1,1),(268,33,1,2,1),(269,33,11,2,1),(270,33,2,2,1),(271,33,6,2,1),(272,33,10,2,1),(273,33,9,3,1),(274,33,12,3,1),(275,34,2,1,1),(276,34,9,1,1),(277,34,8,2,1),(278,34,11,2,1),(279,34,2,2,1),(280,34,6,2,1),(281,34,13,2,1),(282,34,10,2,1),(283,34,5,3,1),(284,34,15,3,1),(285,34,9,3,1),(286,34,12,3,1),(287,35,10,1,1),(288,35,11,2,1),(289,35,6,2,1),(290,35,17,2,1),(291,35,18,2,1),(292,35,2,3,1),(293,35,14,3,1),(294,36,10,1,1),(295,36,11,2,1),(296,36,6,2,1),(297,36,17,2,1),(298,36,18,2,1),(299,36,2,3,1),(300,36,14,3,1),(301,37,3,1,1),(302,37,3,2,1),(303,37,1,2,1),(304,37,15,2,1),(305,37,6,2,1),(306,37,14,2,1),(307,37,10,2,1),(308,37,5,3,1),(309,37,9,3,1),(310,37,13,3,1),(311,38,3,1,1),(312,38,3,2,1),(313,38,1,2,1),(314,38,15,2,1),(315,38,6,2,1),(316,38,14,2,1),(317,38,10,2,1),(318,38,5,3,1),(319,38,9,3,1),(320,38,13,3,1),(321,39,7,1,1),(322,39,10,1,1),(323,39,6,2,1),(324,39,16,2,1),(325,39,17,2,1),(326,39,18,2,1),(327,39,2,3,1),(328,39,14,3,1),(329,40,7,1,1),(330,40,10,1,1),(331,40,6,2,1),(332,40,16,2,1),(333,40,17,2,1),(334,40,18,2,1),(335,40,2,3,1),(336,40,14,3,1),(337,41,2,1,1),(338,41,4,1,1),(339,41,1,2,1),(340,41,11,2,1),(341,41,2,2,1),(342,41,6,2,1),(343,41,10,2,1),(344,41,8,3,1),(345,41,15,3,1),(346,41,12,3,1),(347,41,13,3,1),(348,42,2,1,1),(349,42,4,1,1),(350,42,1,2,1),(351,42,11,2,1),(352,42,2,2,1),(353,42,6,2,1),(354,42,10,2,1),(355,42,8,3,1),(356,42,15,3,1),(357,42,12,3,1),(358,42,13,3,1),(359,43,1,1,1),(360,43,2,1,1),(361,43,5,2,1),(362,43,8,2,1),(363,43,1,2,1),(364,43,11,2,1),(365,43,10,2,1),(366,43,3,3,1),(367,43,15,3,1),(368,43,4,3,1),(369,43,12,3,1),(370,44,1,1,1),(371,44,2,1,1),(372,44,5,2,1),(373,44,8,2,1),(374,44,1,2,1),(375,44,11,2,1),(376,44,10,2,1),(377,44,3,3,1),(378,44,15,3,1),(379,44,4,3,1),(380,44,12,3,1),(381,45,1,1,1),(382,45,2,1,1),(383,45,5,2,1),(384,45,8,2,1),(385,45,1,2,1),(386,45,11,2,1),(387,45,10,2,1),(388,45,3,3,1),(389,45,15,3,1),(390,45,4,3,1),(391,45,12,3,1),(392,46,6,1,1),(393,46,1,1,1),(394,46,5,2,1),(395,46,8,2,1),(396,46,1,2,1),(397,46,11,2,1),(398,46,9,2,1),(399,46,3,3,1),(400,46,15,3,1),(401,46,2,3,1),(402,46,4,3,1),(403,46,6,3,1),(404,46,13,3,1),(405,47,6,1,1),(406,47,1,1,1),(407,47,5,2,1),(408,47,8,2,1),(409,47,1,2,1),(410,47,11,2,1),(411,47,9,2,1),(412,47,3,3,1),(413,47,15,3,1),(414,47,2,3,1),(415,47,4,3,1),(416,47,6,3,1),(417,47,13,3,1),(418,48,6,1,1),(419,48,2,1,1),(420,48,1,2,1),(421,48,11,2,1),(422,48,2,2,1),(423,48,6,2,1),(424,48,10,2,1),(425,48,3,3,1),(426,48,4,3,1),(427,48,12,3,1),(428,48,13,3,1),(429,49,6,1,1),(430,49,2,1,1),(431,49,1,2,1),(432,49,11,2,1),(433,49,2,2,1),(434,49,6,2,1),(435,49,10,2,1),(436,49,3,3,1),(437,49,4,3,1),(438,49,12,3,1),(439,49,13,3,1),(440,50,9,1,1),(441,50,8,2,1),(442,50,2,2,1),(443,50,13,2,1),(444,50,5,3,1),(445,50,1,3,1),(446,50,15,3,1),(447,51,9,1,1),(448,51,8,2,1),(449,51,2,2,1),(450,51,13,2,1),(451,51,5,3,1),(452,51,1,3,1),(453,51,15,3,1),(454,52,7,1,1),(455,52,16,2,1),(456,52,11,3,1),(457,53,7,1,1),(458,53,16,2,1),(459,53,11,3,1),(460,54,5,1,1),(461,54,3,2,1),(462,54,5,2,1),(463,54,15,2,1),(464,54,14,2,1),(465,54,8,3,1),(466,54,1,3,1),(467,55,5,1,1),(468,55,3,2,1),(469,55,5,2,1),(470,55,15,2,1),(471,55,14,2,1),(472,55,8,3,1),(473,55,1,3,1),(474,56,11,1,1),(475,56,6,2,1),(476,56,13,2,1),(477,56,18,2,1),(478,56,4,3,1),(479,56,12,3,1),(480,56,10,3,1),(481,57,11,1,1),(482,57,6,2,1),(483,57,13,2,1),(484,57,18,2,1),(485,57,4,3,1),(486,57,12,3,1),(487,57,10,3,1),(488,58,3,1,1),(489,58,3,2,1),(490,58,1,2,1),(491,58,15,2,1),(492,58,6,2,1),(493,58,14,2,1),(494,58,10,2,1),(495,58,5,3,1),(496,58,9,3,1),(497,58,13,3,1),(498,59,3,1,1),(499,59,3,2,1),(500,59,1,2,1),(501,59,15,2,1),(502,59,6,2,1),(503,59,14,2,1),(504,59,10,2,1),(505,59,5,3,1),(506,59,9,3,1),(507,59,13,3,1),(508,60,5,1,1),(509,60,3,2,1),(510,60,5,2,1),(511,60,15,2,1),(512,60,14,2,1),(513,60,8,3,1),(514,60,1,3,1),(515,61,5,1,1),(516,61,3,2,1),(517,61,5,2,1),(518,61,15,2,1),(519,61,14,2,1),(520,61,8,3,1),(521,61,1,3,1),(522,62,5,1,1),(523,62,11,1,1),(524,62,3,2,1),(525,62,5,2,1),(526,62,15,2,1),(527,62,6,2,1),(528,62,13,2,1),(529,62,18,2,1),(530,62,14,2,1),(531,62,8,3,1),(532,62,1,3,1),(533,62,4,3,1),(534,62,12,3,1),(535,62,10,3,1),(536,63,12,1,1),(537,63,11,2,1),(538,63,12,2,1),(539,63,6,3,1),(540,63,16,3,1),(541,63,18,3,1),(542,64,12,1,1),(543,64,11,2,1),(544,64,12,2,1),(545,64,6,3,1),(546,64,16,3,1),(547,64,18,3,1),(548,65,12,1,1),(549,65,11,2,1),(550,65,12,2,1),(551,65,6,3,1),(552,65,16,3,1),(553,65,18,3,1),(554,66,11,1,1),(555,66,6,2,1),(556,66,13,2,1),(557,66,18,2,1),(558,66,4,3,1),(559,66,12,3,1),(560,66,10,3,1),(561,67,11,1,1),(562,67,6,2,1),(563,67,13,2,1),(564,67,18,2,1),(565,67,4,3,1),(566,67,12,3,1),(567,67,10,3,1),(568,68,11,1,1),(569,68,6,2,1),(570,68,13,2,1),(571,68,18,2,1),(572,68,4,3,1),(573,68,12,3,1),(574,68,10,3,1),(575,69,1,1,1),(576,69,2,1,1),(577,69,5,2,1),(578,69,8,2,1),(579,69,1,2,1),(580,69,11,2,1),(581,69,10,2,1),(582,69,3,3,1),(583,69,15,3,1),(584,69,4,3,1),(585,69,12,3,1),(586,70,1,1,1),(587,70,2,1,1),(588,70,5,2,1),(589,70,8,2,1),(590,70,1,2,1),(591,70,11,2,1),(592,70,10,2,1),(593,70,3,3,1),(594,70,15,3,1),(595,70,4,3,1),(596,70,12,3,1),(597,71,1,1,1),(598,71,2,1,1),(599,71,5,2,1),(600,71,8,2,1),(601,71,1,2,1),(602,71,11,2,1),(603,71,10,2,1),(604,71,3,3,1),(605,71,15,3,1),(606,71,4,3,1),(607,71,12,3,1),(608,72,5,1,1),(609,72,2,1,1),(610,72,3,2,1),(611,72,5,2,1),(612,72,15,2,1),(613,72,11,2,1),(614,72,2,2,1),(615,72,6,2,1),(616,72,14,2,1),(617,72,10,2,1),(618,72,8,3,1),(619,72,9,3,1),(620,72,12,3,1),(621,73,5,1,1),(622,73,2,1,1),(623,73,3,2,1),(624,73,5,2,1),(625,73,15,2,1),(626,73,11,2,1),(627,73,2,2,1),(628,73,6,2,1),(629,73,14,2,1),(630,73,10,2,1),(631,73,8,3,1),(632,73,9,3,1),(633,73,12,3,1),(634,74,13,1,1),(635,74,9,1,1),(636,74,7,2,1),(637,74,3,2,1),(638,74,8,2,1),(639,74,2,2,1),(640,74,4,2,1),(641,74,13,2,1),(642,74,5,3,1),(643,74,1,3,1),(644,74,15,3,1),(645,74,11,3,1),(646,74,9,3,1),(647,74,14,3,1),(648,75,13,1,1),(649,75,9,1,1),(650,75,7,2,1),(651,75,3,2,1),(652,75,8,2,1),(653,75,2,2,1),(654,75,4,2,1),(655,75,13,2,1),(656,75,5,3,1),(657,75,1,3,1),(658,75,15,3,1),(659,75,11,3,1),(660,75,9,3,1),(661,75,14,3,1),(662,76,3,1,1),(663,77,3,2,1),(664,77,1,2,1),(665,77,15,2,1),(666,77,6,2,1),(667,77,14,2,1),(668,77,10,2,1),(669,77,5,3,1),(670,77,9,3,1),(671,77,13,3,1),(672,78,3,1,1),(673,78,3,2,1),(674,78,1,2,1),(675,78,15,2,1),(676,78,6,2,1),(677,78,14,2,1),(678,78,10,2,1),(679,78,5,3,1),(680,78,9,3,1),(681,78,13,3,1),(682,79,5,1,1),(683,79,12,1,1),(684,79,3,2,1),(685,79,5,2,1),(686,79,15,2,1),(687,79,11,2,1),(688,79,12,2,1),(689,79,14,2,1),(690,79,8,3,1),(691,79,1,3,1),(692,79,6,3,1),(693,79,16,3,1),(694,79,18,3,1),(695,80,5,1,1),(696,80,12,1,1),(697,80,3,2,1),(698,80,5,2,1),(699,80,15,2,1),(700,80,11,2,1),(701,80,12,2,1),(702,80,14,2,1),(703,80,8,3,1),(704,80,1,3,1),(705,80,6,3,1),(706,80,16,3,1),(707,80,18,3,1),(708,81,8,1,1),(709,81,14,1,1),(710,81,7,2,1),(711,81,8,2,1),(712,81,1,2,1),(713,81,15,2,1),(714,81,2,2,1),(715,81,4,2,1),(716,81,12,2,1),(717,81,6,2,1),(718,81,13,2,1),(719,81,17,2,1),(720,81,14,2,1),(721,81,10,2,1),(722,81,3,3,1),(723,81,11,3,1),(724,81,9,3,1),(725,82,8,1,1),(726,82,14,1,1),(727,82,7,2,1),(728,82,8,2,1),(729,82,1,2,1),(730,82,15,2,1),(731,82,2,2,1),(732,82,4,2,1),(733,82,12,2,1),(734,82,6,2,1),(735,82,13,2,1),(736,82,17,2,1),(737,82,14,2,1),(738,82,10,2,1),(739,82,3,3,1),(740,82,11,3,1),(741,82,9,3,1),(742,83,7,1,1),(743,83,4,1,1),(744,83,1,2,1),(745,83,9,2,1),(746,83,6,2,1),(747,83,16,2,1),(748,83,8,3,1),(749,83,15,3,1),(750,83,13,3,1),(751,84,7,1,1),(752,84,4,1,1),(753,84,1,2,1),(754,84,9,2,1),(755,84,6,2,1),(756,84,16,2,1),(757,84,8,3,1),(758,84,15,3,1),(759,84,13,3,1),(760,85,7,1,1),(761,85,4,1,1),(762,85,1,2,1),(763,85,9,2,1),(764,85,6,2,1),(765,85,16,2,1),(766,85,8,3,1),(767,85,15,3,1),(768,85,13,3,1),(769,86,5,1,1),(770,86,3,2,1),(771,86,5,2,1),(772,86,15,2,1),(773,86,14,2,1),(774,86,8,3,1),(775,86,1,3,1),(776,87,5,1,1),(777,87,15,1,1),(778,87,5,2,1),(779,87,15,2,1),(780,87,8,3,1),(781,87,1,3,1),(782,87,11,3,1),(783,87,13,3,1),(784,88,2,1,1),(785,88,1,2,1),(786,88,11,2,1),(787,88,2,2,1),(788,88,6,2,1),(789,88,10,2,1),(790,88,9,3,1),(791,88,12,3,1),(792,89,2,1,1),(793,89,1,2,1),(794,89,11,2,1),(795,89,2,2,1),(796,89,6,2,1),(797,89,10,2,1),(798,89,9,3,1),(799,89,12,3,1),(800,90,5,1,1),(801,90,3,2,1),(802,90,5,2,1),(803,90,15,2,1),(804,90,14,2,1),(805,90,8,3,1),(806,90,1,3,1),(807,91,5,1,1),(808,91,15,1,1),(809,91,5,2,1),(810,91,15,2,1),(811,91,8,3,1),(812,91,1,3,1),(813,91,11,3,1),(814,91,13,3,1),(815,92,16,1,1),(816,92,2,1,1),(817,92,7,2,1),(818,92,1,2,1),(819,92,11,2,1),(820,92,2,2,1),(821,92,6,2,1),(822,92,10,2,1),(823,92,9,3,1),(824,92,12,3,1),(825,92,16,3,1),(826,92,18,3,1),(827,93,16,1,1),(828,93,2,1,1),(829,93,7,2,1),(830,93,1,2,1),(831,93,11,2,1),(832,93,2,2,1),(833,93,6,2,1),(834,93,10,2,1),(835,93,9,3,1),(836,93,12,3,1),(837,93,16,3,1),(838,93,18,3,1),(839,94,7,2,1),(840,94,1,2,1),(841,94,11,2,1),(842,94,2,2,1),(843,94,6,2,1),(844,94,10,2,1),(845,94,9,3,1),(846,94,12,3,1),(847,94,16,3,1),(848,94,18,3,1),(849,95,13,1,1),(850,95,9,1,1),(851,95,7,2,1),(852,95,3,2,1),(853,95,8,2,1),(854,95,2,2,1),(855,95,4,2,1),(856,95,13,2,1),(857,95,5,3,1),(858,95,1,3,1),(859,95,15,3,1),(860,95,11,3,1),(861,95,9,3,1),(862,95,14,3,1),(863,96,12,1,1),(864,96,11,2,1),(865,96,12,2,1),(866,96,6,3,1),(867,96,16,3,1),(868,96,18,3,1),(869,97,12,1,1),(870,97,11,2,1),(871,97,12,2,1),(872,97,6,3,1),(873,97,16,3,1),(874,97,18,3,1),(875,98,5,1,1),(876,98,3,2,1),(877,98,5,2,1),(878,98,15,2,1),(879,98,14,2,1),(880,98,8,3,1),(881,98,1,3,1),(882,99,5,1,1),(883,99,3,2,1),(884,99,5,2,1),(885,99,15,2,1),(886,99,14,2,1),(887,99,8,3,1),(888,99,1,3,1),(889,100,8,1,1),(890,100,8,2,1),(891,100,4,2,1),(892,100,14,2,1),(893,100,9,3,1),(894,101,8,1,1),(895,101,8,2,1),(896,101,4,2,1),(897,101,14,2,1),(898,101,9,3,1),(899,102,1,1,1),(900,102,12,1,1),(901,102,5,2,1),(902,102,8,2,1),(903,102,1,2,1),(904,102,11,2,1),(905,102,9,2,1),(906,102,12,2,1),(907,102,3,3,1),(908,102,15,3,1),(909,102,2,3,1),(910,102,4,3,1),(911,102,6,3,1),(912,102,16,3,1),(913,102,18,3,1),(914,103,1,1,1),(915,103,12,1,1),(916,103,5,2,1),(917,103,8,2,1),(918,103,1,2,1),(919,103,11,2,1),(920,103,9,2,1),(921,103,12,2,1),(922,103,3,3,1),(923,103,15,3,1),(924,103,2,3,1),(925,103,4,3,1),(926,103,6,3,1),(927,103,16,3,1),(928,103,18,3,1),(929,104,9,1,1),(930,104,8,2,1),(931,104,2,2,1),(932,104,13,2,1),(933,104,5,3,1),(934,104,1,3,1),(935,104,15,3,1),(936,105,9,1,1),(937,105,8,2,1),(938,105,2,2,1),(939,105,13,2,1),(940,105,5,3,1),(941,105,1,3,1),(942,105,15,3,1),(943,106,11,1,1),(944,106,6,2,1),(945,106,13,2,1),(946,106,18,2,1),(947,106,4,3,1),(948,106,12,3,1),(949,106,10,3,1),(950,107,11,1,1),(951,107,6,2,1),(952,107,13,2,1),(953,107,18,2,1),(954,107,4,3,1),(955,107,12,3,1),(956,107,10,3,1),(957,108,7,1,1),(958,108,16,2,1),(959,108,11,3,1),(960,109,2,1,1),(961,109,1,2,1),(962,109,11,2,1),(963,109,2,2,1),(964,109,6,2,1),(965,109,10,2,1),(966,109,9,3,1),(967,109,12,3,1),(968,110,2,1,1),(969,110,1,2,1),(970,110,11,2,1),(971,110,2,2,1),(972,110,6,2,1),(973,110,10,2,1),(974,110,9,3,1),(975,110,12,3,1),(976,111,9,1,1),(977,111,13,1,1),(978,111,7,2,1),(979,111,3,2,1),(980,111,8,2,1),(981,111,2,2,1),(982,111,4,2,1),(983,111,13,2,1),(984,111,5,3,1),(985,111,1,3,1),(986,111,15,3,1),(987,111,11,3,1),(988,111,9,3,1),(989,111,14,3,1),(990,112,9,1,1),(991,112,13,1,1),(992,112,7,2,1),(993,112,3,2,1),(994,112,8,2,1),(995,112,2,2,1),(996,112,4,2,1),(997,112,13,2,1),(998,112,5,3,1),(999,112,1,3,1),(1000,112,15,3,1),(1001,112,11,3,1),(1002,112,9,3,1),(1003,112,14,3,1),(1004,113,7,1,1),(1005,113,16,2,1),(1006,113,11,3,1),(1007,114,1,1,1),(1008,114,5,2,1),(1009,114,8,2,1),(1010,114,1,2,1),(1011,114,9,2,1),(1012,114,3,3,1),(1013,114,15,3,1),(1014,114,2,3,1),(1015,114,4,3,1),(1016,114,6,3,1),(1017,115,7,1,1),(1018,115,16,2,1),(1019,115,11,3,1),(1020,116,5,1,1),(1021,116,3,2,1),(1022,116,5,2,1),(1023,116,15,2,1),(1024,116,14,2,1),(1025,116,8,3,1),(1026,116,1,3,1),(1027,117,5,1,1),(1028,117,3,2,1),(1029,117,5,2,1),(1030,117,15,2,1),(1031,117,14,2,1),(1032,117,8,3,1),(1033,117,1,3,1),(1034,118,5,1,1),(1035,118,3,2,1),(1036,118,5,2,1),(1037,118,15,2,1),(1038,118,14,2,1),(1039,118,8,3,1),(1040,118,1,3,1),(1041,119,5,1,1),(1042,119,3,2,1),(1043,119,5,2,1),(1044,119,15,2,1),(1045,119,14,2,1),(1046,119,8,3,1),(1047,119,1,3,1),(1048,120,5,1,1),(1049,120,3,2,1),(1050,120,5,2,1),(1051,120,15,2,1),(1052,120,14,2,1),(1053,120,8,3,1),(1054,120,1,3,1),(1055,121,5,1,1),(1056,121,3,2,1),(1057,121,5,2,1),(1058,121,15,2,1),(1059,121,14,2,1),(1060,121,8,3,1),(1061,121,1,3,1),(1062,122,12,1,1),(1063,122,10,1,1),(1064,122,11,2,1),(1065,122,12,2,1),(1066,122,17,2,1),(1067,122,2,3,1),(1068,122,16,3,1),(1069,122,14,3,1),(1070,123,6,1,1),(1071,123,4,1,1),(1072,123,1,2,1),(1073,123,11,2,1),(1074,123,9,2,1),(1075,123,6,2,1),(1076,123,3,3,1),(1077,123,8,3,1),(1078,123,15,3,1),(1079,123,4,3,1),(1080,123,13,3,1),(1081,124,15,1,1),(1082,124,12,1,1),(1083,124,15,2,1),(1084,124,12,2,1),(1085,124,3,3,1),(1086,124,6,3,1),(1087,124,13,3,1),(1088,124,16,3,1),(1089,124,18,3,1),(1090,124,14,3,1),(1091,125,8,1,1),(1092,125,8,2,1),(1093,125,4,2,1),(1094,125,14,2,1),(1095,125,9,3,1),(1096,126,3,1,1),(1097,126,3,2,1),(1098,126,1,2,1),(1099,126,15,2,1),(1100,126,6,2,1),(1101,126,14,2,1),(1102,126,10,2,1),(1103,126,5,3,1),(1104,126,9,3,1),(1105,126,13,3,1),(1106,127,6,1,1),(1107,127,1,2,1),(1108,127,11,2,1),(1109,127,9,2,1),(1110,127,3,3,1),(1111,127,4,3,1),(1112,127,13,3,1),(1113,128,7,1,1),(1114,128,16,2,1),(1115,128,11,3,1),(1116,129,5,1,1),(1117,129,3,2,1),(1118,129,5,2,1),(1119,129,15,2,1),(1120,129,14,2,1),(1121,129,8,3,1),(1122,129,1,3,1),(1123,130,5,1,1),(1124,130,4,1,1),(1125,130,3,2,1),(1126,130,5,2,1),(1127,130,11,2,1),(1128,130,9,2,1),(1129,130,6,2,1),(1130,130,14,2,1),(1131,130,8,3,1),(1132,130,13,3,1),(1133,131,5,1,1),(1134,131,15,1,1),(1135,131,5,2,1),(1136,131,15,2,1),(1137,131,8,3,1),(1138,131,1,3,1),(1139,131,11,3,1),(1140,131,13,3,1),(1141,132,7,1,1),(1142,132,16,2,1),(1143,132,11,3,1),(1144,133,7,1,1),(1145,133,16,2,1),(1146,133,11,3,1),(1147,134,5,1,1),(1148,134,3,2,1),(1149,134,5,2,1),(1150,134,15,2,1),(1151,134,14,2,1),(1152,134,8,3,1),(1153,134,1,3,1),(1154,135,8,1,1),(1155,135,8,2,1),(1156,135,4,2,1),(1157,135,14,2,1),(1158,135,9,3,1),(1159,136,3,1,1),(1160,136,3,2,1),(1161,136,1,2,1),(1162,136,15,2,1),(1163,136,6,2,1),(1164,136,14,2,1),(1165,136,10,2,1),(1166,136,5,3,1),(1167,136,9,3,1),(1168,136,13,3,1),(1169,137,7,1,1),(1170,137,16,2,1),(1171,137,11,3,1),(1172,138,13,1,1),(1173,138,5,1,1),(1174,138,7,2,1),(1175,138,3,2,1),(1176,138,15,2,1),(1177,138,2,2,1),(1178,138,4,2,1),(1179,138,8,3,1),(1180,138,1,3,1),(1181,138,11,3,1),(1182,138,9,3,1),(1183,139,13,1,1),(1184,139,5,1,1),(1185,139,7,2,1),(1186,139,3,2,1),(1187,139,15,2,1),(1188,139,2,2,1),(1189,139,4,2,1),(1190,139,8,3,1),(1191,139,1,3,1),(1192,139,11,3,1),(1193,139,9,3,1),(1194,140,13,1,1),(1195,140,5,1,1),(1196,140,7,2,1),(1197,140,3,2,1),(1198,140,15,2,1),(1199,140,2,2,1),(1200,140,4,2,1),(1201,140,8,3,1),(1202,140,1,3,1),(1203,140,11,3,1),(1204,140,9,3,1),(1205,141,13,1,1),(1206,141,5,1,1),(1207,141,7,2,1),(1208,141,3,2,1),(1209,141,15,2,1),(1210,141,2,2,1),(1211,141,4,2,1),(1212,141,8,3,1),(1213,141,1,3,1),(1214,141,11,3,1),(1215,141,9,3,1),(1216,142,13,1,1),(1217,142,4,1,1),(1218,142,7,2,1),(1219,142,3,2,1),(1220,142,2,2,1),(1221,142,4,2,1),(1222,142,6,2,1),(1223,142,5,3,1),(1224,142,8,3,1),(1225,142,15,3,1),(1226,142,13,3,1),(1227,142,14,3,1),(1228,143,7,1,1),(1229,143,16,2,1),(1230,143,11,3,1),(1231,144,15,1,1),(1232,144,4,1,1),(1233,144,1,2,1),(1234,144,9,2,1),(1235,144,6,2,1),(1236,144,3,3,1),(1237,144,8,3,1),(1238,144,13,3,1),(1239,144,14,3,1),(1240,145,8,1,1),(1241,145,4,1,1),(1242,145,1,2,1),(1243,145,11,2,1),(1244,145,4,2,1),(1245,145,6,2,1),(1246,145,14,2,1),(1247,145,15,3,1),(1248,145,13,3,1),(1249,146,3,1,1),(1250,146,4,1,1),(1251,146,3,2,1),(1252,146,1,2,1),(1253,146,11,2,1),(1254,146,6,2,1),(1255,146,14,2,1),(1256,146,10,2,1),(1257,146,5,3,1),(1258,146,8,3,1),(1259,146,13,3,1),(1260,147,17,1,1),(1261,147,3,2,1),(1262,147,5,2,1),(1263,147,8,2,1),(1264,147,1,2,1),(1265,147,15,3,1),(1266,147,17,3,1),(1267,147,10,3,1),(1268,148,17,1,1),(1269,148,3,2,1),(1270,148,5,2,1),(1271,148,8,2,1),(1272,148,1,2,1),(1273,148,15,3,1),(1274,148,17,3,1),(1275,148,10,3,1),(1276,149,17,1,1),(1277,149,4,1,1),(1278,149,3,2,1),(1279,149,5,2,1),(1280,149,1,2,1),(1281,149,11,2,1),(1282,149,9,2,1),(1283,149,6,2,1),(1284,149,15,3,1),(1285,149,13,3,1),(1286,149,17,3,1),(1287,149,10,3,1),(1288,150,12,1,1),(1289,150,11,2,1),(1290,150,12,2,1),(1291,150,6,3,1),(1292,150,16,3,1),(1293,150,18,3,1),(1294,151,12,1,1),(1295,151,11,2,1),(1296,151,12,2,1),(1297,151,6,3,1),(1298,151,16,3,1),(1299,151,18,3,1);
/*!40000 ALTER TABLE `pokemon_tipo_modo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ataque`
--

DROP TABLE IF EXISTS `tb_ataque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ataque` (
  `id_ataque` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `damage` int NOT NULL,
  `id_tipo` int NOT NULL,
  `id_tipo_ataque` int NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_ataque`),
  UNIQUE KEY `id_ataque_UNIQUE` (`id_ataque`),
  KEY `fk_tipo_idx` (`id_tipo`),
  KEY `fk_tipo_ataque_idx` (`id_tipo_ataque`),
  CONSTRAINT `fk_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipo` (`id_tipo`),
  CONSTRAINT `fk_tipo_ataque` FOREIGN KEY (`id_tipo_ataque`) REFERENCES `tb_tipo_ataque` (`id_tipo_ataque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ataque`
--

LOCK TABLES `tb_ataque` WRITE;
/*!40000 ALTER TABLE `tb_ataque` DISABLE KEYS */;
INSERT INTO `tb_ataque` VALUES (1,'Entrada',12,7,1,1),(2,'Látigo Cepa',7,1,1,1),(3,'Latigo de poder',70,1,3,1),(4,'Bomba de semillas',40,1,3,1),(5,'Bomba de lodo',55,2,3,1),(6,'Hoja de afeitar',15,1,1,1),(7,'Haz de luz solar',120,1,3,1),(8,'Pétalo de la ventisca',65,1,3,1),(9,'Ascuas',10,3,1,1),(10,'Rasguño',6,7,1,1),(11,'Estallido de Fuego',30,3,3,1),(12,'Carga de Llamas',25,3,3,1),(13,'Torre de Llamas',55,3,3,1),(14,'Golpe de fuego',30,3,3,1),(15,'Ataque de ala',9,4,1,1),(16,'Garra de dragón',35,17,3,1),(17,'Explosión de fuego',100,3,3,1),(18,'Burbuja',25,5,1,1),(19,'aqua Jet',25,5,3,1),(20,'Acua Cola',45,5,3,1),(21,'Pulso de Agua',35,5,3,1),(22,'mordedura',6,7,1,1),(23,'Pistola de agua',6,5,1,1),(24,'Disparo mugre',65,2,3,1),(25,'Bomba de agua',90,5,3,1),(26,'Haz hielo',65,15,3,1),(27,'Cañón de destello',60,14,3,1),(28,'Picadura de insecto',5,6,3,1),(29,'Lucha',15,7,3,1);
/*!40000 ALTER TABLE `tb_ataque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clasificacion`
--

DROP TABLE IF EXISTS `tb_clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_clasificacion` (
  `id_clasificacion` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_clasificacion`),
  UNIQUE KEY `id_clasificacion_UNIQUE` (`id_clasificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clasificacion`
--

LOCK TABLES `tb_clasificacion` WRITE;
/*!40000 ALTER TABLE `tb_clasificacion` DISABLE KEYS */;
INSERT INTO `tb_clasificacion` VALUES (1,'Seed Pokémon',1),(2,'Lizard Pokémon',1),(3,'Flame Pokémon',1),(4,'Tiny Turtle Pokémon',1),(5,'Turtle Pokémon',1),(6,'Shellfish Pokémon',1),(7,'Worm Pokémon',1),(8,'Cocoon Pokémon',1),(9,'Butterfly Pokémon',1),(10,'Hairy Pokémon',1),(11,'Poison Bee Pokémon',1),(12,'Tiny Bird Pokémon',1),(13,'Bird Pokémon',1),(14,'Mouse Pokémon',1),(15,'Beak Pokémon',1),(16,'Snake Pokémon',1),(17,'Cobra Pokémon',1),(18,'Poison Pin Pokémon',1),(19,'Drill Pokémon',1),(20,'Fairy Pokémon',1),(21,'Fox Pokémon',1),(22,'Balloon Pokémon',1),(23,'Bat Pokémon',1),(24,'Weed Pokémon',1),(25,'Flower Pokémon',1),(26,'Mushroom Pokémon',1),(27,'Insect Pokémon',1),(28,'Poison Moth Pokémon',1),(29,'Mole Pokémon',1),(30,'Scratch Cat Pokémon',1),(31,'Classy Cat Pokémon',1),(32,'Duck Pokémon',1),(33,'Pig Monkey Pokémon',1),(34,'Puppy Pokémon',1),(35,'Legendary Pokémon',1),(36,'Tadpole Pokémon',1),(37,'Psi Pokémon',1),(38,'Superpower Pokémon',1),(39,'Flycatcher Pokémon',1),(40,'Jellyfish Pokémon',1),(41,'Rock Pokémon',1),(42,'Megaton Pokémon',1),(43,'Fire Horse Pokémon',1),(44,'Dopey Pokémon',1),(45,'Hermit Crab Pokémon',1),(46,'Magnet Pokémon',1),(47,'Wild Duck Pokémon',1),(48,'Twin Bird Pokémon',1),(49,'Triple Bird Pokémon',1),(50,'Sea Lion Pokémon',1),(51,'Sludge Pokémon',1),(52,'Bivalve Pokémon',1),(53,'Gas Pokémon',1),(54,'Shadow Pokémon',1),(55,'Rock Snake Pokémon',1),(56,'Hypnosis Pokémon',1),(57,'River Crab Pokémon',1),(58,'Pincer Pokémon',1),(59,'Ball Pokémon',1),(60,'Egg Pokémon',1),(61,'Coconut Pokémon',1),(62,'Lonely Pokémon',1),(63,'Bone Keeper Pokémon',1),(64,'Kicking Pokémon',1),(65,'Punching Pokémon',1),(66,'Licking Pokémon',1),(67,'Poison Gas Pokémon',1),(68,'Spikes Pokémon',1),(69,'Drill Pokémon',1),(70,'Vine Pokémon',1),(71,'Parent Pokémon',1),(72,'Dragon Pokémon',1),(73,'Goldfish Pokémon',1),(74,'Starshape Pokémon',1),(75,'Mysterious Pokémon',1),(76,'Barrier Pokémon',1),(77,'Mantis Pokémon',1),(78,'Humanshape Pokémon',1),(79,'Electric Pokémon',1),(80,'Spitfire Pokémon',1),(81,'Stagbeetle Pokémon',1),(82,'Wild Bull Pokémon',1),(83,'Fish Pokémon',1),(84,'Atrocious Pokémon',1),(85,'Transport Pokémon',1),(86,'Transform Pokémon',1),(87,'Evolution Pokémon',1),(88,'Bubble Jet Pokémon',1),(89,'Lightning Pokémon',1),(90,'Virtual Pokémon',1),(91,'Spiral Pokémon',1),(92,'Fossil Pokémon',1),(93,'Sleeping Pokémon',1),(94,'Freeze Pokémon',1),(95,'Genetic Pokémon',1),(96,'New Species Pokémon',1);
/*!40000 ALTER TABLE `tb_clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dimension`
--

DROP TABLE IF EXISTS `tb_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dimension` (
  `id_dimension` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `unidad` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_dimension`),
  UNIQUE KEY `id_dimension_UNIQUE` (`id_dimension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dimension`
--

LOCK TABLES `tb_dimension` WRITE;
/*!40000 ALTER TABLE `tb_dimension` DISABLE KEYS */;
INSERT INTO `tb_dimension` VALUES (1,'Longitud','m',1),(2,'Peso','kg',1);
/*!40000 ALTER TABLE `tb_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_evolucion`
--

DROP TABLE IF EXISTS `tb_evolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_evolucion` (
  `id_evolucion` int NOT NULL,
  `id_pokemon` int NOT NULL,
  `id_tipo_evolucion` int NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_evolucion`),
  UNIQUE KEY `id_evolucion_UNIQUE` (`id_evolucion`),
  KEY `fk_evolucion_pokemon_idx` (`id_pokemon`),
  KEY `fk_evolucion_tipo_idx` (`id_tipo_evolucion`),
  CONSTRAINT `fk_evolucion_pokemon` FOREIGN KEY (`id_pokemon`) REFERENCES `tb_pokemon` (`id_pokemon`),
  CONSTRAINT `fk_evolucion_tipo` FOREIGN KEY (`id_tipo_evolucion`) REFERENCES `tb_tipo_evolucion` (`id_tipo_evolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_evolucion`
--

LOCK TABLES `tb_evolucion` WRITE;
/*!40000 ALTER TABLE `tb_evolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_evolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modo`
--

DROP TABLE IF EXISTS `tb_modo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_modo` (
  `id_modo` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_modo`),
  UNIQUE KEY `id_modo_UNIQUE` (`id_modo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modo`
--

LOCK TABLES `tb_modo` WRITE;
/*!40000 ALTER TABLE `tb_modo` DISABLE KEYS */;
INSERT INTO `tb_modo` VALUES (1,'Type',1),(2,'Resistant',1),(3,'Weakness',1),(4,'Strong',1);
/*!40000 ALTER TABLE `tb_modo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_objeto`
--

DROP TABLE IF EXISTS `tb_objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_objeto` (
  `id_objeto` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_objeto`),
  UNIQUE KEY `id_objeto_UNIQUE` (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_objeto`
--

LOCK TABLES `tb_objeto` WRITE;
/*!40000 ALTER TABLE `tb_objeto` DISABLE KEYS */;
INSERT INTO `tb_objeto` VALUES (1,'Bulbasaur candies',1),(2,'Charmander candies',1),(3,'Squirtle candies',1),(4,'Caterpie candies',1),(5,'Weedle candies',1),(6,'Pidgey candies',1),(7,'Rattata candies',1),(8,'Spearow candies',1),(9,'Ekans candies',1),(10,'Pikachu candies',1),(11,'Sandshrew candies',1),(12,'Nidoran♀ candies',1),(13,'Nidoran-M candies',1),(14,'Clefairy candies',1),(15,'Vulpi',1),(16,'Jigglypuff candies',1),(17,'Zubat candies\"',1),(18,'Oddish candies',1),(19,'Paras candies',1),(20,'Venonat candies',1),(21,'Diglett candies',1),(22,'Psyduck candies',1),(23,'Mankey candies',1),(24,'Growlithe candies',1),(25,'Poliwag candies',1),(26,'Abra candies\"',1),(27,'Machop candies',1),(28,'Bellsprout candies',1),(29,'Tentacool candies',1),(30,'Geodude candies',1),(31,'Ponyta candies',1),(32,'Slowpoke candies',1),(33,'Magnemite candies',1),(34,'Doduo candies',1),(35,'Seel candies',1),(36,'Grimer candies',1),(37,'Shellder candies',1),(38,'Gastly candies',1),(39,'Drowzee candies',1),(40,'Krabby candies',1),(41,'Voltorb candies',1),(42,'E ',1),(43,'Cubone candies',1),(44,'Koffing candies',1),(45,'Rhyhorn candies',1),(46,'Horsea candies',1),(47,'Goldeen candies',1),(48,'Staryu candies',1),(49,'Magikarp candies',1),(50,'Eevee candies',1),(51,'Omanyte candies',1),(52,'Kabuto candies',1),(53,'Dratini candies',1),(54,'Meowth candies',1);
/*!40000 ALTER TABLE `tb_objeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pokemon`
--

DROP TABLE IF EXISTS `tb_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pokemon` (
  `id_pokemon` int NOT NULL,
  `id_clasificacion` int NOT NULL,
  `id_requerimiento` int DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `tasa_huida` decimal(2,0) NOT NULL,
  `maximo_cp` int NOT NULL,
  `maximo_hp` int NOT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  `sonido` varchar(500) DEFAULT NULL,
  `favorito` tinyint NOT NULL DEFAULT '0',
  `estado` int NOT NULL DEFAULT '1',
  `id_evolucion` int DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`),
  UNIQUE KEY `id_pokemon_UNIQUE` (`id_pokemon`),
  KEY `fk_requerimiento_idx` (`id_requerimiento`),
  KEY `fk_clasificacion_idx` (`id_clasificacion`),
  KEY `tb_pokemon___fk_pokemon` (`id_evolucion`),
  CONSTRAINT `fk_clasificacion` FOREIGN KEY (`id_clasificacion`) REFERENCES `tb_clasificacion` (`id_clasificacion`),
  CONSTRAINT `fk_requerimiento` FOREIGN KEY (`id_requerimiento`) REFERENCES `tb_requerimiento` (`id_requerimiento`),
  CONSTRAINT `tb_pokemon___fk_pokemon` FOREIGN KEY (`id_evolucion`) REFERENCES `tb_pokemon` (`id_pokemon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pokemon`
--

LOCK TABLES `tb_pokemon` WRITE;
/*!40000 ALTER TABLE `tb_pokemon` DISABLE KEYS */;
INSERT INTO `tb_pokemon` VALUES (1,1,1,'Bulbasaur',0,951,1071,'https://img.pokemondb.net/artwork/bulbasaur.jpg',NULL,1,1,2),(2,1,2,'Ivysaur',0,1483,1632,'https://img.pokemondb.net/artwork/ivysaur.jpg',NULL,0,1,3),(3,1,NULL,'Venusaur',0,2392,2580,'https://img.pokemondb.net/artwork/venusaur.jpg',NULL,0,1,NULL),(4,2,3,'Charmander',0,841,955,'https://img.pokemondb.net/artwork/charmander.jpg',NULL,0,1,5),(5,3,4,'Charmeleon',0,1411,1557,'https://img.pokemondb.net/artwork/charmeleon.jpg',NULL,0,1,6),(6,3,NULL,'Charizard',0,2413,2602,'https://img.pokemondb.net/artwork/charizard.jpg',NULL,0,1,NULL),(7,4,5,'Squirtle',0,891,1008,'https://img.pokemondb.net/artwork/squirtle.jpg',NULL,0,1,8),(8,5,6,'Wartortle',0,1435,1582,'https://img.pokemondb.net/artwork/wartortle.jpg',NULL,0,1,9),(9,6,NULL,'Blastoise',0,2355,2542,'https://img.pokemondb.net/artwork/blastoise.jpg',NULL,0,1,NULL),(10,7,7,'Caterpie',0,367,443,'https://img.pokemondb.net/artwork/caterpie.jpg',NULL,1,1,11),(11,8,8,'Metapod',0,397,477,'https://img.pokemondb.net/artwork/metapod.jpg',NULL,1,1,12),(12,9,NULL,'Butterfree',0,1315,1454,'https://img.pokemondb.net/artwork/butterfree.jpg',NULL,0,1,NULL),(13,10,9,'Weedle',0,372,449,'https://img.pokemondb.net/artwork/weedle.jpg',NULL,0,1,14),(14,8,10,'Kakuna',0,405,485,'https://img.pokemondb.net/artwork/kakuna.jpg',NULL,0,1,15),(15,11,NULL,'Beedrill',0,1301,1439,'https://img.pokemondb.net/artwork/beedrill.jpg',NULL,0,1,NULL),(16,12,11,'Pidgey',0,585,679,'https://img.pokemondb.net/artwork/pidgey.jpg',NULL,0,1,17),(17,13,12,'Pidgeotto',0,1096,1223,'https://img.pokemondb.net/artwork/pidgeotto.jpg',NULL,0,1,18),(18,13,NULL,'Pidgeot',0,1923,2091,'https://img.pokemondb.net/artwork/pidgeot.jpg',NULL,0,1,NULL),(19,14,13,'Rattata',0,493,581,'https://img.pokemondb.net/artwork/rattata.jpg',NULL,0,1,20),(20,14,NULL,'Raticate',0,1304,1444,'https://img.pokemondb.net/artwork/raticate.jpg',NULL,0,1,NULL),(21,12,14,'Spearow',0,591,686,'https://img.pokemondb.net/artwork/spearow.jpg',NULL,0,1,22),(22,15,NULL,'Fearow',0,1592,1746,'https://img.pokemondb.net/artwork/fearow.jpg',NULL,0,1,NULL),(23,16,15,'Ekans',0,718,824,'https://img.pokemondb.net/artwork/ekans.jpg',NULL,0,1,24),(24,17,NULL,'Arbok',0,1611,1767,'https://img.pokemondb.net/artwork/arbok.jpg',NULL,0,1,NULL),(25,14,16,'Pikachu',0,777,887,'https://img.pokemondb.net/artwork/pikachu.jpg',NULL,0,1,26),(26,14,NULL,'Raichu',0,1859,2028,'https://img.pokemondb.net/artwork/raichu.jpg',NULL,0,1,NULL),(27,14,17,'Sandshrew',0,659,798,'https://img.pokemondb.net/artwork/sandshrew.jpg',NULL,0,1,28),(28,14,NULL,'Sandslash',0,1654,1810,'https://img.pokemondb.net/artwork/sandslash.jpg',NULL,0,1,NULL),(29,18,18,'Nidoran-F',0,768,876,'https://img.pokemondb.net/artwork/nidoran-f.jpg',NULL,0,1,30),(30,18,19,'Nidorina',0,1267,1404,'https://img.pokemondb.net/artwork/nidorina.jpg',NULL,0,1,31),(31,19,NULL,'Nidoqueen',0,2301,2485,'https://img.pokemondb.net/artwork/nidoqueen.jpg',NULL,0,1,NULL),(32,18,20,'Nidoran-M',0,737,843,'https://img.pokemondb.net/artwork/nidoran-m.jpg',NULL,0,1,33),(33,18,21,'Nidorino',0,1236,1372,'https://img.pokemondb.net/artwork/nidorino.jpg',NULL,0,1,34),(34,19,NULL,'Nidoking',0,2291,2475,'https://img.pokemondb.net/artwork/nidoking.jpg',NULL,0,1,NULL),(35,20,22,'Clefairy',0,1074,1200,'https://img.pokemondb.net/artwork/clefairy.jpg',NULL,0,1,36),(36,20,NULL,'Clefable',0,2217,2397,'https://img.pokemondb.net/artwork/clefable.jpg',NULL,0,1,NULL),(37,21,23,'Vulpix',0,725,831,'https://img.pokemondb.net/artwork/vulpix.jpg',NULL,0,1,38),(38,21,NULL,'Ninetales',0,2015,2188,'https://img.pokemondb.net/artwork/ninetales.jpg',NULL,0,1,NULL),(39,22,24,'Jigglypuff',0,796,917,'https://img.pokemondb.net/artwork/jigglypuff.jpg',NULL,0,1,40),(40,22,NULL,'Wigglytuff',1,1997,2177,'https://img.pokemondb.net/artwork/wigglytuff.jpg',NULL,0,1,NULL),(41,23,25,'Zubat',0,550,642,'https://img.pokemondb.net/artwork/zubat.jpg',NULL,0,1,42),(42,23,NULL,'Golbat',0,1760,1921,'https://img.pokemondb.net/artwork/golbat.jpg',NULL,0,1,NULL),(43,24,26,'Oddish',0,1023,1148,'https://img.pokemondb.net/artwork/oddish.jpg',NULL,0,1,44),(44,24,27,'Gloom',0,1537,1689,'https://img.pokemondb.net/artwork/gloom.jpg',NULL,0,1,45),(45,25,NULL,'Vileplume',0,2307,2492,'https://img.pokemondb.net/artwork/vileplume.jpg',NULL,0,1,NULL),(46,26,28,'Paras',0,804,916,'https://img.pokemondb.net/artwork/paras.jpg',NULL,0,1,47),(47,26,NULL,'Parasect',0,1592,1747,'https://img.pokemondb.net/artwork/parasect.jpg',NULL,0,1,NULL),(48,27,29,'Venonat',0,912,1029,'https://img.pokemondb.net/artwork/venonat.jpg',NULL,0,1,49),(49,28,NULL,'Venomoth',0,1730,1890,'https://img.pokemondb.net/artwork/venomoth.jpg',NULL,0,1,NULL),(50,29,30,'Diglett',0,365,456,'https://img.pokemondb.net/artwork/diglett.jpg',NULL,0,1,51),(51,29,NULL,'Dugtrio',0,1038,1168,'https://img.pokemondb.net/artwork/dugtrio.jpg',NULL,0,1,NULL),(52,30,70,'Meowth',0,656,756,'https://img.pokemondb.net/artwork/meowth.jpg',NULL,0,1,53),(53,31,NULL,'Persian',0,1483,1631,'https://img.pokemondb.net/artwork/persian.jpg',NULL,0,1,NULL),(54,32,31,'Psyduck',0,987,1109,'https://img.pokemondb.net/artwork/psyduck.jpg',NULL,0,1,55),(55,32,NULL,'Golduck',0,2206,2386,'https://img.pokemondb.net/artwork/golduck.jpg',NULL,0,1,NULL),(56,33,32,'Mankey',0,769,878,'https://img.pokemondb.net/artwork/mankey.jpg',NULL,0,1,57),(57,33,NULL,'Primeape',0,1704,1864,'https://img.pokemondb.net/artwork/primeape.jpg',NULL,0,1,NULL),(58,34,33,'Growlithe',0,1199,1335,'https://img.pokemondb.net/artwork/growlithe.jpg',NULL,0,1,59),(59,35,NULL,'Arcanine',0,2781,2983,'https://img.pokemondb.net/artwork/arcanine.jpg',NULL,0,1,NULL),(60,36,34,'Poliwag',0,693,795,'https://img.pokemondb.net/artwork/poliwag.jpg',NULL,0,1,61),(61,36,35,'Poliwhirl',0,1206,1340,'https://img.pokemondb.net/artwork/poliwhirl.jpg',NULL,0,1,62),(62,36,NULL,'Poliwrath',0,2321,2505,'https://img.pokemondb.net/artwork/poliwrath.jpg',NULL,0,1,NULL),(63,37,36,'Abra',1,508,600,'https://img.pokemondb.net/artwork/abra.jpg',NULL,0,1,64),(64,37,37,'Kadabra',0,1005,1131,'https://img.pokemondb.net/artwork/kadabra.jpg',NULL,0,1,65),(65,37,NULL,'Alakazam',0,1654,1813,'https://img.pokemondb.net/artwork/alakazam.jpg',NULL,0,1,NULL),(66,38,38,'Machop',0,968,1089,'https://img.pokemondb.net/artwork/machop.jpg',NULL,0,1,67),(67,38,39,'Machoke',0,1606,1760,'https://img.pokemondb.net/artwork/machoke.jpg',NULL,0,1,68),(68,38,NULL,'Machamp',0,2406,2594,'https://img.pokemondb.net/artwork/machamp.jpg',NULL,0,1,NULL),(69,25,40,'Bellsprout',0,990,1117,'https://img.pokemondb.net/artwork/bellsprout.jpg',NULL,0,1,70),(70,39,41,'weepinbell',0,1567,1723,'https://img.pokemondb.net/artwork/weepinbell.jpg',NULL,0,1,71),(71,39,NULL,'Victreebel',0,2342,2530,'https://img.pokemondb.net/artwork/victreebel.jpg',NULL,0,1,NULL),(72,40,42,'Tentacool',0,794,905,'https://img.pokemondb.net/artwork/tentacool.jpg',NULL,0,1,73),(73,40,NULL,'Tentacruel',0,2046,2220,'https://img.pokemondb.net/artwork/tentacruel.jpg',NULL,0,1,NULL),(74,41,43,'Geodude',0,742,849,'https://img.pokemondb.net/artwork/geodude.jpg',NULL,0,1,75),(75,41,44,'Graveler',0,1294,1433,'https://img.pokemondb.net/artwork/graveler.jpg',NULL,0,1,76),(76,42,NULL,'Golem',0,2126,2303,'https://img.pokemondb.net/artwork/golem.jpg',NULL,0,1,NULL),(77,43,45,'Ponyta',0,1370,1516,'https://img.pokemondb.net/artwork/ponyta.jpg',NULL,0,1,78),(78,43,NULL,'Rapidash',0,2024,2199,'https://img.pokemondb.net/artwork/rapidash.jpg',NULL,0,1,NULL),(79,44,46,'Slowpoke',0,1089,1218,'https://img.pokemondb.net/artwork/slowpoke.jpg',NULL,0,1,80),(80,45,NULL,'Slowbro',0,2409,2597,'https://img.pokemondb.net/artwork/slowbro.jpg',NULL,0,1,NULL),(81,46,47,'Magnemite',0,774,890,'https://img.pokemondb.net/artwork/magnemite.jpg',NULL,0,1,82),(82,46,NULL,'Magneton',0,1715,1879,'https://img.pokemondb.net/artwork/magneton.jpg',NULL,0,1,NULL),(83,47,NULL,'Farfetch\'d',0,1133,1263,'https://img.pokemondb.net/artwork/farfetchd.jpg',NULL,0,1,NULL),(84,48,48,'Doduo',0,746,855,'https://img.pokemondb.net/artwork/doduo.jpg',NULL,0,1,85),(85,49,NULL,'Dodrio',0,1677,1836,'https://img.pokemondb.net/artwork/dodrio.jpg',NULL,0,1,NULL),(86,50,49,'Seel',0,985,1107,'https://img.pokemondb.net/artwork/seel.jpg',NULL,0,1,87),(87,50,NULL,'Dewgong',0,1975,2145,'https://img.pokemondb.net/artwork/dewgong.jpg',NULL,0,1,NULL),(88,51,50,'Grimer',0,1152,1284,'https://img.pokemondb.net/artwork/grimer.jpg',NULL,0,1,89),(89,51,NULL,'Muk',0,2414,2602,'https://img.pokemondb.net/artwork/muk.jpg',NULL,0,1,NULL),(90,52,51,'Shellder',0,715,822,'https://img.pokemondb.net/artwork/shellder.jpg',NULL,0,1,91),(91,52,NULL,'Cloyster',0,1879,2052,'https://img.pokemondb.net/artwork/cloyster.jpg',NULL,0,1,NULL),(92,53,52,'Gastly',0,696,804,'https://img.pokemondb.net/artwork/gastly.jpg',NULL,0,1,93),(93,53,53,'Haunter',0,1240,1380,'https://img.pokemondb.net/artwork/haunter.jpg',NULL,0,1,94),(94,54,NULL,'Gengar',0,1907,2078,'https://img.pokemondb.net/artwork/gengar.jpg',NULL,0,1,NULL),(95,55,NULL,'Onix',0,745,857,'https://img.pokemondb.net/artwork/onix.jpg',NULL,0,1,NULL),(96,56,54,'Drowzee',0,955,1075,'https://img.pokemondb.net/artwork/drowzee.jpg',NULL,0,1,97),(97,56,NULL,'Hypno',0,2012,2184,'https://img.pokemondb.net/artwork/hypno.jpg',NULL,0,1,NULL),(98,57,55,'Krabby',0,686,792,'https://img.pokemondb.net/artwork/krabby.jpg',NULL,0,1,99),(99,58,NULL,'Kingler',0,1663,1823,'https://img.pokemondb.net/artwork/kingler.jpg',NULL,0,1,NULL),(100,59,56,'Voltorb',0,733,839,'https://img.pokemondb.net/artwork/voltorb.jpg',NULL,0,1,101),(101,59,NULL,'Electrode',0,1496,1646,'https://img.pokemondb.net/artwork/electrode.jpg',NULL,0,1,NULL),(102,60,57,'Exeggcute',0,978,1099,'https://img.pokemondb.net/artwork/exeggcute.jpg',NULL,0,1,103),(103,61,NULL,'Exeggutor',0,2752,2955,'https://img.pokemondb.net/artwork/exeggutor.jpg',NULL,0,1,NULL),(104,62,58,'Cubone',0,889,1006,'https://img.pokemondb.net/artwork/cubone.jpg',NULL,0,1,105),(105,63,NULL,'Marowak',0,1505,1656,'https://img.pokemondb.net/artwork/marowak.jpg',NULL,0,1,NULL),(106,64,NULL,'Hitmonlee',0,1349,1492,'https://img.pokemondb.net/artwork/hitmonlee.jpg',NULL,0,1,107),(107,65,NULL,'Hitmonchan',0,1370,1516,'https://img.pokemondb.net/artwork/hitmonchan.jpg',NULL,0,1,108),(108,66,NULL,'Lickitung',0,1477,1626,'https://img.pokemondb.net/artwork/lickitung.jpg',NULL,0,1,NULL),(109,67,59,'Koffing',0,1025,1151,'https://img.pokemondb.net/artwork/koffing.jpg',NULL,0,1,110),(110,67,NULL,'Weezing',0,2073,2250,'https://img.pokemondb.net/artwork/weezing.jpg',NULL,0,1,NULL),(111,68,60,'Rhyhorn',0,1055,1182,'https://img.pokemondb.net/artwork/rhyhorn.jpg',NULL,0,1,112),(112,69,NULL,'Rhydon',0,2068,2243,'https://img.pokemondb.net/artwork/rhydon.jpg',NULL,0,1,113),(113,60,NULL,'Chansey',0,549,675,'https://img.pokemondb.net/artwork/chansey.jpg',NULL,0,1,NULL),(114,70,NULL,'Tangela',0,1586,1739,'https://img.pokemondb.net/artwork/tangela.jpg',NULL,0,1,NULL),(115,71,NULL,'Kangaskhan',0,1875,2043,'https://img.pokemondb.net/artwork/kangaskhan.jpg',NULL,0,1,NULL),(116,72,61,'Horsea',0,688,794,'https://img.pokemondb.net/artwork/horsea.jpg',NULL,0,1,117),(117,72,NULL,'Seadra',0,1559,1713,'https://img.pokemondb.net/artwork/seadra.jpg',NULL,0,1,NULL),(118,73,62,'Goldeen',0,851,965,'https://img.pokemondb.net/artwork/goldeen.jpg',NULL,0,1,11),(119,73,NULL,'Seaking',0,1877,2043,'https://img.pokemondb.net/artwork/seaking.jpg',NULL,0,1,NULL),(120,74,63,'Staryu',0,821,937,'https://img.pokemondb.net/artwork/staryu.jpg',NULL,0,1,121),(121,75,NULL,'Starmie',0,2007,2182,'https://img.pokemondb.net/artwork/starmie.jpg',NULL,1,1,NULL),(122,76,NULL,'Mr. Mime',0,1345,1494,'https://img.pokemondb.net/artwork/mr. mime.jpg',NULL,0,1,NULL),(123,77,NULL,'Scyther',0,1905,2073,'https://img.pokemondb.net/artwork/scyther.jpg',NULL,0,1,NULL),(124,78,NULL,'Jynx',0,1563,1716,'https://img.pokemondb.net/artwork/jynx.jpg',NULL,0,1,NULL),(125,79,NULL,'Electabuzz',0,1947,2119,'https://img.pokemondb.net/artwork/electabuzz.jpg',NULL,0,1,NULL),(126,80,NULL,'Magmar',0,2086,2265,'https://img.pokemondb.net/artwork/magmar.jpg',NULL,0,1,NULL),(127,81,NULL,'Pinsir',0,1950,2121,'https://img.pokemondb.net/artwork/pinsir.jpg',NULL,0,1,NULL),(128,82,NULL,'Tauros',0,1686,1844,'https://img.pokemondb.net/artwork/tauros.jpg',NULL,0,1,NULL),(129,83,64,'Magikarp',0,203,262,'https://img.pokemondb.net/artwork/magikarp.jpg',NULL,0,1,130),(130,84,NULL,'Gyarados',0,2498,2688,'https://img.pokemondb.net/artwork/gyarados.jpg',NULL,0,1,NULL),(131,85,NULL,'Lapras',0,2777,2980,'https://img.pokemondb.net/artwork/lapras.jpg',NULL,0,1,NULL),(132,86,NULL,'Ditto',0,809,919,'https://img.pokemondb.net/artwork/ditto.jpg',NULL,0,1,NULL),(133,87,65,'Eevee',0,957,1077,'https://img.pokemondb.net/artwork/eevee.jpg',NULL,0,1,134),(134,88,NULL,'Vaporeon',0,2618,2816,'https://img.pokemondb.net/artwork/vaporeon.jpg',NULL,0,1,NULL),(135,89,NULL,'Jolteon',0,1968,2140,'https://img.pokemondb.net/artwork/jolteon.jpg',NULL,0,1,NULL),(136,3,NULL,'Flareon',0,2448,2643,'https://img.pokemondb.net/artwork/flareon.jpg',NULL,0,1,NULL),(137,90,NULL,'Porygon',0,1540,1691,'https://img.pokemondb.net/artwork/porygon.jpg',NULL,0,1,NULL),(138,91,66,'Omanyte',0,992,1119,'https://img.pokemondb.net/artwork/omanyte.jpg',NULL,0,1,140),(139,91,NULL,'Omastar',0,2058,2233,'https://img.pokemondb.net/artwork/omastar.jpg',NULL,0,1,NULL),(140,6,67,'Kabuto',0,975,1104,'https://img.pokemondb.net/artwork/kabuto.jpg',NULL,0,1,141),(141,6,NULL,'Kabutops',0,1957,2130,'https://img.pokemondb.net/artwork/kabutops.jpg',NULL,0,1,NULL),(142,92,NULL,'Aerodactyl',0,1994,2165,'https://img.pokemondb.net/artwork/aerodactyl.jpg',NULL,0,1,NULL),(143,93,NULL,'Snorlax',0,2901,3112,'https://img.pokemondb.net/artwork/snorlax.jpg',NULL,0,1,NULL),(144,94,NULL,'Articuno',0,2776,2978,'https://img.pokemondb.net/artwork/articuno.jpg',NULL,0,1,NULL),(145,79,NULL,'Zapdos',0,2907,3114,'https://img.pokemondb.net/artwork/zapdos.jpg',NULL,0,1,NULL),(146,3,NULL,'Moltres',0,3028,3240,'https://img.pokemondb.net/artwork/moltres.jpg',NULL,0,1,NULL),(147,72,68,'Dratini',0,867,983,'https://img.pokemondb.net/artwork/dratini.jpg',NULL,0,1,148),(148,72,69,'Dragonair',0,1593,1747,'https://img.pokemondb.net/artwork/dragonair.jpg',NULL,0,1,149),(149,72,NULL,'Dragonite',0,3280,3500,'https://img.pokemondb.net/artwork/dragonite.jpg',NULL,0,1,NULL),(150,96,NULL,'Mewtwo',0,3904,4144,'https://img.pokemondb.net/artwork/mewtwo.jpg',NULL,0,1,NULL),(151,96,NULL,'Mew',0,3087,3299,'https://img.pokemondb.net/artwork/mew.jpg',NULL,0,1,NULL);
/*!40000 ALTER TABLE `tb_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_requerimiento`
--

DROP TABLE IF EXISTS `tb_requerimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_requerimiento` (
  `id_requerimiento` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `id_objeto` int DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_requerimiento`),
  UNIQUE KEY `id_requerimiento_UNIQUE` (`id_requerimiento`),
  KEY `fk_idobjeto_idx` (`id_objeto`),
  CONSTRAINT `fk_idobjeto` FOREIGN KEY (`id_objeto`) REFERENCES `tb_objeto` (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_requerimiento`
--

LOCK TABLES `tb_requerimiento` WRITE;
/*!40000 ALTER TABLE `tb_requerimiento` DISABLE KEYS */;
INSERT INTO `tb_requerimiento` VALUES (1,25,NULL,1,1),(2,100,NULL,1,1),(3,25,NULL,2,1),(4,100,NULL,2,1),(5,25,NULL,3,1),(6,100,NULL,3,1),(7,12,NULL,4,1),(8,50,NULL,4,1),(9,12,NULL,5,1),(10,50,NULL,5,1),(11,12,NULL,6,1),(12,50,NULL,6,1),(13,25,NULL,7,1),(14,50,NULL,8,1),(15,50,NULL,9,1),(16,50,NULL,10,1),(17,50,NULL,11,1),(18,25,NULL,12,1),(19,100,NULL,12,1),(20,25,NULL,13,1),(21,100,NULL,13,1),(22,50,NULL,14,1),(23,50,NULL,15,1),(24,50,NULL,16,1),(25,50,NULL,17,1),(26,25,NULL,18,1),(27,100,NULL,18,1),(28,50,NULL,19,1),(29,50,NULL,20,1),(30,50,NULL,21,1),(31,50,NULL,22,1),(32,50,NULL,23,1),(33,50,NULL,24,1),(34,25,NULL,25,1),(35,100,NULL,25,1),(36,25,NULL,26,1),(37,100,NULL,26,1),(38,25,NULL,27,1),(39,100,NULL,27,1),(40,25,NULL,28,1),(41,100,NULL,28,1),(42,50,NULL,29,1),(43,25,NULL,30,1),(44,100,NULL,30,1),(45,50,NULL,31,1),(46,50,NULL,32,1),(47,50,NULL,33,1),(48,50,NULL,34,1),(49,50,NULL,35,1),(50,50,NULL,36,1),(51,50,NULL,37,1),(52,25,NULL,38,1),(53,100,NULL,38,1),(54,50,NULL,39,1),(55,50,NULL,40,1),(56,50,NULL,41,1),(57,50,NULL,42,1),(58,50,NULL,43,1),(59,50,NULL,44,1),(60,50,NULL,45,1),(61,50,NULL,46,1),(62,50,NULL,47,1),(63,50,NULL,48,1),(64,400,NULL,49,1),(65,25,NULL,50,1),(66,50,NULL,51,1),(67,50,NULL,52,1),(68,25,NULL,53,1),(69,100,NULL,53,1),(70,50,NULL,54,1);
/*!40000 ALTER TABLE `tb_requerimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo`
--

DROP TABLE IF EXISTS `tb_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo`),
  UNIQUE KEY `id_tipo_UNIQUE` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo`
--

LOCK TABLES `tb_tipo` WRITE;
/*!40000 ALTER TABLE `tb_tipo` DISABLE KEYS */;
INSERT INTO `tb_tipo` VALUES (1,'Grass',1),(2,'Poison',1),(3,'Fire',1),(4,'Flying',1),(5,'Water',1),(6,'Bug',1),(7,'Normal',1),(8,'Electric',1),(9,'Ground',1),(10,'Fairy',1),(11,'Fighting',1),(12,'Psychic',1),(13,'Rock',1),(14,'Steel',1),(15,'Ice',1),(16,'Ghost',1),(17,'Dragon',1),(18,'Dark',1);
/*!40000 ALTER TABLE `tb_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_ataque`
--

DROP TABLE IF EXISTS `tb_tipo_ataque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_ataque` (
  `id_tipo_ataque` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo_ataque`),
  UNIQUE KEY `id_tipo_ataque_UNIQUE` (`id_tipo_ataque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_ataque`
--

LOCK TABLES `tb_tipo_ataque` WRITE;
/*!40000 ALTER TABLE `tb_tipo_ataque` DISABLE KEYS */;
INSERT INTO `tb_tipo_ataque` VALUES (1,'Rapido',1),(2,'Normal',1),(3,'Especial',1);
/*!40000 ALTER TABLE `tb_tipo_ataque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_evolucion`
--

DROP TABLE IF EXISTS `tb_tipo_evolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_evolucion` (
  `id_tipo_evolucion` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo_evolucion`),
  UNIQUE KEY `id_tipo_evolucion_UNIQUE` (`id_tipo_evolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_evolucion`
--

LOCK TABLES `tb_tipo_evolucion` WRITE;
/*!40000 ALTER TABLE `tb_tipo_evolucion` DISABLE KEYS */;
INSERT INTO `tb_tipo_evolucion` VALUES (1,'Previous Evolution',1),(2,'Evolution',1);
/*!40000 ALTER TABLE `tb_tipo_evolucion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-18 13:42:50
