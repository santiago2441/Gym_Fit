-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2025 a las 17:05:16
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
-- Base de datos: `gim_fit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billing_address`
--

CREATE TABLE `billing_address` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_line` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `billing_address`
--

INSERT INTO `billing_address` (`id`, `order_id`, `address_line`, `city`, `state`, `postal_code`, `country`) VALUES
(1, 1, 'casa 89 ', 'medellin', 'antioquia', '750', 'colombia'),
(2, 2, 'condominio los rosales casa 21', 'ibague', 'tolima', '480', 'colombia'),
(3, 3, 'conjunto residencial altavida Apt 707', 'ibague', 'tolima', '489', 'colombia'),
(4, 4, 'condominio la samaria casa 4', 'ibague', 'tolima', '', 'colombia'),
(5, 5, 'condominio la 30 casa 30', 'medellin', 'antioquia', '300', 'colombia'),
(6, 6, 'Conjunto residencial Yarumo Arboleda campestre T5 Apt 404', 'Ibague', 'Tolima', '976', 'Colombia'),
(7, 7, 'casa 4 barrio las brisas', 'Ibague', 'Tolima', '976', 'Colombia'),
(8, 8, 'pedro', 'ibague', 'tolima', '976', 'Colombia'),
(9, 9, 'pedro', 'ibague', 'tolima', '976', 'Colombia'),
(10, 10, 'casa 4 barrio ancon', 'ibague', 'tolima', '975', 'colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contra_before`
--

CREATE TABLE `contra_before` (
  `documento` int(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fecha_actualizacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contra_before`
--

INSERT INTO `contra_before` (`documento`, `password`, `fecha_actualizacion`) VALUES
(1192907232, '$2y$12$FD.TB42J.pq.Ko6xR0m5lOFkA4r8Sj/4MXSbDS6ZKgcmuF.FPcvMC', '2023-07-17'),
(1192907232, '$2y$12$/RJAnMj4bVX6/mpVRAeRDubpubPBXMkOdR2bBx0HcrwgwdbF498Ei', '2023-07-17'),
(1192907232, '$2y$12$OyzRTW68V1RFbj8E4nedgOdgK/9UBd6i3Yh9UeU2suHs/4A.5gDiS', '2023-07-17'),
(1192876232, '', '2023-07-24'),
(1192876232, '', '2023-07-24'),
(1192907232, '$2y$12$FD.TB42J.pq.Ko6xR0m5lOFkA4r8Sj/4MXSbDS6ZKgcmuF.FPcvMC', '2023-07-17'),
(1192907232, '$2y$12$/RJAnMj4bVX6/mpVRAeRDubpubPBXMkOdR2bBx0HcrwgwdbF498Ei', '2023-07-17'),
(1192907232, '$2y$12$OyzRTW68V1RFbj8E4nedgOdgK/9UBd6i3Yh9UeU2suHs/4A.5gDiS', '2023-07-17'),
(1192876232, '', '2023-07-24'),
(1192876232, '', '2023-07-24'),
(1234567899, '$2y$12$F1tQhYkQJgayXooRDEfYrus1v/o8sSSfuxagy8/CeD28TAFvXvSJq', '2025-02-19'),
(1234567899, '$2y$12$F1tQhYkQJgayXooRDEfYrus1v/o8sSSfuxagy8/CeD28TAFvXvSJq', '2025-02-19'),
(1110475782, '123456789', '2025-02-19'),
(1192907232, '$2y$12$FD.TB42J.pq.Ko6xR0m5lOFkA4r8Sj/4MXSbDS6ZKgcmuF.FPcvMC', '2023-07-17'),
(1192907232, '$2y$12$/RJAnMj4bVX6/mpVRAeRDubpubPBXMkOdR2bBx0HcrwgwdbF498Ei', '2023-07-17'),
(1192907232, '$2y$12$OyzRTW68V1RFbj8E4nedgOdgK/9UBd6i3Yh9UeU2suHs/4A.5gDiS', '2023-07-17'),
(1192876232, '', '2023-07-24'),
(1192876232, '', '2023-07-24'),
(1192907232, '$2y$12$FD.TB42J.pq.Ko6xR0m5lOFkA4r8Sj/4MXSbDS6ZKgcmuF.FPcvMC', '2023-07-17'),
(1192907232, '$2y$12$/RJAnMj4bVX6/mpVRAeRDubpubPBXMkOdR2bBx0HcrwgwdbF498Ei', '2023-07-17'),
(1192907232, '$2y$12$OyzRTW68V1RFbj8E4nedgOdgK/9UBd6i3Yh9UeU2suHs/4A.5gDiS', '2023-07-17'),
(1192876232, '', '2023-07-24'),
(1192876232, '', '2023-07-24'),
(1234567899, '$2y$12$F1tQhYkQJgayXooRDEfYrus1v/o8sSSfuxagy8/CeD28TAFvXvSJq', '2025-02-19'),
(1234567899, '$2y$12$F1tQhYkQJgayXooRDEfYrus1v/o8sSSfuxagy8/CeD28TAFvXvSJq', '2025-02-19'),
(1110475782, '123456789', '2025-02-19'),
(1104545316, '', '2025-03-14'),
(1104545316, '', '2025-03-14'),
(1234567892, '', '2025-03-14'),
(1104545316, '', '2025-03-30'),
(1104545316, '123456', '2025-03-30'),
(1192907232, '$2y$12$rroLFRqpKkbxXw6c7/zI1usn0UNRDUb65P/30Hdrms0pwDEIbz/d2', '2025-04-09'),
(1193115015, '', '2025-04-09'),
(1234567899, '$2y$12$F1tQhYkQJgayXooRDEfYrus1v/o8sSSfuxagy8/CeD28TAFvXvSJq', '2025-04-09'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(93380077, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(119315018, '', '2025-05-13'),
(1119202922, '', '2025-05-13'),
(1119202922, '', '2025-05-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_fisicos`
--

CREATE TABLE `datos_fisicos` (
  `id_datos` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `documento` int(10) NOT NULL,
  `peso` float NOT NULL,
  `grasa` tinytext NOT NULL,
  `nivel_mus` tinytext NOT NULL,
  `talla_hueso` text NOT NULL,
  `metabol` text NOT NULL,
  `proteina` tinytext NOT NULL,
  `obesidad` tinytext NOT NULL,
  `pecho` float NOT NULL,
  `cintura` float NOT NULL,
  `brazo` float NOT NULL,
  `espalda` float NOT NULL,
  `cadera` float NOT NULL,
  `pierna` float NOT NULL,
  `gemelos` float NOT NULL,
  `BMI` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inven` int(20) NOT NULL,
  `cantidad_disp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `currency`, `description`, `created_at`) VALUES
(1, 4, 772000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x2, CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE x1, CREATINA LEGACY x2, CREATINA CELL TECH x3', '2025-04-25 16:49:22'),
(2, 5, 772000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x2, CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE x1, CREATINA LEGACY x2, CREATINA CELL TECH x3', '2025-04-25 16:53:44'),
(3, 6, 430000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x1, CREATINA SIMPLY 300g x1, CREATINA PLATINUM 80 SERVICIOS x1, CREATINA CELL TECH x1', '2025-04-25 16:57:52'),
(4, 7, 391000.00, 'COP', 'CREATINA CELL TECH x2, GLUTAMINA BASIC 60 SERVICIOS x1, CREATINA SIMPLY 300g x1', '2025-04-26 01:16:34'),
(5, 8, 659000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x2, CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE x1, CREATINA LEGACY x3, CREATINA CELL TECH x1', '2025-04-26 01:21:48'),
(6, 9, 453000.00, 'COP', 'CREATINA SIMPLY 300g x2, CREATINA PLATINUM 80 SERVICIOS x1, CREATINA CELL TECH x1', '2025-04-29 16:06:30'),
(7, 13, 535000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x1, CREATINA SIMPLY 300g x3, CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE x1', '2025-05-03 02:17:07'),
(8, 14, 321000.00, 'COP', 'CREATINA SIMPLY 300g x3', '2025-05-15 00:18:31'),
(9, 16, 171000.00, 'COP', 'GLUTAMINA BASIC 60 SERVICIOS x1, CREATINA LEGACY x1', '2025-05-15 00:23:14'),
(10, 17, 477000.00, 'COP', 'CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE x3, CREATINA LEGACY x1', '2025-05-17 00:36:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_name`, `quantity`, `price`) VALUES
(1, 1, 'GLUTAMINA BASIC 60 SERVICIOS', 2, 84000.00),
(2, 1, 'CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE', 1, 130000.00),
(3, 1, 'CREATINA LEGACY', 2, 87000.00),
(4, 1, 'CREATINA CELL TECH', 3, 100000.00),
(5, 3, 'GLUTAMINA BASIC 60 SERVICIOS', 1, 84000.00),
(6, 3, 'CREATINA SIMPLY 300g', 1, 107000.00),
(7, 3, 'CREATINA PLATINUM 80 SERVICIOS', 1, 139000.00),
(8, 3, 'CREATINA CELL TECH', 1, 100000.00),
(9, 4, 'CREATINA CELL TECH', 2, 100000.00),
(10, 4, 'GLUTAMINA BASIC 60 SERVICIOS', 1, 84000.00),
(11, 4, 'CREATINA SIMPLY 300g', 1, 107000.00),
(12, 5, 'GLUTAMINA BASIC 60 SERVICIOS', 2, 84000.00),
(13, 5, 'CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE', 1, 130000.00),
(14, 5, 'CREATINA LEGACY', 3, 87000.00),
(15, 5, 'CREATINA CELL TECH', 1, 100000.00),
(16, 6, 'CREATINA SIMPLY 300g', 2, 107000.00),
(17, 6, 'CREATINA PLATINUM 80 SERVICIOS', 1, 139000.00),
(18, 6, 'CREATINA CELL TECH', 1, 100000.00),
(19, 7, 'GLUTAMINA BASIC 60 SERVICIOS', 1, 84000.00),
(20, 7, 'CREATINA SIMPLY 300g', 3, 107000.00),
(21, 7, 'CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE', 1, 130000.00),
(22, 8, 'CREATINA SIMPLY 300g', 3, 107000.00),
(23, 9, 'GLUTAMINA BASIC 60 SERVICIOS', 1, 84000.00),
(24, 9, 'CREATINA LEGACY', 1, 87000.00),
(25, 10, 'CREATINA MONOHIDRATADA DYMATIZE 300 GRAMOS CREAPURE', 3, 130000.00),
(26, 10, 'CREATINA LEGACY', 1, 87000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `transaction_reference` varchar(100) DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `status`, `transaction_reference`, `paid_at`) VALUES
(1, 1, 'Tarjeta de crédito', 'completed', 'TXN1745599762', '2025-04-25 11:49:22'),
(2, 2, 'Débito', 'completed', 'TXN1745600024', '2025-04-25 11:53:44'),
(3, 3, 'Tarjeta de crédito', 'completed', 'TXN1745600272', '2025-04-25 11:57:52'),
(4, 4, 'Tarjeta de crédito', 'completed', 'TXN1745630194', '2025-04-25 20:16:34'),
(5, 5, 'Tarjeta de crédito', 'completed', 'TXN1745630508', '2025-04-25 20:21:48'),
(6, 6, 'Tarjeta de crédito', 'completed', 'TXN1745942790', '2025-04-29 11:06:30'),
(7, 7, 'Tarjeta de crédito', 'completed', 'TXN1746238627', '2025-05-02 21:17:07'),
(8, 8, 'Débito', 'completed', 'TXN1747268311', '2025-05-14 19:18:31'),
(9, 9, 'Transferencia', 'completed', 'TXN1747268594', '2025-05-14 19:23:14'),
(10, 10, 'Débito', 'completed', 'TXN1747442210', '2025-05-16 19:36:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_suscripcion`
--

CREATE TABLE `precio_suscripcion` (
  `id_valor` int(11) NOT NULL,
  `valor` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `precio_suscripcion`
--

INSERT INTO `precio_suscripcion` (`id_valor`, `valor`) VALUES
(1, 30.000),
(2, 40.000),
(3, 45.000),
(4, 480.000),
(5, 530.000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_venta` int(20) NOT NULL,
  `comprador` int(10) NOT NULL,
  `prod` text NOT NULL,
  `precio` int(20) NOT NULL,
  `descrip` text NOT NULL,
  `cant` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Coach'),
(3, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

CREATE TABLE `suscripcion` (
  `id_susc` int(11) NOT NULL,
  `docu_adco` int(10) NOT NULL,
  `docu_usuario` int(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ingreso`
--

CREATE TABLE `tabla_ingreso` (
  `id_ingreso` int(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_ingreso`
--

INSERT INTO `tabla_ingreso` (`id_ingreso`, `documento`, `fecha_ingreso`, `fecha_salida`) VALUES
(23, 1110475782, '2025-02-19 21:01:10', '2025-02-19 09:20:13'),
(24, 1110475782, '2025-02-21 20:32:09', '2025-02-21 08:34:02'),
(25, 1110475782, '2025-02-28 20:26:38', '2025-03-30 09:34:22'),
(26, 1110475782, '2025-03-14 20:27:36', '2025-03-30 09:34:22'),
(27, 1104545316, '2025-03-21 20:13:01', '0000-00-00 00:00:00'),
(28, 1110475782, '2025-03-21 20:14:25', '2025-03-30 09:34:22'),
(29, 1104545316, '2025-03-21 20:29:07', '0000-00-00 00:00:00'),
(30, 1104545316, '2025-03-21 20:30:29', '0000-00-00 00:00:00'),
(31, 1104545316, '2025-03-21 20:30:54', '0000-00-00 00:00:00'),
(32, 1104545316, '2025-03-21 20:42:13', '0000-00-00 00:00:00'),
(33, 1104545316, '2025-03-21 20:43:09', '0000-00-00 00:00:00'),
(34, 1104545316, '2025-03-28 21:20:34', '0000-00-00 00:00:00'),
(35, 1104545316, '2025-03-30 09:27:17', '0000-00-00 00:00:00'),
(36, 1110475782, '2025-03-30 09:32:57', '2025-03-30 09:34:22'),
(37, 1104545316, '2025-03-30 10:04:25', '0000-00-00 00:00:00'),
(38, 1104545316, '2025-03-30 11:15:57', '0000-00-00 00:00:00'),
(39, 1104545316, '2025-03-30 11:16:34', '0000-00-00 00:00:00'),
(40, 1104545316, '2025-03-30 11:24:02', '0000-00-00 00:00:00'),
(41, 1104545316, '2025-03-30 11:24:25', '0000-00-00 00:00:00'),
(42, 1104545316, '2025-03-30 11:25:52', '0000-00-00 00:00:00'),
(43, 1104545316, '2025-03-30 11:36:09', '0000-00-00 00:00:00'),
(44, 1104545316, '2025-03-30 11:38:29', '0000-00-00 00:00:00'),
(45, 1104545316, '2025-03-30 11:43:12', '0000-00-00 00:00:00'),
(46, 1104545316, '2025-03-30 11:47:23', '0000-00-00 00:00:00'),
(47, 1104545316, '2025-03-30 11:47:39', '0000-00-00 00:00:00'),
(48, 1104545316, '2025-03-30 11:47:49', '0000-00-00 00:00:00'),
(49, 1104545316, '2025-03-30 11:49:10', '0000-00-00 00:00:00'),
(50, 1104545316, '2025-03-30 11:50:14', '0000-00-00 00:00:00'),
(51, 1104545316, '2025-03-30 11:50:33', '0000-00-00 00:00:00'),
(52, 1104545316, '2025-03-30 11:50:49', '0000-00-00 00:00:00'),
(53, 1104545316, '2025-03-30 12:00:30', '0000-00-00 00:00:00'),
(54, 1104545316, '2025-03-30 12:10:18', '0000-00-00 00:00:00'),
(55, 1104545316, '2025-03-30 12:20:50', '0000-00-00 00:00:00'),
(56, 1104545316, '2025-03-30 12:26:21', '0000-00-00 00:00:00'),
(57, 1104545316, '2025-03-30 12:36:00', '0000-00-00 00:00:00'),
(58, 1104545316, '2025-03-30 13:09:52', '0000-00-00 00:00:00'),
(59, 1104545316, '2025-03-30 13:12:06', '0000-00-00 00:00:00'),
(60, 1104545316, '2025-03-30 13:34:55', '0000-00-00 00:00:00'),
(61, 1104545316, '2025-03-30 13:40:39', '0000-00-00 00:00:00'),
(62, 1104545316, '2025-04-01 18:58:32', '0000-00-00 00:00:00'),
(63, 1104545316, '2025-04-01 18:59:01', '0000-00-00 00:00:00'),
(64, 1104545316, '2025-04-01 18:59:55', '0000-00-00 00:00:00'),
(65, 1104545316, '2025-04-01 19:01:49', '0000-00-00 00:00:00'),
(66, 1104545316, '2025-04-04 20:46:55', '0000-00-00 00:00:00'),
(67, 1104545316, '2025-04-09 17:15:05', '0000-00-00 00:00:00'),
(68, 1110475782, '2025-04-09 18:44:11', '2025-04-11 08:27:33'),
(69, 1104545316, '2025-04-11 12:19:14', '0000-00-00 00:00:00'),
(70, 1110475782, '2025-04-11 12:20:53', '2025-04-11 08:27:33'),
(71, 1104545316, '2025-04-11 12:29:30', '0000-00-00 00:00:00'),
(72, 1104545316, '2025-04-11 12:30:27', '0000-00-00 00:00:00'),
(73, 1104545316, '2025-04-11 12:51:36', '0000-00-00 00:00:00'),
(74, 1104545316, '2025-04-11 12:53:29', '0000-00-00 00:00:00'),
(75, 1104545316, '2025-04-11 12:53:51', '0000-00-00 00:00:00'),
(76, 1104545316, '2025-04-11 12:54:12', '0000-00-00 00:00:00'),
(77, 1104545316, '2025-04-11 13:34:55', '0000-00-00 00:00:00'),
(78, 1104545316, '2025-04-11 14:42:38', '0000-00-00 00:00:00'),
(79, 1104545316, '2025-04-11 20:18:49', '0000-00-00 00:00:00'),
(80, 1104545316, '2025-04-11 20:20:06', '0000-00-00 00:00:00'),
(81, 1110475782, '2025-04-11 20:21:29', '2025-04-11 08:27:33'),
(82, 1104545316, '2025-04-11 20:45:19', '0000-00-00 00:00:00'),
(83, 1104545316, '2025-04-22 21:36:58', '0000-00-00 00:00:00'),
(84, 1104545316, '2025-04-22 21:38:28', '0000-00-00 00:00:00'),
(85, 1110475782, '2025-04-22 21:39:36', '2025-04-22 09:42:38'),
(86, 1104545316, '2025-04-22 21:43:14', '0000-00-00 00:00:00'),
(87, 1110475782, '2025-04-22 21:43:58', '2025-04-29 11:13:38'),
(88, 1104545316, '2025-04-25 10:28:29', '0000-00-00 00:00:00'),
(89, 1104545316, '2025-04-25 11:47:28', '0000-00-00 00:00:00'),
(90, 1104545316, '2025-04-25 11:56:37', '0000-00-00 00:00:00'),
(91, 1104545316, '2025-04-25 20:14:55', '0000-00-00 00:00:00'),
(92, 1104545316, '2025-04-25 20:20:18', '0000-00-00 00:00:00'),
(93, 1104545316, '2025-04-29 10:46:39', '0000-00-00 00:00:00'),
(94, 1104545316, '2025-04-29 11:02:36', '0000-00-00 00:00:00'),
(95, 1110475782, '2025-04-29 11:08:53', '2025-04-29 11:13:38'),
(96, 1110475782, '2025-05-02 21:13:08', '2025-05-02 09:14:46'),
(97, 1104545316, '2025-05-02 21:14:54', '0000-00-00 00:00:00'),
(98, 1110475782, '2025-05-12 21:05:36', '2025-05-13 06:44:18'),
(99, 1110475782, '2025-05-13 18:44:12', '2025-05-13 06:44:18'),
(100, 1110475782, '2025-05-13 18:46:14', '2025-05-13 06:46:16'),
(101, 1104545316, '2025-05-13 18:46:35', '0000-00-00 00:00:00'),
(102, 1110475782, '2025-05-13 18:55:16', '2025-05-13 06:58:20'),
(103, 1110475782, '2025-05-13 19:02:02', '2025-05-14 07:39:22'),
(104, 1104545316, '2025-05-14 19:16:08', '0000-00-00 00:00:00'),
(105, 1104545316, '2025-05-14 19:22:31', '0000-00-00 00:00:00'),
(106, 1104545316, '2025-05-14 19:26:12', '0000-00-00 00:00:00'),
(107, 1110475782, '2025-05-14 19:26:42', '2025-05-14 07:39:22'),
(108, 1110475782, '2025-05-14 19:38:32', '2025-05-14 07:39:22'),
(109, 1104545316, '2025-05-14 19:39:35', '0000-00-00 00:00:00'),
(110, 1110475782, '2025-05-14 19:57:32', '2025-05-14 07:58:58'),
(111, 1104545316, '2025-05-14 20:15:04', '0000-00-00 00:00:00'),
(112, 1110475782, '2025-05-14 20:15:31', '2025-05-14 08:24:20'),
(113, 1110475782, '2025-05-14 20:27:58', '2025-05-16 07:19:04'),
(114, 1104545316, '2025-05-16 19:18:21', '0000-00-00 00:00:00'),
(115, 1110475782, '2025-05-16 19:19:02', '2025-05-16 07:19:04'),
(116, 1104545316, '2025-05-16 19:29:27', '0000-00-00 00:00:00'),
(117, 1110475782, '2025-05-16 19:30:33', '2025-05-16 07:35:25'),
(118, 1104545316, '2025-05-16 19:35:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_servicio`
--

CREATE TABLE `tp_servicio` (
  `id_servicio` int(11) NOT NULL,
  `tipo_servicio` text NOT NULL,
  `costo_servicio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `documento` int(10) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int(3) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `estatura` decimal(5,2) NOT NULL,
  `fecha_naci` date NOT NULL,
  `telefono` float NOT NULL,
  `correo` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`documento`, `nombres`, `apellidos`, `edad`, `peso`, `estatura`, `fecha_naci`, `telefono`, `correo`, `password`, `id_rol`, `id_genero`, `id_estado`) VALUES
(65188152, 'milena', 'ramos', 45, 60.00, 1.60, '1980-05-19', 66642200, 'milena@gmail.com', '', 3, 2, 2),
(1104545316, 'santiago', 'castellanos', 20, 10.00, 10.00, '2005-06-04', 3207420000, 'santiago.castellanos@gmail.com', '123456789', 3, 1, 2),
(1104578925, 'Julian', 'Perez', 20, 62.00, 1.80, '2005-05-10', 3207460000, 'julians@gmail.com', '', 3, 1, 2),
(1110475782, 'Juliana ', 'arciniegas ', 18, 10.00, 2.00, '2025-02-27', 3222690000, 'juliana.arcineigas@cun.edu.co\r\n', '123456789', 1, 2, 1),
(1193115015, 'kevin ', 'jaimes', 23, 63.00, 0.02, '2002-02-02', 3182260000, 'kajaimes306@gmail.com', '$2y$10$qwO/KC8q7AP6WV71dnI1m.BdFnty6bEBDB6ZpwyUDhb7NfQoU7Yj2', 3, 1, 2),
(1245789654, 'Maira', 'Castañeda', 18, 52.00, 1.00, '2005-06-24', 3207430000, 'maira1@gmail.com', '', 3, 2, 2);

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `Trigger_contraseñas` BEFORE UPDATE ON `usuario` FOR EACH ROW INSERT INTO contra_before (documento,password,fecha_actualizacion) VALUES (old.documento, old.password,Now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_pagos`
--

CREATE TABLE `usuario_pagos` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_pagos`
--

INSERT INTO `usuario_pagos` (`id`, `full_name`, `email`, `phone`, `created_at`) VALUES
(1, 'Santiago Alejandro Castellanos Zarta', 'santiagocastellanos1994@gmail.com', '3207424347', '2025-04-25 15:58:46'),
(2, 'julio perez', 'julio@gmail.com', '3208759854', '2025-04-25 16:44:25'),
(4, 'pedro sanchez', 'julio1@gmail.com', '3134567896', '2025-04-25 16:49:22'),
(5, 'Julieta Ramirez', 'Julieta26@gmail.com', '3002589748', '2025-04-25 16:53:44'),
(6, 'Sandra Gonzales', 'Sandra79@gmail.com', '3205568941', '2025-04-25 16:57:52'),
(7, 'emilio velez', 'emil@gmail.com', '3105897456', '2025-04-26 01:16:34'),
(8, 'Carlos Perez', 'perez@gmail.com', '3002567895', '2025-04-26 01:21:48'),
(9, 'Natalia Ramirez', 'lia1929@gmail.com', '32014563210', '2025-04-29 16:06:30'),
(13, 'Julio velez', 'julio23@gmail.com', '3002578944', '2025-05-03 02:17:07'),
(14, 'pedro martinez', 'pedro@gmail.com', '3216549875', '2025-05-15 00:18:31'),
(16, 'pedro sanchez', 'pedro2@gmail.com', '3216549875', '2025-05-15 00:23:14'),
(17, 'JulianAlejandro', 'Julian22@gmail.com', '320457896', '2025-05-17 00:36:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vender_servicio`
--

CREATE TABLE `vender_servicio` (
  `id_venta_ser` int(11) NOT NULL,
  `coach` int(10) NOT NULL,
  `usuario` int(10) NOT NULL,
  `servicio` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `datos_fisicos`
--
ALTER TABLE `datos_fisicos`
  ADD PRIMARY KEY (`id_datos`),
  ADD KEY `documento` (`documento`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inven`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `precio_suscripcion`
--
ALTER TABLE `precio_suscripcion`
  ADD PRIMARY KEY (`id_valor`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_venta`) USING BTREE,
  ADD KEY `comprador` (`comprador`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD PRIMARY KEY (`id_susc`),
  ADD KEY `documento` (`docu_usuario`),
  ADD KEY `id_valor` (`valor`);

--
-- Indices de la tabla `tabla_ingreso`
--
ALTER TABLE `tabla_ingreso`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `documento` (`documento`);

--
-- Indices de la tabla `tp_servicio`
--
ALTER TABLE `tp_servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `usuario_ibfk_2` (`id_rol`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `vender_servicio`
--
ALTER TABLE `vender_servicio`
  ADD PRIMARY KEY (`id_venta_ser`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `servicio` (`servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `datos_fisicos`
--
ALTER TABLE `datos_fisicos`
  MODIFY `id_datos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `precio_suscripcion`
--
ALTER TABLE `precio_suscripcion`
  MODIFY `id_valor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  MODIFY `id_susc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tabla_ingreso`
--
ALTER TABLE `tabla_ingreso`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `tp_servicio`
--
ALTER TABLE `tp_servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `vender_servicio`
--
ALTER TABLE `vender_servicio`
  MODIFY `id_venta_ser` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `billing_address`
--
ALTER TABLE `billing_address`
  ADD CONSTRAINT `billing_address_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `datos_fisicos`
--
ALTER TABLE `datos_fisicos`
  ADD CONSTRAINT `datos_fisicos_ibfk_1` FOREIGN KEY (`documento`) REFERENCES `usuario` (`documento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuario_pagos` (`id`);

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`comprador`) REFERENCES `usuario` (`documento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD CONSTRAINT `suscripcion_ibfk_1` FOREIGN KEY (`docu_usuario`) REFERENCES `usuario` (`documento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suscripcion_ibfk_2` FOREIGN KEY (`valor`) REFERENCES `precio_suscripcion` (`id_valor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_ingreso`
--
ALTER TABLE `tabla_ingreso`
  ADD CONSTRAINT `tabla_ingreso_ibfk_1` FOREIGN KEY (`documento`) REFERENCES `usuario` (`documento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vender_servicio`
--
ALTER TABLE `vender_servicio`
  ADD CONSTRAINT `vender_servicio_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`documento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vender_servicio_ibfk_2` FOREIGN KEY (`servicio`) REFERENCES `tp_servicio` (`id_servicio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
