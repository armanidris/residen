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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus`
--

LOCK TABLES `kursus` WRITE;
/*!40000 ALTER TABLE `kursus` DISABLE KEYS */;
INSERT INTO `kursus` VALUES (1,2,'Coba','Makassar','2022-08-03','2022-08-03'),(2,2,'Pelatihan Test','Bali','2022-07-04','2022-07-08'),(10,1,'Pelatihan Test 123','Makassar','2022-08-01','2022-08-03'),(11,1,'Pelatihan Test','Bali','2022-08-01','2022-08-06');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makalah`
--

LOCK TABLES `makalah` WRITE;
/*!40000 ALTER TABLE `makalah` DISABLE KEYS */;
INSERT INTO `makalah` VALUES (3,2,'Makalah 1','Bukan apa - apa',1,'2022-08-03',0,9),(4,2,'asd12','asddd',1,'2022-07-01',0,3),(5,1,'Makalah 1','Judul',1,'2022-08-02',0,4),(7,1,'Makalah 1','Bukan apa - apa',1,'2022-08-02',1,7),(9,1,'Makalah 3','Judul Makalah 3',1,'2022-08-17',1,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembimbing`
--

LOCK TABLES `pembimbing` WRITE;
/*!40000 ALTER TABLE `pembimbing` DISABLE KEYS */;
INSERT INTO `pembimbing` VALUES (1,'','Prof. dr. Chairuddin Rasjad, Ph.D'),(2,'','Prof. dr. Farid Nur Mantu, SpB, SpBA'),(3,'','Prof. dr. Achmad M. Palinrungi, SpB, SpU'),(4,'','Prof. Dr. dr. Andi Asadul Islam, SpBS'),(5,'','dr. A.J. Rieuwpassa, SpB, SpBP-RE'),(6,'','Prof. Dr. dr. Daniel Sampepajung, SpB(K)Onk'),(7,'','dr. Sumantri Sarimin, SpB, SpBP-RE'),(8,'','dr. Murny A. Rauf, SpB-KBD'),(9,'','dr. Haryasena, SpB(K)Onk'),(10,'','dr. Sulaihi, SpB-KBD'),(11,'','dr. M. Nuralim Mallapasi, SpB, SpBTKV'),(12,'','Dr. dr. Djoko Widodo, SpBS'),(13,'','Dr. dr. Warsinggih, SpB-KBD, M. Kes'),(14,'','Dr. dr. Ronald E. Lusikooy, SpB-KBD'),(15,'','Dr. dr. William Hamdani, SpB(K)Onk'),(16,'','Dr. dr. Ibrahim Labeda, SpB-KBD'),(17,'','Dr. dr. Fonny Josh, SpBP-RE(K)'),(18,'','Dr. dr. Nasrullah, SpBS'),(19,'','dr. Ahmadwirawan, SpB, SpBA'),(20,'','dr. Jufri Latief, SpB, SpOT'),(21,'','Dr. dr. Willy Adhimarta, SpBS'),(22,'','dr. Mappincara, SpB-KBD'),(23,'','dr. Khoirul Kholis, SpU'),(24,'','dr. M. Asykar A. Palinrungi, SpU'),(25,'','dr. Djonny Ferianto Sambokaraeng, SpB(K)Onk'),(26,'','dr. Septiman, SpB(K)Onk'),(27,'','dr. Nasser Mustari, SpOT'),(28,'','dr. Syakri Syahrir, SpU'),(29,'','dr. John Pieter Jr, SpB(K)Onk'),(30,'','dr. Syarif, SpU'),(31,'','dr. Samuel Sampetaoding, SpB-KBD'),(32,'','dr. Sachraswaty R. Laidding, SpB, SpBP-RE'),(33,'','dr. Iwan Dani, SpB-KBD'),(34,'','dr. Andi Ihwan , SpBS'),(35,'','dr. Arman Bausat, SpB, SpOT'),(36,'','dr. Nita Mariana, M. Kes, SpBA'),(37,'','dr. Indra, SpB(K)Onk '),(38,'','dr. M. Ihwan Kusuma, SpB-KBD'),(39,'','dr. Mulawardi, SpB(K)V'),(40,'','dr. Tommy Rubiyanto Habar, SpB, SpBA'),(41,'','dr. Sulmiati, SpBA'),(42,'','dr. Salman Ardi Syamsu, SpB(K)Onk'),(43,'','Dr. dr. Prihantono, SpB(K)Onk'),(44,'','dr. Jayarasti Kusumanegara, SpBTKV'),(45,'','dr. Julianus A. Uwuratuw, SpB-KBD');
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
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panggol` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `res_nip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_id` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penasehat_akademik` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lulus` tinyint(1) NOT NULL DEFAULT 0,
  `sex` tinyint(1) NOT NULL DEFAULT 1,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_universitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residen_bedah`
--

LOCK TABLES `residen_bedah` WRITE;
/*!40000 ALTER TABLE `residen_bedah` DISABLE KEYS */;
INSERT INTO `residen_bedah` VALUES (1,'dr. Muh. Rezki Fadly Ilyas','C104214101','2014-07-01','XII','Jl. A. Pangeran Pettarani Komp. IDI GA7 No. 20, Makassar','-','123','1234','1','5',0,1,'Test 1','1980-11-30','foo@bar.com','res-photos/D4mNFUUGykNozSrzDAsJ3MMVfqZJhtLz11mQJPN4.jpg','Universitas Test',NULL,NULL),(2,'dr. Billy Jonatan','C104214106','2014-07-01','XII','Komp. Perdos Tamalanrea Jl. Al. Ikhlas 3 Kav.5 Mks ','','','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'dr. Emmy Palinggi','C104214109','2014-07-01','XII','JL. Perintis Kemerdekaan Km. 11 No. 71','','','','2','2',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'dr. Mega Setiawan','C104214110','2015-01-01','XII','Perdos Unhas Tamalanrea Blok K No.1 Mks ','Penata / III C','19860804 201104 2 002','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'dr. King Alexander','C104214201','2015-01-01','XI','Perumnas Sudiang Jl. Mamuju No. C19, Makassar','','','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'dr. Cristmos Bambang Merryawan ','C104214202','2015-01-01','XI','Jl. Wesabbe Blok C No. 36, Makassar','','','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'dr. Komet Rama Daud','C104214203','2015-01-01','XI','Jl. Sunu Komp. UNHAS Baraya DX-5, Makassar','','','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'dr. Muhammad Zulfikar','C104214204','2015-01-01','XI','Jl. Gunung Batu Putih No, 10, Makassar','Penata / III C','19851229 20110101014','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'dr. Gute Rizal Kriswono','C104214205','2015-01-01','XI','Jl. Teduh Bersinar M-20 Perum. Bosowa Sultan Alauddin, Makassar','','','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'dr. Fransisca','C104214206','2015-01-01','XI','Komp. Dosen UNHAS Tamalanrea Blok G No. 3, Makassar','','','','2','3',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'dr. Andi Fahdrin ','C104214207','2015-01-01','XI','Jl. A.P Pettrani Komp. IDI G10/7, Makassar','Penata Muda TK.I / III B','198709212014122002','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'dr. Aditya Bernard Dharmaji','C104214208','2015-01-01','XI','Jl. Gunung Batu Putih No. 18, Makassar','','','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'dr. Juan Fariz Oktorian','C104214209','2015-01-01','XI','Perumahan Dosen Tamalanrea Blok AG No. 45, Makassar','','','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'dr. Januar Rizky Adrian','C104214210','2015-01-01','XI','Jl. Gunung Lompobattang Lr. 96 No. 8, Makassar','','','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'dr. Moch. Ilfan Gunadi','C10415101','2015-07-01','X','Komp. Duta Indah Jl. Teratai IV Blok Di/II. Pondok Gede','','','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'dr. Reinaldo Sunggiardi','C10415103','2015-07-01','X','Rusunawa unhas blok d no 117. Jl sahabat, Tamalanrea, Makassar','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'dr. Mukhisal Aqni','C10415104','2015-07-01','X','Perum. Dataran Indah Bosowa C/72, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'dr. Sartian Battung','C10415105','2015-07-01','X','Perum. Alinda Kencana Permai 1 Blok J1 No. 5 Jawa Barat','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'dr. Andi Ratu Alam','C10415102','2015-07-01','X','Perum. Garaha Cendekia Blok B 37, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'dr. Divara Syauta','C10415106','2015-07-01','X','Jl. Sirsak Gg. Mesir No. 75, Jagakarsa Jakarta Selatan','Penata / III C','198104292009121001','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'dr. Rudy Budjiono','C10415107','2015-07-01','X','Jl. R.M. Sosrokartono Gg. Nanas No. 20 Kudus, Jawa Tengah','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'dr. Ayu Yuniandini','C10415108','2015-07-01','X','Jl. Andi Tonro V Blok A4 No. 4, Makassar','-','-','','1','3',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'dr. Robin Kurnia Wijaya','C10415109','2015-07-01','X','Kejawan putih Palem Indah VI-F-7/7, Surabaya','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'dr. Martin Saputro Wardoyo','C10415110','2015-07-01','X','Jl. Puri asri indah 3b no. 8 makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'dr. Yelisa Tanete Patandianan','C10415111','2015-07-01','X','BTN Batara Ugi Blok A2 No. 9 Daya, Makassar','-','-','','2','9',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'dr. Mendila P.  Arungpadang','C10415112','2015-07-01','X','Jl. Telkom I C1 No. 69 Taman Telkomas, Makassar','Penata / III C','198010162009031001','','2','1',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'dr. Andi Sinapati Palissei','C10415113','2015-07-01','X','Graha Afilia Blok 3 No. 15, Makassar','Penata / III C','198210262009092001','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'dr. Harry Adiwinata','C10415114','2015-07-01','X','Jl. Hertasning Utara II Blok F16 No. 26, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'dr. Ahmad Syaifudin','C10415115','2015-07-01','X','Jl. Sulawesi RT. 17 No. 17, Banjarmasin','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'dr. Elanda putri Madyaningtias','C10415116','2015-07-01','X','Jl. Sawo No. 20 Panggungrejo, Kepajen, Malang','-','-','','1','2',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'dr. Adriandy Saleh','C10415117','2015-07-01','X','BTN Antang Jaya B15, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'dr. Topan Sugara Kiaydemak','C10415118','2015-07-01','X','Jl. Racing Center Perum. UMI Blok D No. 11, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'dr. Okto Sampe Padang','C104215206','2016-01-01','IX','Perum. Green House Sudiang No. 4, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'dr. Lukmansyah','C104215204','2016-01-01','IX','Jl. Tinggimae No. 8, Kab. Gowa','-','-','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'dr. Glendy','C104215203','2016-01-01','IX','Jl. Harimau 3 No. 56A, Makasar','Penata / III C','198308212009011003','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'dr. Linda Samma','C104215207','2016-01-01','IX','Jl. Perintis Kemerdekaan Km. 14 No. 9, Makassar','Penata Muda TK.I / III B','198611122014021001','','2','6',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'dr. Muhammad Arief Muslim','C104215208','2016-01-01','IX','Komp. BBD Blok C2 No. 237, Makassar','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'dr. Agusni','C104215201','2016-01-01','IX','Rusunawa UNHAS Blok C, Makassar','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'dr. Aldhi Tri Budhi','C104215209','2016-01-01','IX','Rusunawa UNHAS Blok C 207, Makassar','-','-','','1','8',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'dr. Denny Miftahur Ramadhan','C104215202','2016-01-01','IX','Rusunawa UNHAS Blok C, Makassar','-','-','','1','5',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'dr. Yossy Luther','C104215210','2016-01-01','IX','Rusunawa UNHAS Blok C 202, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'dr. Annisa Verawaty','C104215205','2016-01-01','IX','Rusunawa UNHAS Blok C 205, Makassar','-','-','','1','1',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'dr. Mouris Titin Dwiputa','C104216112','2016-07-01','VIII','Jl. Bulukumba I No. 297 Sudiang Raya, Makassar','Penata Muda TK.I / III B','198610122011012022','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'dr. Ivanna Sirowanto','C104216102','2016-07-01','VIII','Jl. Lure 2A, Makassar','Penata Muda TK.I / III B','198712062015031002','','2','4',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'dr. Harris Bartimeus','C104216113','2016-07-01','VIII','Jl. Sungai Tangka 14 A, Makassar','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'dr. Berry Erida Hasbi','C104216101','2016-07-01','VIII','Jl. Wesabbe Lr. 1 No. 92, Makassar','-','-','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'dr. Singgih Winoto','C104216103','2016-07-01','VIII','Jl. Tamalanrea 4 BTP, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'dr. Dwi Ris Andriyanto','C104216110','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'dr. Jefri Wijaya','C104216107','2016-07-01','VIII','BTP Blok L No. 10-11, Makassar','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'dr. Richard Ezra Putra','C104216108','2016-07-01','VIII','Jl. Monginsidi Baru (Puri Mutiara) II/32, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'dr. Ricko Sadli Sujana','C104216111','2016-07-01','VIII','BTP Jl. Tamalanrea Selatan IV Blok M No. 519, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'dr. Asrul Mappiwali','C104216104','2016-07-01','VIII','Jl. Cambajawaiyya No. 41, Makassar','Penata Muda TK.I / III B','198309302014031001','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'dr. Edward Julio Suhendra','C104216105','2016-07-01','VIII','Komp. NTI Blok T/2, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'dr. Rendra Budi Dharma','C104216106','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'dr. Herman Syahputra Nst','C104216109','2016-07-01','VIII','Jl. Perintis Kemerdekaan 14, Makassar','Penata / III C','198407172011011002','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'dr. Ades Santa Satria','C104216205','2017-01-01','VII','Jl. Perintis kemerdekaan No. 14, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'dr. Deasy Riefma','C104216203','2017-01-01','VII','Jl. Sunu Komp. Pratama Blok A No. 3, Makassar','Penata / III C','19801219201101004','','1','4',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'dr. Achsan A. Muin','C104216201','2017-01-01','VII','Jl. Hertasning Komp. Gubernuran Blok E16 No. 1, Makassar','Penata Muda TK.I / III B','197912142008012001','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'dr. Andi Yulkardinansyah','C104216208','2017-01-01','VII','Jl. Bayam No, 51, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'dr. Ibnul Barakah','C104216207','2017-01-01','VII','Jl. Racing Centre Perum. Gardenia Blok F. No. 6, Makassar','Penata / III C','198307272009021008','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'dr. Elvis Jeferson','C104216210','2017-01-01','VII','Perum. Grand Andi Tonro No. 10, Makassar','-','-','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'dr. Hery Siswanto','C104216209','2017-01-01','VII','Rusunawa II UNHAS Blok C/221','Komisaris Polisi / IV A','78071413','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'dr. Kenny Edward Yap','C104216202','2017-01-01','VII','Miraza Homestay Jl. Pengayoman F10 No. 2, Makassar','Penata Muda TK.I / III B','197702192014121001','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'dr. Jacquels Mozes Tolanda','C104216206','2017-01-01','VII','Jl. Lanraki Lr. 7, Kel. Paccerekang, Kec. Birinkanaya, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'dr. Julcrithno Irawanputra','C045171004','2017-07-01','VI','Jl. Pampang Utama Lr.1 No.3 Makassar','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'dr. Nur Hidayatullah','C045171002','2017-07-01','VI','Pondok Yusware, Jl. P. Kemerdekaan VII Area Pondokan UH ','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'dr. Adi Wijayanto','C045171009','2017-07-01','VI','Jl. Perintis Kemerdekaan No.14 Kos Aurora ','Penata Muda Tk.I / III B','198801022014121000','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'dr. Maria Ida Rettobyaan','C045171003','2017-07-01','VI','Jl. Masjid Al Ikhlas 3, Kav 5 Tamalanarea - Makassar ','-','-','','2','2',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'dr. Leonard Hasudungan','C045171001','2017-07-01','VI','Jl. Masjid Al Ikhlas 3 Kav 3 Tamalanrea - Makassar ','Penata Muda Tk.I / III B','19890810 201503 2 003','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'dr. Darwin','C045171005','2017-07-01','VI','Jl. Masjid Al Ikhlas III av.3 Kel. Tamalanrea - Makassar ','Penata Muda Tk.I / III B','19820102 200909 1 001','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'dr. Bayu Satria','C045171006','2017-07-01','VI','BTN Hamzy Blok A No.27 Makassar ','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'dr. Jancung','C045171007','2017-07-01','VI','BTP Blok M No.191 Makassar ','Inspektur Polisi Dua','87040002','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'dr. Muhammad Abdu','C045171008','2017-07-01','VI','Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'dr. Muhammad Faruk','C045171010','2017-07-01','VI','Pondok Brillian, Jl. Tamalanrea Utara 4 Blok A/636 Makassar ','','','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'dr. Adriani Purnasakti Pakan','C045172001','2018-01-01','V','Jl. Pelita Raya VI Blok A/4, Makassar','-','-','','2','2',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'dr. Benny Nanda Kurniawan','C045172002','2018-01-01','V','Jl. Griya Alama Permai Blok E No. 9, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'dr. Fadhli Azhimi','C045172003','2018-01-01','V','Jl. Masjid Baiturrahman No. 58, Makassar ','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'dr. Teddy Agung Saputra','C045172004','2018-01-01','V','Perum. Kayu Kunyit Jl. Kayu Manis No. 6 Rt. 5, Bengkulu Selatan','-','-','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'dr. Stevent Richardo','C045172005','2018-01-01','V','Komp. BTN Wessabe Blok D, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'dr. Tjia Adynata Ciayadi','C045172006','2018-01-01','V','Bukit Hartako Indah , Jl. Berua Raya','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'dr. Darren Perdana','C045172007','2018-01-01','V','Kompleks Griya Alam Permai Blok E No. 9, Makassar','-','-','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'dr. Hidayah M. Harahap','C045172008','2018-01-01','V','Jl. Masjid Baiturrahman No. 58, Makassar ','Penata TK. I / III D','19860425 201502 1 002','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'dr. Albertus Aryo Pradito','C045172009','2018-01-01','V','BTP Jl. Kejayaan Utara 2, Blok M No. 130, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'dr. Andhika Aulia Akbar','C045172010','2018-01-01','V','Perum. Bumi Tamalanrea Mas, Blok MI No. 39, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'dr. Deny Agus Yudiarto','C045172011','2018-01-01','V','Jl. Baiturrahman A 11 Komp. Haji Kalla, Makassar','Penata Muda TK. I / III b','19890904 201503 1 004','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'dr. Awaluddin','C045172012','2018-01-01','V','Bukit Khatulistiwa F3 Daya, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'dr. Sandy Victor','C045181001','2018-07-01','IV','Jl. Paccerakang Katimbang Depan SDN I Paccerakang, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'dr. Tony Yulianto','C045181002','2018-07-01','IV','BTP Blok M. No. 191 Tamalanrea, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'dr. Novi Firman Syah','C045181003','2018-07-01','IV','Jl. Telegram V, Taman Telkomas, Makassar','-','-','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'dr. Albert','C045181004','2018-07-01','IV','Jl. Masjid Al. Ikhlas 3, Kavling 5, Tamalanrea, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'dr. Zulfatulsyah','C045181005','2018-07-01','IV','Jl. Borong Raya Baru 2 No. 14 Batua, Manggala, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'dr. Erwin Hadi Chandra','C045181006','2018-07-01','IV','Jl. Masjid Al. Ikhlas Kaveleri 3, Tamalanrea, Makassar','Penata TK. I / III d','198507222011011009','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'dr. Martua Arpollos','C045181007','2018-07-01','IV','Jl. Telepon II Blok B No. 98, TamanTelkomas , Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'dr. James Setiady','C045181008','2018-07-01','IV','Jl. Gunung LompobatangNo. 170, Makassar','Penata Muda TK. I / III b','198510302014031001','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'dr. Arham Jaya','C045182001','2019-01-01','III','Perdos UNHAS Tamalanrea Blok E No. 40, Makassar','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'dr. Hans Alfonso Thioritz','C045182002','2019-01-01','III','Jl. Beruang No. 72 A, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'dr. Muh. Arfan','C045182003','2019-01-01','III','Jl. Taqwa No. 8, Maros','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'dr. Nur Hasnah','C045182004','2019-01-01','III','BTN Hartaco Indah Blok','-','-','','1','3',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'dr. Anastasnio Dwizakzana A','C045182005','2019-01-01','III','BTN Hartaco Indah Blok IVE / 12, Makassar','-','-','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'dr. Andi Fatmawati Mahir','C045182006','2019-01-01','III','BTN Bulurokeng Permai Blok F4 No. 11, Makassar','-','-','','1','3',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'dr. Robert Christeven','C045182007','2019-01-01','III','BTP Jl. Tamalanrea Selatan Blok M. No. 191','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'dr. Deo Prasetyo','C045182008','2019-01-01','III','Rusunawa I UNHAS Blok C/507, Makassar','-','-','','2','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'dr. Muh.  Firmasyah Kamal','C045182009','2019-01-01','III','Jl. Palapa I No. 47, Telkomas, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'dr. Fitran Amansyah','C045182010','2019-01-01','III','Jl. Pallantikang Lr. 1 No. 21 A, Sungguminasa','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'dr. Muh. Ikhlas Yakin Iwan','C045182011','2019-01-01','III','BTN Hartako Indah Blok IM No. 8, Makassar','-','-','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'dr. Teguh Triananda Putra','C045182012','2019-01-01','III','Rusunawa I UNHAS Blok C/507, Makassar','-','-','','1','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'dr. Hendry Purwanto','C045191001','2019-07-01','II','Jl. Pinang 8 Blok E 124/F Bumi Sudiang Permai, Makassar','','','','2','3',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'dr. Muhammad Alim Fath Rianse','C045191002','2019-07-01','II','Jl. Abd. Dg. Sirua BTN CV Dewi Blok B2 No. 6, Makassar','','','','1','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'dr. Muh Rusdan Jalil','C045191003','2019-07-01','II','Jl. Cemara No. 2, Makassar','','','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'dr. Chendhy Fakdawer','C045191004','2019-07-01','II','BTN Hamzy, Makassar','Penata Muda Tk.I / III b','198507052015031002','','2','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'dr. A. Arief Munandar Sinangka','C045191005','2019-07-01','II','BTP Blok F No. 296 A, Makassar','','','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'dr. Maryam Mayidah Hasan Nur','C045191006','2019-07-01','II','Jl. Melati Raya No. 7 Komp. Maizonette, Makassar','Penata Muda Tk.I / III b','198904092019032004','','1','1',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'dr. Putra Imanullah','C045191007','2019-07-01','II','BTN Gardenia Blok G No. 5, Makassar','','','','1','9',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'dr. Andy Wahab','C045191008','2019-07-01','II','Jl. Banda 30 C, Makassar','','','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'dr. Esron Yosep Butar Butar','C045191009','2019-07-01','II','BTP Tamalanrea Mas Blok MI No. 16, Makassar','-','-','','2','4',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'dr. Nur Ramadhaniany Lihawa','C045191010','2019-07-01','II','Komp. Villa Racing Center Blok B1A, Makassar','','','','1','2',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'dr. Muhammad Amrul Husni','C045191011','2019-07-01','II','Perum. Tamalanrea Mas No. 66 BTP, Makassar','Penata Muda Tk.I / III b','198605292017041001','','1','2',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'dr. Ahmad Masyfuqkasim Yahiji','C045191012','2019-07-01','II','Jl. Bung Perum. Pesona Bukit Magfirah Blok C No. 2, Makassar','','','','1','1',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'Test',NULL,'2022-08-01','I',NULL,NULL,NULL,NULL,NULL,'1',0,1,NULL,'2000-01-11',NULL,NULL,NULL,'2022-08-09 20:10:17','2022-08-09 20:10:17'),(120,'Test 2',NULL,'2022-08-01','I',NULL,NULL,NULL,NULL,NULL,'1',0,1,NULL,'2022-08-02',NULL,NULL,NULL,'2022-08-09 20:11:25','2022-08-09 20:11:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stase`
--

LOCK TABLES `stase` WRITE;
/*!40000 ALTER TABLE `stase` DISABLE KEYS */;
INSERT INTO `stase` VALUES (2,2,1,'1970-01-01','2022-08-31'),(2,3,2,'1970-01-01','2022-08-01'),(2,4,4,'2022-08-01','2022-08-01'),(1,12,3,'2022-08-03','2022-08-03'),(1,13,4,'2022-08-01','2022-08-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempat_stase`
--

LOCK TABLES `tempat_stase` WRITE;
/*!40000 ALTER TABLE `tempat_stase` DISABLE KEYS */;
INSERT INTO `tempat_stase` VALUES (1,'Divisi Bedah Anak'),(2,'Divisi Bedah Saraf'),(3,'Divisi Bedah Digestif'),(4,'Divisi Bedah Urologi'),(5,'Divisi Bedah Plastik'),(6,'Divisi Bedah Onkologi'),(7,'Divisi Bedah Orthopedi'),(8,'Divisi Bedah Thoraks Kardiovaskuler'),(9,'IGD RS. Wahidin Sudirohusodo'),(10,'RS. Pendidikan UNHAS'),(11,'Departemen Ilmu Anestesi Perawatan Intensif dan Manajemen Nyeri\n'),(12,'RS. Ibnu Sina'),(13,'RS. Hikmah'),(14,'RS. Stella Maris'),(15,'RS. Akademis'),(16,'RS. Islam Faisal'),(17,'RS. Alor'),(18,'RS. PT. INCO'),(19,'RS. Pohuwatu'),(20,'RS. Enrekang'),(21,'RS. Bengkayang'),(22,'RS. Kutai Kertanegara'),(23,'RS. Pare-pare'),(24,'RS. Tajuddin Chalid'),(25,'RS. Sayang Rakyat');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujian`
--

LOCK TABLES `ujian` WRITE;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
INSERT INTO `ujian` VALUES (2,1,'Ujian OSCA','Balikpapan','2019-11-19',1),(4,2,'asd','Makassar','2022-08-01',1),(5,2,'Coba lagi','Samarinda','2022-08-02',1),(6,2,'Percobaan','Manado','2022-07-01',NULL);
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

-- Dump completed on 2022-08-10 16:52:35
