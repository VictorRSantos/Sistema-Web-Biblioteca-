CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `adiciona_livro`
--

DROP TABLE IF EXISTS `adiciona_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adiciona_livro` (
  `user_id` varchar(200) DEFAULT NULL,
  `livro_id` varchar(200) DEFAULT NULL,
  `adiciona_date` varchar(200) DEFAULT NULL,
  `retorno_date` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adiciona_livro`
--

LOCK TABLES `adiciona_livro` WRITE;
/*!40000 ALTER TABLE `adiciona_livro` DISABLE KEYS */;
INSERT INTO `adiciona_livro` VALUES ('11MCA04	','1','26/10/2013','10/11/2013'),('1','1','04/12/2016','07/12/2016');
/*!40000 ALTER TABLE `adiciona_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_livro`
--

DROP TABLE IF EXISTS `detalhes_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhes_livro` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `paginas` varchar(200) DEFAULT NULL,
  `categoria` varchar(200) DEFAULT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  `edicao` varchar(200) DEFAULT NULL,
  `publicacao` varchar(200) DEFAULT NULL,
  `autor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_livro`
--

LOCK TABLES `detalhes_livro` WRITE;
/*!40000 ALTER TABLE `detalhes_livro` DISABLE KEYS */;
INSERT INTO `detalhes_livro` VALUES (1,'ANCI C','543','Text Book','9884858702','2nd','TATA Mecrawhill','Balagurusamy'),(2,' Facebook Twitter Google Plus  Sistemas de Banco de Dados','200','Informatica','123456789','8 Ed','Cengage Learning','Coronel,Carlos'),(3,' Facebook Twitter Google Plus  Java Para Iniciantes','79','Informatica','2541452365','5 Ed','Bookman','Schildt,Herbert'),(4,'Java How To Program ','520','Informatica','123467898411','9 Ed','Prentice Hall','Paul Deitel'),(5,'Big Java  Early Objects','300','Informatica','521412523','5 Ed','Whurr Publishing','Horstmann,Cay S');
/*!40000 ALTER TABLE `detalhes_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'professor','professor'),(2,'aluno','aluno');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-04 21:17:10
