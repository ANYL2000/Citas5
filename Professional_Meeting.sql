-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 00:03:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicalmeeting`
--
CREATE SCHEMA IF NOT EXISTS `professionalmeeting` DEFAULT CHARACTER SET utf8 ;
USE `professionalmeeting` ;
-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mostrar_cita`
--

CREATE TABLE `mostrar_cita` (
  `idCita`  int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Hora` varchar(60) NOT NULL,
    `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Contacto` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_usuarios`
--

CREATE TABLE `cuentas_usuarios` (
  `idUsuario` int(11)  NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuentas_usuarios`
--

INSERT INTO `cuentas_usuarios` (`idUsuario`,`Usuario`, `Contra`) VALUES
(1,'Administrador', '8cb2237d0679ca88db6464eac60da96345513964'),
(2,'Usuario', '00000');



--
-- Estructura de tabla para la tabla `correo_remitente`
--

CREATE TABLE `correo_remitente` (
  `idUsuario` int(11) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contra` BLOB NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Estructura de tabla para la tabla `registrar_cita`
--

CREATE TABLE `registrar_cita` (
  `idCita` int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Hora` varchar(60) NOT NULL,
  `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Estructura de tabla para la tabla `pacientes_reservados`
--

CREATE TABLE `pacientes_reservados` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(100) NOT NULL,
  `Hora` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indices de la tabla `pacientes_reservados`
--
ALTER TABLE `pacientes_reservados`
  ADD PRIMARY KEY (`idUsuarios`);

  --
-- Indices de la tabla `registrar_cita`
--
ALTER TABLE `registrar_cita`
  ADD PRIMARY KEY (`idCita`);


  --
-- Indices de la tabla `correo_remitente`
--
ALTER TABLE `correo_remitente`
  ADD PRIMARY KEY (`idUsuario`);

  --
-- Indices de la tabla `cuentas_usuarios`
--
ALTER TABLE `cuentas_usuarios`
  ADD PRIMARY KEY (`idUsuario`);


  --
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idUsuarios`);


  --
-- Indices de la tabla `mostrar_cita`
--
ALTER TABLE `mostrar_cita`
  ADD PRIMARY KEY (`idCita`);


  --
-- AUTO_INCREMENT de la tabla `pacientes_reservados`
--
ALTER TABLE `pacientes_reservados`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT;

  --
-- AUTO_INCREMENT de la tabla `registrar_cita`
--
ALTER TABLE `registrar_cita`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT;


  --
-- AUTO_INCREMENT de la tabla `correo_remitente`
--
ALTER TABLE `correo_remitente`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;


  --
-- AUTO_INCREMENT de la tabla `cuentas_usuarios`
--
ALTER TABLE `cuentas_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;


  --
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT;


  --
-- AUTO_INCREMENT de la tabla `mostrar_cita`
--
ALTER TABLE `mostrar_cita`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT;