-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: polizas
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idempleado` int NOT NULL,
  `nombre_empleado` varchar(45) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `sueldo` varchar(45) NOT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_diario`
--

DROP TABLE IF EXISTS `poliza_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poliza_diario` (
  `idpoliza_diario` int NOT NULL,
  `codigo_empleadodi` int NOT NULL,
  `tipo_divisa` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`idpoliza_diario`),
  KEY `id_empleado_diario_idx` (`codigo_empleadodi`),
  CONSTRAINT `id_empleado_diario` FOREIGN KEY (`codigo_empleadodi`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_diario`
--

LOCK TABLES `poliza_diario` WRITE;
/*!40000 ALTER TABLE `poliza_diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `poliza_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_egreso`
--

DROP TABLE IF EXISTS `poliza_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poliza_egreso` (
  `idpoliza_egreso` int NOT NULL,
  `codigo_empleadoeg` int NOT NULL,
  `tipo_divisa` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`idpoliza_egreso`),
  KEY `id_empleado_eg_idx` (`codigo_empleadoeg`),
  CONSTRAINT `id_empleado_eg` FOREIGN KEY (`codigo_empleadoeg`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_egreso`
--

LOCK TABLES `poliza_egreso` WRITE;
/*!40000 ALTER TABLE `poliza_egreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `poliza_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_ingreso`
--

DROP TABLE IF EXISTS `poliza_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poliza_ingreso` (
  `idpoliza_ingreso` int NOT NULL,
  `codigo_empleadoin` int NOT NULL,
  `tipo_divisa` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`idpoliza_ingreso`),
  KEY `id_empleadoin_idx` (`codigo_empleadoin`),
  CONSTRAINT `id_empleadoin` FOREIGN KEY (`codigo_empleadoin`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_ingreso`
--

LOCK TABLES `poliza_ingreso` WRITE;
/*!40000 ALTER TABLE `poliza_ingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `poliza_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'polizas'
--

--
-- Dumping routines for database 'polizas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 10:55:02
