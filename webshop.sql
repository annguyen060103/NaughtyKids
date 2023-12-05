CREATE DATABASE  IF NOT EXISTS `javaweb16` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `javaweb16`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: javaweb16
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `seo` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6l2kfyw1kbyobvyqiwsrkc2g6` (`parent_id`),
  CONSTRAINT `FK6l2kfyw1kbyobvyqiwsrkc2g6` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Giày Converse',1,'2021-11-23 00:00:00',NULL,NULL,NULL,NULL,'giày converse','Giày Converse'),(2,'Giày Vans',1,'2021-11-22 00:00:00',NULL,NULL,NULL,1,'giày vans','Giày Vans'),(3,'Giày Palladium',1,'2021-11-30 20:34:50','2021-12-18 23:07:05',NULL,NULL,NULL,'giày palladium','Giày Palladium'),(4,'Giày New Balance',NULL,NULL,NULL,NULL,NULL,NULL,'giày new balance','Giày New Balance'),(5,'Giày KSwiss',NULL,NULL,NULL,NULL,NULL,NULL,'giày kswiss','Giày Kswiss'),(6,'Giày Supra',NULL,NULL,NULL,NULL,NULL,NULL,'giày supra','Giày Supra');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `massage` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (8,'Phạm Anh','pa@gmail.com','so nice!',1,'2023-01-11 15:15:58',NULL,NULL,NULL),(9,'Huy','huy@gmail.com','sẽ đến lần 2',1,'2023-02-06 14:53:36',NULL,NULL,NULL),(25,'Duy','duy@gmail.com','shop quá nhiệt tình',1,'2023-02-27 16:23:22',NULL,NULL,NULL),(27,'Nhi','nhi113@gmail.com','tạm ổn',1,'2023-03-08 14:44:02',NULL,NULL,NULL),(28,'Quý','ddquy@gmail.com','hehe quá oke luôn',1,'2023-03-08 14:50:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_color` int DEFAULT NULL,
  `id_product` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_color`
--

LOCK TABLES `tbl_product_color` WRITE;
/*!40000 ALTER TABLE `tbl_product_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_1tbl_category_Ntbl_products_idx` (`category_id`),
  CONSTRAINT `fk_1tbl_category_Ntbl_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (58,'Converse Chuck 70 Seasonal Color','Converse Chuck 70 Seasonal Color','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Giày siêu xịn xò xứng đáng 10 điểm&nbsp',1710000.00,1,NULL,NULL,NULL,NULL,1,'product/avatar/hoodie-basic2.png','hoodie-basic2',NULL,3),(79,'HOODIE CANVA - BLACK','HOODIE CANVA - BLACK','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: XÁM<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-53kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:72cm Rộng: 64cm ( 54kg-75kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất nỉ chân cua hoặc nỉ bông.</p>',400000.00,1,'2021-12-20 17:20:55',NULL,NULL,NULL,1,'product/avatar/grande.png','hoodie-canva-black',NULL,3),(80,'HOODIE CANVA - XÁM TRẮNG','HOODIE CANVA - XÁM TRẮNG','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: XÁM<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-53kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:72cm Rộng: 64cm ( 54kg-75kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất nỉ chân cua hoặc nỉ bông.</p>',400000.00,1,'2021-12-20 17:22:03',NULL,NULL,NULL,1,'product/avatar/canva_white.png','hoodie-canva-xam-trang',NULL,3),(81,'ÁO THUN TYPE - ĐEN','ÁO THUN TYPE - ĐEN','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Sản phẩm được design bởi Mom Says I’m Cool&nbsp;</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Color: đen<br style=\"max-width: 100%;\">Kích thước:&nbsp;<br style=\"max-width: 100%;\">Size M: Dài:68cm Rộng: 54cm ( 40kg-57kg)<br style=\"max-width: 100%;\">Size L: &nbsp;Dài: 70cm Rộng: 56cm ( 58kg-70kg)<br style=\"max-width: 100%;\">Size XL: Dài 72cm Rộng: 58cm ( 71kg-85kg)&nbsp;<br style=\"max-width: 100%;\">Vải cotton co dãn 4 chiều dày và mịn, chất đẹp mặc thoáng mát</p>',320000.00,1,'2021-12-20 17:23:54',NULL,NULL,NULL,3,'product/avatar/thun-đen.png','ao-thun-type-en',NULL,3),(82,'ÁO THUN TYPE - XANH','ÁO THUN TYPE - XANH','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Sản phẩm được design bởi Mom Says I’m Cool&nbsp;</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Color: xanh<br style=\"max-width: 100%;\">Kích thước:&nbsp;<br style=\"max-width: 100%;\">Size M: Dài:68cm Rộng: 54cm ( 40kg-57kg)<br style=\"max-width: 100%;\">Size L: &nbsp;Dài: 70cm Rộng: 56cm ( 58kg-70kg)<br style=\"max-width: 100%;\">Size XL: Dài 72cm Rộng: 58cm ( 71kg-85kg)&nbsp;<br style=\"max-width: 100%;\">Vải cotton co dãn 4 chiều dày và mịn, chất đẹp mặc thoáng mát</p>',320000.00,1,'2021-12-20 17:24:48',NULL,NULL,NULL,3,'product/avatar/type_xanh.png','ao-thun-type-xanh',NULL,4),(83,'ÁO THUN LEATHER - TRẮNG','ÁO THUN LEATHER - TRẮNG','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Sản phẩm được design bởi Mom Says I’m Cool&nbsp;</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Color: đen<br style=\"max-width: 100%;\">Kích thước:&nbsp;<br style=\"max-width: 100%;\">Size M: Dài:68cm Rộng: 54cm ( 40kg-57kg)<br style=\"max-width: 100%;\">Size L: &nbsp;Dài: 70cm Rộng: 56cm ( 58kg-70kg)<br style=\"max-width: 100%;\">Size XL: Dài 72cm Rộng: 58cm ( 71kg-85kg)&nbsp;<br style=\"max-width: 100%;\">Vải cotton co dãn 4 chiều dày và mịn, chất đẹp mặc thoáng mát</p>',300000.00,1,'2021-12-20 17:25:40',NULL,NULL,NULL,3,'product/avatar/thun-trắng.png','ao-thun-leather-trang',NULL,4),(84,'JACKET BOMBER','JACKET BOMBER','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc:&nbsp;đen<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:67cm Rộng: 58cm ( 40kg-53kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài: 69cm Rộng: 60cm ( 54kg-75kg)<br style=\"max-width: 100%;\">Chất Liệu: chất dù 2 lớp</p>',380000.00,1,'2021-12-20 17:38:02',NULL,NULL,NULL,4,'product/avatar/jacker-bomber.png','jacket-bomber',NULL,3),(125,'HOODIE UNIVERSE BLACK','HOODIE UNIVERSE BLACK','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: ĐEN- HỒNG - CAM<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-52kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:70cm Rộng: 64cm ( 53kg-70kg)</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Size XL: &nbsp;Dài:72cm Rộng: 66cm ( 70kg-85kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất nỉ chân cua hoặc nỉ bông.</p>',400000.00,1,'2021-12-26 18:22:59',NULL,NULL,NULL,1,'product/avatar/hoodie-universe-black.png','hoodie-universe-black',NULL,3),(126,'HOODIE UNIVERSE - PINK','HOODIE UNIVERSE - PINK','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: ĐEN- HỒNG - CAM<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-52kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:70cm Rộng: 64cm ( 53kg-70kg)</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Size XL: &nbsp;Dài:72cm Rộng: 66cm ( 70kg-85kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất nỉ chân cua hoặc nỉ bông.</p>',400000.00,1,'2021-12-26 18:24:20',NULL,NULL,NULL,1,'product/avatar/hoodie-universe-pink.png','hoodie-universe-pink',NULL,3),(127,'HOODIE UNIVERSE-ORANGE','HOODIE UNIVERSE-ORANGE','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: ĐEN- HỒNG - CAM<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-52kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:70cm Rộng: 64cm ( 53kg-70kg)</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Size XL: &nbsp;Dài:72cm Rộng: 66cm ( 70kg-85kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất nỉ chân cua hoặc nỉ bông.</p>',400000.00,1,'2021-12-26 18:25:05',NULL,NULL,NULL,1,'product/avatar/hoodie-universe-cam.png','hoodie-universe-orange',NULL,3),(608,'SWEATER TIMELESS','SWEATER TIMELESS','<p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Ảnh và sản phẩm được sản xuất từ Mom Says I\'m Cool&nbsp;<br style=\"max-width: 100%;\">Kích thước:&nbsp;M, L, XL</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Màu Sắc: ĐEN HỌA TIẾT- TRẮNG HỌA TIẾT<br style=\"max-width: 100%;\">&nbsp;Size M: Dài:68cm Rộng: 62cm ( 40kg-52kg)&nbsp;<br style=\"max-width: 100%;\">Size L: &nbsp;Dài:70cm Rộng: 64cm ( 53kg-70kg)</p><p style=\"margin-bottom: 10px; font-family: Quicksand, sans-serif; line-height: 21px; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Size XL: &nbsp;Dài:72cm Rộng: 66cm ( 70kg-85kg)<br style=\"max-width: 100%;\">Chất Liệu: áo chất vải nỉ&nbsp;vừa mặt thoáng mát thích hộ với thười tiết thu đông</p>',340000.00,1,'2022-01-08 23:07:16',NULL,NULL,NULL,2,'product/avatar/sweater-trang.png','sweater-timeless',NULL,3),(609,'SHORT BASIC - BLACK','SHORT BASIC - BLACK','<p><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Sản phẩm được design bởi Mom Says I’m Cool</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Màu:Đen</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Kích thước:&nbsp;</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Size M: Dài:43cm, Rộng ống: 30cm, Mông: 102cn &nbsp;( 40kg-55kg)</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Size L: &nbsp;Dài: 45cm, Rộng ống: 32cm,Mông:104cm ( 56kg-70kg)</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Size XL: Dài 47cm, Rộng ống: 34cm,Mông: 106cm ( 71kg-90kg)&nbsp;</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Vải cotton co dãn 4 chiều dày và mịn, chất đẹp mặc thoáng mát</span><br style=\"font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">&nbsp;</span><br></p>',230000.00,1,'2022-01-08 23:08:08',NULL,NULL,NULL,5,'product/avatar/pants-den.png','short-basic-black',NULL,3);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (6,'red_converse.jpg','product/pictures/red_converse.jpg',58,1,NULL,NULL,NULL,NULL),(7,'grande.png','product/pictures/grande.png',79,1,NULL,NULL,NULL,NULL),(8,'canva_white.png','product/pictures/canva_white.png',80,1,NULL,NULL,NULL,NULL),(9,'thun-đen.png','product/pictures/thun-đen.png',81,1,NULL,NULL,NULL,NULL),(10,'type_xanh.png','product/pictures/type_xanh.png',82,1,NULL,NULL,NULL,NULL),(11,'thun-trắng.png','product/pictures/thun-trắng.png',83,1,NULL,NULL,NULL,NULL),(12,'jacker-bomber.png','product/pictures/jacker-bomber.png',84,1,NULL,NULL,NULL,NULL),(13,'hoodie-universe-black.png','product/pictures/hoodie-universe-black.png',125,1,NULL,NULL,NULL,NULL),(14,'hoodie-universe-pink.png','product/pictures/hoodie-universe-pink.png',126,1,NULL,NULL,NULL,NULL),(15,'hoodie-universe-cam.png','product/pictures/hoodie-universe-cam.png',127,1,NULL,NULL,NULL,NULL),(16,'sweater-trang.png','product/pictures/sweater-trang.png',608,1,NULL,NULL,NULL,NULL),(17,'pants-den.png','product/pictures/pants-den.png',609,1,NULL,NULL,NULL,NULL),(18,'the.jpg','product/pictures/the.jpg',670,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `description` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (3,'ADMIN',NULL,NULL,NULL,NULL,NULL,'ADMIN'),(4,'GUEST',NULL,NULL,NULL,NULL,NULL,'GUEST');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int DEFAULT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_address` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbiu8ui4krw8j3gtn97w3rdq7v` (`user_id`),
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (3,'1640881203210',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-30 23:20:03',NULL,NULL,NULL,NULL),(4,'1640881306060',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-30 23:21:46',NULL,NULL,NULL,NULL),(5,'1641723473961',NULL,'Nguyễn Đức Hiếu','Qùy hợp - Nghệ an','0367533485','duchieu1370@gmail.com',NULL,1,'2022-01-09 17:17:54',NULL,NULL,NULL,NULL),(6,'1641908904874',NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-01-11 20:48:25',NULL,NULL,NULL,NULL),(7,'1676877058348',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-02-20 14:10:58',NULL,NULL,NULL,NULL),(8,'1677489537954',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-02-27 16:18:58',NULL,NULL,NULL,NULL),(9,'1685372272745',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-29 21:57:53',NULL,NULL,NULL,NULL),(10,'1685456603792',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-30 21:23:24',NULL,NULL,NULL,NULL),(11,'1685467136233',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-31 00:18:56',NULL,NULL,NULL,NULL),(12,'1685468649169',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-31 00:45:16',NULL,NULL,NULL,NULL),(13,'1685468770948',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-31 00:46:37',NULL,NULL,NULL,NULL),(14,'1685468816585',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-31 00:47:13',NULL,NULL,NULL,NULL),(15,'1685470060419',NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-05-31 01:07:55',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnyfdau9vc46jkiwvrgj1ns85v` (`product_id`),
  KEY `FKnpyir3q973iv4wq49ltw0kcrd` (`saleorder_id`),
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`),
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (3,3,79,1,1,NULL,NULL,NULL,NULL),(4,3,80,1,1,NULL,NULL,NULL,NULL),(5,4,80,2,1,NULL,NULL,NULL,NULL),(6,4,84,1,1,NULL,NULL,NULL,NULL),(7,5,79,3,1,NULL,NULL,NULL,NULL),(8,6,80,1,1,NULL,NULL,NULL,NULL),(9,6,79,2,1,NULL,NULL,NULL,NULL),(10,7,79,4,1,NULL,NULL,NULL,NULL),(11,8,80,2,1,NULL,NULL,NULL,NULL),(12,9,79,-7,1,NULL,NULL,NULL,NULL),(13,10,79,1,1,NULL,NULL,NULL,NULL),(14,11,80,1,1,NULL,NULL,NULL,NULL),(15,12,58,2,1,NULL,NULL,NULL,NULL),(16,13,80,1,1,NULL,NULL,NULL,NULL),(17,14,125,1,1,NULL,NULL,NULL,NULL),(18,15,84,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subcribe`
--

DROP TABLE IF EXISTS `tbl_subcribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subcribe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subcribe`
--

LOCK TABLES `tbl_subcribe` WRITE;
/*!40000 ALTER TABLE `tbl_subcribe` DISABLE KEYS */;
INSERT INTO `tbl_subcribe` VALUES (3,'duchieu1370@gmail.com',1,'2021-12-07 23:46:41',NULL,NULL,NULL),(32,'nhenhi672@gmail.com',1,'2023-01-11 15:22:35',NULL,NULL,NULL),(62,'hhh@gmail.com',1,'2023-02-20 14:35:25',NULL,NULL,NULL),(71,'kk@gmail.com',1,'2023-02-20 15:57:43',NULL,NULL,NULL),(79,'hihi@gmail.com',1,'2023-03-06 14:43:32',NULL,NULL,NULL),(87,'hhHii22@gmail.com',1,'2023-03-06 15:54:25',NULL,NULL,NULL),(88,'duchieu10@gmail.com',1,'2023-03-13 10:22:28',NULL,NULL,NULL),(89,'duchieu10@gmail.com',1,'2023-03-13 10:22:28',NULL,NULL,NULL),(90,'Duchieu10@gmail.com',1,'2023-03-13 10:22:28',NULL,NULL,NULL),(91,'duchieu1000@gmail.com',1,'2023-03-13 10:24:52',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_subcribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `account_number_bank` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `confirm_password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `UKj562wwmipqt96rkoqbo0jc34` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (3,'hieu',NULL,NULL,NULL,NULL,NULL,'$2a$04$HCPqvcFPNfKmkJGXDyhfE.WrNc2y7/Ez1HLNyi037jcxfJwIYBBni','duchieu1370@gmail.com',NULL,'0123456789','mb','96969969','96969969'),(4,'nhi',NULL,NULL,NULL,NULL,NULL,'$2a$04$pCHkNQwgRVnK4t4wguW9YOJfJ9uokwQeQBbX9rcP/.pRPg2w5F5H6','nhenhi672@gmail.com','Minh Kính - Qùy Hợp -NgHỆ aN','0123456789','tp','123445678','96969969');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_1tbl_roles_Ntbl_users_roles_idx` (`role_id`),
  CONSTRAINT `fk_1tbl_roles_Ntbl_users_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1tbl_users_Ntbl_users_roles` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (3,3),(4,4);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 23:43:22
