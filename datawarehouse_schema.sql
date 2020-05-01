-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: May 01, 2020 at 04:48 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datawarehouse`
--
CREATE DATABASE IF NOT EXISTS `datawarehouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `datawarehouse`;

-- --------------------------------------------------------

--
-- Table structure for table `dimBase`
--

CREATE TABLE `dimBase` (
  `id_base` int DEFAULT NULL,
  `base` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimCodigo`
--

CREATE TABLE `dimCodigo` (
  `id_codigo` int DEFAULT NULL,
  `codigo` varchar(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimDesenlace`
--

CREATE TABLE `dimDesenlace` (
  `id_desenlace` int DEFAULT NULL,
  `desenlace` varchar(70) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimHora`
--

CREATE TABLE `dimHora` (
  `id_hora` tinytext,
  `periodo` tinytext,
  `parte_dia` tinytext,
  `hora` bigint DEFAULT NULL,
  `minuto` bigint DEFAULT NULL,
  `hhmm24` tinytext,
  `hhmm12` tinytext,
  `minuto_dia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimInstitucion`
--

CREATE TABLE `dimInstitucion` (
  `id_institucion` int DEFAULT NULL,
  `institucion` varchar(63) DEFAULT NULL,
  `descripcion` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimMovil`
--

CREATE TABLE `dimMovil` (
  `id_movil` int DEFAULT NULL,
  `movil` varchar(63) DEFAULT NULL,
  `activo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimTiempo`
--

CREATE TABLE `dimTiempo` (
  `id_fecha` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `anio` int DEFAULT NULL,
  `semestre` int DEFAULT NULL,
  `trimestre` int DEFAULT NULL,
  `estacion` tinytext,
  `bimestre` int DEFAULT NULL,
  `mes_nro` int DEFAULT NULL,
  `mes` tinytext,
  `semana_mes` int DEFAULT NULL,
  `dia_semana_nro` int DEFAULT NULL,
  `dia_semana` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimZona`
--

CREATE TABLE `dimZona` (
  `id_zona` int DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factDespacho`
--

CREATE TABLE `factDespacho` (
  `id_fecha` bigint DEFAULT NULL,
  `id_hora` varchar(5) DEFAULT NULL,
  `id_zona` int DEFAULT NULL,
  `id_codigo` int DEFAULT NULL,
  `id_movil` int DEFAULT NULL,
  `id_base` int DEFAULT NULL,
  `id_institucion` int DEFAULT NULL,
  `id_desenlace` int DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factIncidente`
--

CREATE TABLE `factIncidente` (
  `id_fecha` bigint DEFAULT NULL,
  `id_hora` varchar(5) DEFAULT NULL,
  `id_zona` int DEFAULT NULL,
  `id_codigo` int DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Database: `intermedia`
--
CREATE DATABASE IF NOT EXISTS `intermedia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `intermedia`;

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE `base` (
  `id` int DEFAULT NULL,
  `descripcion` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codigo`
--

CREATE TABLE `codigo` (
  `id` int DEFAULT NULL,
  `codigo` varchar(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `provincia_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desenlace`
--

CREATE TABLE `desenlace` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(70) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `despacho`
--

CREATE TABLE `despacho` (
  `id` int DEFAULT NULL,
  `recepcion_id` int DEFAULT NULL,
  `nfichadespacho` int DEFAULT NULL,
  `ndespacho` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `movil_id` int DEFAULT NULL,
  `Base_id` int DEFAULT NULL,
  `hllamado` varchar(5) DEFAULT NULL,
  `hdespacho` varchar(5) DEFAULT NULL,
  `horadisp` varchar(5) DEFAULT NULL,
  `hllegadadom` varchar(5) DEFAULT NULL,
  `hsalidadom` varchar(5) DEFAULT NULL,
  `hsalidab` varchar(5) DEFAULT NULL,
  `hsalidahosp` varchar(5) DEFAULT NULL,
  `hllegadabase` varchar(5) DEFAULT NULL,
  `hllegadahosp` varchar(5) DEFAULT NULL,
  `desenlace_id` int DEFAULT NULL,
  `institucionderiva_id` int DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `hora_reg` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domicilio`
--

CREATE TABLE `domicilio` (
  `id` int DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `piso` varchar(20) DEFAULT NULL,
  `depto` varchar(20) DEFAULT NULL,
  `casa` varchar(20) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `monoblock` varchar(30) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `localidad_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edadunidad`
--

CREATE TABLE `edadunidad` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsBase`
--

CREATE TABLE `idsBase` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsCodigo`
--

CREATE TABLE `idsCodigo` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsDesenlace`
--

CREATE TABLE `idsDesenlace` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsInstitucion`
--

CREATE TABLE `idsInstitucion` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsMovil`
--

CREATE TABLE `idsMovil` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idsZona`
--

CREATE TABLE `idsZona` (
  `id` int DEFAULT NULL,
  `id_sub` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institucion`
--

CREATE TABLE `institucion` (
  `id` int DEFAULT NULL,
  `descripcion` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localidad`
--

CREATE TABLE `localidad` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `codigoPostal` varchar(255) DEFAULT NULL,
  `departamento_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `motivollamado`
--

CREATE TABLE `motivollamado` (
  `codigo` int DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  `descripcio` varchar(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movil`
--

CREATE TABLE `movil` (
  `id` int DEFAULT NULL,
  `descripcion` tinytext,
  `base` int DEFAULT NULL,
  `Posicion` tinytext,
  `activo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE `paciente` (
  `id` int DEFAULT NULL,
  `paciente` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `sexo` int DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `unidad_edad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `pais_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recepcion`
--

CREATE TABLE `recepcion` (
  `id` int DEFAULT NULL,
  `paciente_id` int DEFAULT NULL,
  `domicilio_id` int DEFAULT NULL,
  `motivo_id` int DEFAULT NULL,
  `fichadespacho_id` varchar(15) DEFAULT NULL,
  `traslado` int DEFAULT NULL,
  `institucionorigen_id` int DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `hora_reg` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sexo`
--

CREATE TABLE `sexo` (
  `id` int DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
