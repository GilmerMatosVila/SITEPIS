-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2021 a las 22:24:11
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `topico`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `atensiones` (`dni` INT)  BEGIN

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_miatension` (IN `mihora` VARCHAR(20), IN `dni` INT(8) ZEROFILL, IN `fecha` VARCHAR(20), IN `diag` VARCHAR(100), IN `trat` VARCHAR(100), IN `drug` INT(10) UNSIGNED, IN `cant` INT(10) UNSIGNED)  BEGIN
INSERT INTO atencion_estudiante (hora_add, id_estudiante, fecha_atencion, diagnostico, tratamiento, idMedicamento, cantMedicamento) 	VALUES(mihora, dni, fecha, diag, trat, drug, cant);
UPDATE inventario SET cantidad=cantidad-cant WHERE id=drug;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `id_administrativo` int(11) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `peso` double(5,2) NOT NULL,
  `talla` double(5,2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrativo`
--

INSERT INTO `administrativo` (`id_administrativo`, `dni`, `nombre`, `sexo`, `peso`, `talla`, `date_added`) VALUES
(16, '71224845', 'Marita Soledad Sanchez Flores', 'M', 12.00, 12.00, '0000-00-00 00:00:00'),
(19, '71224842', 'Carmen Lopez Galvez', 'F', 70.00, 1.65, '2020-09-19 07:09:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion_administrativo`
--

CREATE TABLE `atencion_administrativo` (
  `id_atencion` int(11) NOT NULL,
  `hora_add` varchar(255) NOT NULL,
  `id_administrativo` int(11) NOT NULL,
  `fecha_atencion` varchar(25) NOT NULL,
  `diagnostico` varchar(25) NOT NULL,
  `tratamiento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atencion_administrativo`
--

INSERT INTO `atencion_administrativo` (`id_atencion`, `hora_add`, `id_administrativo`, `fecha_atencion`, `diagnostico`, `tratamiento`) VALUES
(100, '18:02:49', 16, '2020/08/20', 'administrativo', 'administrativo'),
(101, '19:58:32', 16, '2020/08/21', '111', '22'),
(102, '20:00:22', 16, '2020/08/12', 'lkj', 'klj'),
(103, '13:48:51', 71224845, '2020/09/16', 'sfdasda', 'asdasd'),
(104, '21:02:49', 71224845, '2020/09/16', '45', '54'),
(105, '21:31:28', 71224845, '2020/09/16', 'asd', 'asd'),
(106, '21:46:43', 71224845, '2020/09/16', 'qwe', 'qwe'),
(107, '21:46:43', 71224845, '2020/09/16', 'qwe', 'qwe'),
(108, '21:46:43', 71224845, '2020/09/16', 'qwe', 'qwe'),
(109, '21:46:43', 71224845, '2020/09/16', 'qwe', 'qwe'),
(110, '21:46:43', 71224845, '2020/09/16', 'qwe', 'qwe'),
(111, '21:47:26', 71224845, '2020/09/16', 'ds', 'sdf'),
(112, '22:53:22', 71224845, '2020/09/16', 'wqe', 'qwe'),
(113, '22:54:47', 16, '2020/09/16', 'asdasda', 'aasdasdas'),
(114, '19:36:43', 16, '2020/09/20', 'Tiene fiebre y tos', 'Tomar clorfenamina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion_docente`
--

CREATE TABLE `atencion_docente` (
  `id_atencion` int(11) NOT NULL,
  `hora_add` varchar(255) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `fecha_atencion` varchar(25) NOT NULL,
  `diagnostico` varchar(25) NOT NULL,
  `tratamiento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atencion_docente`
--

INSERT INTO `atencion_docente` (`id_atencion`, `hora_add`, `id_docente`, `fecha_atencion`, `diagnostico`, `tratamiento`) VALUES
(119, '14:00:06', 12121212, '2020/09/16', 'sdf', 'sdf'),
(120, '21:00:24', 12121212, '2020/09/16', 'asd', 'asd'),
(121, '21:53:35', 12121212, '2020/09/16', '12', '12'),
(122, '21:57:52', 0, '2020/09/16', 'w', 'w'),
(123, '22:03:57', 0, '2020/09/16', 'r', 'r'),
(124, '22:04:02', 0, '2020/09/16', 'r', 'r'),
(125, '22:05:22', 0, '2020/09/16', 'w', 'w'),
(126, '22:06:39', 0, '2020/09/16', 'e', 'e'),
(127, '22:07:13', 0, '2020/09/16', 'sw', 'w'),
(128, '22:12:04', 0, '2020/09/16', 'W', 'W'),
(129, '22:14:46', 12121212, '2020/09/16', 'W', 'W'),
(130, '22:20:43', 50, '2020/09/16', '12', '12'),
(131, '22:24:02', 50, '2020/08/16', '12', '12'),
(132, '22:24:59', 0, '2020/09/16', '2', '2'),
(133, '18:58:30', 52, '2020/09/20', 'Prueba', 'Prueba'),
(134, '19:35:51', 52, '2020/09/20', 'Dolor de garganta y fiebr', 'Tomar clorfenamina cada 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion_estudiante`
--

CREATE TABLE `atencion_estudiante` (
  `id_atencion` int(11) NOT NULL,
  `hora_add` varchar(255) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha_atencion` varchar(25) NOT NULL,
  `diagnostico` varchar(25) NOT NULL,
  `tratamiento` varchar(25) NOT NULL,
  `idMedicamento` int(11) NOT NULL,
  `cantMedicamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atencion_estudiante`
--

INSERT INTO `atencion_estudiante` (`id_atencion`, `hora_add`, `id_estudiante`, `fecha_atencion`, `diagnostico`, `tratamiento`, `idMedicamento`, `cantMedicamento`) VALUES
(171, '01:38:57', 61717100, '15-08-2021', 'fiebre alta 28 c', '2 tomadas x dia', 29, 5),
(175, '14:31:30', 61717100, '16-08-2021', 'd', 'd', 19, 1),
(176, '14:36:52', 61717100, '16-08-2021', 'TIENE ...', 'pastillas', 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`) VALUES
(1, 'Liquido x2'),
(4, 'Primeros Auxilios'),
(5, 'alcohol'),
(7, 'Pastillas'),
(8, 'Secundarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_administrativo`
--

CREATE TABLE `detalle_administrativo` (
  `detalle_administrativo` int(11) NOT NULL,
  `id_atencion` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `cantidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_administrativo`
--

INSERT INTO `detalle_administrativo` (`detalle_administrativo`, `id_atencion`, `id_inventario`, `cantidad`) VALUES
(100, 100, 15, '3'),
(101, 101, 14, '1'),
(102, 102, 15, '1'),
(103, 103, 14, '1'),
(104, 104, 14, '1'),
(105, 105, 14, '1'),
(106, 106, 14, '1'),
(107, 107, 14, '1'),
(108, 108, 14, '1'),
(109, 109, 14, '1'),
(110, 110, 14, '1'),
(111, 111, 14, '1'),
(112, 112, 19, '1'),
(113, 113, 19, '1'),
(114, 114, 20, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_docente`
--

CREATE TABLE `detalle_docente` (
  `detalle_docente` int(11) NOT NULL,
  `id_atencion` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `cantidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_docente`
--

INSERT INTO `detalle_docente` (`detalle_docente`, `id_atencion`, `id_inventario`, `cantidad`) VALUES
(116, 119, 14, '1'),
(117, 120, 14, '1'),
(118, 121, 14, '1'),
(119, 122, 14, '1'),
(120, 123, 14, '1'),
(121, 124, 14, '1'),
(122, 125, 14, '1'),
(123, 126, 14, '1'),
(124, 127, 17, '1'),
(125, 128, 17, '1'),
(126, 129, 17, '1'),
(127, 130, 19, '1'),
(128, 131, 14, '1'),
(129, 132, 14, '1'),
(130, 133, 19, '1'),
(131, 134, 20, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_estudiante`
--

CREATE TABLE `detalle_estudiante` (
  `detalle_estudiante` int(11) NOT NULL,
  `id_atencion` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `cantidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_estudiante`
--

INSERT INTO `detalle_estudiante` (`detalle_estudiante`, `id_atencion`, `id_inventario`, `cantidad`) VALUES
(249, 135, 14, '1'),
(250, 136, 14, '2'),
(251, 136, 17, '1'),
(252, 137, 17, '2'),
(253, 139, 14, '1'),
(254, 139, 17, '1'),
(255, 140, 14, '1'),
(256, 141, 17, '1'),
(257, 142, 17, '3'),
(258, 143, 17, '3'),
(259, 144, 17, '1'),
(260, 145, 17, '1'),
(261, 146, 14, '1'),
(262, 147, 14, '1'),
(263, 148, 14, '1'),
(264, 149, 14, '1'),
(265, 150, 14, '1'),
(266, 151, 14, '1'),
(267, 152, 14, '1'),
(268, 153, 14, '1'),
(269, 154, 14, '1'),
(270, 155, 17, '1'),
(271, 156, 14, '1'),
(272, 157, 20, '2'),
(273, 158, 20, '4'),
(274, 159, 20, '6'),
(275, 160, 19, '1'),
(276, 161, 19, '1'),
(277, 162, 19, '1'),
(278, 163, 19, '1'),
(279, 164, 19, '1'),
(280, 165, 19, '1'),
(281, 166, 20, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `peso` double(5,2) NOT NULL,
  `talla` double(5,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `dni`, `nombres`, `sexo`, `peso`, `talla`, `date_added`, `usuario`) VALUES
(52, '71432342', 'Alexandra Casas Dominguez', 'F', 65.50, 1.65, '2020-09-19 07:03:12', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `edad` int(10) NOT NULL,
  `ciclo` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `peso` double(5,2) NOT NULL,
  `talla` double(5,2) NOT NULL,
  `orientacion` varchar(255) NOT NULL,
  `barrera` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `dni`, `nombre`, `codigo`, `fecha`, `edad`, `ciclo`, `sexo`, `peso`, `talla`, `orientacion`, `barrera`, `usuario`, `date_added`) VALUES
(13, '71224546', 'Mallon Oscar Benito', '3123123123', '2020-07-06', 15, 'I', 'F', 65.00, 1.67, 'si', 'si', '', '2020-07-28 20:37:27'),
(17, '71442255', 'Mirella Huaman Sanchez', '2015141635', '1995-10-16', 24, 'III', 'M', 57.00, 1.96, 'si', 'si', '', '2020-09-06 00:49:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nota` varchar(255) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `id_inventario`, `user_id`, `fecha`, `nota`, `referencia`, `cantidad`) VALUES
(1, 14, 1, '2020-08-23 02:19:39', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(2, 14, 1, '2020-08-23 02:19:56', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(3, 14, 1, '2020-08-23 02:20:27', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(4, 0, 1, '2020-08-23 02:21:37', 'admin eliminÃ³ 13 producto(s) del inventario', '', 13),
(5, 14, 1, '2020-08-23 02:21:57', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(6, 14, 1, '2020-08-23 02:22:07', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(7, 0, 1, '2020-08-23 02:23:10', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(8, 14, 1, '2020-08-23 02:23:34', 'admin agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(31, 14, 1, '2020-08-24 17:14:37', 'admin agregÃ³ 5 producto(s) al inventario', 'pruebageneral', 5),
(32, 14, 1, '2020-08-24 22:46:33', 'admin agregÃ³ 2 producto(s) al inventario', 'prueba de ingreso', 2),
(33, 14, 0, '2020-09-13 17:33:06', 'usuario agregÃ³ 8 producto(s) al inventario', 'nuevo ingreso', 8),
(34, 14, 0, '2020-09-13 17:33:54', 'usuario agregÃ³ 2 producto(s) al inventario', '12', 2),
(35, 14, 14, '2020-09-13 17:37:08', 'usuario agregÃ³ 5 producto(s) al inventario', '435345', 5),
(36, 19, 14, '2020-09-14 01:48:42', 'usuario agregÃ³ 3 producto(s) al inventario', '2', 3),
(37, 19, 14, '2020-09-14 01:49:14', 'usuario eliminÃ³ 2 producto(s) del inventario', 'e', 2),
(38, 19, 14, '2020-09-14 16:38:27', 'usuario agregÃ³ 9 producto(s) al inventario', 'eyththythy', 9),
(39, 24, 21, '2020-09-19 18:05:51', 'administrador agregÃ³ 10 producto(s) al inventario', 'Nueva transferencia', 10),
(40, 24, 21, '2020-09-19 18:06:16', 'administrador eliminÃ³ 10 producto(s) del inventario', 'Prestamo ', 10),
(41, 25, 21, '2020-09-19 18:13:44', 'administrador agregÃ³ 10 producto(s) al inventario', 'Nuevo envio', 10),
(42, 25, 21, '2020-09-19 18:14:04', 'administrador eliminÃ³ 10 producto(s) del inventario', 'Prestamo facultad', 10),
(43, 19, 14, '2020-09-20 19:13:26', 'usuario agregÃ³ 6 producto(s) al inventario', 'nueva entrada', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `composicion` varchar(255) NOT NULL,
  `forma` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `nombre`, `categoria`, `composicion`, `forma`, `cantidad`, `fecha`) VALUES
(19, 'alcohol', 'Liquido x2', '500 ml', 'Solucion', 9, '2020-09-12'),
(20, 'Clorfenamina', 'Pastillas', '500 mg', 'Tableta', 6, '2020-12-12'),
(27, 'agua oxigenada', 'Liquido x2', '065 cm', 'Botella', 50, '2021-06-07'),
(29, 'Amoxilina', 'Pastillas', '25ml', 'tabletas', 33, '2021-06-15'),
(30, 'panadol', 'Pastillas', '5ml', 'caja', 49, '2021-06-07'),
(33, 'Pavilo', 'alcohol', '4ml', 'caja', 54, '2021-06-22'),
(34, 'Frank Lagos', 'alcohol', '4ml', 'caja', 54, '2021-06-29'),
(35, 'Prueba', 'Liquido x2', '5ml', 'Liquido', 45, '2021-06-15'),
(36, 'll', 'Primeros Auxilios', 'ml', 'Caja', 52, '2021-07-27'),
(37, 'demo', 'alcohol', 'demo', 'demo', 21, '2021-07-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id_salida` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`id_salida`, `id_inventario`, `fecha`, `cantidad_total`) VALUES
(10, 19, '2020-09-01', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_bin NOT NULL,
  `rol` varchar(15) COLLATE utf8_bin NOT NULL,
  `username` varchar(51) COLLATE utf8_bin NOT NULL,
  `password` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombres`, `rol`, `username`, `password`) VALUES
(1, 'Rosario Bujaico Montes', 'admin', 'admin', '$2y$10$ie8i4zqC4LjAUOS2E8/Wb.xqC.M.biZ4Yo/eiAL9mwFc2L5/5i83e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(60) COLLATE utf8_bin NOT NULL,
  `user_level` int(1) NOT NULL,
  `dni` int(10) NOT NULL,
  `ciclo` varchar(2) COLLATE utf8_bin NOT NULL,
  `edad` varchar(2) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(1) COLLATE utf8_bin NOT NULL,
  `peso` double(5,2) NOT NULL,
  `talla` double(5,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `user_level`, `dni`, `ciclo`, `edad`, `sexo`, `peso`, `talla`, `status`) VALUES
(45, 'Roger Salazar Irrazabal', 3, 61717100, '', '22', 'M', 63.21, 168.31, 1),
(49, 'Hever  Lima De la Cruz', 3, 71228654, '', '22', 'M', 65.00, 1.60, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_grupo`
--

CREATE TABLE `usuario_grupo` (
  `id` int(11) NOT NULL,
  `group_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `group_level` int(1) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario_grupo`
--

INSERT INTO `usuario_grupo` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'docente', 1, 1),
(2, 'administrativo', 2, 1),
(3, 'estudiante', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`id_administrativo`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `atencion_administrativo`
--
ALTER TABLE `atencion_administrativo`
  ADD PRIMARY KEY (`id_atencion`);

--
-- Indices de la tabla `atencion_docente`
--
ALTER TABLE `atencion_docente`
  ADD PRIMARY KEY (`id_atencion`);

--
-- Indices de la tabla `atencion_estudiante`
--
ALTER TABLE `atencion_estudiante`
  ADD PRIMARY KEY (`id_atencion`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_administrativo`
--
ALTER TABLE `detalle_administrativo`
  ADD PRIMARY KEY (`detalle_administrativo`);

--
-- Indices de la tabla `detalle_docente`
--
ALTER TABLE `detalle_docente`
  ADD PRIMARY KEY (`detalle_docente`);

--
-- Indices de la tabla `detalle_estudiante`
--
ALTER TABLE `detalle_estudiante`
  ADD PRIMARY KEY (`detalle_estudiante`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_inventario` (`id_inventario`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_inventario` (`id_inventario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `user_level` (`user_level`) USING BTREE;

--
-- Indices de la tabla `usuario_grupo`
--
ALTER TABLE `usuario_grupo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  MODIFY `id_administrativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `atencion_administrativo`
--
ALTER TABLE `atencion_administrativo`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `atencion_docente`
--
ALTER TABLE `atencion_docente`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `atencion_estudiante`
--
ALTER TABLE `atencion_estudiante`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_administrativo`
--
ALTER TABLE `detalle_administrativo`
  MODIFY `detalle_administrativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `detalle_docente`
--
ALTER TABLE `detalle_docente`
  MODIFY `detalle_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `detalle_estudiante`
--
ALTER TABLE `detalle_estudiante`
  MODIFY `detalle_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `usuario_grupo`
--
ALTER TABLE `usuario_grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`user_level`) REFERENCES `usuario_grupo` (`group_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
