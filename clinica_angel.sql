-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2024 a las 01:02:15
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
-- Base de datos: `clinica_angel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `login` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`login`, `clave`) VALUES
('Beatriz', '123B'),
('Kelly', '123K'),
('David', '123D'),
('Micaela', '123M'),
('Patrick', '123P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `id_doctor` char(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_p` varchar(100) NOT NULL,
  `apellido_m` varchar(100) NOT NULL,
  `id_especialidad` char(3) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `dni` char(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `celular` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`id_doctor`, `nombre`, `apellido_p`, `apellido_m`, `id_especialidad`, `direccion`, `dni`, `email`, `celular`) VALUES
('001', 'Sebastian', 'Garcia', 'Rodriguez', '001', 'Av. Joaquin Madrid ', '74608856', 'sgarcia@gmail.com', '986478523'),
('002', 'Patricia', 'Lopez', 'Gonzalez', '002', 'Av. Modesto Reynoso', '74608856', 'plopez@gmail.com', '963258741'),
('003', 'Carlos', 'Hernandez', 'Martinez', '004', 'Av. Brasil', '78658856', 'cmartinez@gmail.com', '978258541'),
('004', 'Isabel', 'Ramirez', 'Torres', '003', 'Av. Santiago', '72655856', 'itorres@gmail.com', '928558841'),
('005', 'Luis', 'Diaz', 'Castro', '005', 'Av. Moncell', '09383526', 'ldiaz@gmail.com', '922451123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialida` char(3) NOT NULL,
  `especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialida`, `especialidad`) VALUES
('001', 'Cardiología'),
('002', 'Cirugía general\r\n'),
('003', 'Dermatología'),
('004', 'Endocrinología'),
('005', 'Gastroenterología'),
('006', 'Ginecología y obstetricia\r\n'),
('007', 'Medicina general\r\n'),
('008', 'Medicina interna\r\n'),
('009', 'Medicina física y rehabilitación\r\n'),
('010', 'Neumología'),
('011', 'Oftalmología'),
('012', 'Psiquiatría'),
('013', 'Radiología'),
('014', 'Urología'),
('015', 'Anestesiología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica`
--

CREATE TABLE `historia_clinica` (
  `id_historiaclinica` char(3) NOT NULL,
  `id_paciente` char(3) NOT NULL,
  `id_doctor` char(3) NOT NULL,
  `fecha` date NOT NULL,
  `id_especialidad` char(3) NOT NULL,
  `alergia` varchar(100) NOT NULL,
  `diagnostico` varchar(100) NOT NULL,
  `examen_laboratorio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historia_clinica`
--

INSERT INTO `historia_clinica` (`id_historiaclinica`, `id_paciente`, `id_doctor`, `fecha`, `id_especialidad`, `alergia`, `diagnostico`, `examen_laboratorio`) VALUES
('001', '001', '005', '2024-03-12', '009', 'Polvo', 'VIH', 'NO'),
('002', '003', '002', '2024-03-01', '004', 'No', 'Cancer', 'NO'),
('003', '004', '003', '2024-01-09', '011', 'Bichos', 'Nada', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` char(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_p` varchar(100) NOT NULL,
  `apellido_m` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `celular` char(9) NOT NULL,
  `dni` char(8) NOT NULL,
  `sexo` char(2) NOT NULL,
  `id_historial_clinico` char(3) NOT NULL,
  `fec_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nombre`, `apellido_p`, `apellido_m`, `direccion`, `celular`, `dni`, `sexo`, `id_historial_clinico`, `fec_nacimiento`) VALUES
('001', 'Beatriz', 'Escobar', 'Quispe', 'Paraiso de Cajamarquilla', '917864610', '75914115', '01', '001', '2014-05-20'),
('002', 'David', 'Rivera', 'Espinoza', 'Ventanilla', '999888111', '75896565', '02', '002', '2004-05-19'),
('003', 'Patrick', 'Aliaga', 'Davila', 'Chaclacayo', '918522369', '73359648', '02', '003', '2024-05-24'),
('004', 'Micaela', 'Javier', 'Gutierrez', 'Ate', '917666444', '75919836', '01', '004', '2005-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_p` varchar(100) NOT NULL,
  `apellido_m` varchar(100) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `sexo` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `nombre`, `apellido_p`, `apellido_m`, `dni`, `sexo`) VALUES
('david@gmail.com', 'David', 'Rivera', 'Espinoza', '12455698', '02'),
('beatriz@gmail.com', 'Beatriz', 'Escobar ', 'Quispe ', '15689637', '01'),
('kelly@gmail.com', 'Kelly', 'Esteban ', 'Manco ', '12354698', '01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialida`);

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id_historiaclinica`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
