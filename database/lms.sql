-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `quantity` int NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Rich Dad Poor Dad','Robert Kiyosaki',4,'2022-06-10 16:21:25'),(2,'Think and grow rich','Nepolean hill',10,'2022-06-12 06:20:27'),(3,'Retire young retire rich','Robert Kiyosaki',6,'2022-06-12 06:22:39'),(4,'Wings Of Fire','A.P.J. Abdul Kalam',3,'2022-06-12 13:13:04'),(5,'Bhagwat Gita','Shri krishna',16,'2022-06-13 02:15:58');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `books_id` int NOT NULL,
  `librarian_id` int NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_contact` varchar(11) NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `return_book` varchar(10) DEFAULT 'issue',
  PRIMARY KEY (`Id`),
  KEY `fk_book_id_idx` (`books_id`),
  KEY `fk_librariran_id_idx` (`librarian_id`),
  CONSTRAINT `fk_book_id` FOREIGN KEY (`books_id`) REFERENCES `books` (`Id`),
  CONSTRAINT `fk_librariran_id` FOREIGN KEY (`librarian_id`) REFERENCES `librarian` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,3,1,'Pankaj','1234567890','2022-06-12 09:35:37','done'),(2,1,1,'Amay','9032784356','2022-06-12 11:07:56','issue'),(3,2,1,'Abhay','3278785243','2022-06-12 11:10:13','done'),(4,3,1,'pandit ','8564567893','2022-06-12 11:11:17','issue'),(5,2,1,'Aarti','3785227843','2022-06-12 11:13:15','issue'),(6,2,1,'Raj','9785227843','2022-06-12 11:13:22','issue'),(7,4,2,'Junnu','8562226378','2022-06-12 13:13:25','done'),(8,5,1,'Yash Tripathi','9043673289','2022-06-13 02:16:48','done'),(9,4,5,'Rahul','7934246749','2022-06-13 03:11:33','issue'),(10,1,5,'Gourav','9042673289','2022-06-13 03:11:55','issue'),(11,3,3,'Suraj','8032674291','2022-06-13 03:12:27','issue'),(12,3,2,'Sejal','7842390327','2022-06-13 03:13:27','issue'),(13,5,2,'Mananjay','8932674352','2022-06-13 03:14:01','issue');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES (1,'loki','0000','Lokesh Nargesh','8827729125','nargeshraj2912@gmail.com','Dhar, M.P.','2022-06-11 16:20:34'),(2,'sans','1234','Sanskriti Maheshwari','7843289341','sanskriti@gmail.com','Dhar, M.P.','2022-06-11 16:20:45'),(3,'piyu','piyu','Supriya Jha','1234567222','piyu@gmail.com','Lahan, Nepal','2022-06-11 16:23:47'),(4,'akash','0000','Akash Rohit','8943903267','akash@gmail.com','Sagar, M.P.','2022-06-13 01:14:18'),(5,'Anu','anu','Anurag Jain ','8743673292','anurag@gmail.com','sagar, M.P.','2022-06-11 17:24:04');
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13  8:57:41
