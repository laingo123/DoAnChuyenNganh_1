-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: face_recognition
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `regteach`
--

DROP TABLE IF EXISTS `regteach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regteach` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `cnum` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ssq` varchar(100) NOT NULL,
  `sa` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regteach`
--

LOCK TABLES `regteach` WRITE;
/*!40000 ALTER TABLE `regteach` DISABLE KEYS */;
INSERT INTO `regteach` VALUES ('e','e','1234567','e@gmail.com','Your Date of Birth','3232123','123456'),('lai','ngo','0777167604','laingo1711980@gmail.com','Your Date of Birth','123456','123456');
/*!40000 ALTER TABLE `regteach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Student_ID` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Course` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Semester` varchar(50) DEFAULT NULL,
  `Division` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `Mobile_No` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Roll_No` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Teacher_Name` varchar(100) DEFAULT NULL,
  `PhotoSample` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1','lai','BSCS','SE','2017-21','Semester-1','Morning','Male','1','1','2 li thai to','1','lai@gmail.com','lan','Yes'),('2','haimi','BSIT','SE','2017-21','Semester-2','Evening','Female','2','2','hanoi','2','w@gmail.com','w',''),('4','yamal','BSCS','SE','2018-22','Semester-1','Evening','Female','4','4','spain','113','yamal@gmail.com','lai','');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 23:11:32
