-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2024 a las 02:45:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `concesionario`
--
CREATE DATABASE IF NOT EXISTS `concesionario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `concesionario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo-vehiculos`
--

CREATE TABLE `catalogo-vehiculos` (
  `id` int(11) NOT NULL,
  `marca` varchar(11) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `ID Comprador` int(11) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogo-vehiculos`
--

INSERT INTO `catalogo-vehiculos` (`id`, `marca`, `modelo`, `precio`, `ID Comprador`, `Categoria`) VALUES
(1, 'Ford', 'Focus', 442423423, 43546435, 'familiar'),
(2, 'Citroen', 'C4', 50, 43546435, 'familiar'),
(3, 'Volkwagen', 'Gol', 5666, 232131213, 'familiar'),
(4, 'Volkswagen', 'Saveiro', 6643, 77664, 'utilitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Tipo`) VALUES
('deportivo'),
('familiar'),
('off road'),
('utilitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradores`
--

CREATE TABLE `compradores` (
  `dni` int(11) NOT NULL,
  `nombre` tinytext NOT NULL,
  `direccion` tinytext NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compradores`
--

INSERT INTO `compradores` (`dni`, `nombre`, `direccion`, `telefono`) VALUES
(77664, '0', '0', 0),
(3123123, '0', '0', 0),
(32321321, '0', '0', 0),
(43546435, '0', '0', 0),
(232131213, 'Juan', 'Belgrano 1823', 122145452);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo-vehiculos`
--
ALTER TABLE `catalogo-vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID Comprador` (`ID Comprador`),
  ADD KEY `Categoria` (`Categoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Tipo`);

--
-- Indices de la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`dni`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogo-vehiculos`
--
ALTER TABLE `catalogo-vehiculos`
  ADD CONSTRAINT `catalogo-vehiculos_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`Tipo`),
  ADD CONSTRAINT `catalogo-vehiculos_ibfk_2` FOREIGN KEY (`ID Comprador`) REFERENCES `compradores` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
