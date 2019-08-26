-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2019 a las 23:38:16
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `usuario_adm` varchar(20) NOT NULL,
  `nombre_adm` varchar(50) DEFAULT NULL,
  `apellidos_adm` varchar(50) DEFAULT NULL,
  `rut_adm` varchar(15) DEFAULT NULL,
  `password_adm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`usuario_adm`, `nombre_adm`, `apellidos_adm`, `rut_adm`, `password_adm`) VALUES
('jose123', 'jose', 'espinoza', '202563910', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `rut_a` varchar(15) NOT NULL,
  `nombre_a` varchar(50) DEFAULT NULL,
  `apellidos_a` varchar(50) DEFAULT NULL,
  `edad_a` int(11) DEFAULT NULL,
  `fechanac_a` date DEFAULT NULL,
  `pais_a` varchar(15) DEFAULT NULL,
  `ciudad_a` varchar(20) DEFAULT NULL,
  `provincia_a` varchar(20) DEFAULT NULL,
  `direccion_a` varchar(50) DEFAULT NULL,
  `sexo_a` varchar(10) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `rut_p` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`rut_a`, `nombre_a`, `apellidos_a`, `edad_a`, `fechanac_a`, `pais_a`, `ciudad_a`, `provincia_a`, `direccion_a`, `sexo_a`, `telefono`, `rut_p`) VALUES
('17.898.776-3', ' Juana ', 'Linco Quinchao', 31, '1988-05-18', 'Chile', 'San Pedro', 'Concepcion', ' Fresia ', ' femenino', 986992328, NULL),
('20.256.391-0', ' Jose Javier', 'Espinoza Gajardo', 19, '1999-09-24', 'Chile', 'Concepcion', 'Concepcion', ' Ohiggins 98', ' masculino', 972297390, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `rut_doc` varchar(15) NOT NULL,
  `nombre_doc` varchar(50) DEFAULT NULL,
  `apellido_doc` varchar(50) DEFAULT NULL,
  `edad_doc` date DEFAULT NULL,
  `fechanac_doc` int(11) DEFAULT NULL,
  `pais_doc` varchar(15) DEFAULT NULL,
  `ciudad_doc` varchar(15) DEFAULT NULL,
  `provincia_doc` varchar(15) DEFAULT NULL,
  `telefono_doc` int(11) DEFAULT NULL,
  `direccion_doc` varchar(50) DEFAULT NULL,
  `sexo_doc` varchar(10) DEFAULT NULL,
  `profesion_doc` varchar(20) DEFAULT NULL,
  `posgrados_doc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `nombre_mod` varchar(50) NOT NULL,
  `semestre` int(11) NOT NULL,
  `inicio_mod` date NOT NULL,
  `termino_mod` date NOT NULL,
  `sede` varchar(20) NOT NULL,
  `bloque` varchar(10) NOT NULL,
  `sala` varchar(10) NOT NULL,
  `cod_mod` varchar(40) NOT NULL,
  `rut_doc` varchar(15) DEFAULT NULL,
  `cod_notas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `cod_notas` varchar(20) NOT NULL,
  `ev_1` float DEFAULT NULL,
  `ev_2` float DEFAULT NULL,
  `ev_3` float DEFAULT NULL,
  `ex_1` float DEFAULT NULL,
  `ex_2` float DEFAULT NULL,
  `nota_final_estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `rut_p` varchar(15) NOT NULL,
  `nombre_p` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(50) DEFAULT NULL,
  `profesion_p` varchar(20) DEFAULT NULL,
  `telefono_p` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usuario_adm`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`rut_a`),
  ADD KEY `rut_p` (`rut_p`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`rut_doc`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`cod_mod`),
  ADD UNIQUE KEY `nombre_mod` (`nombre_mod`),
  ADD KEY `rut_doc` (`rut_doc`),
  ADD KEY `cod_notas` (`cod_notas`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`cod_notas`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`rut_p`),
  ADD UNIQUE KEY `rut_p` (`rut_p`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`rut_p`) REFERENCES `padres` (`rut_p`);

--
-- Filtros para la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`rut_doc`) REFERENCES `docentes` (`rut_doc`),
  ADD CONSTRAINT `modulo_ibfk_2` FOREIGN KEY (`cod_notas`) REFERENCES `notas` (`cod_notas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
