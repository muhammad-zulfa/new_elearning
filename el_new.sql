-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: el_new
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `el_new`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `el_new` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `el_new`;

--
-- Table structure for table `el_field_tambahan`
--

DROP TABLE IF EXISTS `el_field_tambahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_field_tambahan`
--

LOCK TABLES `el_field_tambahan` WRITE;
/*!40000 ALTER TABLE `el_field_tambahan` DISABLE KEYS */;
INSERT INTO `el_field_tambahan` VALUES ('check-urgent-info','Check Urgent Info','{\"info\":\"\",\"last_check\":\"2022-01-04 07:54:56\"}');
/*!40000 ALTER TABLE `el_field_tambahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_kelas`
--

DROP TABLE IF EXISTS `el_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `urutan` int NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=aktif 0=tidak',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_id_2` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_kelas`
--

LOCK TABLES `el_kelas` WRITE;
/*!40000 ALTER TABLE `el_kelas` DISABLE KEYS */;
INSERT INTO `el_kelas` VALUES (1,'KELAS CRO',NULL,1,1),(2,'KELAS CRO - Angkatan &lt; 2021',1,2,1),(3,'KELAS CRO - Angkatan 2022',1,3,1),(4,'KELAS - C',11,10,0),(5,'KELAS - D',11,11,0),(6,'KELAS AJIB',NULL,4,1),(7,'KELAS AJIB - Angkatan &lt; 2021',6,5,1),(8,'KELAS AJIB - Angkatan 2022',6,6,1),(9,'KELAS - G',11,14,0),(10,'KELAS - H',11,15,0),(11,'KELAS KOSONG',NULL,7,1),(12,'KELAS - A',11,8,0),(13,'KELAS - B',11,9,0),(14,'KELAS - E',11,12,0),(15,'KELAS - I',11,16,0),(16,'KELAS - F',11,13,0);
/*!40000 ALTER TABLE `el_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_kelas_siswa`
--

DROP TABLE IF EXISTS `el_kelas_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_kelas_siswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kelas_id` int NOT NULL,
  `siswa_id` int NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya',
  PRIMARY KEY (`id`),
  KEY `kelas_id` (`kelas_id`,`siswa_id`),
  KEY `kelas_id_2` (`kelas_id`,`siswa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_kelas_siswa`
--

LOCK TABLES `el_kelas_siswa` WRITE;
/*!40000 ALTER TABLE `el_kelas_siswa` DISABLE KEYS */;
INSERT INTO `el_kelas_siswa` VALUES (1,3,1,1),(2,3,2,1),(3,3,3,1),(4,3,4,1),(5,3,5,1),(6,3,6,1),(7,3,7,1),(8,3,8,1),(9,3,9,1),(10,3,10,1),(11,3,11,1),(12,3,12,1);
/*!40000 ALTER TABLE `el_kelas_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_komentar`
--

DROP TABLE IF EXISTS `el_komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_komentar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_id` int NOT NULL,
  `materi_id` int NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=tidak,1=tampil',
  `konten` text,
  `tgl_posting` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`,`materi_id`),
  KEY `login_id_2` (`login_id`,`materi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_komentar`
--

LOCK TABLES `el_komentar` WRITE;
/*!40000 ALTER TABLE `el_komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_login`
--

DROP TABLE IF EXISTS `el_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int DEFAULT NULL,
  `pengajar_id` int DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  KEY `username_2` (`username`,`siswa_id`,`pengajar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_login`
--

LOCK TABLES `el_login` WRITE;
/*!40000 ALTER TABLE `el_login` DISABLE KEYS */;
INSERT INTO `el_login` VALUES (1,'donnyadhi@gmail.com','d66ddc320235dfd99a66300461431230',NULL,1,1,NULL),(2,'rezkie@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,0,NULL),(3,'bramadhanitribuana@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,3,0,NULL),(4,'npramestiutami@gmail.com','af3022c3da1223bca4730bcd3448215e',1,NULL,0,NULL),(5,'citranuranijelita@gmail.com','18474a42b1e097d175daa39522f8a765',2,NULL,0,NULL),(6,'febriantya500@gmail.com','d0c98a3a19270a05a201309c24f36170',3,NULL,0,NULL),(7,'rheynadaastas@gmail.com','19204ad7f7c85fdb629861632342c713',4,NULL,0,NULL),(8,'nickyfranidaoffice@gmail.com','087e4585e5fd310d008e0e13723e5dab',5,NULL,0,NULL),(9,'putrifzh1919@gmail.com','07482c144746bf22133db3ef5299e695',6,NULL,0,NULL),(10,'fitriahanifah92@gmail.com','6689437559642ea1382526a9f84a975f',7,NULL,0,NULL),(11,'putrimrst@gmail.com','d83c62a1cbed80b7a13f8b5eb34ac37d',8,NULL,0,NULL),(12,'trisnawingki24@gmail.com','60fdeb00907806cde4148c64276e4b67',9,NULL,0,NULL),(13,'rifiana@vemelia.com','6c5f3b47b43138a92e2de632da7a94c9',10,NULL,0,NULL),(14,'dillaanjani25@gmail.com','a79a809dfe7b901c341705779521aa5e',11,NULL,0,NULL),(15,'larachman89@gmail.com','4427bde767edf11633b456155a6751ac',12,NULL,0,NULL);
/*!40000 ALTER TABLE `el_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_login_log`
--

DROP TABLE IF EXISTS `el_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_login_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_id` int NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`),
  KEY `login_id_2` (`login_id`),
  KEY `login_id_3` (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_login_log`
--

LOCK TABLES `el_login_log` WRITE;
/*!40000 ALTER TABLE `el_login_log` DISABLE KEYS */;
INSERT INTO `el_login_log` VALUES (1,1,'2021-12-03 15:15:07','{\"is_mobile\":0,\"browser\":\"Chrome 94.0.4606.104\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (X11; CrOS x86_64 14150.64.0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.104 Safari\\/537.36\",\"ip\":\"202.180.29.26\"}',1638538661),(2,1,'2021-12-06 19:26:09','{\"is_mobile\":0,\"browser\":\"Chrome 94.0.4606.104\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (X11; CrOS x86_64 14150.64.0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.104 Safari\\/537.36\",\"ip\":\"180.252.95.133\"}',1638794470),(3,1,'2021-12-10 06:42:54','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.93\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.93 Safari\\/537.36\",\"ip\":\"103.209.7.44\"}',1639103198),(4,2,'2021-12-10 07:49:42','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.93\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.93 Safari\\/537.36\",\"ip\":\"103.209.7.43\"}',1639097658),(5,1,'2021-12-10 09:27:00','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.93\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.93 Safari\\/537.36\",\"ip\":\"103.209.7.44\"}',1639128485),(6,1,'2021-12-14 08:21:05','{\"is_mobile\":0,\"browser\":\"Chrome 94.0.4606.104\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (X11; CrOS x86_64 14150.64.0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.104 Safari\\/537.36\",\"ip\":\"202.180.29.26\"}',1639445515),(7,1,'2021-12-14 10:11:30','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.93\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.93 Safari\\/537.36\",\"ip\":\"202.180.29.26\"}',1639457373),(8,1,'2021-12-14 12:57:38','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.93\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.93 Safari\\/537.36\",\"ip\":\"103.209.7.44\"}',1639474167),(9,1,'2021-12-17 10:46:06','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"103.209.7.42\"}',1639722395),(10,1,'2021-12-17 13:26:47','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"103.209.7.42\"}',1639723788),(11,1,'2021-12-28 08:49:26','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"103.209.7.42\"}',1640660443),(12,1,'2021-12-28 10:03:55','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"103.209.7.42\"}',1640682554),(13,1,'2021-12-28 16:11:14','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"114.124.188.117\"}',1640686866),(14,1,'2022-01-03 09:55:58','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"114.124.163.221\"}',1641179209),(15,1,'2022-01-04 07:54:54','{\"is_mobile\":0,\"browser\":\"Chrome 96.0.4664.110\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/96.0.4664.110 Safari\\/537.36\",\"ip\":\"103.209.7.44\"}',1641285950);
/*!40000 ALTER TABLE `el_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_mapel`
--

DROP TABLE IF EXISTS `el_mapel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_mapel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `info` text,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = ya, 0 = tidak',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_mapel`
--

LOCK TABLES `el_mapel` WRITE;
/*!40000 ALTER TABLE `el_mapel` DISABLE KEYS */;
INSERT INTO `el_mapel` VALUES (1,'Pengenalan DPMPTSP','',1),(2,'Perizinan dan Non Perizinan Kewenangan DPMPTSP','',1),(3,'OSS di DPMPTSP','',1),(4,'Manajemen Bersikap dan Berperilaku','',1),(5,'Beauty Class untuk CRO','',1),(6,'Defensive Driving untuk Petugas AJIB','',1),(7,'Perizinan dan Non-Perizinan Online di DPMPTSP','',1),(8,'Mengoperasikan JAKEVO','',1),(9,'Pencatatan Kinerja Harian Melalui ePJLP DPMPTSP','',1),(10,'Hak dan Kewajiban PJLP','',1);
/*!40000 ALTER TABLE `el_mapel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_mapel_ajar`
--

DROP TABLE IF EXISTS `el_mapel_ajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_mapel_ajar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int NOT NULL,
  `mapel_kelas_id` int NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = aktif 0 = tidak',
  PRIMARY KEY (`id`),
  KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_mapel_ajar`
--

LOCK TABLES `el_mapel_ajar` WRITE;
/*!40000 ALTER TABLE `el_mapel_ajar` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_mapel_ajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_mapel_kelas`
--

DROP TABLE IF EXISTS `el_mapel_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_mapel_kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kelas_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `kelas_id` (`kelas_id`,`mapel_id`),
  KEY `kelas_id_2` (`kelas_id`,`mapel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_mapel_kelas`
--

LOCK TABLES `el_mapel_kelas` WRITE;
/*!40000 ALTER TABLE `el_mapel_kelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_mapel_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_materi`
--

DROP TABLE IF EXISTS `el_materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_materi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mapel_id` int NOT NULL,
  `pengajar_id` int DEFAULT NULL,
  `siswa_id` int DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text,
  `file` text,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `views` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_materi`
--

LOCK TABLES `el_materi` WRITE;
/*!40000 ALTER TABLE `el_materi` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_materi_kelas`
--

DROP TABLE IF EXISTS `el_materi_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_materi_kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `materi_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materi_id` (`materi_id`,`kelas_id`),
  KEY `materi_id_2` (`materi_id`,`kelas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_materi_kelas`
--

LOCK TABLES `el_materi_kelas` WRITE;
/*!40000 ALTER TABLE `el_materi_kelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_materi_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_messages`
--

DROP TABLE IF EXISTS `el_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int NOT NULL,
  `sender_receiver_id` int NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=belum,1=sudah',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_messages`
--

LOCK TABLES `el_messages` WRITE;
/*!40000 ALTER TABLE `el_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_nilai_tugas`
--

DROP TABLE IF EXISTS `el_nilai_tugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_nilai_tugas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nilai` float NOT NULL,
  `tugas_id` int NOT NULL,
  `siswa_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`,`siswa_id`),
  KEY `tugas_id_2` (`tugas_id`,`siswa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_nilai_tugas`
--

LOCK TABLES `el_nilai_tugas` WRITE;
/*!40000 ALTER TABLE `el_nilai_tugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_nilai_tugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pengajar`
--

DROP TABLE IF EXISTS `el_pengajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_pengajar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok',
  PRIMARY KEY (`id`),
  KEY `nip` (`nip`),
  KEY `nip_2` (`nip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pengajar`
--

LOCK TABLES `el_pengajar` WRITE;
/*!40000 ALTER TABLE `el_pengajar` DISABLE KEYS */;
INSERT INTO `el_pengajar` VALUES (1,'198406102010011029','Donny Adhi','Laki-laki','Jakarta','1984-06-10','Pondok Bambu Kuning Blok A5 No. 17 - BojongGede Kab. Bogor',NULL,1),(2,'198606182010012029','Rezky Melinda','Perempuan','Bogor','1986-06-18','Palm Hill St. 56 Bogor - West Java','pengajar-rezky-melinda1.jpg',1),(3,'198705042010011012','Bramadhani Tribuana','Laki-laki','Jakarta','1987-05-04','JL. Margi Utami No.35 RT01/RW07 Kelurahan Bantar Gebang, Kecamatan Bantar Gebang',NULL,1);
/*!40000 ALTER TABLE `el_pengajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pengaturan`
--

DROP TABLE IF EXISTS `el_pengaturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pengaturan`
--

LOCK TABLES `el_pengaturan` WRITE;
/*!40000 ALTER TABLE `el_pengaturan` DISABLE KEYS */;
INSERT INTO `el_pengaturan` VALUES ('email-server','Email server','no-reply@domain.com'),('email-template-approve-pengajar','Approve pengajar (email pengajar)','{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),('email-template-approve-siswa','Approve siswa (email siswa)','{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),('email-template-link-reset','Link Reset Password','{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),('email-template-register-pengajar','Register pengajar (email pengajar)','{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),('email-template-register-siswa','Register siswa (email siswa)','{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),('info-registrasi','Info Registrasi','<p>Silakan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>'),('peraturan-elearning','Peraturan E-learning',''),('registrasi-pengajar','Registrasi Pengajar','1'),('registrasi-siswa','Registrasi Siswa','1'),('versi','Versi','2.0'),('jenjang','jenjang','SMA'),('nama-sekolah','nama-sekolah','Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu'),('alamat','alamat','Jl. Epicentrum Selatan Kav. C.22 Jakarta Selatan'),('telp','telp','1500164'),('install-success','install-success','1');
/*!40000 ALTER TABLE `el_pengaturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pengumuman`
--

DROP TABLE IF EXISTS `el_pengumuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_pengumuman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT '1',
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT '1',
  `pengajar_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pengajar_id` (`pengajar_id`),
  KEY `pengajar_id_2` (`pengajar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pengumuman`
--

LOCK TABLES `el_pengumuman` WRITE;
/*!40000 ALTER TABLE `el_pengumuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_pengumuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pilihan`
--

DROP TABLE IF EXISTS `el_pilihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_pilihan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pertanyaan_id` int NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint NOT NULL DEFAULT '0' COMMENT '0=tidak',
  `urutan` int NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pertanyaan_id` (`pertanyaan_id`),
  KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pilihan`
--

LOCK TABLES `el_pilihan` WRITE;
/*!40000 ALTER TABLE `el_pilihan` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_pilihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_siswa`
--

DROP TABLE IF EXISTS `el_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_siswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year NOT NULL,
  `foto` text,
  `status_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted',
  PRIMARY KEY (`id`),
  KEY `nis` (`nis`,`nama`,`status_id`),
  KEY `nis_2` (`nis`,`nama`,`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_siswa`
--

LOCK TABLES `el_siswa` WRITE;
/*!40000 ALTER TABLE `el_siswa` DISABLE KEYS */;
INSERT INTO `el_siswa` VALUES (1,'3175107010980001','Nadya Presti Utami Suci','Perempuan','Jakarta','1998-10-30','ISLAM','Jalan Gorda RT 08 RW 05 No 57 Kelurahan Lubang Buaya Kecamatan Cipayung Jakarta Timur',2022,NULL,1),(2,'3171075809990004','Citra Nurani Jelita','Perempuan','Jakarta','1999-09-18','ISLAM','Jalan Petamburan RT. 012/RW. 004, Kelurahan Petamburan, Kecamatan Tanah Abang, Jakarta Pusat',2022,NULL,1),(3,'1271066701000006','Annisa Febrianty Milenia','Perempuan','medan','2000-01-27','ISLAM','jalan raya pulo gebang no 14',2022,NULL,1),(4,'3276035007970002','Rheynada Asta Saputri','Perempuan','Jakarta','1997-07-10','ISLAM','Jl Sekolah No 23 RT004/RW010 Kel: Pondok Labu, Kec: Cilandak',2022,NULL,1),(5,'3674054112920006','NICKY FRANIDA NUGRAHANI','Perempuan','JAKARTA','1992-12-01','ISLAM','ASRAMA BRIMOB CIPINANG RT:002/005. PULOGADUNG, JAKARTA TIMUR',2022,NULL,1),(6,'3174055901000001','Putri Fauziah','Perempuan','Jakarta','2000-01-19','ISLAM','Jl. H. Muhi III, rt 11 rw 01 no 46(atas). Pondok pinang, kebayoran lama, jakarta selatan',2022,NULL,1),(7,'3674015410920002','Fitria Hanifah','Perempuan','Bogor','1992-10-14','ISLAM','Ciater Permai Blok B-5/10',2022,NULL,1),(8,'3521097003970001','Putri Marista','Perempuan','Ngawi','1997-03-30','ISLAM','',2022,NULL,1),(9,'7318056404970004','Trisnawingki Kiki','Perempuan','Makale','1997-04-24','KRISTEN','Jalan Antara Nomor 11 Pasar Baru',2022,NULL,1),(10,'3216065510960001','Rifiana Vemelia','Perempuan','Bekasi','1996-10-15','ISLAM','Jalan Delima V Blok D No. 290 RT 001 RW 013 Kelurahan Jatimulya, Kecamatan Tambun Selatan, Kabupaten Bekasi',2022,NULL,1),(11,'1472016501890023','Dilla Anjani','Perempuan','Pekanbaru','1989-01-25','ISLAM','Perum Asabri indah m6 no 65 rt01 rw 018 jatiasih',2022,NULL,1),(12,'3671114505890008','Lara Fitrianti','Perempuan','Jayapura','1989-05-05','ISLAM','Jl Jawa I No.16 RT/RW.007/006 Kel.Kunciran Kec.Pinang Kota Tangerang Banten',2022,NULL,1);
/*!40000 ALTER TABLE `el_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas`
--

DROP TABLE IF EXISTS `el_tugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_tugas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mapel_id` int NOT NULL,
  `pengajar_id` int NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=tidak tampil di siswa, 1=tampil siswa',
  PRIMARY KEY (`id`),
  KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas`
--

LOCK TABLES `el_tugas` WRITE;
/*!40000 ALTER TABLE `el_tugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_tugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas_kelas`
--

DROP TABLE IF EXISTS `el_tugas_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_tugas_kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tugas_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`,`kelas_id`),
  KEY `tugas_id_2` (`tugas_id`,`kelas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas_kelas`
--

LOCK TABLES `el_tugas_kelas` WRITE;
/*!40000 ALTER TABLE `el_tugas_kelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_tugas_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas_pertanyaan`
--

DROP TABLE IF EXISTS `el_tugas_pertanyaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_tugas_pertanyaan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pertanyaan` text NOT NULL,
  `urutan` int NOT NULL,
  `tugas_id` int NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`),
  KEY `tugas_id_2` (`tugas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas_pertanyaan`
--

LOCK TABLES `el_tugas_pertanyaan` WRITE;
/*!40000 ALTER TABLE `el_tugas_pertanyaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_tugas_pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-11 16:05:25
