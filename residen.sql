-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: residen
-- ------------------------------------------------------
-- Server version	10.3.16-MariaDB

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
-- Table structure for table `agama`
--

DROP TABLE IF EXISTS `agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agama`
--

LOCK TABLES `agama` WRITE;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` VALUES (1,'Islam'),(2,'Kristen'),(3,'Hindu'),(4,'Buddha');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus`
--

DROP TABLE IF EXISTS `kursus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus` (
  `kursus_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `kursus_name` varchar(255) DEFAULT NULL,
  `tempat` varchar(128) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`kursus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus`
--

LOCK TABLES `kursus` WRITE;
/*!40000 ALTER TABLE `kursus` DISABLE KEYS */;
INSERT INTO `kursus` VALUES (1,118,'test','Bali','2022-06-01','2022-06-01'),(3,7,'test 123','Bali','2019-04-16','2019-04-16');
/*!40000 ALTER TABLE `kursus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makalah`
--

DROP TABLE IF EXISTS `makalah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makalah` (
  `makalah_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `makalah_type` varchar(25) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `tanggal_baca` date DEFAULT NULL,
  `bap_makalah` int(1) DEFAULT NULL,
  `pembimbing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`makalah_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makalah`
--

LOCK TABLES `makalah` WRITE;
/*!40000 ALTER TABLE `makalah` DISABLE KEYS */;
INSERT INTO `makalah` VALUES (1,118,'Makalah I','Test',1,'2022-06-01',0,1),(5,7,'Makalah III','Test',1,'2022-01-11',0,4),(6,7,'Makalah II','Test',1,'2022-02-10',0,18),(7,7,'Tinjauan Pustaka','Test 1234',0,'1970-01-01',0,21),(8,1,'Makalah I','test',1,'2022-06-08',1,5),(9,132,'Tinjauan Pustaka','Kanker Gaster',1,'2022-06-26',0,38),(10,133,'Laporan Kasus','Evaluasi Pemasangan Peritoneal Dialysis di RSUP. Wahidin  Sudirohusodo Makassar pada Bulan Januari 2019 – Juni 2022',1,'2022-06-26',0,38);
/*!40000 ALTER TABLE `makalah` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(7,'2019_12_14_000001_create_personal_access_tokens_table',2),(12,'2022_08_03_065732_create_tempat_stase',3),(13,'2022_08_04_005547_create_pembimbing',4),(15,'2022_08_04_022740_create_residen_bedah',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembimbing`
--

DROP TABLE IF EXISTS `pembimbing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembimbing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pembimbing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembimbing`
--

LOCK TABLES `pembimbing` WRITE;
/*!40000 ALTER TABLE `pembimbing` DISABLE KEYS */;
INSERT INTO `pembimbing` VALUES (1,'','Prof. dr. Chairuddin Rasjad, Ph.D'),(2,'','Prof. dr. Farid Nur Mantu, SpB, SpBA'),(3,'','Prof. dr. Achmad M. Palinrungi, SpB, SpU'),(4,'','Prof. Dr. dr. Andi Asadul Islam, SpBS(K)'),(5,'','dr. A.J. Rieuwpassa, SpB, SpBP-RE'),(6,'','Prof. Dr. dr. Daniel Sampepajung, SpB(K)Onk'),(7,'','dr. Sumantri Sarimin, SpB, SpBP-RE'),(8,'','dr. Murny A. Rauf, SpB-KBD'),(9,'','dr. Haryasena, SpB(K)Onk'),(10,'','dr. Sulaihi, SpB-KBD'),(11,'','dr. Muhammad Nuralim Mallapasi, SpB, SpBTKV'),(12,'','Dr. dr. Djoko Widodo, SpBS(K)'),(13,'','Dr. dr. Warsinggih, SpB-KBD, M. Kes'),(14,'','Dr. dr. Ronald E. Lusikooy, SpB-KBD'),(15,'','Dr. dr. William Hamdani, SpB(K)Onk'),(16,'','Dr. dr. Ibrahim Labeda, SpB-KBD'),(17,'','Dr. dr. Fonny Josh, SpBP-RE(K)B. Mikro'),(18,'','Dr. dr. Nasrullah, SpBS(K)'),(19,'','dr. Ahmadwirawan, SpB, SpBA'),(20,'','dr. Jufri Latief, SpB, SpOT'),(21,'','Dr. dr. Willy Adhimarta, SpBS(K)'),(22,'','dr. Mappincara, SpB-KBD'),(23,'','dr. Khoirul Kholis, SpU'),(24,'','dr. M. Asykar A. Palinrungi, SpU(K)'),(25,'','dr. Djonny Ferianto Sambokaraeng, SpB(K)Onk'),(26,'','dr. Septiman, SpB(K)Onk'),(27,'','dr. M. Nasser Mustari, SpOT'),(28,'','Dr. dr. Syakri Syahrir, SpU(K)'),(29,'','dr. John Pieter Jr, SpB(K)Onk'),(30,'','Dr. dr. Syarif, SpU(K)'),(31,'','dr. Samuel Sampetaoding, SpB-KBD'),(32,'','Dr. dr. Sachraswaty R. Laidding, SpB, SpBP-RE(K)'),(33,'','dr. Iwan Dani, SpB-KBD'),(34,'','Dr. dr. Andi Ihwan, SpBS(K)'),(36,'','Dr. dr. Nita Mariana, M. Kes, SpBA'),(37,'','Dr. dr. Indra, SpB(K)Onk '),(38,'','dr. M. Ihwan Kusuma, SpB-KBD'),(39,'','dr. Mulawardi, SpB(K)V'),(40,'','Dr. dr. Tommy Rubiyanto Habar, SpB, SpBA(K)'),(41,'','dr. Sulmiati, SpBA'),(42,'','dr. Salman Ardi Syamsu, SpB(K)Onk'),(43,'','Dr. dr. Prihantono, SpB(K)Onk, M. Kes'),(44,'','dr. Jayarasti Kusumanegara, SpBTKV'),(45,'','dr. Julianus A. Uwuratuw, SpB-KBD'),(48,'','dr. Umar Usman, SpB(K)V'),(49,'','dr. Elridho Sampepajung, SpB(K)Onk'),(50,'','dr. Tomie Hermawan Soekamto, SpBP-RE(K)'),(51,'','dr. Nilam Smaradhania, SpB(K)Onk'),(52,'','dr. Tom Ch. Adriani, SpB(K)V'),(53,'','dr. Erwin Syarifuddin, SpB-KBD'),(55,'','dr. Arman Bausat, SpB, SpOT');
/*!40000 ALTER TABLE `pembimbing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_bedah`
--

DROP TABLE IF EXISTS `res_bedah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res_bedah` (
  `res_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_pokok` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk` date NOT NULL,
  `smt` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panggol` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `res_nip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_id` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penasehat_akademik` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lulus` tinyint(1) NOT NULL DEFAULT 0,
  `sex` tinyint(1) NOT NULL DEFAULT 1,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_universitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_bedah`
--

LOCK TABLES `res_bedah` WRITE;
/*!40000 ALTER TABLE `res_bedah` DISABLE KEYS */;
INSERT INTO `res_bedah` VALUES (1,'dr. Muh. Rezki Fadly Ilyas','C104214101','2014-07-01','XII','Jl. A. Pangeran Pettarani Komp. IDI GA7 No. 20, Makassar','-','123','1234','1','32',0,1,'Test','1980-11-30','foo@bar.com','usman.jpg','Universitas Test'),(2,'dr. Billy Jonatan','C104214106','2014-07-01','XII','Komp. Perdos Tamalanrea Jl. Al. Ikhlas 3 Kav.5 Mks ','','','','2','30',0,1,NULL,NULL,NULL,NULL,NULL),(3,'dr. Emmy Palinggi','C104214109','2014-07-01','XII','JL. Perintis Kemerdekaan Km. 11 No. 71','','','','2','28',0,0,NULL,NULL,NULL,NULL,NULL),(4,'dr. Mega Setiawan','C104214110','2015-01-01','XII','Perdos Unhas Tamalanrea Blok K No.1 Mks ','Penata / III C','19860804 201104 2 002','','1','32',0,1,NULL,NULL,NULL,NULL,NULL),(5,'dr. King Alexander','C104214201','2015-01-01','XI','Perumnas Sudiang Jl. Mamuju No. C19, Makassar','','','','2','27',0,1,NULL,NULL,NULL,NULL,NULL),(6,'dr. Cristmos Bambang Merryawan ','C104214202','2015-01-01','XI','Jl. Wesabbe Blok C No. 36, Makassar','','','','1','35',0,1,NULL,NULL,NULL,NULL,NULL),(7,'dr. Komet Rama Daud','C104214203','2015-01-01','XI','Jl. Sunu Komp. UNHAS Baraya DX-5, Makassar','','','','2','36',0,1,NULL,NULL,NULL,NULL,NULL),(8,'dr. Muhammad Zulfikar','C104214204','2015-01-01','XI','Jl. Gunung Batu Putih No, 10, Makassar','Penata / III C','19851229 20110101014','','1','37',0,1,NULL,NULL,NULL,NULL,NULL),(9,'dr. Gute Rizal Kriswono','C104214205','2015-01-01','XI','Jl. Teduh Bersinar M-20 Perum. Bosowa Sultan Alauddin, Makassar','','','','1','34',0,1,NULL,NULL,NULL,NULL,NULL),(10,'dr. Fransisca','C104214206','2015-01-01','XI','Komp. Dosen UNHAS Tamalanrea Blok G No. 3, Makassar','','','','2','32',0,0,NULL,NULL,NULL,NULL,NULL),(11,'dr. Andi Fahdrin ','C104214207','2015-01-01','XI','Jl. A.P Pettrani Komp. IDI G10/7, Makassar','Penata Muda TK.I / III B','198709212014122002','','1','16',0,1,NULL,NULL,NULL,NULL,NULL),(12,'dr. Aditya Bernard Dharmaji','C104214208','2015-01-01','XI','Jl. Gunung Batu Putih No. 18, Makassar','','','','2','31',0,1,NULL,NULL,NULL,NULL,NULL),(13,'dr. Juan Fariz Oktorian','C104214209','2015-01-01','XI','Perumahan Dosen Tamalanrea Blok AG No. 45, Makassar','','','','1','33',0,1,NULL,NULL,NULL,NULL,NULL),(14,'dr. Januar Rizky Adrian','C104214210','2015-01-01','XI','Jl. Gunung Lompobattang Lr. 96 No. 8, Makassar','','','','1','11',0,1,NULL,NULL,NULL,NULL,NULL),(15,'dr. Moch. Ilfan Gunadi','C10415101','2015-07-01','X','Komp. Duta Indah Jl. Teratai IV Blok Di/II. Pondok Gede','','','','1','25',0,1,NULL,NULL,NULL,NULL,NULL),(16,'dr. Reinaldo Sunggiardi','C10415103','2015-07-01','X','Rusunawa unhas blok d no 117. Jl sahabat, Tamalanrea, Makassar','-','-','','2','32',0,1,NULL,NULL,NULL,NULL,NULL),(17,'dr. Mukhisal Aqni','C10415104','2015-07-01','X','Perum. Dataran Indah Bosowa C/72, Makassar','-','-','','1','34',0,1,NULL,NULL,NULL,NULL,NULL),(18,'dr. Sartian Battung','C10415105','2015-07-01','X','Perum. Alinda Kencana Permai 1 Blok J1 No. 5 Jawa Barat','-','-','','2','27',0,1,NULL,NULL,NULL,NULL,NULL),(19,'dr. Andi Ratu Alam','C10415102','2015-07-01','X','Perum. Garaha Cendekia Blok B 37, Makassar','-','-','','1','35',0,1,NULL,NULL,NULL,NULL,NULL),(20,'dr. Divara Syauta','C10415106','2015-07-01','X','Jl. Sirsak Gg. Mesir No. 75, Jagakarsa Jakarta Selatan','Penata / III C','198104292009121001','','1','24',0,1,NULL,NULL,NULL,NULL,NULL),(21,'dr. Rudy Budjiono','C10415107','2015-07-01','X','Jl. R.M. Sosrokartono Gg. Nanas No. 20 Kudus, Jawa Tengah','-','-','','2','20',0,1,NULL,NULL,NULL,NULL,NULL),(22,'dr. Ayu Yuniandini','C10415108','2015-07-01','X','Jl. Andi Tonro V Blok A4 No. 4, Makassar','-','-','','1','35',0,0,NULL,NULL,NULL,NULL,NULL),(23,'dr. Robin Kurnia Wijaya','C10415109','2015-07-01','X','Kejawan putih Palem Indah VI-F-7/7, Surabaya','-','-','','2','36',0,1,NULL,NULL,NULL,NULL,NULL),(24,'dr. Martin Saputro Wardoyo','C10415110','2015-07-01','X','Jl. Puri asri indah 3b no. 8 makassar','-','-','','2','12',0,1,NULL,NULL,NULL,NULL,NULL),(25,'dr. Yelisa Tanete Patandianan','C10415111','2015-07-01','X','BTN Batara Ugi Blok A2 No. 9 Daya, Makassar','-','-','','2','9',0,1,NULL,NULL,NULL,NULL,NULL),(26,'dr. Mendila P.  Arungpadang','C10415112','2015-07-01','X','Jl. Telkom I C1 No. 69 Taman Telkomas, Makassar','Penata / III C','198010162009031001','','2','19',0,0,NULL,NULL,NULL,NULL,NULL),(27,'dr. Andi Sinapati Palissei','C10415113','2015-07-01','X','Graha Afilia Blok 3 No. 15, Makassar','Penata / III C','198210262009092001','','1','31',0,1,NULL,NULL,NULL,NULL,NULL),(28,'dr. Harry Adiwinata','C10415114','2015-07-01','X','Jl. Hertasning Utara II Blok F16 No. 26, Makassar','-','-','','1','25',0,1,NULL,NULL,NULL,NULL,NULL),(29,'dr. Ahmad Syaifudin','C10415115','2015-07-01','X','Jl. Sulawesi RT. 17 No. 17, Banjarmasin','-','-','','1','37',0,1,NULL,NULL,NULL,NULL,NULL),(30,'dr. Elanda putri Madyaningtias','C10415116','2015-07-01','X','Jl. Sawo No. 20 Panggungrejo, Kepajen, Malang','-','-','','1','28',0,0,NULL,NULL,NULL,NULL,NULL),(31,'dr. Adriandy Saleh','C10415117','2015-07-01','X','BTN Antang Jaya B15, Makassar','-','-','','1','30',0,1,NULL,NULL,NULL,NULL,NULL),(32,'dr. Topan Sugara Kiaydemak','C10415118','2015-07-01','X','Jl. Racing Center Perum. UMI Blok D No. 11, Makassar','-','-','','1','33',0,1,NULL,NULL,NULL,NULL,NULL),(33,'dr. Okto Sampe Padang','C104215206','2016-01-01','IX','Perum. Green House Sudiang No. 4, Makassar','-','-','','2','11',0,1,NULL,NULL,NULL,NULL,NULL),(34,'dr. Lukmansyah','C104215204','2016-01-01','IX','Jl. Tinggimae No. 8, Kab. Gowa','-','-','','1','1',0,1,NULL,NULL,NULL,NULL,NULL),(35,'dr. Glendy','C104215203','2016-01-01','IX','Jl. Harimau 3 No. 56A, Makasar','Penata / III C','198308212009011003','','2','2',0,1,NULL,NULL,NULL,NULL,NULL),(36,'dr. Linda Samma','C104215207','2016-01-01','IX','Jl. Perintis Kemerdekaan Km. 14 No. 9, Makassar','Penata Muda TK.I / III B','198611122014021001','','2','6',0,0,NULL,NULL,NULL,NULL,NULL),(37,'dr. Muhammad Arief Muslim','C104215208','2016-01-01','IX','Komp. BBD Blok C2 No. 237, Makassar','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL),(38,'dr. Agusni','C104215201','2016-01-01','IX','Rusunawa UNHAS Blok C, Makassar','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL),(39,'dr. Aldhi Tri Budhi','C104215209','2016-01-01','IX','Rusunawa UNHAS Blok C 207, Makassar','-','-','','1','8',0,1,NULL,NULL,NULL,NULL,NULL),(40,'dr. Denny Miftahur Ramadhan','C104215202','2016-01-01','IX','Rusunawa UNHAS Blok C, Makassar','-','-','','1','5',0,1,NULL,NULL,NULL,NULL,NULL),(41,'dr. Yossy Luther','C104215210','2016-01-01','IX','Rusunawa UNHAS Blok C 202, Makassar','-','-','','2','15',0,1,NULL,NULL,NULL,NULL,NULL),(42,'dr. Annisa Verawaty','C104215205','2016-01-01','IX','Rusunawa UNHAS Blok C 205, Makassar','-','-','','1','13',0,0,NULL,NULL,NULL,NULL,NULL),(43,'dr. Mouris Titin Dwiputa','C104216112','2016-07-01','VIII','Jl. Bulukumba I No. 297 Sudiang Raya, Makassar','Penata Muda TK.I / III B','198610122011012022','','2','20',0,1,NULL,NULL,NULL,NULL,NULL),(44,'dr. Ivanna Sirowanto','C104216102','2016-07-01','VIII','Jl. Lure 2A, Makassar','Penata Muda TK.I / III B','198712062015031002','','2','44',0,0,NULL,NULL,NULL,NULL,NULL),(45,'dr. Harris Bartimeus','C104216113','2016-07-01','VIII','Jl. Sungai Tangka 14 A, Makassar','-','-','','2','39',0,1,NULL,NULL,NULL,NULL,NULL),(46,'dr. Berry Erida Hasbi','C104216101','2016-07-01','VIII','Jl. Wesabbe Lr. 1 No. 92, Makassar','-','-','','1','15',0,1,NULL,NULL,NULL,NULL,NULL),(47,'dr. Singgih Winoto','C104216103','2016-07-01','VIII','Jl. Tamalanrea 4 BTP, Makassar','-','-','','2','14',0,1,NULL,NULL,NULL,NULL,NULL),(48,'dr. Dwi Ris Andriyanto','C104216110','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','38',0,1,NULL,NULL,NULL,NULL,NULL),(49,'dr. Jefri Wijaya','C104216107','2016-07-01','VIII','BTP Blok L No. 10-11, Makassar','-','-','','2','25',0,1,NULL,NULL,NULL,NULL,NULL),(50,'dr. Richard Ezra Putra','C104216108','2016-07-01','VIII','Jl. Monginsidi Baru (Puri Mutiara) II/32, Makassar','-','-','','2','42',0,1,NULL,NULL,NULL,NULL,NULL),(51,'dr. Ricko Sadli Sujana','C104216111','2016-07-01','VIII','BTP Jl. Tamalanrea Selatan IV Blok M No. 519, Makassar','-','-','','2','40',0,1,NULL,NULL,NULL,NULL,NULL),(52,'dr. Asrul Mappiwali','C104216104','2016-07-01','VIII','Jl. Cambajawaiyya No. 41, Makassar','Penata Muda TK.I / III B','198309302014031001','','1','41',0,1,NULL,NULL,NULL,NULL,NULL),(53,'dr. Edward Julio Suhendra','C104216105','2016-07-01','VIII','Komp. NTI Blok T/2, Makassar','-','-','','1','39',0,1,NULL,NULL,NULL,NULL,NULL),(54,'dr. Rendra Budi Dharma','C104216106','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','44',0,1,NULL,NULL,NULL,NULL,NULL),(55,'dr. Herman Syahputra Nst','C104216109','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','Penata / III C','198407172011011002','','1','42',0,1,NULL,NULL,NULL,NULL,NULL),(56,'dr. Ades Santa Satria','C104216205','2017-01-01','VII','Jl. Perintis kemerdekaan No. 14, Makassar','-','-','','1','20',0,1,NULL,NULL,NULL,NULL,NULL),(57,'dr. Deasy Riefma','C104216203','2017-01-01','VII','Jl. Sunu Komp. Pratama Blok A No. 3, Makassar','Penata / III C','19801219201101004','','1','44',0,0,NULL,NULL,NULL,NULL,NULL),(58,'dr. Achsan A. Muin','C104216201','2017-01-01','VII','Jl. Hertasning Komp. Gubernuran Blok E16 No. 1, Makassar','Penata Muda TK.I / III B','197912142008012001','','1','21',0,1,NULL,NULL,NULL,NULL,NULL),(59,'dr. Andi Yulkardinansyah','C104216208','2017-01-01','VII','Jl. Bayam No, 51, Makassar','-','-','','1','38',0,1,NULL,NULL,NULL,NULL,NULL),(60,'dr. Ibnul Barakah','C104216207','2017-01-01','VII','Jl. Racing Centre Perum. Gardenia Blok F. No. 6, Makassar','Penata / III C','198307272009021008','','1','17',0,1,NULL,NULL,NULL,NULL,NULL),(61,'dr. Elvis Jeferson','C104216210','2017-01-01','VII','Perum. Grand Andi Tonro No. 10, Makassar','-','-','','2','30',0,1,NULL,NULL,NULL,NULL,NULL),(62,'dr. Hery Siswanto','C104216209','2017-01-01','VII','Rusunawa II UNHAS Blok C/221','Komisaris Polisi / IV A','78071413','','1','40',0,1,NULL,NULL,NULL,NULL,NULL),(63,'dr. Kenny Edward Yap','C104216202','2017-01-01','VII','Miraza Homestay Jl. Pengayoman F10 No. 2, Makassar','Penata Muda TK.I / III B','197702192014121001','','2','37',0,1,NULL,NULL,NULL,NULL,NULL),(64,'dr. Jacquels Mozes Tolanda','C104216206','2017-01-01','VII','Jl. Lanraki Lr. 7, Kel. Paccerekang, Kec. Birinkanaya, Makassar','-','-','','2','41',0,1,NULL,NULL,NULL,NULL,NULL),(65,'dr. Julcrithno Irawanputra','C045171004','2017-07-01','VI','Jl. Pampang Utama Lr.1 No.3 Makassar','-','-','','2','24',0,1,NULL,NULL,NULL,NULL,NULL),(66,'dr. Nur Hidayatullah','C045171002','2017-07-01','VI','Pondok Yusware, Jl. P. Kemerdekaan VII Area Pondokan UH ','-','-','','1','23',0,1,NULL,NULL,NULL,NULL,NULL),(67,'dr. Adi Wijayanto','C045171009','2017-07-01','VI','Jl. Perintis Kemerdekaan No.14 Kos Aurora ','Penata Muda Tk.I / III B','198801022014121000','','1','39',0,1,NULL,NULL,NULL,NULL,NULL),(68,'dr. Maria Ida Rettobyaan','C045171003','2017-07-01','VI','Jl. Masjid Al Ikhlas 3, Kav 5 Tamalanarea - Makassar ','-','-','','2','21',0,0,NULL,NULL,NULL,NULL,NULL),(69,'dr. Leonard Hasudungan','C045171001','2017-07-01','VI','Jl. Masjid Al Ikhlas 3 Kav 3 Tamalanrea - Makassar ','Penata Muda Tk.I / III B','19890810 201503 2 003','','2','26',0,1,NULL,NULL,NULL,NULL,NULL),(70,'dr. Darwin','C045171005','2017-07-01','VI','Jl. Masjid Al Ikhlas III av.3 Kel. Tamalanrea - Makassar ','Penata Muda Tk.I / III B','19820102 200909 1 001','','2','13',0,1,NULL,NULL,NULL,NULL,NULL),(71,'dr. Bayu Satria','C045171006','2017-07-01','VI','BTN Hamzy Blok A No.27 Makassar ','-','-','','1','22',0,1,NULL,NULL,NULL,NULL,NULL),(72,'dr. Jancung','C045171007','2017-07-01','VI','BTP Blok M No.191 Makassar ','Inspektur Polisi Dua','87040002','','2','23',0,1,NULL,NULL,NULL,NULL,NULL),(73,'dr. Muhammad Abdu','C045171008','2017-07-01','VI','Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','-','-','','1','24',0,1,NULL,NULL,NULL,NULL,NULL),(74,'dr. Muhammad Faruk','C045171010','2017-07-01','VI','Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','','','','1','13',0,1,NULL,NULL,NULL,NULL,NULL),(75,'dr. Adriani Purnasakti Pakan','C045172001','2018-01-01','V','Jl. Pelita Raya VI Blok A/4, Makassar','-','-','','2','26',0,0,NULL,NULL,NULL,NULL,NULL),(76,'dr. Benny Nanda Kurniawan','C045172002','2018-01-01','V','Jl. Griya Alama Permai Blok E No. 9, Makassar','-','-','','2','40',0,1,NULL,NULL,NULL,NULL,NULL),(77,'dr. Fadhli Azhimi','C045172003','2018-01-01','V','Jl. Masjid Baiturrahman No. 58, Makassar ','-','-','','1','41',0,1,NULL,NULL,NULL,NULL,NULL),(78,'dr. Teddy Agung Saputra','C045172004','2018-01-01','V','Perum. Kayu Kunyit Jl. Kayu Manis No. 6 Rt. 5, Bengkulu Selatan','-','-','','1','13',0,1,NULL,NULL,NULL,NULL,NULL),(79,'dr. Stevent Richardo','C045172005','2018-01-01','V','Komp. BTN Wessabe Blok D, Makassar','-','-','','2','14',0,1,NULL,NULL,NULL,NULL,NULL),(80,'dr. Tjia Adynata Ciayadi','C045172006','2018-01-01','V','Bukit Hartako Indah , Jl. Berua Raya','-','-','','2','21',0,1,NULL,NULL,NULL,NULL,NULL),(81,'dr. Darren Perdana','C045172007','2018-01-01','V','Kompleks Griya Alam Permai Blok E No. 9, Makassar','-','-','','2','23',0,1,NULL,NULL,NULL,NULL,NULL),(82,'dr. Hidayah M. Harahap','C045172008','2018-01-01','V','Jl. Masjid Baiturrahman No. 58, Makassar ','Penata TK. I / III D','19860425 201502 1 002','','1','38',0,1,NULL,NULL,NULL,NULL,NULL),(83,'dr. Albertus Aryo Pradito','C045172009','2018-01-01','V','BTP Jl. Kejayaan Utara 2, Blok M No. 130, Makassar','-','-','','2','18',0,1,NULL,NULL,NULL,NULL,NULL),(84,'dr. Andhika Aulia Akbar','C045172010','2018-01-01','V','Perum. Bumi Tamalanrea Mas, Blok MI No. 39, Makassar','-','-','','1','39',0,1,NULL,NULL,NULL,NULL,NULL),(85,'dr. Deny Agus Yudiarto','C045172011','2018-01-01','V','Jl. Baiturrahman A 11 Komp. Haji Kalla, Makassar','Penata Muda TK. I / III b','19890904 201503 1 004','','1','22',0,1,NULL,NULL,NULL,NULL,NULL),(86,'dr. Awaluddin','C045172012','2018-01-01','V','Bukit Khatulistiwa F3 Daya, Makassar','-','-','','1','25',0,1,NULL,NULL,NULL,NULL,NULL),(87,'dr. Sandy Victor','C045181001','2018-07-01','IV','Jl. Paccerakang Katimbang Depan SDN I Paccerakang, Makassar','-','-','','2','45',0,1,NULL,NULL,NULL,NULL,NULL),(88,'dr. Tony Yulianto','C045181002','2018-07-01','IV','BTP Blok M. No. 191 Tamalanrea, Makassar','-','-','','2','15',0,1,NULL,NULL,NULL,NULL,NULL),(89,'dr. Novi Firman Syah','C045181003','2018-07-01','IV','Jl. Telegram V, Taman Telkomas, Makassar','-','-','','1','16',0,1,NULL,NULL,NULL,NULL,NULL),(90,'dr. Albert','C045181004','2018-07-01','IV','Jl. Masjid Al. Ikhlas 3, Kavling 5, Tamalanrea, Makassar','-','-','','2','18',0,1,NULL,NULL,NULL,NULL,NULL),(91,'dr. Zulfatulsyah','C045181005','2018-07-01','IV','Jl. Borong Raya Baru 2 No. 14 Batua, Manggala, Makassar','-','-','','1','26',0,1,NULL,NULL,NULL,NULL,NULL),(92,'dr. Erwin Hadi Chandra','C045181006','2018-07-01','IV','Jl. Masjid Al. Ikhlas Kaveleri 3, Tamalanrea, Makassar','Penata TK. I / III d','198507222011011009','','2','12',0,1,NULL,NULL,NULL,NULL,NULL),(93,'dr. Martua Arpollos','C045181007','2018-07-01','IV','Jl. Telepon II Blok B No. 98, TamanTelkomas , Makassar','-','-','','2','43',0,1,NULL,NULL,NULL,NULL,NULL),(94,'dr. James Setiady','C045181008','2018-07-01','IV','Jl. Gunung LompobatangNo. 170, Makassar','Penata Muda TK. I / III b','198510302014031001','','2','44',0,1,NULL,NULL,NULL,NULL,NULL),(95,'dr. Arham Jaya','C045182001','2019-01-01','III','Perdos UNHAS Tamalanrea Blok E No. 40, Makassar','-','-','','1','41',0,1,NULL,NULL,NULL,NULL,NULL),(96,'dr. Hans Alfonso Thioritz','C045182002','2019-01-01','III','Jl. Beruang No. 72 A, Makassar','-','-','','2','42',0,1,NULL,NULL,NULL,NULL,NULL),(97,'dr. Muh. Arfan','C045182003','2019-01-01','III','Jl. Taqwa No. 8, Maros','-','-','','1','31',0,1,NULL,NULL,NULL,NULL,NULL),(98,'dr. Nur Hasnah','C045182004','2019-01-01','III','BTN Hartaco Indah Blok','-','-','','1','38',0,0,NULL,NULL,NULL,NULL,NULL),(99,'dr. Anastasnio Dwizakzana A','C045182005','2019-01-01','III','BTN Hartaco Indah Blok IVE / 12, Makassar','-','-','','1','45',0,1,NULL,NULL,NULL,NULL,NULL),(100,'dr. Andi Fatmawati Mahir','C045182006','2019-01-01','III','BTN Bulurokeng Permai Blok F4 No. 11, Makassar','-','-','','1','39',0,0,NULL,NULL,NULL,NULL,NULL),(101,'dr. Robert Christeven','C045182007','2019-01-01','III','BTP Jl. Tamalanrea Selatan Blok M. No. 191','-','-','','2','44',0,1,NULL,NULL,NULL,NULL,NULL),(102,'dr. Deo Prasetyo','C045182008','2019-01-01','III','Rusunawa I UNHAS Blok C/507, Makassar','-','-','','2','19',0,1,NULL,NULL,NULL,NULL,NULL),(103,'dr. Muh.  Firmasyah Kamal','C045182009','2019-01-01','III','Jl. Palapa I No. 47, Telkomas, Makassar','-','-','','1','21',0,1,NULL,NULL,NULL,NULL,NULL),(104,'dr. Fitran Amansyah','C045182010','2019-01-01','III','Jl. Pallantikang Lr. 1 No. 21 A, Sungguminasa','-','-','','1','24',0,1,NULL,NULL,NULL,NULL,NULL),(105,'dr. Muh. Ikhlas Yakin Iwan','C045182011','2019-01-01','III','BTN Hartako Indah Blok IM No. 8, Makassar','-','-','','1','29',0,1,NULL,NULL,NULL,NULL,NULL),(106,'dr. Teguh Triananda Putra','C045182012','2019-01-01','III','Rusunawa I UNHAS Blok C/507, Makassar','-','-','','1','36',0,1,NULL,NULL,NULL,NULL,NULL),(107,'dr. Hendry Purwanto','C045191001','2019-07-01','II','Jl. Pinang 8 Blok E 124/F Bumi Sudiang Permai, Makassar','','','','2','33',0,1,NULL,NULL,NULL,NULL,NULL),(108,'dr. Muhammad Alim Fath Rianse','C045191002','2019-07-01','II','Jl. Abd. Dg. Sirua BTN CV Dewi Blok B2 No. 6, Makassar','','','','1','45',0,1,NULL,NULL,NULL,NULL,NULL),(109,'dr. Muh Rusdan Jalil','C045191003','2019-07-01','II','Jl. Cemara No. 2, Makassar','','','','1','26',0,1,NULL,NULL,NULL,NULL,NULL),(110,'dr. Chendhy Fakdawer','C045191004','2019-07-01','II','BTN Hamzy, Makassar','Penata Muda Tk.I / III b','198507052015031002','','2','29',0,1,NULL,NULL,NULL,NULL,NULL),(111,'dr. A. Arief Munandar Sinangka','C045191005','2019-07-01','II','BTP Blok F No. 296 A, Makassar','','','','1','28',0,1,NULL,NULL,NULL,NULL,NULL),(112,'dr. Maryam Mayidah Hasan Nur','C045191006','2019-07-01','II','Jl. Melati Raya No. 7 Komp. Maizonette, Makassar','Penata Muda Tk.I / III b','198904092019032004','','1','17',0,0,NULL,NULL,NULL,NULL,NULL),(113,'dr. Putra Imanullah','C045191007','2019-07-01','II','BTN Gardenia Blok G No. 5, Makassar','','','','1','9',0,1,NULL,NULL,NULL,NULL,NULL),(114,'dr. Andy Wahab','C045191008','2019-07-01','II','Jl. Banda 30 C, Makassar','','','','1','18',0,1,NULL,NULL,NULL,NULL,NULL),(115,'dr. Esron Yosep Butar Butar','C045191009','2019-07-01','II','BTP Tamalanrea Mas Blok MI No. 16, Makassar','-','-','','2','43',0,1,NULL,NULL,NULL,NULL,NULL),(116,'dr. Nur Ramadhaniany Lihawa','C045191010','2019-07-01','II','Komp. Villa Racing Center Blok B1A, Makassar','','','','1','22',0,0,NULL,NULL,NULL,NULL,NULL),(117,'dr. Muhammad Amrul Husni','C045191011','2019-07-01','II','Perum. Tamalanrea Mas No. 66 BTP, Makassar','Penata Muda Tk.I / III b','198605292017041001','','1','27',0,1,NULL,NULL,NULL,NULL,NULL),(118,'dr. Ahmad Masyfuqkasim Yahiji','C045191012','2019-07-01','II','Jl. Bung Perum. Pesona Bukit Magfirah Blok C No. 2, Makassar','','','','1','19',0,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `res_bedah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residen_bedah`
--

DROP TABLE IF EXISTS `residen_bedah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residen_bedah` (
  `res_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_pokok` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk` date NOT NULL,
  `smt` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smt_nomor` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panggol` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `res_nip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_id` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penasehat_akademik` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lulus` tinyint(1) NOT NULL DEFAULT 0,
  `sex` tinyint(1) NOT NULL DEFAULT 1,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_universitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residen_bedah`
--

LOCK TABLES `residen_bedah` WRITE;
/*!40000 ALTER TABLE `residen_bedah` DISABLE KEYS */;
INSERT INTO `residen_bedah` VALUES (1,'dr. Muh. Rezki Fadly Ilyas','C104214101','2014-07-01','XIII',13,'Jl. A. Pangeran Pettarani Komp. IDI GA7 No. 20, Makassar','-','123','','1','32',0,1,'','2022-07-13','',NULL,''),(2,'dr. Billy Jonatan','C104214106','2014-07-01','XII',12,'Komp. Perdos Tamalanrea Jl. Al. Ikhlas 3 Kav.5 Mks ','','','','2','30',0,1,NULL,NULL,NULL,NULL,NULL),(3,'dr. Emmy Palinggi','C104214109','2014-07-01','XII',12,'JL. Perintis Kemerdekaan Km. 11 No. 71','','','','2','28',0,0,NULL,NULL,NULL,NULL,NULL),(4,'dr. Mega Setiawan','C104214110','2015-01-01','XII',12,'Perdos Unhas Tamalanrea Blok K No.1 Mks ','Penata / III C','19860804 201104 2 002','','1','32',0,1,NULL,NULL,NULL,NULL,NULL),(5,'dr. King Alexander','C104214201','2015-01-01','XI',11,'Perumnas Sudiang Jl. Mamuju No. C19, Makassar','','','','2','27',1,1,NULL,NULL,NULL,NULL,NULL),(6,'dr. Cristmos Bambang Merryawan ','C104214202','2015-01-01','XI',11,'Jl. Wesabbe Blok C No. 36, Makassar','','','','1','35',1,1,NULL,NULL,NULL,NULL,NULL),(7,'dr. Komet Rama Daud','C104214203','2015-01-01','XI',11,'Jl. Sunu Komp. UNHAS Baraya DX-5, Makassar','','','','2','36',1,1,NULL,NULL,NULL,NULL,NULL),(8,'dr. Muhammad Zulfikar','C104214204','2015-01-01','XI',11,'Jl. Gunung Batu Putih No, 10, Makassar','Penata / III C','19851229 20110101014','','1','37',1,1,NULL,NULL,NULL,NULL,NULL),(9,'dr. Gute Rizal Kriswono','C104214205','2015-01-01','XI',11,'Jl. Teduh Bersinar M-20 Perum. Bosowa Sultan Alauddin, Makassar','','','','1','34',1,1,NULL,NULL,NULL,NULL,NULL),(10,'dr. Fransisca','C104214206','2015-01-01','XI',11,'Komp. Dosen UNHAS Tamalanrea Blok G No. 3, Makassar','','','','2','32',1,0,NULL,NULL,NULL,NULL,NULL),(11,'dr. Andi Fahdrin ','C104214207','2015-01-01','XI',11,'Jl. A.P Pettrani Komp. IDI G10/7, Makassar','Penata Muda TK.I / III B','198709212014122002','','1','16',1,1,NULL,NULL,NULL,NULL,NULL),(12,'dr. Aditya Bernard Dharmaji','C104214208','2015-01-01','XI',11,'Jl. Gunung Batu Putih No. 18, Makassar','','','','2','31',1,1,NULL,NULL,NULL,NULL,NULL),(13,'dr. Juan Fariz Oktorian','C104214209','2015-01-01','XI',11,'Perumahan Dosen Tamalanrea Blok AG No. 45, Makassar','','','','1','33',1,1,NULL,NULL,NULL,NULL,NULL),(14,'dr. Januar Rizky Adrian','C104214210','2015-01-01','XI',11,'Jl. Gunung Lompobattang Lr. 96 No. 8, Makassar','','','','1','11',1,1,NULL,NULL,NULL,NULL,NULL),(15,'dr. Moch. Ilfan Gunadi','C10415101','2015-07-01','XI',11,'Komp. Duta Indah Jl. Teratai IV Blok Di/II. Pondok Gede','','','','1','25',1,1,NULL,NULL,NULL,NULL,NULL),(16,'dr. Reinaldo Sunggiardi','C10415103','2015-07-01','XI',11,'Rusunawa unhas blok d no 117. Jl sahabat, Tamalanrea, Makassar','-','-','','2','32',1,1,NULL,NULL,NULL,NULL,NULL),(17,'dr. Mukhisal Aqni','C10415104','2015-07-01','XI',11,'Perum. Dataran Indah Bosowa C/72, Makassar','-','-','','1','34',1,1,NULL,NULL,NULL,NULL,NULL),(18,'dr. Sartian Battung','C10415105','2015-07-01','X',10,'Perum. Alinda Kencana Permai 1 Blok J1 No. 5 Jawa Barat','-','-','','2','27',1,1,NULL,NULL,NULL,NULL,NULL),(19,'dr. Andi Ratu Alam','C10415102','2015-07-01','X',10,'Perum. Garaha Cendekia Blok B 37, Makassar','-','-','','1','35',1,1,NULL,NULL,NULL,NULL,NULL),(20,'dr. Divara Syauta','C10415106','2015-07-01','X',10,'Jl. Sirsak Gg. Mesir No. 75, Jagakarsa Jakarta Selatan','Penata / III C','198104292009121001','','1','24',1,1,NULL,NULL,NULL,NULL,NULL),(21,'dr. Rudy Budjiono','C10415107','2015-07-01','X',10,'Jl. R.M. Sosrokartono Gg. Nanas No. 20 Kudus, Jawa Tengah','-','-','','2','20',1,1,NULL,NULL,NULL,NULL,NULL),(22,'dr. Ayu Yuniandini','C10415108','2015-07-01','X',10,'Jl. Andi Tonro V Blok A4 No. 4, Makassar','-','-','','1','35',1,0,NULL,NULL,NULL,NULL,NULL),(23,'dr. Robin Kurnia Wijaya','C10415109','2015-07-01','X',10,'Kejawan putih Palem Indah VI-F-7/7, Surabaya','-','-','','2','36',1,1,NULL,NULL,NULL,NULL,NULL),(24,'dr. Martin Saputro Wardoyo','C10415110','2015-07-01','X',10,'Jl. Puri asri indah 3b no. 8 makassar','-','-','','2','12',1,1,NULL,NULL,NULL,NULL,NULL),(25,'dr. Yelisa Tanete Patandianan','C10415111','2015-07-01','X',10,'BTN Batara Ugi Blok A2 No. 9 Daya, Makassar','-','-','','2','9',1,1,NULL,NULL,NULL,NULL,NULL),(26,'dr. Mendila P.  Arungpadang','C10415112','2015-07-01','X',10,'Jl. Telkom I C1 No. 69 Taman Telkomas, Makassar','Penata / III C','198010162009031001','','2','19',1,0,NULL,NULL,NULL,NULL,NULL),(27,'dr. Andi Sinapati Palissei','C10415113','2015-07-01','X',10,'Graha Afilia Blok 3 No. 15, Makassar','Penata / III C','198210262009092001','','1','31',1,1,NULL,NULL,NULL,NULL,NULL),(28,'dr. Harry Adiwinata','C10415114','2015-07-01','X',10,'Jl. Hertasning Utara II Blok F16 No. 26, Makassar','-','-','','1','25',1,1,NULL,NULL,NULL,NULL,NULL),(29,'dr. Ahmad Syaifudin','C10415115','2015-07-01','X',10,'Jl. Sulawesi RT. 17 No. 17, Banjarmasin','-','-','','1','37',1,1,NULL,NULL,NULL,NULL,NULL),(30,'dr. Elanda putri Madyaningtias','C10415116','2015-07-01','X',10,'Jl. Sawo No. 20 Panggungrejo, Kepajen, Malang','-','-','','1','28',1,0,NULL,NULL,NULL,NULL,NULL),(31,'dr. Adriandy Saleh','C10415117','2015-07-01','X',10,'BTN Antang Jaya B15, Makassar','-','-','','1','30',1,1,NULL,NULL,NULL,NULL,NULL),(32,'dr. Topan Sugara Kiaydemak','C10415118','2015-07-01','X',10,'Jl. Racing Center Perum. UMI Blok D No. 11, Makassar','-','-','','1','33',1,1,NULL,NULL,NULL,NULL,NULL),(33,'dr. Okto Sampe Padang','C104215206','2016-01-01','IX',9,'Perum. Green House Sudiang No. 4, Makassar','-','-','','2','11',1,1,NULL,NULL,NULL,NULL,NULL),(34,'dr. Lukmansyah','C104215204','2016-01-01','IX',9,'Jl. Tinggimae No. 8, Kab. Gowa','-','-','','1','1',1,1,NULL,NULL,NULL,NULL,NULL),(35,'dr. Glendy','C104215203','2016-01-01','IX',9,'Jl. Harimau 3 No. 56A, Makasar','Penata / III C','198308212009011003','','2','2',1,1,NULL,NULL,NULL,NULL,NULL),(36,'dr. Linda Samma','C104215207','2016-01-01','IX',9,'Jl. Perintis Kemerdekaan Km. 14 No. 9, Makassar','Penata Muda TK.I / III B','198611122014021001','','2','6',1,0,NULL,NULL,NULL,NULL,NULL),(37,'dr. Muhammad Arief Muslim','C104215208','2016-01-01','IX',9,'Komp. BBD Blok C2 No. 237, Makassar','-','-','','1','4',1,1,NULL,NULL,NULL,NULL,NULL),(38,'dr. Agusni','C104215201','2016-01-01','IX',9,'Rusunawa UNHAS Blok C, Makassar','-','-','','2','3',1,1,NULL,NULL,NULL,NULL,NULL),(39,'dr. Aldhi Tri Budhi','C104215209','2016-01-01','IX',9,'Rusunawa UNHAS Blok C 207, Makassar','-','-','','1','8',1,1,NULL,NULL,NULL,NULL,NULL),(40,'dr. Denny Miftahur Ramadhan','C104215202','2016-01-01','IX',9,'Rusunawa UNHAS Blok C, Makassar','-','-','','1','5',1,1,NULL,NULL,NULL,NULL,NULL),(41,'dr. Yossy Luther','C104215210','2016-01-01','IX',9,'Rusunawa UNHAS Blok C 202, Makassar','-','-','','2','15',1,1,NULL,NULL,NULL,NULL,NULL),(42,'dr. Annisa Verawaty','C104215205','2016-01-01','IX',9,'Rusunawa UNHAS Blok C 205, Makassar','-','-','','1','13',1,0,NULL,NULL,NULL,NULL,NULL),(43,'dr. Mouris Titin Dwiputa','C104216112','2016-07-01','XI',11,'Jl. Bulukumba I No. 297 Sudiang Raya, Makassar','Penata Muda TK.I / III B','198610122011012022','','2','20',1,1,NULL,NULL,NULL,NULL,NULL),(44,'dr. Ivanna Sirowanto','C104216102','2016-07-01','XI',11,'Jl. Lure 2A, Makassar','Penata Muda TK.I / III B','198712062015031002','','2','44',1,0,NULL,NULL,NULL,NULL,NULL),(45,'dr. Harris Bartimeus','C104216113','2016-07-01','XI',11,'Jl. Sungai Tangka 14 A, Makassar','-','-','','2','39',1,1,NULL,NULL,NULL,NULL,NULL),(46,'dr. Berry Erida Hasbi','C104216101','2016-07-01','XI',11,'Jl. Wesabbe Lr. 1 No. 92, Makassar','-','-','','1','15',1,1,NULL,NULL,NULL,NULL,NULL),(47,'dr. Singgih Winoto','C104216103','2016-07-01','XI',11,'Jl. Tamalanrea 4 BTP, Makassar','-','-','','2','14',1,1,NULL,NULL,NULL,NULL,NULL),(48,'dr. Dwi Ris Andriyanto','C104216110','2016-07-01','XIII',13,'Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','38',0,1,NULL,NULL,NULL,NULL,NULL),(49,'dr. Jefri Wijaya','C104216107','2016-07-01','XI',11,'BTP Blok L No. 10-11, Makassar','-','-','','2','25',1,1,NULL,NULL,NULL,NULL,NULL),(50,'dr. Richard Ezra Putra','C104216108','2016-07-01','XI',11,'Jl. Monginsidi Baru (Puri Mutiara) II/32, Makassar','-','-','','2','42',1,1,NULL,NULL,NULL,NULL,NULL),(51,'dr. Ricko Sadli Sujana','C104216111','2016-07-01','XI',11,'BTP Jl. Tamalanrea Selatan IV Blok M No. 519, Makassar','-','-','','2','40',1,1,NULL,NULL,NULL,NULL,NULL),(52,'dr. Asrul Mappiwali','C104216104','2016-07-01','XI',11,'Jl. Cambajawaiyya No. 41, Makassar','Penata Muda TK.I / III B','198309302014031001','','1','41',1,1,NULL,NULL,NULL,NULL,NULL),(53,'dr. Edward Julio Suhendra','C104216105','2016-07-01','XI',11,'Komp. NTI Blok T/2, Makassar','-','-','','1','39',1,1,NULL,NULL,NULL,NULL,NULL),(54,'dr. Rendra Budi Dharma','C104216106','2016-07-01','XI',11,'Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','44',1,1,NULL,NULL,NULL,NULL,NULL),(55,'dr. Herman Syahputra Nst','C104216109','2016-07-01','XI',11,'Jl. Perintis Kemerdekaan 14, Makassar','Penata / III C','198407172011011002','','1','42',1,1,NULL,NULL,NULL,NULL,NULL),(56,'dr. Ades Santa Satria','C104216205','2017-01-01','XI',11,'Jl. Perintis kemerdekaan No. 14, Makassar','-','-','','1','20',0,1,'','2017-01-01','',NULL,''),(57,'dr. Deasy Riefma','C104216203','2017-01-01','X',10,'Jl. Sunu Komp. Pratama Blok A No. 3, Makassar','Penata / III C','19801219201101004','','1','44',1,0,'','2017-01-01','',NULL,''),(58,'dr. Achsan A. Muin','C104216201','2017-01-01','XI',11,'Jl. Hertasning Komp. Gubernuran Blok E16 No. 1, Makassar','-','-','081355945817','1','21',0,1,NULL,NULL,NULL,NULL,NULL),(59,'dr. Andi Yulkardinansyah','C104216208','2017-01-01','XI',11,'Jl. Bayam No, 51, Makassar','Penata / III C','198307272009021008','085399426452','1','38',0,1,NULL,NULL,NULL,NULL,NULL),(60,'dr. Ibnul Barakah','C104216207','2017-01-01','XI',11,'Jl. Racing Centre Perum. Gardenia Blok F. No. 6, Makassar','-','-','085211986313','1','17',0,1,NULL,NULL,NULL,NULL,NULL),(61,'dr. Elvis Jeferson','C104216210','2017-01-01','X',10,'Perum. Grand Andi Tonro No. 10, Makassar','-','-','','2','30',1,1,'','2017-01-01','',NULL,''),(62,'dr. Hery Siswanto','C104216209','2022-07-01','XI',11,'Rusunawa II UNHAS Blok C/221','Komisaris Polisi / IV A','78071413',NULL,'1','40',0,1,NULL,'2017-01-01',NULL,NULL,NULL),(63,'dr. Kenny Edward Yap','C104216202','2017-01-01','XI',11,'Miraza Homestay Jl. Pengayoman F10 No. 2, Makassar','Penata Muda TK.I / III B','197702192014121001','','2','37',0,1,'','2017-01-01','',NULL,''),(64,'dr. Jacquels Mozes Tolanda','C104216206','2017-01-01','XI',11,'Jl. Lanraki Lr. 7, Kel. Paccerekang, Kec. Birinkanaya, Makassar','-','-','','2','41',0,1,'','2017-01-01','',NULL,''),(65,'dr. Julcrithno Irawanputra','C045171004','2017-07-01','X',10,'Jl. Pampang Utama Lr.1 No.3 Makassar','-','-','','2','24',1,1,NULL,NULL,NULL,NULL,NULL),(66,'dr. Nur Hidayatullah','C045171002','2017-07-01','XI',11,'Pondok Yusware, Jl. P. Kemerdekaan VII Area Pondokan UH ','-','-','','1','23',0,1,'','2017-07-01','',NULL,''),(67,'dr. Adi Wijayanto','C045171009','2017-07-01','XI',11,'Jl. Perintis Kemerdekaan No.14 Kos Aurora ','Penata Muda Tk.I / III B','198801022014121000','','1','39',0,1,NULL,NULL,NULL,NULL,NULL),(68,'dr. Maria Ida Rettobyaan','C045171003','2017-07-01','X',10,'Jl. Masjid Al Ikhlas 3, Kav 5 Tamalanarea - Makassar ','Penata Muda Tk.I / III b','19890810 201503 2 003','082247400767 / 081290861122','2','21',1,0,'Langgur ','1989-08-10','ayu.rettobyaan@yahoo.com','dr._Maria_Ida_Rettobyaan.jpg','Universitas Kristen Krida Wacana '),(69,'dr. Leonard Hasudungan','C045171001','2017-07-01','II',2,'Jl. Masjid Al Ikhlas 3 Kav 3 Tamalanrea - Makassar','Penata Muda Tk.I / III B','19820102 200909 1 001','081243452789','2','26',1,1,'Jayapura','1982-01-02','leonardhasudungan82@gmail.com',NULL,'Universitas Kristen Marantha'),(70,'dr. Darwin','C045171005','2017-07-01','XI',11,'Jl. Masjid Al Ikhlas III av.3 Kel. Tamalanrea - Makassar ','-','-','081243452765','2','13',0,1,'Medan','1990-07-19','darwinkhuang@hotmail.com','dr._Darwin.jpg','Universitas Tarumanagara'),(71,'dr. Bayu Satria','C045171006','2017-07-01','XI',11,'BTN Hamzy Blok A No.27 Makassar ','Inspektur Polisi Dua','87040002','082395190707','1','22',0,1,'Ujung Pandang','1987-04-17','drbayusatria@gmail.com','dr._Bayu_Satria.jpg','Universitas Hasanuddin'),(72,'dr. Jancung','C045171007','2017-07-01','XI',11,'BTP Blok M No.191 Makassar ','-','-','08115209988','2','23',0,1,'Jakarta','1983-10-23','dr.jancung@gmail.com','dr._Jancung.jpg','Universitas Pelita Harapan'),(73,'dr. Muhammad Abdu','C045171008','2017-07-01','X',10,'Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','-','-','085397720394 / 085231811444','1','24',1,1,'Jayapura','1984-05-28','abdu.muhammad28@gmail.com','dr._Muhammad_Abdu.jpg','Universitas Wijaya Kusuma '),(74,'dr. Muhammad Faruk','C045171010','2017-07-01','X',10,'Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','-','-','082340109009','1','13',1,1,'Surabaya','1983-02-08','faroex8283@yahoo.com','dr._Muhammad_Faruk.jpg','Universitas Wijaya Kusuma'),(75,'dr. Adriani Purnasakti Pakan','C045172001','2018-01-01','X',10,'Jl. Pelita Raya VI Blok A/4, Makassar','-','-','081338254781','2','26',0,0,'Kupang','1987-10-02','adzpakan@gmail.com','dr._Adriani_Purnasakti_Pakan.jpg','Universitas Hasanuddin'),(76,'dr. Benny Nanda Kurniawan','C045172002','2018-01-01','X',10,'Jl. Griya Alama Permai Blok E No. 9, Makassar','-','-','081356391973','2','40',0,1,'Bandar Lampung','1991-12-11','bennynanda.kurniawan@yahoo.com','dr._Benny_Nanda_Kurniawan.jpg','Universitas Atmajaya'),(77,'dr. Fadhli Azhimi','C045172003','2018-01-01','X',10,'Jl. Masjid Baiturrahman No. 58, Makassar ','-','-','081370622960','1','41',0,1,'Medan','1990-11-08','fadhliazhimi@gmail.com','dr._Fadhli_Azhimi.jpg','Universitas Islam Sumatera Utara'),(78,'dr. Teddy Agung Saputra','C045172004','2018-01-01','X',10,'Perum. Kayu Kunyit Jl. Kayu Manis No. 6 Rt. 5, Bengkulu Selatan','-','-','081362000321','1','13',0,1,'Bogor','1988-10-24','teddyagung07@gmail.com','dr._Teddy_Agung_Saputra.jpg','Universitas Malahayati'),(79,'dr. Stevent Richardo','C045172005','2018-01-01','X',10,'Komp. BTN Wessabe Blok D, Makassar','-','-','\'082190958558','2','14',0,1,'Jakarta','1986-09-05','steventmksr2018@gmail.com','dr._Stevent_Richardo.jpg','Universitas Kristen Krida Wacana'),(80,'dr. Tjia Adynata Ciayadi','C045172006','2018-01-01','X',10,'Bukit Hartako Indah , Jl. Berua Raya','Penata Muda TK. I / III b','19890904 201503 1 004','082293357356','2','21',0,1,'Makassar','1989-09-04','adynata_ciayadi@yahoo.com','dr._Tjia_Adynata_Ciayadi.jpg','Universitas Hasanuddin'),(81,'dr. Darren Perdana','C045172007','2018-01-01','X',10,'Kompleks Griya Alam Permai Blok E No. 9, Makassar','-','-','081242156268','2','23',0,1,'Bogor','1988-10-24','darren.perdana@gmail.com','dr._Darren_Perdana.jpg','Universitas Tarumanagara'),(82,'dr. Hidayah M. Harahap','C045172008','2018-01-01','X',10,'Jl. Masjid Baiturrahman No. 58, Makassar ','Penata TK. I / III D','19860425 201502 1 002','0852274515515','1','38',0,1,'Pekanbaru','1991-07-05','harahaphidayah@gmail.com','dr._Hidayah_M._Harahap.jpg','Universitas Islam Sumatera Utara'),(83,'dr. Albertus Aryo Pradito','C045172009','2018-01-01','X',10,'BTP Jl. Kejayaan Utara 2, Blok M No. 130, Makassar','-','-','082112685227','2','18',0,1,'Jakarta,','1987-08-25','aryo.pradito@yahoo.com','dr._Albertus_Aryo_Pradito.jpg','Universitas Atmajaya'),(84,'dr. Andhika Aulia Akbar','C045172010','2018-01-01','X',10,'Perum. Bumi Tamalanrea Mas, Blok MI No. 39, Makassar','-','-','0852250377776','1','39',0,1,'Banjarmasin','1988-01-26','andhika.auliaakbar@gmail.com','dr._Andhika_Aulia_Akbar.jpg','Universitas Lambung Mangkurat'),(85,'dr. Deny Agus Yudiarto','C045172011','2018-01-01','X',10,'Jl. Baiturrahman A 11 Komp. Haji Kalla, Makassar','-','-','085328882728','1','22',0,1,'Jakarta','1983-08-29','dr.denyyudiarto@gmail.com','dr._Deny_Agus_Yudiarto.jpg','Universitas Islam Sultan Agung '),(86,'dr. Awaluddin','C045172012','2018-01-01','X',10,'Bukit Khatulistiwa F3 Daya, Makassar','Penata TK. I / III D','19860425 201502 1 002','085299166464','1','25',0,1,'Makassar','1986-04-25','awalc007@gmail.com','dr._Awaluddin.jpg','Universitas Hasanuddin'),(87,'dr. Sandy Victor','C045181001','2018-07-01','IX',9,'Jl. Paccerakang Katimbang Depan SDN I Paccerakang, Makassar','-','-','081341064152 / 08113150888 ','2','45',0,1,'Medan','1988-05-05','sandyvictor.zh@gmail com','dr._Sandy_Victor.jpg','Universitas Sumatera Utara'),(88,'dr. Tony Yulianto','C045181002','2018-07-01','IX',9,'BTP Blok M. No. 191 Tamalanrea, Makassar','-','-','08158385368 / 081341064159','2','15',0,1,'Jakarta','1988-01-24','drtonyyulianto@gmail.com','dr._Tony_Yulianto.jpg','Universitas Kristen Krida Wacana'),(89,'dr. Novi Firman Syah','C045181003','2018-07-01','IX',9,'Jl. Telegram V, Taman Telkomas, Makassar','-','-','081341064160','1','16',0,1,'Jakarta','1983-11-11','firmanlast69@gmail.com','dr._Novi_Firman_Syah.jpg','Universitas UPN Veteran Jakarta'),(90,'dr. Albert','C045181004','2018-07-01','IX',9,'Jl. Masjid Al. Ikhlas 3, Kavling 5, Tamalanrea, Makassar','-','-','081342602151','2','18',0,1,'Bandung','1986-09-06','yokobue86@yahoo.com','dr._Albert.jpg','Universitas Kristen Maranatha Bandung'),(91,'dr. Zulfatulsyah','C045181005','2018-07-01','IX',9,'Jl. Borong Raya Baru 2 No. 14 Batua, Manggala, Makassar','Penata TK. I / III D','198507222011011009','08114214221','1','26',0,1,'Ujung Pandang','1985-07-22','andizulfatulsyah@gmail.com','dr._Zulfatulsyah.jpg','Universitas Muslim Indonesia'),(92,'dr. Erwin Hadi Chandra','C045181006','2018-07-01','IX',9,'Jl. Masjid Al. Ikhlas Kaveleri 3, Tamalanrea, Makassar','-','-','085246924056','2','12',0,1,'Ruteng','1990-07-04','erwinhadi.candra@gmail.com','dr._Erwin_Hadi_Chandra.jpg','Universitas Nusa Cendana'),(93,'dr. Martua Arpollos','C045181007','2018-07-01','IX',9,'Jl. Telepon II Blok B No. 98, TamanTelkomas , Makassar','Penata Muda TK. I / III b','198510302014031001','081375432093 / 081341064155','2','43',0,1,'Surabaya','1985-10-30','aros_sibuea@yahoo.com','dr._Martua_Arpollos.jpg','Methodist Indonesia'),(94,'dr. James Setiady','C045181008','2018-07-01','IX',9,'Jl. Gunung LompobatangNo. 170, Makassar','Penata Muda TK. I / III b','198510302014031001','081341064153','2','44',0,1,'Ujung Pandang','1993-03-31','james_setiady@yahoo.com','dr._James_Setiady.jpg','Universitas Hasanuddin'),(95,'dr. Arham Jaya','C045182001','2019-01-01','VIII',8,'Perdos UNHAS Tamalanrea Blok E No. 40, Makassar','-','-','085396321842','1','41',0,1,'Latellang','1990-07-01','arhamjaya@ymail.com','dr._Arham_Jaya.jpg','Universitas Hasanuddin'),(96,'dr. Hans Alfonso Thioritz','C045182002','2019-01-01','VIII',8,'Jl. Beruang No. 72 A, Makassar','-','-','085299595988 / 085396786288','2','42',0,1,'Ujung Pandang','1991-04-13','hansthioritz@yahoo.com','dr._Hans_Alfonzo_Thioritz.jpg','Universitas Hasanuddin'),(97,'dr. Muh. Arfan','C045182003','2019-01-01','VIII',8,'Jl. Taqwa No. 8, Maros','-','-','085294838433 / 081340000119','1','31',0,0,'Maros','1988-12-21','muhammadarfanmd@gmail.com','dr._Muh._Arfan.jpg','Universitas Muslim Indonesia'),(98,'dr. Nur Hasnah','C045182004','2019-01-01','VIII',8,'BTN Hartaco Indah Blok','-','-','081243330208','1','38',0,0,'Ujung Pandang','1989-12-08','nurhasnahhusain@gmail.com','dr._Nur_Hasnah.jpg','Universitas Muslim Indonesia'),(99,'dr. Anastasnio Dwizakzana A','C045182005','2019-01-01','VIII',8,'BTN Hartaco Indah Blok IVE / 12, Makassar','-','-','085396786088','1','45',0,1,'Ujung Pandang','1991-12-28','Anastanio28@gmail.com','dr._Anastanio_Dwizakzana_Anugrah.jpg','Universitas Hasanuddin'),(100,'dr. Andi Fatmawati Mahir','C045182006','2019-01-01','VIII',8,'BTN Bulurokeng Permai Blok F4 No. 11, Makassar','-','-','085299087511','1','39',0,0,'Sengkang','1990-09-25','andifatmawatimahir@gmail.com','dr._Andi_Fatmawati_Mahir.jpg',''),(101,'dr. Robert Christeven','C045182007','2019-01-01','VIII',8,'BTP Jl. Tamalanrea Selatan Blok M. No. 191','-','-','087804288448','2','44',0,1,'Pontianak','1990-12-25','rchristeven.rc@gmail.com','dr._Robert_Christeven.jpg','Universitas Kristen Krida Wacana'),(102,'dr. Deo Prasetyo','C045182008','2019-01-01','VIII',8,'Rusunawa I UNHAS Blok C/507, Makassar','-','-','081233085654','2','19',0,1,'Surabaya','1989-12-03','deo_89@ymail.com','dr._Deo_Prasetyo.jpg','Universitas Hang Tuah'),(103,'dr. Muh.  Firmasyah Kamal','C045182009','2019-01-01','VIII',8,'Jl. Palapa I No. 47, Telkomas, Makassar','-','-','081341737173','1','21',0,1,'Bandung','1986-09-06','firmanfk08@gmail.com','dr._Muhammad_Firmansyah_Kamal.jpg','Universitas Hasanuddin'),(104,'dr. Fitran Amansyah','C045182010','2019-01-01','VIII',8,'Jl. Pallantikang Lr. 1 No. 21 A, Sungguminasa','-','-','085256025865','1','24',0,1,'Ujung Pandang','1985-12-16','fi6ams@gmail.com','dr._Fitran_Amansyah.jpg','Universitas Sam Ratulangi'),(105,'dr. Muh. Ikhlas Yakin Iwan','C045182011','2019-01-01','VIII',8,'BTN Hartako Indah Blok IM No. 8, Makassar','-','-','082122411647','1','29',0,1,'Makassar','1993-12-02','muhammadikhlas@live.com','dr._Muhammad_Ikhlas_Yakin_Iwan.jpg','Universitas Hasanuddin'),(106,'dr. Teguh Triananda Putra','C045182012','2019-01-01','VIII',8,'Rusunawa I UNHAS Blok C/507, Makassar','-','-','081336459046','1','36',0,1,'Jember','1989-12-31','teguhtriananda@yahoo.com','dr._Teguh_Triananda_Putra.jpg','Universitas Hang Tuah'),(107,'dr. Hendry Purwanto','C045191001','2019-07-01','VII',7,'Jl. Pinang 8 Blok E 124/F Bumi Sudiang Permai, Makassar','-','-','081241137650','2','33',0,1,'Palopo','1990-12-02','hendrypurwanto33@gmail.com','dr._Hendry_Purwanto.jpg','Universitas Mulawarman'),(108,'dr. Muhammad Alim Fath Rianse','C045191002','2019-07-01','VII',7,'Jl. Abd. Dg. Sirua BTN CV Dewi Blok B2 No. 6, Makassar','-','-','081340011000','1','45',0,1,'Kendari','1991-09-24','alim.alfath@gmail.com','dr._Muhammad_Alim_Fath_Al_Rianse.jpg','Universitas Halu Oleo'),(109,'dr. Muh Rusdan Jalil','C045191003','2019-07-01','VII',7,'Jl. Cemara No. 2, Makassar','-','-','081398061211','1','26',0,1,'Barru','1992-12-06','kecoawc00@gmail.com','dr._Muh._Rusdan_Jalil.jpg','Universitas Muslim Indonesia'),(110,'dr. Chendhy Fakdawer','C045191004','2019-07-01','VII',7,'BTN Hamzy, Makassar','Penata Muda Tk.I / III b','198507052015031002','08114813457','2','29',0,1,'Abepura','1985-12-05','dhysolo@gmail.com','dr._Chendhy_Fakdawer.jpg','Universitas Cendrawasih'),(111,'dr. A. Arief Munandar Sinangka','C045191005','2019-07-01','VII',7,'BTP Blok F No. 296 A, Makassar','-','-','08114504470','1','28',0,1,'Rappang','1991-12-10','arief.rover05@gmail.com','dr._A._Arief_Munandar_Sinangka.jpg','Universitas Tadulako'),(112,'dr. Maryam Mayidah Hasan Nur','C045191006','2019-07-01','VII',7,'Jl. Melati Raya No. 7 Komp. Maizonette, Makassar','-','-','085399580859','1','17',0,0,'Ujung Pandang','1989-12-12','iammayidah16@gmail.com','dr._Maryam_Mayidah_Hasan_Nur.jpg','Universitas Muhammadiyah Makassar'),(113,'dr. Putra Imanullah','C045191007','2019-07-01','VII',7,'BTN Gardenia Blok G No. 5, Makassar','-','-','082344623048','1','9',0,1,'Ujung Pandang','1992-12-05','putraimanullah@gmail.com','dr._Putra_Imanullah.jpg','Universitas Hasanuddin'),(114,'dr. Andy Wahab','C045191008','2019-07-01','VII',7,'Jl. Banda 30 C, Makassar','-','-','081244033133','1','18',0,1,'Makassar','1990-12-11','wahabunhas@gmail.com','dr._Andy_Wahab.jpg','Universitas Hasanuddin'),(115,'dr. Esron Yosep Butar Butar','C045191009','2019-07-01','VII',7,'BTP Tamalanrea Mas Blok MI No. 16, Makassar','-','-','08116223492','2','43',0,1,'Medan','1992-04-23','esron.joseph@yahoo.co.id','dr._Esron_Yosep_Butar_Butar.jpg','Universitas Methodist Indonesia'),(116,'dr. Nur Ramadhaniany Lihawa','C045191010','2019-07-01','VII',7,'Komp. Villa Racing Center Blok B1A, Makassar','Penata Muda Tk.I / III b','198904092019032004','085298801919','1','22',0,0,'Gorontalo','1989-04-09','dyanlihawa@gmail.com','dr._Nur_Ramadhiany_Lihawa.jpg','Universitas Hasanuddin'),(117,'dr. Muhammad Amrul Husni','C045191011','2019-07-01','VII',7,'Perum. Tamalanrea Mas No. 66 BTP, Makassar','Penata Muda Tk.I / III b','198605292017041001','081347765109','1','27',0,1,'Perina, Desa Prina','1986-12-29','amrul290587@gmail.com','dr._Muhammad_Amrul_Husni.jpg','Universitas Mataram'),(118,'dr. Ahmad Masyfuqkasim Yahiji','C045191012','2019-07-01','VII',7,'Jl. Bung Perum. Pesona Bukit Magfirah Blok C No. 2, Makassar','-','-','085347206234','1','19',0,1,'Pare-pare','1992-12-19','masfuq@gmail.com','dr._Ahmad_Masfuqkasim_Yahiji.jpg','Universitas Hasanuddin'),(120,'dr. Fariz Munandar B. Para','C045212001','2022-01-01','II',2,'Perdos Unhas B6.9. Tamalanrea','Penata Muda Tk. I / III b','198712082019031000','085340001461','1','20',0,1,'Lompio','1987-12-08','farizmunandar488@gmail.com','dr._Fariz_Munandar_B._Para.jpeg','Universitas Hasanuddin'),(121,'dr. Muh. Andy Jaya Nugraha','C045212002','2022-01-01','II',2,'Jl. Mapala Raya Blok A3 No. 1','-','-','085158823224','1','19',0,1,'Ujung Pandang','1995-12-07','muh.andyjaya.md@gmail.com','dr._Andy_Jaya_Nugraha.jpeg','Universitas Muslim Indonesia'),(122,'dr. Ranangga Sidhiasto Prabowo','C045212003','2022-01-01','II',2,'BTP Tamalanrea Mas Blok M1 No. 2','-','-','082220222973','1','48',0,1,'Grobongan','1987-12-27','p4pper@gmail.com','dr._Ranangga_Sidhiasto_Prabowo.jpeg','Universitas Islam Sultan Agung Semarang'),(123,'dr. Samuel Kharatuan Ridho','C045212004','2022-01-01','II',2,'Perumahan Telkomas, Jl. Telepon V No. 158 Makassar','-','-','081241529700','2','41',0,1,'Rantepao','1989-12-29','sam.ridho@hotmail.com','dr._Samuel_Kharatuan_Ridho.jpeg','Universitas Kristen Maranatha'),(124,'dr. Muhammad Syahrir','C045212005','2022-01-01','II',2,'Jl. M. Basir BTN Persada Mappatunru Blok E No. 2, Kel. Empoang Selatan, Kec. Binamu, Kab. Jeneponto','Penata Muda Tk. I / III b','19870709 201903 1 008','082159457347','1','45',0,1,'Jeneponto','1987-12-09','doktersantri06@gmail.com','dr._Muhammad_Syahrir.jpeg','Universitas Hasanuddin'),(125,'dr. Imran Taufik','C045212006','2022-01-01','II',2,'Jl. Anggrek Blok EA No. 14 Nusa Tamalanrea Indah Makassar','Penata Muda Tk. I / III.b','199305112019031000','081355804262','1','27',0,1,'Malili','1993-12-11','imrantaufik40@yahoo.com','dr._Imran_Taufik.jpeg','Universitas Muslim Indonesia'),(126,'dr. Dini Laudia','C045212007','2022-01-01','II',2,'Jl. dr. Laimena Perumahan Gapura Satelit Indah No. 22 Makassar','-','-','085333923428','1','18',0,0,'Makassar','1995-12-16','dinilaudia95@yahoo.com','dr._Dini_Laudia.jpeg','Universitas Batam'),(127,'dr. Andi Nikma','C045212008','2022-01-01','II',2,'Kompleks Budi Daya Permai Blok F No. 2','Penata Muda Tk. I / III.B','199004232019032000','085215119038','1','24',0,0,'Soppeng','1990-04-23','nikma_amran@yahoo.co.id','dr._Andi_Nikma.jpeg','Universitas Muslim Indonesia'),(128,'dr. Rama Yasdi Sinrang','C045212009','2022-01-01','II',2,'Cluster Akasia Blok D2/1','-','-','081254880300','1','38',0,1,'Bontang,','1993-12-15','rmysds@icloud.com','dr._Rama_Yasdi_Sinrang.jpeg','Universitas Muslim Indonesia'),(129,'dr. Irham','C045212010','2022-01-01','II',2,'Perumahan Royal Sentra land, Kel. Moncong Loe, Kab. Maros','-','-','082271514332','1','49',0,1,'Palu,','1992-12-30','drirham30@gmail.com','dr._Irham.jpeg','Universitas Tadulako Palu'),(130,'dr. Syahril','C045212011','2022-01-01','II',2,'BTP Blok AD 241 P, Makassar','Penata Muda Tk. I / III b','199110022019031000','085333922965','1','50',0,1,'Palludda','1991-12-02','syahrilzainuddin@gmail.com','dr._Syahril.jpeg','Universitas Hasanuddin'),(131,'dr. Jacky Tanzil','C045212012','2022-01-01','II',2,'Jl. Tulip I, C1/19, Panakkukang, Kel. Masale, Makassar','-','-','081245684807','2','44',0,1,'Ujung Pandang','1990-12-19','jackytanzil90@gmail.com','dr._Jacky_Tanzil.jpeg','Universitas Tarumanegara'),(132,'dr. Hariady Salam','C045212013','2022-01-01','II',2,'Jl. Perintis Kemerdekaan Puri Asri 8 Blok A No. 2','-','-','081287003200','1','28',0,1,'Pinrang','1994-12-27','hariady.salam@gmail.com','dr._Hariady_Salam.jpeg','Universitas Hasanuddin'),(133,'dr. Andi Ichsan Makkawaru','C045212014','2022-01-01','II',2,'Jl. Perintis Kemerdekaan 7 Perum. Green Harmony B12 Tamalanrea','-','-','081222637511','1','51',0,1,'Maros','1993-04-27','ichsanmakka@gmail.com','dr._Andi_Ichsan_Makkawaru.jpeg','Universitas Tadulako Palu'),(134,'dr. Yulianti Pratiwi','C045202001','2021-01-01','IV',4,'Jln. Perintis Kemerdekaan Km. 12 Perumahan Dewi Karmilasari B3 No. 1','Penata / III C','19880726 201704 2 000','082394533434','1','36',0,0,'Parepare','1988-12-26','yuliantipratiwidr@gmail.com','dr._Yulianti_Pratiiwi.jpeg','Universitas Muslim Indonesia'),(135,'dr. Muh. Imran J. Bana','C045202002','2021-01-01','IV',4,'Jl. Ade Irma Nasution Irg. 6 No. 42','-','-','082311007106','1','34',0,1,'Kendari','1993-11-15','muhimranjbana@gmail.com','dr._Muh._Imran_J._Bana.jpeg','Universitas Halu Uleo'),(136,'dr. Rino Setiady','C045202003','2021-01-01','IV',4,'BTP Blok C No. 150','-','','081289469909','2','32',0,1,'Depok','1987-12-18','drrinosetiady@gmail.com','dr._Rino_Setiady.jpeg','Universitas Tarumanegara'),(137,'dr. Akbar Kapissa Baharsyah','C045202004','2021-01-01','IV',4,' Jl. Bangka raya No. 9 Tamalanrea, Kec. Tamalanrea, Kota Makassar.','Penata Muda / III B','19880519 201903 1 002','085248734737','1','37',0,1,'Warmare','1989-12-19','akbarkapita@gmail.com','dr._Akbar_Kapissa_Baharsyah.jpeg','Universitas Hasanuddin'),(138,'dr. Fachrul Tamrin','C045202005','2021-01-01','IV',4,'BTP RAYA NO 15-16','-','-','082133343592','1','11',0,1,'Enrekang','1992-12-08','factam17@gmail.com','dr._Fachrul_Tamrin.jpeg','Universitas Indonesia'),(139,'dr. Natalindah Jakiem Woecandra Tandi Datu','C045202006','2021-01-01','IV',4,'','-','-','082197230303','2','38',0,0,'Lumajang','1986-11-03','natalina.bedah@gmail.com','dr._Natalindah_Jakiem_Woecandra_Tandi_Datu.jpeg','Universitas Hasanuddin'),(140,'dr. Suharno','C045202007','2021-01-01','IV',4,'BTP Blok M No. 86','-','-','08133900123','1','31',0,1,'Kandangan','1991-12-27','arno_salim@yahoo.com','dr._Suharno.jpeg','Universitas Methodist Indonesia'),(141,'dr. Mujahid Amiruddin Abdullah Rasul','C045202008','2021-01-01','IV',4,'Perdos Unhas Tamalanrea Blok AB25A','-','-','082221434762','1','32',0,1,NULL,NULL,NULL,NULL,NULL),(142,'dr. Muh. Fachri Hanafi','C045202009','2021-01-01','IV',4,'Jl. Racing Centre Komp. UMI Blok L2 / 2 Makassar','-','-','082345679985','1','12',0,1,'Ujung Pandang','1994-12-27','fachrihanafi110@gmail.com','dr._Muh._Fachri_Hanafi.jpeg','Universitas Muslim Indonesia'),(143,'dr. Shandhy Shanaya','C045211001','2021-07-01','III',3,'Moncongloe ','-','-','081343638560','1','32',0,1,'Moncongloe','1994-12-26',' shandyshanaya@gmail.com','dr._Shandy_Shanaya.jpeg','Universitas Hasanuddin'),(144,'dr. Wiwit Anhar Ramadhani','C045211002','2021-07-01','III',3,'Rusunawa blok C. Kamar 412','-','-','081285727765','1','43',0,1,'Bekasi ','1991-12-30','wiwittanharr@gmail.com','dr._Wiwit_Anhar_Ramadhani.jpeg','Universitas Muhammadiyah Jakarta'),(145,'dr. M. Tanthowi Darwis','C045211003','2021-07-01','III',3,'Jl. Mangadel Lor. 20 No. 10','-','-','082296069091','1','17',0,1,'Ujung Pandang','0199-12-02','m.tanthowi3@gmail.com ','dr._M._Tanthowi_Darwis.jpeg','Universitas Muslim Indonesia'),(146,'dr. Hardiansyah','C045211004','2021-07-01','III',3,'Raisya kost eksclusive, BTP Tamalanrea blok M','-','-','082190109298','1','40',0,1,'Marang kayu','1991-12-20','hardiandr20@gmail.com','dr._Hardiansyah.jpeg','Universitas Muhammadiyah Makassar'),(147,'dr. M. Patri Nasir','C045211005','2021-07-01','III',3,'BTN Gardenia Blok G No. 17, Racing Center  MKS','Penata Muda Tingkat I, III/B','199012212019031000','085341788887','1','16',0,1,'Padang Sappa','1990-12-21','patrynazir@gmail.com','dr._M._Patri_Nasir.jpeg','Universitas Muslim Indonesia'),(148,'dr. Ade Triansyah','C045211006','2021-07-01','III',3,'Perum.  Citra Sudiang Indah, CX/08, Makassar','-','-','08114050707','1','2',0,1,' Palu','1994-09-05','adetriansyahemsil@yahoo.com','dr._Ade_Triansyah.jpeg','Universitas Tadulako'),(149,'dr. Ryan Charmy Pratama','C045211007','2021-07-01','III',3,'Jl. Rappokalling Raya No.45','-','-','081238733075','1','2',0,1,'Atambua','1991-12-11','ryancharmy@gmail.com','dr._Ryan_Charmy_Pratama.jpeg','Universitas Muslim Indonesia'),(150,'dr. Ferdinand Allotodang','C045211008','2021-07-01','III',3,'Komp. Bumi Tirta Nusantata 2 Blok A7, Makassar','-','-','081250372188','2','6',0,1,'Samarinda ','1993-12-04','ferdialto@gmail.com','dr._Ferdinand_Allotodang.jpeg','Universitas Hasanuddin'),(151,'dr. Priska Geovanni Sombolayuk','C045211009','2021-07-01','III',3,' Kompleks Unhas Antang Blok A No. 5','-','-','081244933267','2','35',0,0,'Ujung pandang','1995-12-07','priskageovannisombolayuk@gmail.com','dr._Priska_Geovanni_Sombolayuk.jpeg','Universitas Hasanuddin'),(152,'dr. Fitria Ningsi','C045211010','2021-07-01','III',3,'Jl. Abdullah Dg. Sirua, lrg. 12 No. 162B','Penata Muda TK.1/Gol. III B','198606132019032000','085254137167','2','11',0,0,'Kendari','1986-12-13','dr.fitria.ningsih1@gmail.com','dr._Fitria_Ningsi.jpeg','Universitas Hasanuddin'),(153,'dr. Ivan Pandapotan Sihotang','C045211011','2021-07-01','III',3,' BTP JL. KER. BARAT 22 BLOK J no.607','Penata Muda Tk. I / III b','199302172019031000','081347191689','2','14',0,1,'Ujung Pandang','1993-12-17','ivanp.sihotang@rocketmail.com','dr._Ivan_P._Sitohang.jpeg','Universitas Hasanuddin'),(154,'dr. Muh. Elyas Haeruddin','C045211012','2021-07-01','III',3,'RUSUNAWA 2 Unhas','Penata Muda TK.1/Gol. III B','199301142019031000','082250672027','1','4',0,1,'Ladongi','1993-12-14','elyasbroo1@gmail.com','dr._Muh._Elyas_Haeruddin.jpeg','Universitas Halu Oleo'),(155,'dr. Kemala Taufik Azis','C045201004','2022-07-01','V',5,'Perumahan Bukit Madani Blok A No. 4 Makassar','-','-','\'085234399887','1','43',0,1,'Ujung Pandang','1993-12-27','kemaltaufikazis@gmail.com','dr._Kemal_Taufik_Azis.jpg','Universitas Hasanuddin'),(156,'dr. Andi Tri Sutrisno Hasanuddin','C045201001','2022-07-01','V',5,'BTN Hartaco Indah, Blok 1X, No.3, Makassar','Penata Muda Tk. 1 / III b','199206132020121013','082348437487','1','53',0,1,'Jeneponto','1992-12-13','anditrisutrisno04@gmail.com','dr._Andi_Tri_Sutrisno_Hasanuddin.jpg','Universitas Muslim Indonesia'),(157,'dr. Andi Nurjannah Kaddiraja','C045201002','2020-07-01','V',5,'Perumahan Chrysant Blok B2 No.6','-','-','081343252364','1','51',0,0,'Bua','1990-11-23','andinurjannahkaddiraja110@gmail.com','dr._Andi_Nurjannah_Kaddiraja.jpg','Universitas Muslim Indonesia'),(158,'dr. Sahrul H. Abbas A.','C045201003','2020-07-01','V',5,'Perumahan Mutiara Gading 2, Daya Makassar','Penata Muda  Tk. I/III b','198705202017061000','\'082122139404','1','49',0,1,'Jayapura','1987-12-20','dr.sahrul@gmail.com','dr._Sahrul_H._Abbas_A.jpg','Universitas Wijaya Kusuma Surabaya'),(159,'dr. Ashy Amelia Arista. A','C045201005','2022-07-01','V',5,'Royal Sentraland No. 200','-','-','082157809350','1','27',0,0,'Ujung Pandang','1992-11-25','ashyamelia@gmail.com','dr._Ashy_Amelia_Arista_A.jpg','Universitas Tadulako '),(160,'dr. Juwita Dewi Pratiwi Limbongan','C045201006','2020-07-01','V',5,'BTP Blok No. 521','-','-','081336652013','2','24',0,0,'Solo','1990-12-28','juwita.pratiwii@gmail.com','dr._Juwita_Dewi_Pratiwi_Limbongan.jpg','Universitas Wijaya Kusuma'),(161,'dr. Heriadi Hamid','C045201007','2020-07-01','V',5,'BTP Blok M No. 37','-','-','082181111539','1','20',0,1,'Ujung Pandang','1988-12-09','herihamid09@gmail.com','dr._Heriadi_Hamid.jpg','Universitas Malahayati '),(162,'dr. Indra Gunawan','C045201008','2020-07-01','V',5,'Racing Center Komp. UMI Blok H No.12','-','-','082274222290','1','25',0,1,'Ujung pandang','1988-12-13','igun13medicdrummer@gmail.com','dr._Indra_Gunawan.jpg','Universitas Muslim Indonesia'),(163,'dr. Ahmad Mikhail Ibrahim','C045201009','2020-07-01','V',5,'Matano Utara No. 1 Bukit Baruga','-','-','082189822200','1','38',0,1,'Ujung Pandang','1993-04-07','amhi_fk@yahoo.co.id','dr._Ahmad_Mikhail_Ibrahim.jpg','Universitas Hasanuddin'),(164,'dr. Ferdian Eris Prianto','C045192001','2020-07-01','VI',6,'Jl. Penjernihan I Blok C No. 12, Makassar','-','-','081243868398','1','28',0,1,'Tenggarong','1992-04-29','ferdianerisprianto@gmail.com','dr._Ferdian_Eris_Prianto.jpg','Universitas Muslim Indonesia'),(165,'dr. Nurnaningsi T','C045192002','2020-07-01','VI',6,'Jl. Sultan Alauddin 2 No. 179','-','-','085251789772','1','53',0,0,'Sinjai','1992-12-04','ningsi.t.thalib@gmail.com','dr._Nurnaningsi_T.jpg','Universitas Muslim Indonesia'),(166,'dr. Harlan','C045192003','2020-07-01','VI',6,'BTN Minasa Upa Blok AB 9 No. 31','-','-','085241212107','1','30',0,1,'Kasimbar','1992-12-17','harlantbm@gmail.com','dr._Harlan.jpg','Universitas Hasanuddin'),(167,'dr. Wensislaus Batbual','C045192004','2020-07-01','VI',6,'Perum. Dosen UNHAS Blok AG / 45','Penata / III c','198611062014121001','0813568688856','2','17',0,1,'Ambon','1986-12-06','wensisbatbual@gmail.com','dr._Wensislaus_Batbual.jpg','Universitas Methhodist Indonesia'),(168,'dr. Bustaman Bakhtiar','C045192005','2020-07-01','VI',6,'Jl. Tun Abd. Razak, Royal Spring Residence, Blok A2 No. 31, Gowa','Penata / III c','19880903214031002','08115564400','1','4',0,1,'Ujung Pandang','1988-09-03','bustaman06@gmail.com','dr._Bustaman_Bachtiar.jpg','Universitas Muslim Indonesia'),(169,'dr. Abrar Pratama Syarifuddin','C045192006','2020-07-01','VI',6,'Perum. Puri Asri Blok i1 No. 7, Tamalanrea','-','-','085293326099','1','49',0,1,'Ujung Pandang','1990-12-15','abrarpratama110@gmail.com','dr._Abrar_Pratama_Syarifuddin.jpg','Universitas Muslim Indonesia'),(170,'dr. Herdiansyah Frima Hasibuan','C045192007','2022-07-01','VI',6,'Rusunawa UNHAS Blok A','Penata Muda Tk. I / III b','198905162017041001','081298060084','1','51',0,1,'Sei Rampah','1989-12-16','herdiansyahfrima@gmail.com',NULL,'Universitas Islam Sumatera Utara'),(171,'dr. I Gusti Ayu Diah Kusuma Wardani','C045192008','2020-07-01','VI',6,'Jl. dr. Leimena Perumahan Taman Dataran Indah, Jl. Gloriosa Blok B No. 63','-','-','081238927011','3','29',0,0,'Ujung Pandang','1993-12-27','diahkusuma27@gmail.com','dr._I_Gusti_Ayu_Diah_Kusuma_Wardani.jpg','Universitas Mataram'),(172,'dr. Efrem Hoesman Ciputra, Ho','C045192009','2020-07-01','VI',6,'Perumahan Grand Orchard, Jl. Orchard Walk No. 99','-','-','082253400827','2','55',0,1,'Ujung Pandang','1992-09-22','efrem.hoemanz@gmail.com','dr._Efrem_Hoesman_Ciputra_Ho.jpg','Universitas Hasanuddin'),(173,'dr. Deddy Setiawan Widjaya','C045192010','2020-07-01','VI',6,'Jl. Perumahan Doesen Blok O/16','-','-','082293273601','2','34',0,1,'Semarang','1988-12-20','dedey88@gmail.com','dr._Deddy_Setiawan_Widjaya.jpg','Universitas Diponegoro '),(174,'dr. Zesmarhchis','C045192011','2020-07-01','VI',6,'Jl. Perintis Kemerdekaan Perum. Bukit Khatulistiwa Blok L 32','-','-','085231431648','1','9',0,1,'Siunggam Julu','1986-12-16','zesmarhchiszesmarhchis@yahoo.co.id','dr._Zesmarhchis.jpg','Universitas Malahayati'),(175,'dr. Matsrial Putra Rombetasik','C045221001 ','2022-07-01','I',1,'Jl. Telkom VI No. 181','Penata III/c','199006112019031010','081356792425','2','1',0,1,'Palopo','1990-12-11','rialbedah@gmail.com','dr._Matsrial_Putra_Rombetasik.jpeg','Universitas Tadulako ');
/*!40000 ALTER TABLE `residen_bedah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester` (
  `smt_no` int(11) DEFAULT NULL,
  `smt_romawi` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,'I'),(2,'II'),(3,'III'),(4,'IV'),(5,'V'),(6,'VI'),(7,'VII'),(8,'VIII'),(9,'IX'),(10,'X'),(11,'XI'),(12,'XII'),(13,'XIII'),(14,'XIV'),(15,'XV'),(16,'XVI'),(17,'XVII'),(18,'XVIII'),(19,'XIX'),(20,'XX');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stase`
--

DROP TABLE IF EXISTS `stase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stase` (
  `res_id` int(11) DEFAULT NULL,
  `stase_id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_id` int(11) DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `selesai` date DEFAULT NULL,
  PRIMARY KEY (`stase_id`),
  KEY `res_id` (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stase`
--

LOCK TABLES `stase` WRITE;
/*!40000 ALTER TABLE `stase` DISABLE KEYS */;
INSERT INTO `stase` VALUES (118,1,3,'2022-04-01','2022-04-30'),(7,2,2,'2021-06-01','2021-06-30'),(7,3,28,'2021-07-01','2021-07-31'),(1,7,2,'2022-07-01','2022-07-01'),(133,8,41,'2022-04-01','2022-04-30'),(105,9,2,'2022-07-01','2022-07-30'),(133,11,27,'2022-05-01','2022-05-31'),(133,12,38,'2022-07-01','2022-07-31'),(132,13,27,'2022-04-01','2022-04-30'),(132,14,29,'2022-05-01','2022-05-31'),(132,15,47,'2022-07-01','2022-07-31'),(131,16,47,'2022-05-01','2022-05-31'),(131,17,29,'2022-07-01','2022-07-31'),(130,18,2,'2022-04-01','2022-04-30'),(130,19,41,'2022-05-01','2022-05-31'),(130,20,38,'2022-07-01','2022-07-31'),(129,21,27,'2022-04-01','2022-04-30'),(129,22,2,'2022-05-01','2022-05-31'),(129,23,35,'2022-07-01','2022-07-31'),(128,24,29,'2022-04-01','2022-04-30'),(128,25,47,'2022-05-01','2022-05-31'),(128,26,27,'2022-07-01','2022-07-31'),(127,27,47,'2022-04-01','2022-04-30'),(127,28,2,'2022-05-01','2022-05-31'),(127,29,29,'2022-07-01','2022-07-31'),(126,30,29,'2022-04-01','2022-04-30'),(126,31,27,'2022-05-01','2022-05-31'),(126,32,47,'2022-07-01','2022-07-31'),(125,33,29,'2022-04-01','2022-04-30'),(125,34,9,'2022-05-01','2022-05-31'),(125,35,27,'2022-07-01','2022-07-31'),(124,36,29,'2022-04-01','2022-04-30'),(124,37,9,'2022-05-01','2022-05-31'),(124,38,2,'2022-07-01','2022-07-31'),(123,39,9,'2022-04-01','2022-04-30'),(123,40,29,'2022-05-01','2022-05-31'),(123,41,47,'2022-07-01','2022-07-31'),(122,42,41,'2022-04-01','2022-04-30'),(122,43,2,'2022-05-01','2022-05-31'),(122,44,29,'2022-07-01','2022-07-31'),(121,45,9,'2022-04-01','2022-04-30'),(121,46,41,'2022-05-01','2022-05-31'),(121,47,35,'2022-07-01','2022-07-31'),(120,48,2,'2022-04-01','2022-04-30'),(120,49,27,'2022-05-01','2022-05-31'),(120,50,29,'2022-07-01','2022-07-31');
/*!40000 ALTER TABLE `stase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempat_stase`
--

DROP TABLE IF EXISTS `tempat_stase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempat_stase` (
  `lokasi_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lokasi_stase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lokasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempat_stase`
--

LOCK TABLES `tempat_stase` WRITE;
/*!40000 ALTER TABLE `tempat_stase` DISABLE KEYS */;
INSERT INTO `tempat_stase` VALUES (2,'Bedah Saraf 1'),(9,'IGD RS. Wahidin Sudirohusodo'),(10,'RS. Pendidikan UNHAS'),(11,'Departemen Ilmu Anestesi Perawatan Intensif dan Manajemen Nyeri\n'),(12,'RS. Ibnu Sina'),(13,'RS. Hikmah'),(14,'RS. Stella Maris'),(15,'RS. Akademis'),(16,'RS. Islam Faisal'),(17,'RS. Alor'),(18,'RS. PT. INCO'),(19,'RS. Pohuwatu'),(20,'RS. Enrekang'),(22,'RS. Kutai Kertanegara'),(23,'RS. Pare-pare'),(27,'Bedah Anak 1'),(28,'Bedah Saraf 2'),(29,'Bedah Digestif 1'),(30,'Bedah Saraf 3'),(31,'Bedah Digestif 2'),(32,'Bedah Digestif 3'),(33,'Bedah Anak 2'),(34,'Bedah Anak 3'),(35,'Bedah Onkologi 1'),(36,'Bedah Onkologi 2'),(37,'Bedah Onkologi 3'),(38,'Bedah Thoraks 1'),(39,'Bedah Thoraks 2'),(40,'Bedah Thoraks 3'),(41,'Bedah Plastik 1'),(42,'Bedah Plastik 2'),(43,'Bedah Plastik 3'),(44,'Bedah Urologi 1'),(45,'Bedah Urologi 2'),(46,'Bedah Urologi 3'),(47,'Bedah Orthopedi 1'),(48,'Bedah Orthopedi 2'),(49,'Bedah Orthopedi 3');
/*!40000 ALTER TABLE `tempat_stase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujian`
--

DROP TABLE IF EXISTS `ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujian` (
  `ujian_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `ujian_name` varchar(100) DEFAULT NULL,
  `tempat` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `ket` int(1) DEFAULT NULL,
  PRIMARY KEY (`ujian_id`),
  KEY `res_id` (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujian`
--

LOCK TABLES `ujian` WRITE;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
INSERT INTO `ujian` VALUES (1,1,'Ujian Bedah Dasar','Makassar','2019-11-15',1),(2,1,'Ujian OSCA','Balikpapan','2019-11-19',1),(3,1,'Bedah Lanjut','Makassar','2019-11-05',1),(4,118,'OSCE','Makassar','2022-05-01',1),(5,118,'OSCE','Bali','2022-04-01',NULL),(6,118,'OSCE','Makassar','2022-04-30',1),(8,7,'OSCE','Makassar','2022-06-01',NULL),(9,7,'OSCE','Bali','2022-07-01',1);
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arman Idris','arman.idris@gmail.com','$2y$10$1A5l5MMZ4Mm6SSoJBHLly.zT4/6hzizl46VNFjaFENtmcJS.HIqD2','photos/SyYxO1tBna119VGTkHRwR6NbNlGAxuj06761ODJF.png','yd7zvt2DdOLg2Og85jSS97nPydNqDvZUqklJIEOkauEi4Am6liyR1elJ1Wbm','2022-08-02 18:46:20','2022-08-02 22:47:27');
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

-- Dump completed on 2022-09-14 10:31:33
