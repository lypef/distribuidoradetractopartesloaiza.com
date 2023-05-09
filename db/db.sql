-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-03-2023 a las 06:58:50
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id19676915_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id`, `nombre`, `ubicacion`, `telefono`) VALUES
(1, 'PABLO', '20 DE NOVIEMBRE 324, COL BARRIO DE LAS FLORES', '2377602'),
(2, 'BENITO', 'PARQUE JUAREZ NO. 9, COL CENTRO', '2372928'),
(3, 'CLTA DD', 'CONTRUCTORA Y DISTRIBUIDORA DE SOFTWARE', '9231200505');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `annuities`
--

CREATE TABLE `annuities` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `concepto` varchar(254) NOT NULL,
  `price` float NOT NULL,
  `date_ini` datetime NOT NULL DEFAULT current_timestamp(),
  `date_last` datetime NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `annuities`
--

INSERT INTO `annuities` (`id`, `client`, `concepto`, `price`, `date_ini`, `date_last`, `active`) VALUES
(6, 212, 'Anualidad CFDI', 1900, '2019-03-29 12:00:00', '2022-03-29 16:39:30', 0),
(7, 213, 'Anualidad CFDI', 1900, '2019-04-17 12:00:00', '2022-04-17 16:39:37', 1),
(9, 215, 'Anualidad CFDI', 1900, '2019-09-01 12:00:00', '2022-10-11 20:08:59', 1),
(10, 199, 'Anualidad CFDI', 1900, '2019-10-30 14:37:47', '2022-10-25 00:28:49', 1),
(13, 277, 'Anualidad CFDI , CABB891111CL8', 1900, '2020-02-21 11:02:15', '2022-02-21 11:02:15', 0),
(24, 359, 'Anualidad CFEDI', 1900, '2021-03-22 00:40:48', '2022-03-22 00:40:48', 0),
(26, 292, 'ANUALIDAD CFDI RFC: SHE200929S97', 1900, '2021-04-28 18:38:13', '2022-04-28 18:38:13', 1),
(28, 348, 'CFDI ANUALIDAD GAGJ8209199N7 $ 1900', 1900, '2021-05-29 12:17:05', '2022-05-29 12:17:05', 1),
(29, 399, 'Anualidad Cfdi VAFM9006263B8 ', 600, '2022-07-02 05:44:56', '2022-07-02 05:44:56', 1),
(30, 400, 'Anualidad CFDI LLO181123B25 ', 1900, '2022-03-10 06:06:44', '2023-03-23 20:16:59', 1),
(31, 405, 'Anualidad Ctrl Socios lic: 120220212163825', 2800, '2022-02-12 06:54:47', '2023-02-21 18:49:25', 1),
(32, 419, 'CTRL SOCIOS LIC: 250820220449', 2400, '2022-10-09 16:03:59', '2022-10-09 16:03:59', 1),
(35, 274, 'Anualidad Control de Socios', 600, '2022-11-08 17:33:37', '2022-11-08 17:33:37', 1),
(36, 436, 'servidor elsolhotel.com', 1900, '2022-07-01 18:23:33', '2022-07-01 18:23:34', 1),
(37, 437, 'quepeso.com', 1900, '2022-09-01 18:30:26', '2022-09-01 18:30:26', 1),
(38, 219, 'alparied.com.mx', 700, '2020-12-01 18:31:03', '2022-12-26 19:48:31', 1),
(39, 182, 'inmobiliariabkl.com', 1900, '2021-10-18 18:31:39', '2022-10-18 18:31:39', 1),
(40, 290, 'creditoscafetos.com', 1999, '2020-03-01 18:32:50', '2022-03-01 18:32:50', 0),
(42, 210, 'DTP191016P83 RFC', 1500, '2022-12-28 17:46:14', '2022-12-28 17:46:14', 1),
(43, 210, 'LOLA560503FU9 RFC', 1500, '2022-12-28 17:46:35', '2022-12-28 17:46:35', 1),
(44, 448, 'ANUALIDAD CTRL SOCIOS', 2500, '2023-01-02 22:12:55', '2023-01-02 22:12:55', 1),
(45, 448, 'ANUALIDAD CTRL SOCIOS', 2500, '2022-02-18 22:13:35', '2023-02-21 19:12:07', 1),
(46, 448, 'LIC CONTROL DE SOCIOS', 2500, '2023-01-30 20:00:54', '2023-01-30 20:00:54', 1),
(47, 210, 'Anualidad CFDI FerreLucy', 1500, '2023-02-10 20:00:32', '2023-02-10 20:00:32', 1),
(49, 448, 'control de socios 120230318183303', 2000, '2023-03-18 19:09:35', '2023-03-18 19:09:35', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL DEFAULT '',
  `telefono` varchar(254) NOT NULL,
  `descuento` int(11) NOT NULL,
  `rfc` varchar(254) NOT NULL DEFAULT '',
  `razon_social` varchar(254) NOT NULL DEFAULT '',
  `correo` varchar(254) NOT NULL,
  `prospecto` tinyint(1) NOT NULL DEFAULT 0,
  `interes` varchar(254) NOT NULL DEFAULT '',
  `c_entero_nosotros` varchar(254) NOT NULL DEFAULT '',
  `user` int(11) NOT NULL,
  `creado` date NOT NULL,
  `clasificacion` varchar(254) NOT NULL DEFAULT 'B',
  `r_fiscal` int(11) NOT NULL,
  `d_fiscal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nombre`, `direccion`, `telefono`, `descuento`, `rfc`, `razon_social`, `correo`, `prospecto`, `interes`, `c_entero_nosotros`, `user`, `creado`, `clasificacion`, `r_fiscal`, `d_fiscal`) VALUES
(1, 'PUBLICO EN GENERAL', 'Dirección de cliente demo ', '923120050', 0, 'XAXX010101000', 'PUBLICO EN GENERAL', 'cyberchoapas@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 616, 96980),
(154, 'CARLOS CUEVAS', 'CORDILLERA HIMALAYA 3961  COLINAS DEL PONIENTE  QUERETARO, QRO', '+52 1 442 173 2721', 15, 'GYM081030CJ3', 'GYMSPORT SA DE CV', 'carlos.gymsport@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(155, 'RICARDO ALONSO AVILA', '', '55 2726 5055', 15, 'AOAR9110234A9', 'RICARDO ALONSO AVILA', 'rikrdometal@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(158, 'Maestro Elier', '', '9231056364', 0, '', '', 'elhackers2013@HOTMAIL.COM', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(159, 'JORGE BENITEZ | ISA INDUSTRIAL', '', '', 0, '', 'ISA INDUSTRIAL', 'jbenitezhdz@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(161, 'MARIO ALBERTO BARAJAS', '', '+52 1 6181335695', 0, '', '', 'mario.barajas@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(162, 'Francisco Herrera Arriaga', '', '', 15, '', '', 'zhero49@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(163, 'LUIS ENRIQUE ALVAREZ ', '', '', 0, '', '', 'luenalgo@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(164, 'BEULAH VIRIDIANA CAMARILLO', '', '', 0, '', 'COMPUNET', 'viridiana.camarillo@compunetmexico.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(167, 'ENRIQUE JAVIER GUZMAN DE LA CRUZ', '', '', 0, '', 'U. TEC. GUTIERREZ SAMORA', 'enrique.guzman@utgz.edu.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(168, 'FRANCISCO OLVERA', '', '', 0, '', '', 'folveras@icloud.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(169, 'DIEGO CORONA ZAMBRANO', '', '', 0, '', '', 'diego.corona18@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(170, 'GUILLERMO PRIETO GERONIMO', '', '', 0, '', '', 'memoprieto3010@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(179, 'SOFIA VAZQUES MORALES', '20 DE NOVIEMBRE , FNT. COPPEL', '', 0, '', 'OPTICA IRAIS', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(180, 'JORGE SIERRA NERIA', '', '', 0, 'SINJ931227923', 'JORGE SIERRA NERIA', 'j.sierra3113@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(181, 'JHONATAN IVAN SANTOYO MATEO', '', '', 0, '', '', 'jivansantoyo@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(182, 'ABRAHAM IVAN CAMACHO MOJICA', '', '', 15, '', '', 'inmobiliariabkl@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(183, 'Javier OSORIO IBARRA ', '', '', 0, '', '', 'javier_osorio_ibarra@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(184, 'ISC.  EDGAR MeNDEZ ', '', '', 0, 'IVD990911KU1', 'INSTITUTO VERACRUZANO DEL DEPORTE SIN TIPO DE SOCIEDAD', 'edgarmendez1087@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(185, 'JOSE DE JESUS GONZALES REYNA', '', '', 0, '', '', 'pumagym1987@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(186, 'MAURICIO MENA VALDIVIA ', '', '', 0, '', '', 'maurmenav@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(187, 'PABLO HERNANDEZ VILLARREAL', '', '', 0, 'GAV970331L29', 'GRUAS Y TRANSPORTES VELASQUEZ S.A DE C.V', 'guillermo.gonzales@gavsa.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(188, ' FERNANDO MIGUEL FLORES MARTINEZ', '', '', 0, '', '', 'nokian95nam@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(189, 'CITLALI ALVAREZ', '', '', 0, '', '', 'citlali_cesar@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(190, 'RAFAEL DAVID MATEO', '', '', 0, '', '', 'El-deivi02@live.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(191, 'STIVEN GONZALEZ GUARIN', '', '', 0, '', '', 'stivengg90@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(192, 'JOSE ALBERTO MONTENEGRO RAMIREZ', '', '', 0, '', '', 'beda.montenegro@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(194, 'ISAAC SIERRA', '', '', 0, '', '', 'sierraisaac01@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(195, 'LAWRENCE OLIVARES', '', '', 0, '', '', 'lawrencediaz2219@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(196, 'LUIS ZAMBRANO', '', '', 0, '', '', 'Luisillo515@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(197, 'JOSE ERNESTO HERNANDEZ HERNANDEZ', '', '', 0, '', '', 'je_250810@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(198, 'MILANO', '', '', 0, 'DIS880803JW8', 'MILANO OPERADORA S.A DE C.V', 'zuri0717@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(199, 'MARCO ANTONIO AYALA GUDIÑO', '', '+523411032691', 0, 'AAGM700914547', 'Marco Antonio Ayala Gudiño ', 'alp.ingeniero@gmail.com,kalihotel@outlook.es', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(200, 'HOTEL CASA ROMA', '', '', 0, 'AATD781127MZ8', 'DANIA ELIBETH ALARCON TOVAR ', 'Hotelcasaroma@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(201, 'ARTURO GALLARDO MEDINA', '', '', 0, '', '', 'ar.gallardo.m@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(202, 'HOMERO CHAVEZ ', '', '', 0, '', '', 'hchavezm9@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(203, 'CARLOS EDUARDO NAVA CUELLAR ', '', '', 0, '', '', 'Carloseduardo_nava@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(205, 'MIGUE PANTIGA', '', '', 0, '', '', 'cp_pantiga@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(206, 'HECTOR LOMAS ', '', '', 0, '', '', 'ecko_dnc@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(207, 'GERMáN HERNáNDEZ BLANCAS ', '', '', 0, '', '', 'german.h.b@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(208, 'ISIDORA IRMA BAUTISTA VELAZQUEZ', '', '', 0, 'BAVI5404043C1', 'ISIDORA IRMA BAUTISTA VELAZQUEZ', 'livsanchez@msn.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(210, 'ALFONSO LOAIZA LOEZA ', '', '', 0, '', '', 'alfonsoloaiza@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(211, 'HOTEL PLAYA DEL REY', '', '', 0, 'RIM1707126W2', 'RIMCLAT, S.A. DE C.V.', 'brendaplayadelrey@gmail.com,recepcion@hotelplayadelrey.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(212, 'LUZ MARIA MEDINA MUCIÑO', '', '+52 7731998020', 0, 'MEML580110KYA', 'LUZ MARIA MEDINA MUCIÑO', 'mego5604@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(213, 'ANABELL CORDOVA LORETO', '', '', 0, 'COLA920825DY7', 'ANABELL CORDOVA LORETO', 'francisco.macias@grupomacogas.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(214, 'HOTEL SAN JOSE TEXMELUCAN', '', '', 0, '', '', 'hoteles.restaurantes.smt@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(215, 'HOTEL CASA DE LOS ROMBOS', '', '+528341677610', 0, 'CAD1709061CA', 'CIUDAD ANTIGUA DESARROLLOS DE INVERSION SA DE CV', 'enlacearq.conta@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(216, 'TITO CALLEJA LOPEZ', '', '', 0, '', '', 'remodelacionescalleja@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(217, 'Rafael Pinto', '', '', 0, '', '', 'bootcampuy@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(218, 'IVAN FERNANDEZ', '', '', 40, '', '', 'ministeriumcr@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(219, 'ING. GILBERTO RAMíREZ CORREA', '', '', 0, '', 'SOFTBOX ZACATECAS', 'softboxzac@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(220, 'ALBERTO GALLEGOS GODINEZ ', '', '', 0, '', '', 'soporte.08.89@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(221, 'KARLA MUñOZ', '', '', 0, '', '', 'kam_24_8@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(222, ' ING. JOSE LUIS CELAYA', '', '', 0, '', '', 'direccion@grupoabys.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(223, 'FRANKLYN CRISOSTOMO LUCIANO', '', '', 0, '', '', 'crisostomofranklin@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(224, 'TOMAS ANTONIO ARIAS', '', '', 0, '', '', 'gamer-antonio@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(225, 'STAR ZONE GYM', '', '', 0, '', '', 'delamazaleon17@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(226, ' CARLOS IVAN DUARTE MEJíA', '', '', 0, '', '', 'carlos_ivan_mej@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 624, 0),
(227, 'LUIS MONDRAGON', '', '', 0, '', '', 'lmondragon00@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(228, 'JULIO CESAR CABALLERO FERNANDEZ', '', '', 0, 'CAFJ880722J74', 'JULIO CESAR CABALLERO FERNANDEZ', 'Juliocaballero2001@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(229, 'MYHOTEL SPA', ' COMERCIAL: KENNEDY 3886, VITACURA, SANTIAGO, CHILE', '', 0, 'RUT: 76.377.708-1', ' DESARROLLO Y COMERCIALIZACIóN DE SOFTWARE MYHOTEL SPA', 'cobranza@myhotel.com.es', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(230, 'NINA STRUNK', '', '', 0, '', '', 'nilou.h@web.de', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(231, 'SUSANA JIMEVILLA', '', '', 0, '', '', 'confeccionesjimevilla@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(232, 'JESUS ALVARADO', '', '', 0, '', '', 'jesus.chivas64@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(233, 'JULIO O. CALDERóN PACHECO', '', '', 0, '', '', 'julio-pacheco@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(234, 'CESAR ORTEGA MAYA', '', '', 0, '', 'SCOM GYM', 'comsesar@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(240, 'LUIS NAVARRETE', '', '', 0, 'TBC121206PD0', 'Title Boxing Club SA DE CV', 'luis.navarrete@titleboxingclub.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(241, 'JULIO ANAYA', '', '', 0, '', '', 'julio.jesus@metasoftica.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(242, 'LEONARDO CUEVAS ', '', '', 15, '', 'INSSOLC', 'cuevas2708@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(243, 'BRYAN AURELIANO MARTIN TOSTADO', '', '', 0, '', 'HECTOR MARTíN TOSTADO', 'Bryan_Aureliano@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(244, 'ROGELIO VAZQUEZ NEVÁREZ ', '', '', 0, 'VANR830811S35', 'ROGELIO VAZQUEZ NEVÁREZ', 'pctecnicajuarez@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(245, 'MARIELA REYES PIMENTEL', '', '', 0, 'REPM761023TY4', 'MARIELA REYES PIMENTEL', 'berelchoapas@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(246, 'SMY GYM FITNESS', '', '', 0, '', 'SMY GYM FITNESS', 'smy.gym.oficial@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(247, 'LEOPOLDO SALAZAR VAZQUEZ', '', '', 0, '', '', 'ventas@secutam.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(248, 'CéSAR ORTEGA MAYA', '', '', 0, '', '', 'comsesar@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(249, 'DANIEL MARQUEZ', '', '', 0, '', '', 'marquez.fm@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(250, 'CARLOS YANUARIO AVILA CHI', '', '', 0, '', '', 'lc.carlosavila@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(251, 'NEFI GARCES ARVIZU', '', '', 0, '', 'NEFI GARCES ARVIZU', 'negazu16@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(252, 'JAIME GOMAR MUNGUIA ', '', '', 0, 'GOTJ5607265E3', 'Jaime gomar torres ', 'jimygom@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(253, 'KEVIN ANTONIO REYNOSO ALONSO', '', '', 0, 'REAK940430BD3', 'KEVIN ANTONIO REYNOSO ALONSO', 'elias.fdzb@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(254, 'GEPSO TECNOLOGíA EN PREVENCIóN AVANZADA S.A. DE C.V.', '', '', 0, 'GTP0608074V0', 'GEPSO TECNOLOGíA EN PREVENCIóN AVANZADA S.A. DE C.V.', 'grupo.pozos@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(255, 'GABRIEL AGUIRRE OLVERA', '', '', 0, '', '', 'gabriel.aguirre@vinte.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(256, 'ADRIAN GUSTAVO MAMANI CARO', '', '', 0, '', 'ATOMIC GYM', 'mamanicaroo@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(257, 'ANA KAREN GUDIñO DE LEóN ', '', '', 0, '', '', 'fco.reyes.ochoa@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(258, 'ANA PATRICIA CORDOVA OLAN ', '', '', 0, 'COOA891108KE3', 'ANA PATRICIA CORDOVA OLAN ', 'senusa@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(259, 'GUZMAN JORGE QUISPE HUAMANI', '', '', 0, '', '', 'jorgequispe.huamani@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(260, 'JUDITH GABRIELA QUISPE MARZE', '', '', 0, '', '', 'getfit031213@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(262, 'CHRISTIAN JAVAN HERNANDEZ', '', '', 0, '', '', 'Christian.javan@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(263, ' Juan fernando Ramírez Varela', '', '', 0, 'ravj700209ila', ' Juan fernando Ramírez Varela', 'yaid10@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(264, 'RAFAEL SOLANO TORRES', '', '', 0, '', '', 'rafael777s@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(265, 'JAHUDIEL TANORI', '', '', 0, '', 'MINING CAMP SOLUTIONS', 'miningcampsolutions@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(266, 'ECOFITNESS GYM', '', '', 0, '', '', 'ecofitness@live.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(268, 'DAVID DIAZ CRUZ', '', '', 0, '', '', 'wsdbolivia@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(269, 'SANDRA CORTEZ', '', '', 0, '', '', 'Sandruchis_yo@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(270, 'Cynthia Cristina Salazar Ruiz', '', '', 0, 'SARC650306NM3', 'Cynthia Cristina Salazar Ruiz', 'e.facturacion2018@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(271, 'JORGE AMADO SáNCHEZ', '', '', 0, '', '', 'ing.jorgeamado@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(272, 'MIGUEL FERNANDO LADINO PULIDO', '', '', 0, '', '', 'Miguel.ladino1548@correo.policia.gov.co', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(273, ' NESA SERVICIOS HOTELEROS SA DE CV', '', '', 0, 'NCO1404092F0', ' NESA SERVICIOS HOTELEROS SA DE CV', 'nesacom@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(274, 'HELENA PADILLA', '', '', 0, '', '', 'helena.lylu@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(275, 'AVELINO BENIGNO VILLA SALAS', '', '', 0, 'VISA391116P30', 'AVELINO BENIGNO VILLA SALAS', 'abvillasalas@aevitas.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(276, 'CESAR LUIS ABAD ESTUDILLO HUERTA', '', '', 0, '', '', 'cesarestudillo93@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(277, 'HOTEL PLAZA MANGOS', '', '+529381948232,+52 1 938 194 8232', 0, '', 'HOTEL PLAZA MANGOS', 'reservaciones@hotelplazamangos.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(278, 'DEBORA LIZETH SANCHEZ HERNANDEZ', '', '', 0, 'SAHD890607GZ2', 'DEBORA LIZETH SANCHEZ HERNANDEZ', 'rafaelrburguete@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(279, 'HOTEL CASA MARAN', '', '', 0, '', '', 'hotelcasamaran@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(280, 'JESUS EMMANUEL MORA', '', '', 0, '', '', 'alarmasmora@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(281, 'ANITA PAT MAGAÑA', '', '', 10, 'PAMA520104UA5', 'ANITA PAT MAGAÑA', 'Ventas.multicomputo@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(282, 'MARCELINO ALBERTO RAMíREZ MONTIEL ', '', '', 0, 'RAMM8608122B0', 'MARCELINO ALBERTO RAMíREZ MONTIEL ', 'ramirez.marcelino@gmail.com,contabilidad@promarco.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(283, 'YAMIR BENNETTS CAMPOS CORREO', '', '', 0, '', '', 'yamirbennetts@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(284, 'ISMAEL PARRA MARTíNEZ', '', '', 0, '', 'HOTEL CASA MARIANO', 'casamarianohotelboutique@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(285, 'SOPORTE ELEKTRA', '', '', 0, 'AIR080523UMA', 'ADMINISTRACION INTEGRAL DE REDES RI', 'seguimientos@rintegral.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(286, 'RICARDO AGUILAR ', '', '', 0, '', '', 'raguilar1037@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(287, 'ARTURO GALINDO BAZA', '', '733390990', 0, '', '', 'coronita212@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(288, 'RAúL ESTRADA SANTIAGO', '', '', 0, '', '', 'raulstradas@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(289, 'GREGORIO MELGAR ESPINOZA', '2A. AVENIDA NORTE 6, COL. CENTRO. CP 30700', '', 0, 'MEEG650312262', 'GREGORIO MELGAR ESPINOZA', 'elbarondetapachula@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(290, 'Servicio los Cafetos', 'calle del retorno entre carretera federal fortin- orizaba y 9 sur fortin  - centroAutopista Córdoba-Orizaba Km 290+750 S/N Córdoba, Ver.', '+522712433098', 0, 'GIC040830321', 'Servicio los Cafetos', 'rgarcia.cafetos@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(291, 'JOEL JIMENEZ PEREZ', '', '', 0, '', '', 'joeljperez@zoho.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(292, 'YESICA NOEMI JAIME RIOS', '', '', 0, '', '', 'yesica_jrios@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(293, 'CHRISTOPHER GERARDO PéREZ VARELA', '', '', 0, 'VAHL600421GW5', '', 'calzadodeportivoktto@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(294, 'GRUPO LASA MEX', '', '', 0, 'FOMG6103024A6', 'GUADALUPE FLORES MENDOZA', 'gerencia.general@grupolasamex.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(295, 'ING. DARINEL SANCHEZ LOPEZ', '', '', 0, '', 'CIBER MUNDO', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(296, 'VICTORIA MORGADO MARTINEZ', '', '', 5, '', 'CIBER GAME CASH', 'Cashgamer04@outlook.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(297, 'ELVIS DE LOS SANTOS', '', '8099827673', 0, '', 'Elvis sucurity', 'elvisdelossantos@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(298, 'ANTONIO CARRANZA VELAZQUEZ ', '', '', 0, 'CAVA460707EI8', 'ANTONIO CARRANZA VELAZQUEZ ', 'youngexcursionsmexico@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(299, 'CRISTIAN DANIEL GUZMAN DIAZ DE LEON', '', '', 0, '', '', 'danguz1324@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(301, 'MIGUEL BENITEZ VALENCIA', '', '', 0, 'OOS200206EV1', 'OXYGEN OSMI S.A.S', 'ma_valencia@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(302, 'FARMACIA GUADALAJARA, SA. DE C.V', '', '', 0, 'FGU830930PD3', 'FARMACIA GUADALAJARA, SA. DE C.V', 'jesusmonts90@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(303, 'MARIO SANDOVAL', '', '', 0, '', '', 'killer_jrloco@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(304, 'EDUARDO TOLENTINO PEREZ', '', '', 0, '', '', 'publicidad_en_metal@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(305, 'JAHUDIEL TANORI', '', '', 0, '', 'JAHUDIEL TANORI', 'jtanmar@live.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(306, 'NALLELY GASTELUM LEPRO', ' ', '', 0, '', 'LATINOS GYM', 'lunallely_7@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(307, 'NOTARIA 24', '', '', 0, '', 'NOTARIA 24', 'jjerez@n24ver.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(308, 'ROBERTO PEREZ', '', '', 0, '', 'ESC. RETER', 'betooo_1998@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(309, 'JOSé ORTEGA SáNCHEZ ', '', '', 0, '', 'JOSé ORTEGA SáNCHEZ ', 'josepe655@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(310, 'GUADALUPE CISNEROS', '', '', 0, '', 'HOTEL VALLARTA', 'lupitacf@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(311, 'SILVIA REYES QUIROZ ', '', '', 0, '', 'SILVIA REYES QUIROZ ', 'silviareyes02@yahoo.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(312, 'KEVIN OSWALDO NUñEZ LóPEZ', '', '', 0, '', 'GRAVITY GYM', 'oswaldonunezlopez@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(313, 'JAVIER SOTO ORDUÑO', '', '', 0, '', 'ALFA BODY GYM', 'javiersoto.abogado@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(314, 'PASTELERIA SESI GOURMET', '', '', 0, '', 'PASTELERIA SESI GOURMET', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(315, 'EDGAR ADAYA AGUIRRE', '', '', 0, '', 'DANGER GYM', 'danger2882@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(316, 'CITLALI ALONSO', '', '', 0, '', 'OH FITNESS GYM', 'lali_mayoreo@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(317, 'ROSA VASQUEZ', '', '', 0, '', 'ANIMARE GYM', 'rositavasquezrapanui@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(318, 'DANIEL ARRIAGA MEDINA', '', '', 0, '', 'JUNIOR GYM', 'arriaga0495@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(319, 'JOSUE DELGADO ULLOA', '', '', 0, '', 'COLOMBUS GYM', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(321, 'LUIS CRUZ MENDEZ (120200619184843)', '', '', 0, '', 'LUIS CRUZ MENDEZ ', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(322, 'BENJAMIN RODRIGUEZ', '', '', 0, '', 'BENJAMIN RODRIGUEZ', 'r.h.benjamin@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(323, 'ELVIS DE LOS SANTOS DE LOS SANTOS', 'CALLE 13 #105 SECTOR 27 FEBRERO', '18099827673', 0, '', 'ELVIS SECURITY', 'elvisdelossantos@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(324, 'NORMAN PEñA ESPINOSA', '', '', 0, '', 'ZONA BOX', 'chots15@hotmail.con', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(325, 'MARIA DEL CARMEN MENDEZ PONCE', '', '', 0, '', 'CASA DE JUAN HOSTAL', 'casadejuanhostal@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(326, 'COMERCIALIZADORA FARMACEUTICA DE CHIAPAS SAPI DE CV', '', '', 0, '', '', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(327, 'MARIO PEREZ PLATA', '', '5540055290', 0, 'PEPM6805232E5', 'MARIO PEREZ PLATA', 'coinsis@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(328, 'MAXXIM INDUSTRIES, S.A. DE C.V.', '', '', 0, '', '', 'Noel@maxximindustries.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(329, 'EVA HASAN TORRES', '', '', 0, '', 'EVA HASAN TORRES', 'evaminimalfitnessclub@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(330, 'URBANO GALLEGOS', '', '', 0, '', 'CASCADA  GARRUÑO', 'lacascadacal@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(331, 'JOSé LUIS GARCíA', '', '', 0, '', 'JOSé LUIS GARCíA', 'gabe2409@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(332, 'BRAULIO CHAGILA', '', '', 0, '', '', 'brlchgll@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(333, 'YADIRA MIKELLY JUAREZ', '', '', 0, '', 'BODYPOMP GYM', 'mikelly8090@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(334, 'ROSA ELENA MERINO', '', '', 0, '', 'BAJACOM SERVICIOS INFORMATICOS', 'administracion@bajacom.net', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(335, 'BERNARDO VáZQUEZ MORALES ', '', '', 0, '', 'FIT GYM', 'dulcilandia_mich@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(336, 'MAURICIO MARTíNEZ RODRíGUEZ', '', '', 0, '', 'CCA CONSULTORíA, CONTABILIDAD Y ADMINISTRACIóN', 'mmrikmh@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(337, 'FERNANDO QUETZALCóATL MOCTEZUMA PEREDA', '', '', 0, '', '', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(338, 'BEATRIZ SANCHEZ GARCIA ', '', '', 0, '', 'HOTEL DALIAS SUITES ACAPULCO ', 'hoteldaliascentro@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(339, 'JESSICA LOPEZ REYES', '', '', 0, '', 'ELITE FITNESS', 'jessiclopez27@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(340, 'BAYRON ZABALA', '', '', 0, 'B&G BAGELS CATERING', '', 'bgbagels@optimum.net', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(341, 'ROSARIO OVIEDO', '', '4423536517', 0, '', '', 'rosario.oviedo@siasd.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(343, 'KAREN FERNáNDEZ PEGUERO ', '', '', 0, '', ' KF SPORT GYM', 'kfsportgym@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(344, 'ARMANDO CERVERA', '', '', 0, '', 'RHINO GYM', 'armando_jcl@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(345, 'CIVILTA CONSTRUCCIONES INTEGRALES S.A. DE C.V', '', '', 0, 'CCI050623RT9', 'CIVILTA CONSTRUCCIONES INTEGRALES S.A. DE C.V', 'arturocivil2@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(346, 'DIMITRI CANO SIERRA', '', '', 0, '', '', 'digicom_tech@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(347, 'LIC. CRISTINA', '', '', 0, '', 'NOTARIA 24', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(348, 'JORGE LUIS GARZA GUAJARDO', '', '+52 1 81 1065 6665', 0, 'GAGJ8209199N7', 'JORGE LUIS GARZA GUAJARDO', 'elprincipalhotel@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(349, 'ARMANDO ARTURO BARRERA ARJONA', '', '', 0, '', 'EXPLOSIVE FITNESS & HEALTHY CENTER', 'barrera.arjona@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(350, 'ICG GROUP S.A. DE C.V.', '', '', 0, 'IGR030825FX7', 'ICG GROUP S.A. DE C.V.', 'Ygarcia@icggroup.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(354, 'ADRIANA HERNANDEZ CHAPA', '', '', 0, '', 'MOTEL EL DESEO ', 'eldeseo_motel@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(355, 'JUAN JOSE GIRON QUIÑONES', '', '', 0, '', '', 'juanjomex@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(357, 'ORLANDO SANCHEZ', '', '', 0, '', 'CARIBBEAN TOP TEAM', 'tiky95pr@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(358, 'ADRIANA LIZBETH VARGAS RAMOS ', '', '', 0, '', 'TRáMITES ARLITZ ', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(359, 'CARALAMPIA DEL CARMEN GORDILLO ABADIA', '', '', 0, '', 'HOTEL PUERTA SUR ', 'jguilleng@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(360, 'JULIO CéSAR GUILLEN GORDILLO', '', '', 0, '', 'PICA ALITAS ', 'jguilleng@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(361, 'ALEJANDRO BUSTOS', '', '', 0, '', 'LBR FIT', 'arqaobg@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(362, 'SANDRA LIZBETH FABIAN GONZáLEZ', '', '', 0, '', 'VIDA FITNESS GYM', 'Lizbethprincess2008@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(363, 'MOISES SAENZ ESCOBAR', '', '', 0, '', 'SUBLIMINAL GYM', 'MOISESESCOBAR09@GMAIL.COM', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(366, 'ANGELO RAMIREZ GARCIA', '', '', 0, '', 'ANGELO RAMIREZ GARCIA', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(367, 'FRANCIS MOLINA GAMBOA', '', '', 0, '', 'BLACK GYM', 'Gamboa_sanchez@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(368, 'ANTONIO VIRTO', '', '', 0, '', '', 'antoniovirto@hitocampamentos.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(369, 'ROSI FERNáNDEZ', '', '', 0, '', 'HOTEL GUADALAJARA EXPRESS', 'Hotelguadalajaraexpress@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(371, 'LUIS FERNANDO ZAMORA GUTIERREZ', '', '', 0, '', ' KRATOS   GYM', 'cpfzamora@yahoo.com.mx', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(372, 'HITO EXPLORACIONES Y PERFORACIONES BB S DE RL DE CV ', '', '', 0, 'HEP1002045TA', 'HITO EXPLORACIONES Y PERFORACIONES BB S DE RL DE CV ', 'ivettescalante1@hotmail.con', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(373, 'CIBER HIDALGO', '', '', 0, '', 'CIBER HIDALGO', '', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(374, 'DANIEL VALENTIN CABRALES GOMEZ', '', '', 0, '', 'SOLUCIONES DEPORTIVAS DE TABASCO SA DE CV', 'sdtabasco@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(375, 'RAUL PEñA BUENROSTRO', '', '', 0, '', 'VOLUTION FITNESS', 'acuarius.rulz@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(379, 'GERARDO JUAREZ CUELLAR', '', '', 0, '', 'GOLDS GYM SPORT', 'gerardojuarezcuellar@hotmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(390, 'GLORIA LOPEZ TORRES', '', '+52 919 177 5869', 0, '', 'HOTEL GEMINIS', 'roko250498@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(394, 'ORGANISMO PUBLICO LOCAL ELECTORAL', '', '', 0, 'IEV940922512', 'ORGANISMO PUBLICO LOCAL ELECTORAL', 'llinas98@hotmail.com,crrosenda@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 0, 0),
(397, 'CARLOS GARCIA', '', '+52 1 981 105 9321', 0, '', 'Hotel dubai inn & suites', '', 0, '', 'Google', 1, '2022-10-08', 'B', 0, 0),
(398, 'RRV', '', '5213311728607', 0, '', '', '', 0, '', '', 1, '2022-10-08', 'B', 0, 0),
(399, 'MARIBEL VALDOVINOS FARIAS ', '', '529811059321', 0, 'VAFM9006263B8 ', 'MARIBEL VALDOVINOS FARIAS ', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(400, 'HOTEL H ROOMS', '', '523521254235', 0, 'LLO181123B25 ', 'LOGISTICA LOX, S.A. DE C.V', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(405, 'BODY CONCEPT', '', '+52 229 432 4995', 0, '', '', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(408, 'DANIEL OROPEZA LARA', '', '525547872536', 0, '', '', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(418, 'JOAQUIN ENRIQUE GALARZA', '', '525545494948', 0, '', '', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(419, 'GYM ATOMIC', '', '5215612070134', 0, '', '', '', 0, '', '', 1, '2022-10-09', 'B', 0, 0),
(420, 'MARIA ISABEL RODRIGUEZ', '', '5219231381730', 0, '', '', '', 0, '', '', 1, '2022-10-12', 'B', 0, 0),
(421, 'VANESSA MOY', '', '', 0, '', '', '', 0, '', '', 1, '2022-10-13', 'B', 0, 0),
(422, 'ING. JORGE GOMEZ', '', '+5213339449759', 0, '', '', '', 0, 'Sistema Hotelero', 'Google', 1, '2022-10-13', 'B', 0, 0),
(424, 'BOPPARP', '', '525526521410', 0, '', 'BOPPARP', '', 0, '', '', 1, '2022-10-18', 'B', 0, 0),
(426, 'CHRISTIAN FERNANDO WICAB MONTOYA', '', '5219981170056', 0, '', 'ALTO VOLTAJE GYM', 'krisyaa23@gmail.com', 0, '', '', 1, '2022-10-21', 'B', 0, 0),
(427, 'Francisco Javier Holguin Garcia', '', '5216491149315', 0, '', 'HOTEL MELINA', '', 0, '', '', 1, '2022-10-30', 'B', 0, 0),
(428, 'ANA KAREN GUDIñO DE LEON', '', '', 0, '', '', '', 0, '', '', 1, '2022-11-04', 'B', 0, 0),
(432, 'MANUEL EDUARDO MUñOZ ', '', '+524423305101', 0, '', 'Manuel Eduardo Muñoz ', 'munozmancillamanueleduardo@gmail.com', 0, '', 'Tienda', 1, '2022-11-08', 'B', 0, 0),
(433, 'EMGMFIT SAS DE CV', '', '', 0, '', '', '', 0, '', 'Tienda', 1, '2022-11-15', 'B', 0, 0),
(435, 'OSCAR MOJICA', '', '+52 1 352 125 4388', 0, '', 'Olimpo Gym', 'oscarmojica@hotmail.com', 0, '', 'Tienda', 1, '2022-11-21', 'B', 0, 0),
(436, 'ELSOLHOTEL.COM', '', '523311728607', 0, '', '', '', 0, '', '', 1, '2022-11-22', 'B', 0, 0),
(437, 'CARLOS AREVALO', '', '', 0, '', 'QUEPESO.COM', '', 0, '', '', 1, '2022-11-22', 'B', 0, 0),
(438, 'LA PASADITA', '', '5216511040142', 0, '', '', '', 0, '', '', 1, '2022-11-29', 'B', 0, 0),
(439, 'MLS HOTEL SA DE CV', '', '', 0, '', '', '', 0, '', '', 1, '2022-12-12', 'B', 0, 0),
(440, 'ISAI SANCHEZ', '', '18035218406', 0, '', '', '', 0, '', '', 1, '2022-12-14', 'B', 0, 0),
(441, 'NELLY ADRIANA GRANADOS AGUERO', '', '+52 1 618 840 9277', 0, '', 'TAVOS GYM', 'nellyadriana_aguero@yahoo.com.mx', 0, '', 'Mercado Libre', 1, '2022-12-20', 'B', 0, 0),
(447, 'MARIO ALEJANDRO SILVERIO FLORES', '', '5215612668066', 0, '', 'EGYPCIOS GYM', 'masil1967@gmail.com', 0, '', '', 1, '2022-12-28', 'B', 0, 0),
(448, 'GUSTAVO SAUCEDO HERNáNDEZ', '', '5218445509048', 0, '', '', '', 0, '', '', 1, '2023-01-02', 'B', 0, 0),
(449, 'JUAN CARLOS MEMBRILLO MEDINA', '', '', 0, '', '+52 1 667 189 1939', '', 0, '', '', 1, '2023-01-03', 'B', 0, 0),
(450, 'ESTELA CRISPíN MENDOZA', '', '5214281476871', 0, '', 'PERFECT BODY GYM ', 'olmedoblancanaomi@gmail.com', 0, '', '', 1, '2023-01-10', 'B', 0, 0),
(451, 'ALEJANDRO BáEZ LORANCA', '', '', 0, '', '', '', 0, '', '', 1, '2023-01-23', 'B', 0, 0),
(452, 'DOMUS SQUASH', '', '', 0, '', 'DOMUS SQUASH', '', 0, '', '', 1, '2023-01-27', 'B', 0, 0),
(453, 'MARACANA GYM', '', '', 0, '', 'CITYMANYSTORE@GMAIL.COM', '', 0, '', '', 1, '2023-01-31', 'B', 0, 0),
(454, 'CESAR DOMINGUEZ BAEZ', '', '2225639140', 0, '', '', '', 0, '', '', 1, '2023-02-21', 'B', 0, 0),
(455, 'PROCESADORA DE CARNE', '', '', 0, '', '', 'cyberchoapas@gmail.com', 0, '', '', 1, '2023-02-21', 'B', 0, 0),
(456, 'ANTHONY AUDOLY', '', '18498896585', 0, '', 'AUDOLY FITNESS CENTER', 'aj.audoly@gmail.com', 0, '', '', 1, '2023-02-22', 'A', 0, 0),
(457, 'CLUB CROSS-X', '', '', 0, '', 'CLUB CROSS-X', 'Clubcrossx@gmail.com', 0, '', '', 1, '2023-02-27', 'B', 0, 0),
(458, 'JUAN MANUEL LOPEZ RODRIGUEZ', '', '-1', 0, '', 'MONTER GYM', '', 0, '', '', 1, '2023-03-15', 'B', 0, 0),
(459, 'ING. JOSE LUIS ROSIQUE', '', '', 0, '', '', '', 0, '', '', 1, '2023-03-20', 'B', 0, 0),
(460, 'ALEX OLEA ', '', '6632100907', 0, '', 'RECREATIVO LOS POTRILLOS', 'lospotrillos.rutadelviento@gmail.com', 0, '', '', 1, '2023-03-24', 'B', 0, 0),
(463, 'FRANCISCO EDUARDO ASCENCIO DOMINGUEZ', '20 DE NOV 324', '9231200505', 0, 'AEDF9201245G3', 'FRANCISCO EDUARDO ASCENCIO DOMINGUEZ', 'CYBERCHOAPAS@GMAIL.COM', 0, '', '', 1, '2023-03-25', 'B', 621, 96980);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `f_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `factura` varchar(254) NOT NULL,
  `adeudo` decimal(65,4) NOT NULL,
  `abono` decimal(65,4) NOT NULL,
  `dias_credit` int(11) NOT NULL,
  `pay` tinyint(1) NOT NULL DEFAULT 0,
  `sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credit_pay`
--

CREATE TABLE `credit_pay` (
  `id` int(11) NOT NULL,
  `credito` int(11) NOT NULL,
  `monto` decimal(65,4) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `credit_pay`
--

INSERT INTO `credit_pay` (`id`, `credito`, `monto`, `fecha`) VALUES
(10, 14, 90.0000, '2020-06-27 18:30:46'),
(11, 1, 186.7600, '2020-07-08 12:34:05'),
(12, 26, 180.0000, '2020-07-11 12:54:45'),
(15, 20, 0.8000, '2020-08-04 17:07:30'),
(16, 39, 1500.0000, '2020-08-04 17:09:10'),
(18, 45, 1500.0000, '2020-08-17 15:26:22'),
(26, 47, 350.0000, '2020-09-08 18:57:25'),
(28, 69, 5000.0000, '2020-09-24 19:18:22'),
(31, 72, 220.0000, '2020-09-28 10:31:49'),
(34, 87, 300.0000, '2020-11-03 22:33:33'),
(37, 97, 810.0000, '2020-11-23 13:31:28'),
(41, 69, 5000.0000, '2021-01-09 13:32:04'),
(43, 69, 4400.0000, '2021-01-22 10:06:53'),
(46, 25, 863.3700, '2021-03-22 00:42:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `descripcion` varchar(254) NOT NULL,
  `view_index` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `descripcion`, `view_index`) VALUES
(33, 'VARIOS', 'ARTICULOS VARIOS', 1),
(37, 'SOFTWARE', 'Software desarrollado por la empresa o por terceros', 1),
(38, 'COMPUTO', 'Accesorios para pc o similares\r\n', 1),
(39, 'CELULARES', 'ACCESORIOS PARA MOBILES\r\n', 1),
(40, 'MEMORIAS', 'MEMORIAS DE TODO TIPO\r\n', 1),
(42, 'DOCS OFICIALES', 'Servicio de documentos oficiales', 0),
(43, 'CONSUMIBLES', 'TONER, TINTA, CARTUCHOS', 0),
(44, 'COMUNICACIONES', 'RADIOS, ACCESORIOS ETC ', 0),
(45, 'NASUR', 'Medicamentos Naturales del sur', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `nombre_corto` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `mision` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `contacto` longtext NOT NULL,
  `facebook` varchar(254) NOT NULL,
  `twitter` varchar(254) NOT NULL,
  `youtube` varchar(254) NOT NULL,
  `iva` int(11) NOT NULL,
  `footer` longtext NOT NULL,
  `cfdi_lugare_expedicion` varchar(254) NOT NULL,
  `cfdi_rfc` varchar(254) NOT NULL,
  `cfdi_regimen` varchar(254) NOT NULL,
  `cfdi_cer` varchar(254) NOT NULL,
  `cfdi_key` varchar(254) NOT NULL,
  `cfdi_pass` varchar(254) NOT NULL,
  `token` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `nombre_corto`, `direccion`, `correo`, `telefono`, `mision`, `vision`, `contacto`, `facebook`, `twitter`, `youtube`, `iva`, `footer`, `cfdi_lugare_expedicion`, `cfdi_rfc`, `cfdi_regimen`, `cfdi_cer`, `cfdi_key`, `cfdi_pass`, `token`) VALUES
(1, 'GRUPO ASCGAR', 'GA', 'Veracruz, Mexico', 'contacto@cyberchoapa.scom', '+52 923 120 05 05', 'Somos una empresa fundada físicamente el 29 de mayo del año 2013 en el estado de Veracruz, México. Dedicada al desarrollo, distribución y venta de software, soluciones en Internet, venta de equipos (Hardware) y servicios varios. Ofreciendo una solución global a empresas, profesionales, administraciones, usuarios particulares y al publico en general, en todo el territorio nacional e internacional.', 'Pretendemos ser un referente en el mercado nacional en el sector de las TIC, y para ello abarcaremos todos los servicios que ofrecemos actualmente incrementando los que vayan surgiendo debido a la necesidad de cambio provocado por los avances tecnológicos. Esto es así ya que somos una empresa en constante innovación ya que el sector de la tecnología así lo requiere.', 'Telefono\r\n<br>\r\n+52 923 120 05 05\r\n<br><br>\r\nVentas | Informacion \r\n<br>\r\nventas@cyberchoapas.com', '', '', '', 16, '<h5 style=\"background-color: #898989; text-align: center;\"><span style=\"background-color: #898989; color: #ffffff;\"><em><strong>### ESTE DOCUMENTO NO TIENE VALOR FISCAL ###</strong></em></span><span style=\"background-color: #898989; color: #ffffff;\"><em><strong><br /></strong></em></span></h5>', '96980', 'EKU9003173C9', '603', 'SDK2/certificados/EKU9003173C9.cer  ', 'SDK2/certificados/EKU9003173C9.key', '12345678a', 'g4UW4c0gIkyX2yH90bOHlCx8ivt0lD3/Eyh7AnLuSrmVeBiyFbjEmdlFBs0uaaeVOxQRjz5DPTmXzuZrWdVZs/bsVoQ8Tc4BWo/XDDG+EvA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_ventas`
--

CREATE TABLE `e_ventas` (
  `id` int(11) NOT NULL,
  `estrategia` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `e_ventas`
--

INSERT INTO `e_ventas` (`id`, `estrategia`, `active`) VALUES
(1, 'VENTA CONVENCIONAL', 1),
(5, '15 % DE DESCUENTO POR MAYOREO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `serie` varchar(254) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `estatus` varchar(254) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`serie`, `folio`, `estatus`, `cliente`) VALUES
('A', '120190819143328', 'Vigente', 154),
('A', '120190819153303', 'Proceso cancelar', 1),
('A', '120190819153435', 'Proceso cancelar', 1),
('A', '120190820121431', 'Vigente', 155),
('A', '120190913132203', 'Proceso cancelar', 1),
('A', '120190916221358', 'Vigente', 180),
('A', '120190925093148', 'Vigente', 184),
('A', '120190927195056', 'Vigente', 187),
('A', '120190930201754', 'Vigente', 1),
('A', '120190930202456', 'Vigente', 1),
('A', '120191004195727', 'Vigente', 198),
('A', '120191011135643', 'Vigente', 199),
('A', '120191014113426', 'Vigente', 184),
('A', '120191014165302', 'Vigente', 200),
('A', '120191029181000', 'Vigente', 208),
('A', '120191122200257', 'Vigente', 198),
('A', '120191123103040', 'Vigente', 228),
('A', '120191128191557', 'Vigente', 198),
('A', '120191211172238', 'Vigente', 240),
('A', '120191212203154', 'Vigente', 198),
('A', '120191219190531', 'Vigente', 198),
('A', '120191223121908', 'Vigente', 244),
('A', '120191223191852', 'Vigente', 245),
('A', '120191231095013', 'Vigente', 240),
('A', '120200103144631', 'Vigente', 252),
('A', '120200105121047', 'Vigente', 253),
('A', '120200105140748', 'Vigente', 254),
('A', '120200111110951', 'Vigente', 198),
('A', '120200114134955', 'Vigente', 155),
('A', '120200124105728', 'Vigente', 263),
('A', '120200205122840', 'Vigente', 270),
('A', '120200211003703', 'Vigente', 273),
('B', '120200214191541', 'Vigente', 275),
('A', '120200219111106', 'Vigente', 278),
('A', '120200219164131', 'Vigente', 200),
('A', '120200223223835', 'Vigente', 154),
('A', '120200228101706', 'Vigente', 270),
('A', '120200301183321', 'Vigente', 282),
('A', '120200311102623', 'Vigente', 285),
('A', '120200314104810', 'Vigente', 198),
('A', '120200325181657', 'Vigente', 198),
('A', '120200404153703', 'Vigente', 282),
('A', '120200404160402', 'Vigente', 282),
('A', '120200422094312', 'Vigente', 289),
('B', '120200430141134', 'Vigente', 290),
('A', '120200513104001', 'Vigente', 213),
('A', '120200514232903', 'Vigente', 293),
('A', '120200521115213', 'Vigente', 198),
('A', '120200525125754', 'Vigente', 290),
('A', '120200526153134', 'Vigente', 290),
('A', '120200526153239', 'Vigente', 290),
('A', '120200527092213', 'Vigente', 290),
('A', '120200527092332', 'Vigente', 290),
('A', '120200527092511', 'Vigente', 290),
('A', '120200527092727', 'Vigente', 290),
('A', '120200602141246', 'Vigente', 294),
('A', '120200603154543', 'Vigente', 213),
('B', '120200622193924', 'Vigente', 282),
('B', '120200630124124', 'Vigente', 244),
('B', '120200630144036', 'Vigente', 212),
('B', '120200701161718', 'Vigente', 298),
('B', '120200705162232', 'Vigente', 301),
('A', '120200708192655', 'Vigente', 302),
('B', '120200724182732', 'Vigente', 290),
('B', '120200817170823', 'Vigente', 285),
('A', '120200831162442', 'Vigente', 302),
('B', '120200903174256', 'Vigente', 198),
('A', '120200910113931', 'Vigente', 198),
('B', '120200928102847', 'Vigente', 215),
('B', '120201012143843', 'Vigente', 282),
('B', '120201114111404', 'Vigente', 198),
('B', '120201124115412', 'Vigente', 198),
('A', '120201202115054', 'Vigente', 198),
('B', '120201210161510', 'Vigente', 302),
('B', '120201213130813', 'Vigente', 294),
('A', '120201214162711', 'Vigente', 198),
('A', '120201218105500', 'Vigente', 198),
('B', '120210110121141', 'Vigente', 345),
('B', '120210118203518', 'Vigente', 285),
('B', '120210203135257', 'Vigente', 348),
('C', '120210206153434', 'Vigente', 350),
('B', '120210330180545', 'Vigente', 372),
('A', '120210410103800', 'Vigente', 198),
('B', '120210506223451', 'Vigente', 348),
('B', '120210517111226', 'Vigente', 290),
('A', '120210611180546', 'Vigente', 275),
('C', '120210611182235', 'Vigente', 394),
('B', '120210612164732', 'Vigente', 198),
('B', '120230324232839', 'Vigente', 1),
('B', '120230325085538', 'Vigente', 463),
('B', '3620200115190647', 'Vigente', 258),
('A', '3720191023123718', 'Proceso cancelar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folio_venta`
--

CREATE TABLE `folio_venta` (
  `folio` varchar(254) NOT NULL,
  `vendedor` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `open` tinyint(1) NOT NULL,
  `cobrado` float DEFAULT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `cut` tinyint(1) DEFAULT 0,
  `sucursal` int(11) NOT NULL,
  `cut_global` int(11) NOT NULL DEFAULT 0,
  `iva` int(11) NOT NULL DEFAULT 0,
  `t_pago` varchar(254) NOT NULL DEFAULT 'Ninguno',
  `pedido` tinyint(1) NOT NULL DEFAULT 0,
  `folio_venta_ini` varchar(254) DEFAULT NULL,
  `cotizacion` tinyint(1) NOT NULL DEFAULT 0,
  `concepto` varchar(254) DEFAULT NULL,
  `comision_pagada` tinyint(1) NOT NULL DEFAULT 0,
  `oxxo_pay` varchar(254) NOT NULL DEFAULT '0',
  `titulo` varchar(254) DEFAULT '',
  `f_entrega` date DEFAULT NULL,
  `estrategia` int(11) DEFAULT NULL,
  `facturar` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `folio_venta`
--

INSERT INTO `folio_venta` (`folio`, `vendedor`, `client`, `descuento`, `fecha`, `open`, `cobrado`, `fecha_venta`, `cut`, `sucursal`, `cut_global`, `iva`, `t_pago`, `pedido`, `folio_venta_ini`, `cotizacion`, `concepto`, `comision_pagada`, `oxxo_pay`, `titulo`, `f_entrega`, `estrategia`, `facturar`) VALUES
('120190819143328', 1, 154, 0, '2019-08-19 14:33:28', 0, 4600, '2019-08-19 15:12:04', 1, 1, 1, 16, 'transferencia', 0, '120190819143328', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190820121431', 1, 1, 0, '2019-08-20 12:14:31', 0, 10517.2, '2019-08-25 10:34:06', 1, 1, 1, 16, 'transferencia', 0, '120190820121431', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190820190330', 1, 154, 0, '2019-08-20 19:03:30', 0, 3795, '2019-08-20 19:04:26', 1, 9, 1, 16, 'transferencia', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190824131530', 1, 1, 0, '2019-08-24 13:15:30', 0, 105, '2019-08-24 13:17:30', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190829201049', 1, 1, 0, '2019-08-29 20:10:49', 0, 180, '2019-08-29 20:11:21', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190829205530', 1, 1, 0, '2019-08-29 20:55:30', 0, 190, '2019-08-29 20:55:45', 1, 9, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190831213732', 1, 1, 0, '2019-08-31 21:37:32', 0, 300, '2019-08-31 21:41:35', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190904183621', 1, 1, 0, '2019-09-04 18:36:21', 0, 400, '2019-09-04 19:10:42', 1, 1, 1, 16, 'efectivo', 0, '120190904183621', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190905085759', 1, 162, 10, '2019-09-05 08:57:59', 0, 4320, '2019-09-20 14:27:17', 1, 1, 1, 16, 'efectivo', 0, '120190905085759', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190907112858', 1, 1, 0, '2019-09-07 11:28:58', 0, 290, '2019-09-07 11:30:13', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190907143803', 1, 1, 0, '2019-09-07 14:38:03', 0, 88, '2019-09-07 14:38:48', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190907201649', 1, 1, 0, '2019-09-07 20:16:49', 0, 110, '2019-09-07 20:18:56', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190909205319', 1, 1, 0, '2019-09-09 20:53:19', 0, 60, '2019-09-09 20:53:52', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190912210242', 1, 1, 0, '2019-09-12 21:02:42', 0, 410, '2019-09-12 21:05:28', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190914130854', 1, 1, 0, '2019-09-14 13:08:54', 0, 105, '2019-09-14 13:33:15', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190916123500', 1, 179, 0, '2019-09-16 12:35:00', 0, 399.99, '2019-09-16 14:51:02', 1, 1, 1, 16, 'efectivo', 0, '120190916123500', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190916193937', 1, 1, 0, '2019-09-16 19:39:37', 0, 150, '2019-09-16 19:39:53', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190916221358', 1, 180, 0, '2019-09-16 22:13:58', 0, 4800, '2019-09-16 22:14:48', 1, 1, 1, 16, 'transferencia', 0, '120190916221358', 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190917120915', 1, 1, 0, '2019-09-17 12:09:15', 0, 70, '2019-09-17 12:09:35', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190917192301', 1, 1, 0, '2019-09-17 19:23:01', 0, 0, '2019-09-17 19:23:38', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190917202852', 1, 1, 0, '2019-09-17 20:28:52', 0, 20, '2019-09-17 20:29:34', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 1, '0', '', NULL, NULL, 0),
('120190921141216', 1, 1, 0, '2019-09-21 14:12:16', 0, 30, '2019-09-21 14:12:54', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190921153718', 1, 332, 0, '2019-09-21 15:37:18', 0, 4500, '2019-09-21 15:38:15', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190925093148', 1, 184, 0, '2019-09-25 09:31:48', 0, 1125, '2019-09-30 18:05:34', 1, 1, 1, 16, 'transferencia', 0, '120190925093148', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190925202625', 1, 1, 0, '2019-09-25 20:26:25', 0, 280, '2019-09-25 20:26:55', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190926141326', 1, 1, 0, '2019-09-26 14:13:26', 0, 85, '2019-09-26 14:14:14', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190926205952', 1, 162, 20, '2019-09-26 20:59:52', 0, 6080, '2019-09-27 12:22:29', 1, 1, 1, 16, 'transferencia', 0, '120190926205952', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190927122730', 1, 186, 0, '2019-09-27 12:27:30', 0, 4500, '2019-09-27 12:51:47', 1, 1, 1, 16, 'transferencia', 0, '120190927122730', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190927195056', 1, 187, 0, '2019-09-27 19:50:56', 0, 100, '2019-09-27 19:51:48', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190927203056', 1, 1, 0, '2019-09-27 20:30:56', 0, 20, '2019-09-27 20:31:17', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190928145049', 1, 188, 3, '2019-09-28 14:50:49', 0, 4365, '2019-09-28 15:37:17', 1, 1, 1, 16, 'transferencia', 0, '120190928145049', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190928164919', 1, 190, 0, '2019-09-28 16:49:19', 0, 4800, '2019-10-26 17:00:19', 1, 1, 1, 16, 'transferencia', 0, '120190928164919', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190929102555', 1, 191, 8, '2019-09-29 10:25:55', 0, 4416, '2019-10-02 21:27:14', 1, 1, 1, 16, 'transferencia', 0, '120190929102555', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120190930114626', 1, 1, 0, '2019-09-30 11:46:26', 0, 180, '2019-10-01 14:36:24', 1, 1, 1, 16, 'efectivo', 0, '120190930114626', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191004195727', 1, 198, 0, '2019-10-04 19:57:27', 0, 239.8, '2019-10-04 19:59:52', 1, 9, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191005195335', 1, 1, 0, '2019-10-05 19:53:35', 0, 110, '2019-10-05 19:53:53', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191006181905', 1, 1, 0, '2019-10-06 18:19:05', 0, 480, '2019-10-07 12:06:09', 1, 1, 1, 16, 'transferencia', 0, '120191006181905', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191007150313', 1, 1, 0, '2019-10-07 15:03:13', 0, 100, '2019-10-07 15:05:21', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191009211643', 1, 1, 0, '2019-10-09 21:16:43', 0, 90, '2019-10-09 21:17:04', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191011135643', 1, 199, 0, '2019-10-11 13:56:43', 0, 5450, '2019-10-19 13:33:45', 1, 1, 1, 16, 'transferencia', 0, '120191011135643', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191011192654', 1, 1, 0, '2019-10-11 19:26:54', 0, 700, '2019-10-11 19:28:09', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191014113426', 1, 184, 0, '2019-10-14 11:34:26', 0, 1125, '2019-10-14 11:41:06', 1, 1, 1, 16, 'transferencia', 0, '120191014113426', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191014165302', 1, 200, 0, '2019-10-14 16:53:02', 0, 1359.52, '2019-10-14 20:09:29', 1, 1, 1, 16, 'efectivo', 0, '120191014165302', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191014193713', 1, 1, 0, '2019-10-14 19:37:13', 0, 60, '2019-10-14 19:37:52', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191016124524', 1, 201, 0, '2019-10-16 12:45:24', 0, 4800, '2019-10-16 15:59:20', 1, 1, 1, 16, 'transferencia', 0, '120191016124524', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191016215055', 1, 202, 0, '2019-10-16 21:50:55', 0, 2000, '2019-10-17 11:50:25', 1, 1, 1, 16, 'transferencia', 0, '120191016215055', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191017195945', 1, 1, 0, '2019-10-17 19:59:45', 0, 150, '2019-10-17 20:30:55', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191020164646', 1, 1, 0, '2019-10-20 16:46:46', 0, 106, '2019-10-20 16:47:48', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191022111046', 1, 206, 0, '2019-10-22 11:10:46', 0, 4600, '2019-10-22 11:48:27', 1, 1, 1, 16, 'transferencia', 0, '120191022111046', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191022145144', 1, 182, 0, '2019-10-22 14:51:44', 0, 2000, '2019-10-23 16:24:34', 1, 1, 1, 16, 'transferencia', 0, '120191022145144', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191029181000', 1, 208, 0, '2019-10-29 18:10:00', 0, 4500, '2019-10-29 18:11:43', 1, 1, 1, 16, 'transferencia', 0, '120191029181000', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191030143747', 1, 199, 0, '2019-10-30 14:37:47', 0, 950, '2019-10-30 14:37:47', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191101093802', 1, 210, 0, '2019-11-01 09:38:02', 0, 1800, '2019-11-01 09:38:02', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191105205941', 1, 217, 0, '2019-11-05 20:59:41', 0, 480, '2019-11-09 12:30:00', 1, 1, 1, 16, 'transferencia', 0, '120191105205941', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191107163213', 1, 1, 0, '2019-11-07 16:32:13', 0, 480, '2019-11-07 21:10:45', 1, 1, 1, 16, 'tranferencia', 0, '120191107163213', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191108193425', 1, 218, 40, '2019-11-08 19:34:25', 0, 2880, '2019-11-08 19:48:39', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191113223531', 1, 154, 0, '2019-11-13 22:35:31', 0, 100, '2019-11-14 09:45:24', 1, 1, 1, 16, 'transferencia', 0, '120191113223531', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191114005331', 1, 1, 0, '2019-11-14 00:53:31', 0, 480, '2019-11-14 09:59:29', 1, 1, 1, 16, 'tranferencia', 0, '120191114005331', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191114180220', 1, 1, 0, '2019-11-14 18:02:20', 0, 200, '2019-11-15 09:13:16', 1, 1, 1, 16, 'tranferencia', 0, '120191114180220', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191116151736', 1, 223, 0, '2019-11-16 15:17:36', 0, 1831.32, '2019-11-16 16:00:40', 1, 1, 1, 16, 'efectivo', 0, '120191116151736', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191119190512', 1, 225, 0, '2019-11-19 19:05:12', 0, 8600, '2019-11-19 19:06:04', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191119235516', 1, 1, 0, '2019-11-19 23:55:16', 0, 300, '2019-11-20 08:27:48', 1, 1, 1, 16, 'tranferencia', 0, '120191119235516', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191121122200', 1, 227, 5, '2019-11-21 12:22:00', 0, 4275, '2019-11-21 13:33:09', 1, 1, 1, 16, 'transferencia', 0, '120191121122200', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191121122456', 1, 229, 20, '2019-11-21 12:24:56', 0, 1864.8, '2019-11-25 15:16:49', 1, 1, 1, 16, '', 0, '120191121122456', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191122200257', 1, 198, 0, '2019-11-22 20:02:57', 0, 253, '2019-11-28 18:46:46', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191123103040', 1, 228, 0, '2019-11-23 10:30:40', 0, 6700, '2019-11-23 18:33:31', 1, 1, 1, 16, 'transferencia', 0, '120191123103040', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191126104315', 1, 231, 100, '2019-11-26 10:43:15', 0, 0, '2019-11-26 10:44:13', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191127121217', 1, 232, 50, '2019-11-27 12:12:17', 0, 2400, '2019-12-27 15:12:59', 1, 1, 1, 16, 'transferencia', 0, '120191127121217', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191128095310', 1, 233, 0, '2019-11-28 09:53:10', 0, 4800, '2019-12-09 18:05:12', 1, 1, 1, 16, 'transferencia', 0, '120191128095310', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191128191557', 1, 198, 0, '2019-11-28 19:15:57', 0, 253, '2019-11-28 19:29:40', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191201121446', 1, 1, 0, '2019-12-01 12:14:46', 0, 230, '2019-12-01 12:15:04', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191211172238', 1, 240, 10, '2019-12-11 17:22:38', 0, 7740, '2019-12-18 19:46:02', 1, 1, 1, 16, 'transferencia', 0, '120191211172238', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191212182812', 1, 241, 0, '2019-12-12 18:28:12', 0, 780, '2019-12-12 18:31:58', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191212203154', 1, 198, 0, '2019-12-12 20:31:54', 0, 322, '2019-12-12 20:33:57', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191215121646', 1, 200, 0, '2019-12-15 12:16:46', 0, 5197, '2021-02-13 11:30:17', 1, 1, 1, 16, 'efectivo', 0, '120191215121646', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191217192702', 1, 1, 0, '2019-12-17 19:27:02', 0, 160, '2019-12-17 19:27:29', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191219190531', 1, 198, 0, '2019-12-19 19:05:31', 0, 119, '2019-12-19 19:06:20', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191220114310', 1, 242, 100, '2019-12-20 11:43:10', 0, 0, '2019-12-20 11:44:23', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191222191800', 1, 243, 30, '2019-12-22 19:18:00', 0, 3360, '2019-12-23 18:41:59', 1, 1, 1, 16, 'transferencia', 0, '120191222191800', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191223101413', 1, 1, 0, '2019-12-23 10:14:13', 0, 580, '2019-12-23 18:55:38', 1, 1, 1, 16, 'transferencia', 0, '120191223101413', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191223121908', 1, 244, 0, '2019-12-23 12:19:08', 0, 6700, '2019-12-23 12:21:08', 1, 1, 1, 16, 'tarjeta', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191223191852', 1, 245, 0, '2019-12-23 19:18:52', 0, 1300, '2019-12-23 19:20:42', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191224090514', 1, 246, 0, '2019-12-24 09:05:14', 0, 4864, '2019-12-24 10:44:52', 1, 1, 1, 16, 'transferencia', 0, '120191224090514', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191226110834', 1, 247, 0, '2019-12-26 11:08:34', 0, 4500, '2019-12-26 12:33:06', 1, 1, 1, 16, 'transferencia', 0, '120191226110834', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191226133437', 1, 1, 0, '2019-12-26 13:34:37', 0, 580, '2019-12-31 09:57:08', 1, 1, 1, 16, 'transferencia', 0, '120191226133437', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191227183100', 1, 234, 50, '2019-12-27 18:31:00', 0, 2400, '2019-12-27 19:36:38', 1, 1, 1, 16, 'transferencia', 0, '120191227183100', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191227193742', 1, 248, 50, '2019-12-27 19:37:42', 0, 2400, '2019-12-27 19:38:59', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120191231095013', 1, 240, 0, '2019-12-31 09:50:13', 0, 1276, '2019-12-31 09:51:26', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200103144631', 1, 252, 0, '2020-01-03 14:46:31', 0, 4800, '2020-01-04 13:38:39', 1, 1, 1, 16, 'transferencia', 0, '120200103144631', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200103162126', 1, 232, 0, '2020-01-03 16:21:26', 0, 4770, '2020-01-05 17:12:28', 1, 1, 1, 16, 'transferencia', 0, '120200103162126', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200104175315', 1, 1, 0, '2020-01-04 17:53:15', 0, 25, '2020-01-11 11:40:51', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200105121047', 1, 253, 0, '2020-01-05 12:10:47', 0, 4800, '2020-01-05 16:59:12', 1, 1, 1, 16, 'transferencia', 0, '120200105121047', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200105140748', 1, 254, 0, '2020-01-05 14:07:48', 0, 4800, '2020-01-05 16:55:44', 1, 1, 1, 16, 'transferencia', 0, '120200105140748', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200107203605', 1, 255, 0, '2020-01-07 20:36:05', 0, 6700, '2020-01-07 20:36:31', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200110093529', 1, 242, 15, '2020-01-10 09:35:29', 0, 4080, '2020-01-11 09:12:08', 1, 1, 1, 16, 'transferencia', 0, '120200110093529', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200111110951', 1, 198, 0, '2020-01-11 11:09:51', 0, 180, '2020-01-11 11:11:07', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200114134955', 1, 155, 16, '2020-01-14 13:49:55', 0, 12852, '2020-01-15 19:56:58', 1, 1, 1, 16, 'transferencia', 0, '120200114134955', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200115120846', 1, 256, 30, '2020-01-15 12:08:46', 0, 3360, '2020-01-15 16:58:13', 1, 1, 1, 16, 'transferencia', 0, '120200115120846', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200115134352', 1, 257, 0, '2020-01-15 13:43:52', 0, 6700, '2020-01-15 13:44:40', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200117130324', 1, 260, 0, '2020-01-17 13:03:24', 0, 4800, '2020-01-23 10:58:45', 1, 1, 1, 16, 'transferencia', 0, '120200117130324', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200118142448', 1, 262, 0, '2020-01-18 14:24:48', 0, 6700, '2020-01-24 13:25:59', 1, 1, 1, 16, 'transferencia', 0, '120200118142448', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200124105728', 1, 263, 0, '2020-01-24 10:57:28', 0, 8600, '2020-01-24 17:04:52', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200124201751', 1, 264, 5, '2020-01-24 20:17:51', 0, 4275, '2020-01-24 20:29:00', 1, 9, 1, 16, 'transferencia', 0, '120200124201751', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200129214930', 1, 266, 0, '2020-01-29 21:49:30', 0, 4999, '2020-01-29 21:50:05', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200205122840', 1, 270, 0, '2020-02-05 12:28:40', 0, 3000, '2020-02-28 10:16:31', 1, 1, 1, 16, 'transferencia', 0, '120200205122840', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200210122304', 1, 272, 0, '2020-02-10 12:23:04', 0, 4800, '2020-02-10 15:04:22', 1, 1, 1, 16, 'transferencia', 0, '120200210122304', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200211003703', 1, 273, 0, '2020-02-11 00:37:03', 0, 4500, '2020-02-20 19:22:12', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200211200422', 1, 274, 0, '2020-02-11 20:04:22', 0, 8799, '2020-02-11 20:05:15', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200214191541', 1, 275, 0, '2020-02-14 19:15:41', 0, 72.6, '2020-02-14 19:23:55', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200215121630', 1, 276, 0, '2020-02-15 12:16:30', 0, 8799, '2020-02-15 12:37:05', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200217223930', 1, 277, 0, '2020-02-17 22:39:30', 0, 6400, '2020-02-17 23:06:10', 1, 1, 1, 16, 'transferencia', 0, '120200217223930', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200218131603', 1, 162, 15, '2020-02-18 13:16:03', 0, 5525, '2020-02-20 19:24:27', 1, 1, 1, 16, 'transferencia', 0, '120200218131603', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200219111106', 1, 278, 0, '2020-02-19 11:11:06', 0, 4999, '2020-02-19 13:34:37', 1, 1, 1, 16, 'transferencia', 0, '120200219111106', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200219164131', 1, 200, 0, '2020-02-19 16:41:31', 0, 1166.96, '2020-03-02 12:31:47', 1, 1, 1, 16, 'transferencia', 0, '120200219164131', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200221110215', 1, 277, 0, '2020-02-21 11:02:15', 0, 1900, '2020-02-21 11:02:15', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200222191451', 1, 279, 0, '2020-02-22 19:14:51', 0, 4500, '2020-02-22 19:15:02', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200223223835', 1, 154, 15, '2020-02-23 22:38:35', 0, 4334.15, '2020-02-24 10:27:18', 1, 1, 1, 16, 'transferencia', 0, '120200223223835', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200224140712', 1, 280, 90, '2020-02-24 14:07:12', 0, 500, '2020-02-24 14:07:32', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200224141101', 1, 154, 0, '2020-02-24 14:11:01', 0, 100, '2020-02-24 14:11:01', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200227090513', 1, 226, 15, '2020-02-27 09:05:13', 0, 9918.65, '2020-02-27 13:51:54', 1, 1, 1, 16, 'transferencia', 0, '120200227090513', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200228101706', 1, 270, 0, '2020-02-28 10:17:06', 0, 2870, '2020-02-28 10:17:31', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200301183321', 1, 282, 0, '2020-03-01 18:33:21', 0, 4000, '2020-03-14 15:11:21', 1, 1, 1, 16, 'transferencia', 0, '120200301183321', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200310104440', 1, 284, 0, '2020-03-10 10:44:40', 0, 6400, '2020-03-11 10:35:50', 1, 1, 1, 16, 'transferencia', 0, '120200310104440', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200311102623', 1, 285, 0, '2020-03-11 10:26:23', 0, 464, '2020-03-11 10:27:49', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200311102840', 1, 234, 0, '2020-03-11 10:28:40', 0, 3800, '2020-03-14 15:05:04', 1, 1, 1, 16, 'transferencia', 0, '120200311102840', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200313173607', 1, 162, 15, '2020-03-13 17:36:07', 0, 1615, '2020-03-14 15:10:07', 1, 1, 1, 16, 'transferencia', 0, '120200313173607', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200314104810', 1, 198, 0, '2020-03-14 10:48:10', 0, 90, '2020-03-14 10:49:22', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200324191513', 1, 155, 15, '2020-03-24 19:15:13', 0, 4249.15, '2020-03-25 13:34:13', 1, 1, 1, 16, 'transferencia', 0, '120200324191513', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200325181657', 1, 198, 0, '2020-03-25 18:16:57', 0, 98, '2020-03-25 18:17:39', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200401195048', 1, 283, 0, '2020-04-01 19:50:48', 0, 450, '2020-04-09 01:29:33', 1, 1, 1, 16, 'oxxo', 0, '120200401195048', 0, NULL, 0, '93000318338603', '', NULL, NULL, 0),
('120200404153703', 1, 282, 0, '2020-04-04 15:37:03', 0, 3000, '2020-04-04 16:00:37', 1, 1, 1, 16, 'transferencia', 0, '120200404153703', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200404160402', 1, 282, 0, '2020-04-04 16:04:02', 0, 1300, '2020-04-04 16:06:03', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200407215434', 1, 287, 0, '2020-04-07 21:54:34', 0, 5800, '2020-04-09 01:22:28', 1, 1, 1, 16, 'oxxo', 0, '120200407215434', 0, NULL, 0, '93000323583847', '', NULL, NULL, 0),
('120200410164933', 1, 1, 0, '2020-04-10 16:49:33', 0, 400, '2020-04-11 11:07:57', 1, 1, 1, 16, 'transferencia', 0, '120200410164933', 0, NULL, 0, '93000325897781', '', NULL, NULL, 0),
('120200422094312', 1, 289, 0, '2020-04-22 09:43:12', 0, 4500, '2020-04-22 10:43:02', 1, 1, 1, 16, 'transferencia', 0, '120200422094312', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200422192310', 1, 290, 0, '2020-04-22 19:23:10', 0, 10000, '2020-04-27 11:50:17', 1, 1, 1, 16, 'transferencia', 0, '120200422192310', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200428203701', 1, 291, 0, '2020-04-28 20:37:01', 0, 3750, '2020-04-28 21:20:35', 1, 1, 1, 16, 'transferencia', 0, '120200428203701', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200430104842', 1, 292, 15, '2020-04-30 10:48:42', 0, 5440, '2020-05-01 10:22:29', 1, 9, 1, 16, 'transferencia', 0, '120200430104842', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200512211718', 1, 162, 0, '2020-05-12 21:17:18', 0, 1000, '2020-05-13 11:28:20', 1, 1, 1, 16, 'efectivo', 0, '120200512211718', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200513104001', 1, 213, 0, '2020-05-13 10:40:01', 0, 1900, '2020-05-13 10:43:03', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200513112736', 1, 1, 0, '2020-05-13 11:27:36', 0, 150, '2020-05-14 14:46:00', 1, 1, 1, 16, 'oxxo', 0, '120200513112736', 0, NULL, 0, '93000359515697', '', NULL, NULL, 0),
('120200514232903', 1, 293, 0, '2020-05-14 23:29:03', 0, 8120, '2020-05-15 16:24:54', 1, 1, 1, 16, 'transferencia', 0, '120200514232903', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200521115213', 1, 198, 0, '2020-05-21 11:52:13', 0, 108, '2020-05-21 11:53:28', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200525125754', 1, 290, 0, '2020-05-25 12:57:54', 0, 3364, '2020-05-26 15:27:14', 1, 1, 1, 16, 'transferencia', 0, '120200525125754', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200526153134', 1, 290, 0, '2020-05-26 15:31:34', 0, 4800, '2020-05-26 15:32:12', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200526153239', 1, 290, 0, '2020-05-26 15:32:39', 0, 3000, '2020-05-26 15:33:18', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200527092213', 1, 290, 0, '2020-05-27 09:22:13', 0, 3364, '2020-05-27 09:22:53', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200527092332', 1, 290, 50, '2020-05-27 09:23:32', 0, 1900, '2020-05-27 09:24:19', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200529165018', 1, 1, 0, '2020-05-29 16:50:18', 0, 1160, '2020-05-30 09:49:27', 1, 1, 1, 16, 'oxxo', 0, '120200529165018', 0, NULL, 0, '93000380466191', '', NULL, NULL, 0),
('120200602141246', 1, 294, 0, '2020-06-02 14:12:46', 0, 1160, '2020-06-02 14:14:04', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200603154543', 1, 213, 0, '2020-06-03 15:45:43', 0, 812, '2020-06-04 17:54:08', 1, 1, 1, 16, 'transferencia', 0, '120200603154543', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200604174537', 1, 291, 0, '2020-06-04 17:45:37', 0, 400, '2020-06-04 20:35:45', 1, 1, 1, 16, 'oxxo', 0, '120200604174537', 0, NULL, 0, '93000388190736', '', NULL, NULL, 0),
('120200610192001', 1, 162, 20, '2020-06-10 19:20:01', 0, 3999.2, '2020-06-10 19:20:26', 1, 1, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200613121227', 1, 287, 0, '2020-06-13 12:12:27', 0, 8000, '2020-06-13 17:51:29', 1, 1, 1, 16, 'oxxo', 0, '120200613121227', 0, NULL, 0, '93000398774230', '', NULL, NULL, 0),
('120200613122527', 1, 287, 0, '2020-06-13 12:25:27', 0, 6500, '2020-06-13 17:25:47', 1, 1, 1, 16, 'oxxo', 0, '120200613122527', 0, NULL, 0, '93000398777548', '', NULL, NULL, 0),
('120200615120441', 1, 213, 0, '2020-06-15 12:04:41', 0, 186.76, '2020-07-08 12:34:05', 1, 10, 1, 16, 'transferencia', 0, '120200615120441', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200617152417', 1, 272, 0, '2020-06-17 15:24:17', 0, 503.44, '2020-06-17 17:04:11', 1, 1, 1, 16, 'transferencia', 0, '120200617152417', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200619150321', 1, 284, 0, '2020-06-19 15:03:21', 0, 799.24, '2020-07-16 17:34:13', 1, 1, 1, 16, 'transferencia', 0, '120200619150321', 0, NULL, 0, '93000406991479', 'titulos/120200619150321.pdf', NULL, NULL, 0),
('120200619184843', 1, 325, 0, '2020-06-19 18:48:43', 0, 219.24, '2020-06-22 11:35:48', 1, 10, 1, 16, 'oxxo', 0, '120200619184843', 0, NULL, 0, '93000407269412', '', NULL, NULL, 0),
('120200620145755', 1, 1, 0, '2020-06-20 14:57:55', 0, 53, '2020-06-20 14:58:18', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200620161632', 1, 296, 0, '2020-06-20 16:16:32', 0, 620, '2020-06-21 00:42:53', 1, 10, 1, 16, 'transferencia', 0, '120200620161632', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200620161732', 1, 295, 0, '2020-06-20 16:17:32', 0, 90, '2020-06-20 17:43:20', 1, 10, 1, 16, 'transferencia', 0, '120200620161732', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200620163250', 1, 1, 0, '2020-06-20 16:32:50', 0, 10, '2020-06-20 16:33:14', 1, 10, 1, 16, 'transferencia', 0, '120200620163250', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200620170024', 1, 1, 0, '2020-06-20 17:00:24', 0, 290, '2020-06-20 17:00:39', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200621000857', 1, 1, 0, '2020-06-21 00:08:57', 1, 0, NULL, 1, 10, 1, 16, 'transferencia', 1, '120200621000857', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200622190933', 1, 1, 0, '2020-06-22 19:09:33', 0, 120, '2020-06-22 19:09:49', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200622193924', 1, 282, 0, '2020-06-22 19:39:24', 0, 4172, '2020-06-26 00:16:01', 1, 10, 1, 16, 'transferencia', 0, '120200622193924', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200626165105', 1, 1, 0, '2020-06-26 16:51:05', 0, 580, '2020-06-26 19:41:53', 1, 10, 1, 16, 'oxxo', 0, '120200626165105', 0, NULL, 0, '93000416092672', '', NULL, NULL, 0),
('120200627145955', 1, 296, 0, '2020-06-27 14:59:55', 0, 90, '2020-06-27 18:30:46', 1, 10, 1, 16, 'transferencia', 0, '120200627145955', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200630124124', 1, 244, 0, '2020-06-30 12:41:24', 0, 672.8, '2020-06-30 14:46:48', 1, 10, 1, 16, 'transferencia', 0, '120200630124124', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200630144036', 1, 212, 0, '2020-06-30 14:40:36', 0, 1900, '2020-06-30 19:04:22', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200701150827', 1, 1, 0, '2020-07-01 15:08:27', 0, 25, '2020-07-01 15:08:53', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200701161718', 1, 298, 0, '2020-07-01 16:17:18', 0, 1038.35, '2020-10-31 13:27:42', 1, 10, 1, 16, 'banamex', 0, '120200701161718', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200703143244', 1, 1, 0, '2020-07-03 14:32:44', 0, 650, '2020-07-07 16:27:43', 1, 10, 1, 16, 'transferencia', 0, '120200703143244', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200704194244', 1, 296, 0, '2020-07-04 19:42:44', 0, 90, '2020-07-06 12:39:46', 1, 10, 1, 16, 'transferencia', 0, '120200704194244', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200704194345', 1, 295, 0, '2020-07-04 19:43:45', 0, 270, '2020-07-05 15:40:49', 1, 10, 1, 16, 'transferencia', 0, '120200704194345', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200705162232', 1, 301, 15, '2020-07-05 16:22:32', 0, 9221.65, '2020-07-13 14:18:06', 1, 10, 1, 16, 'transferencia', 0, '120200705162232', 0, NULL, 0, '0', 'titulos/120200705162232.pdf', NULL, NULL, 0),
('120200708154251', 1, 242, 0, '2020-07-08 15:42:51', 0, 863.37, '2021-03-22 00:42:10', 1, 1, 1, 16, 'paypal', 0, '120200708154251', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200708192655', 1, 302, 0, '2020-07-08 19:26:55', 0, 87, '2020-07-08 19:27:43', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200710135209', 1, 294, 0, '2020-07-10 13:52:09', 0, 464, '2020-07-13 14:17:28', 1, 10, 1, 16, 'transferencia', 0, '120200710135209', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200711120307', 1, 296, 0, '2020-07-11 12:03:07', 0, 180, '2020-07-11 12:54:45', 1, 10, 1, 16, 'transferencia', 0, '120200711120307', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200711120531', 1, 295, 0, '2020-07-11 12:05:31', 0, 180, '2020-07-13 14:17:33', 1, 10, 1, 16, 'transferencia', 0, '120200711120531', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200715194200', 1, 274, 0, '2020-07-15 19:42:00', 0, 2500, '2020-07-29 13:16:02', 1, 10, 1, 16, 'transferencia', 0, '120200715194200', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200716143707', 1, 154, 15, '2020-07-16 14:37:07', 0, 4249.15, '2020-07-16 14:55:14', 1, 10, 1, 16, 'transferencia', 0, '120200716143707', 0, NULL, 0, '0', 'titulos/120200716143707.pdf', NULL, NULL, 0),
('120200716165040', 1, 1, 0, '2020-07-16 16:50:40', 0, 190, '2020-07-16 17:38:36', 1, 10, 1, 16, 'transferencia', 0, '120200716165040', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200717120846', 1, 1, 0, '2020-07-17 12:08:46', 0, 580, '2020-07-17 21:03:11', 1, 10, 1, 16, 'transferencia', 0, '120200717120846', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200719162107', 1, 296, 0, '2020-07-19 16:21:07', 0, 90, '2020-07-22 11:39:10', 1, 10, 1, 16, 'transferencia', 0, '120200719162107', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200720134513', 1, 294, 0, '2020-07-20 13:45:13', 0, 308, '2020-09-04 09:51:33', 1, 10, 1, 16, 'transferencia', 0, '120200720134513', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200723202347', 1, 155, 15, '2020-07-23 20:23:47', 0, 4249.15, '2020-07-24 14:45:01', 1, 10, 1, 16, 'transferencia', 0, '120200723202347', 0, NULL, 0, '0', 'titulos/120200723202347.pdf', NULL, NULL, 0),
('120200724182732', 1, 290, 0, '2020-07-24 18:27:32', 0, 673, '2020-07-29 19:43:15', 1, 10, 1, 16, 'transferencia', 0, '120200724182732', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200725171239', 1, 1, 0, '2020-07-25 17:12:39', 0, 120, '2020-07-27 16:46:11', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200727135904', 1, 199, 0, '2020-07-27 13:59:04', 0, 680, '2020-07-28 00:14:47', 1, 10, 1, 16, 'transferencia', 0, '120200727135904', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200727165512', 1, 182, 15, '2020-07-27 16:55:12', 0, 3825, '2020-07-30 12:42:28', 1, 10, 1, 16, 'transferencia', 0, '120200727165512', 0, NULL, 0, '0', 'titulos/120200727165512.pdf', NULL, NULL, 0),
('120200727181614', 1, 1, 0, '2020-07-27 18:16:14', 0, 75, '2020-07-27 18:16:41', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200728140040', 1, 266, 0, '2020-07-28 14:00:40', 0, 580, '2020-07-29 19:29:47', 1, 10, 1, 16, 'transferencia', 0, '120200728140040', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200728194758', 1, 154, 0, '2020-07-28 19:47:58', 0, 2390, '2020-09-07 19:44:46', 1, 10, 1, 16, 'transferencia', 0, '120200728194758', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200730084615', 1, 252, 0, '2020-07-30 08:46:15', 0, 300, '2020-07-30 09:06:15', 1, 10, 1, 16, 'transferencia', 0, '120200730084615', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200801161527', 1, 292, 0, '2020-08-01 16:15:27', 0, 240, '2020-08-01 20:45:40', 1, 9, 1, 16, 'transferencia', 0, '120200801161527', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200804181332', 1, 266, 0, '2020-08-04 18:13:32', 0, 250, '2020-08-06 00:25:12', 1, 1, 1, 16, 'oxxo', 0, '120200804181332', 0, NULL, 0, '93000475162457', '', NULL, NULL, 0),
('120200805200705', 1, 1, 0, '2020-08-05 20:07:05', 0, 290, '2020-08-05 20:07:18', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200807195248', 1, 1, 0, '2020-08-07 19:52:48', 0, 55, '2020-08-07 19:53:14', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200809164733', 1, 304, 0, '2020-08-09 16:47:33', 0, 540, '2020-08-20 17:22:45', 1, 10, 1, 16, 'oxxo', 0, '120200809164733', 0, NULL, 0, '93000482789011', '', NULL, NULL, 0),
('120200810173138', 1, 1, 0, '2020-08-10 17:31:38', 0, 380, '2020-08-10 17:32:26', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200811194742', 1, 306, 0, '2020-08-11 19:47:42', 0, 12196, '2020-08-13 21:22:25', 1, 10, 1, 16, 'transferencia', 0, '120200811194742', 0, NULL, 0, '0', 'titulos/120200811194742.pdf', NULL, NULL, 0),
('120200814100403', 1, 307, 0, '2020-08-14 10:04:03', 0, 3830, '2020-09-07 11:19:11', 1, 10, 1, 16, 'transferencia', 0, '120200814100403', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200815121621', 1, 296, 0, '2020-08-15 12:16:21', 0, 270, '2020-08-16 15:37:43', 1, 10, 1, 16, 'transferencia', 0, '120200815121621', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200817170823', 1, 285, 0, '2020-08-17 17:08:23', 0, 464, '2020-08-17 17:20:42', 1, 10, 1, 16, 'transferencia', 0, '120200817170823', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200817174845', 1, 1, 0, '2020-08-17 17:48:45', 0, 75, '2020-08-17 17:49:26', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200818205714', 1, 309, 0, '2020-08-18 20:57:14', 0, 1999, '2020-08-20 11:48:05', 1, 10, 1, 16, 'transferencia', 0, '120200818205714', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200820200136', 1, 1, 0, '2020-08-20 20:01:36', 0, 0, '2020-08-20 20:03:35', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200822133029', 1, 296, 0, '2020-08-22 13:30:29', 0, 370, '2020-08-22 18:01:56', 1, 10, 1, 16, 'transferencia', 0, '120200822133029', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200822135458', 1, 295, 0, '2020-08-22 13:54:58', 0, 720, '2020-09-05 15:56:20', 1, 10, 1, 16, 'transferencia', 0, '120200822135458', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200822142007', 1, 155, 15, '2020-08-22 14:20:07', 0, 5056.65, '2020-08-22 18:02:17', 1, 10, 1, 16, 'transferencia', 0, '120200822142007', 0, NULL, 0, '0', 'titulos/120200822142007.pdf', NULL, NULL, 0),
('120200823142507', 1, 1, 0, '2020-08-23 14:25:07', 0, 0, '2020-08-23 14:26:36', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200825181518', 1, 154, 0, '2020-08-25 18:15:18', 0, 350, '2020-09-08 18:57:25', 1, 10, 1, 16, 'transferencia', 0, '120200825181518', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200825220509', 1, 1, 0, '2020-08-25 22:05:09', 0, 0, '2020-08-25 22:05:19', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200829131920', 1, 296, 0, '2020-08-29 13:19:20', 0, 735, '2020-08-31 12:48:03', 1, 10, 1, 16, 'transferencia', 0, '120200829131920', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200830133556', 1, 1, 0, '2020-08-30 13:35:56', 0, 220, '2020-08-30 13:36:12', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200831162442', 1, 302, 0, '2020-08-31 16:24:42', 0, 59.4, '2020-08-31 16:27:24', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200901175435', 1, 313, 0, '2020-09-01 17:54:35', 0, 8799, '2020-09-01 18:38:00', 1, 10, 1, 16, 'transferencia', 0, '120200901175435', 0, NULL, 0, '0', 'titulos/120200901175435.pdf', NULL, NULL, 0),
('120200903174256', 1, 198, 0, '2020-09-03 17:42:56', 0, 60, '2020-09-03 17:47:03', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200905104822', 1, 315, 19, '2020-09-05 10:48:22', 0, 4049.19, '2020-09-06 16:02:02', 1, 10, 1, 16, 'transferencia', 0, '120200905104822', 0, NULL, 0, '0', 'titulos/120200905104822.pdf', NULL, NULL, 0),
('120200905154855', 1, 296, 0, '2020-09-05 15:48:55', 0, 670, '2020-09-07 11:21:11', 1, 10, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200907121651', 1, 316, 0, '2020-09-07 12:16:51', 0, 580, '2020-09-07 12:40:45', 1, 10, 1, 16, 'oxxo', 0, '120200907121651', 0, NULL, 0, '93000525999858', '', NULL, NULL, 0),
('120200907173049', 1, 317, 0, '2020-09-07 17:30:49', 0, 336, '2020-09-11 11:55:22', 1, 10, 1, 16, 'transferencia', 0, '120200907173049', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200909213745', 1, 318, 0, '2020-09-09 21:37:45', 0, 4999, '2020-09-11 11:16:57', 1, 10, 1, 16, 'transferencia', 0, '120200909213745', 0, NULL, 0, '0', 'titulos/120200909213745.pdf', NULL, NULL, 0),
('120200910113931', 1, 198, 0, '2020-09-10 11:39:31', 0, 60, '2020-09-10 11:41:10', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200911125555', 1, 188, 0, '2020-09-11 12:55:55', 0, 580, '2020-09-11 14:19:00', 1, 1, 1, 16, 'oxxo', 0, '120200911125555', 0, NULL, 0, '93000532129150', '', NULL, NULL, 0),
('120200913115621', 1, 296, 0, '2020-09-13 11:56:21', 0, 400, '2020-09-14 16:41:54', 1, 10, 1, 16, 'transferencia', 0, '120200913115621', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200913115636', 1, 295, 0, '2020-09-13 11:56:36', 0, 360, '2020-09-14 16:41:44', 1, 10, 1, 16, 'transferencia', 0, '120200913115636', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200914122030', 1, 304, 0, '2020-09-14 12:20:30', 0, 180, '2020-09-19 18:50:41', 1, 10, 1, 16, 'oxxo', 0, '120200914122030', 0, NULL, 0, '93000536865494', '', NULL, NULL, 0),
('120200914182517', 1, 1, 0, '2020-09-14 18:25:17', 0, 460, '2020-09-14 18:26:03', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200914212125', 1, 219, 0, '2020-09-14 21:21:25', 0, 14400, '2021-02-08 22:41:07', 1, 10, 1, 16, 'santander', 0, '120200914212125', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200918191937', 1, 182, 0, '2020-09-18 19:19:37', 0, 180, '2020-10-06 11:49:43', 1, 10, 1, 16, 'oxxo', 0, '120200918191937', 0, NULL, 0, '93000544544156', '', NULL, NULL, 0),
('120200921151954', 1, 296, 0, '2020-09-21 15:19:54', 0, 620, '2020-09-21 20:28:43', 1, 10, 1, 16, 'transferencia', 0, '120200921151954', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200921192728', 1, 1, 0, '2020-09-21 19:27:28', 0, 150, '2020-09-21 19:27:57', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200925232641', 1, 296, 0, '2020-09-25 23:26:41', 0, 220, '2020-09-28 10:31:49', 1, 10, 1, 16, 'bancopel_isc', 0, '120200925232641', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200925232824', 1, 295, 0, '2020-09-25 23:28:24', 0, 360, '2020-10-04 13:48:44', 1, 10, 1, 16, 'bancopel_isc', 0, '120200925232824', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120200926130636', 1, 322, 0, '2020-09-26 13:06:36', 0, 4999, '2020-11-20 19:58:04', 1, 10, 1, 16, 'banamex', 0, '120200926130636', 0, NULL, 0, '0', 'titulos/120200926130636.pdf', NULL, NULL, 0),
('120200928102847', 1, 215, 5, '2020-09-28 10:28:47', 0, 1805, '2020-10-10 12:00:52', 1, 10, 1, 16, 'santander', 0, '120200928102847', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201002122249', 1, 325, 0, '2020-10-02 12:22:49', 0, 150, '2020-10-19 16:01:11', 1, 10, 1, 16, 'oxxo', 0, '120201002122249', 0, NULL, 0, '93000567919905', '', NULL, NULL, 0),
('120201004102140', 1, 296, 0, '2020-10-04 10:21:40', 0, 670, '2020-10-04 13:47:24', 1, 10, 1, 16, 'bancopel_isc', 0, '120201004102140', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201007105346', 1, 266, 0, '2020-10-07 10:53:46', 0, 574, '2020-10-07 13:06:00', 1, 1, 1, 16, 'oxxo', 0, '120201007105346', 0, NULL, 0, '93000575974470', '', NULL, NULL, 0),
('120201008143527', 1, 182, 15, '2020-10-08 14:35:27', 0, 3825, '2020-10-10 12:48:47', 1, 10, 1, 16, 'saldazo', 0, '120201008143527', 0, NULL, 0, '0', 'titulos/120201008143527.pdf', NULL, NULL, 0),
('120201010124929', 1, 318, 0, '2020-10-10 12:49:29', 0, 950, '2020-10-12 14:29:04', 1, 10, 1, 16, 'saldazo', 0, '120201010124929', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201010185030', 1, 292, 0, '2020-10-10 18:50:30', 0, 250, '2020-10-12 14:28:42', 1, 10, 1, 16, 'saldazo', 0, '120201010185030', 0, NULL, 0, '93000581423009', '', NULL, NULL, 0),
('120201010195300', 1, 296, 0, '2020-10-10 19:53:00', 0, 330, '2020-10-12 14:28:36', 1, 10, 1, 16, 'bancopel_isc', 0, '120201010195300', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201010195711', 1, 295, 0, '2020-10-10 19:57:11', 0, 180, '2020-10-10 19:59:00', 1, 10, 1, 16, 'bancopel_isc', 0, '120201010195711', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201012143843', 1, 282, 0, '2020-10-12 14:38:43', 0, 2876.8, '2020-10-12 14:41:37', 1, 10, 1, 16, 'santander', 0, '120201012143843', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201013113045', 1, 182, 0, '2020-10-13 11:30:45', 0, 3500, '2020-10-14 23:31:33', 1, 10, 1, 16, 'santander', 0, '120201013113045', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201015104323', 1, 327, 0, '2020-10-15 10:43:23', 0, 6179, '2020-10-15 14:19:49', 1, 10, 1, 16, 'banamex', 0, '120201015104323', 0, NULL, 0, '0', 'titulos/120201015104323.pdf', NULL, NULL, 0),
('120201015145152', 1, 327, 0, '2020-10-15 14:51:52', 0, 1900, '2020-10-28 12:17:28', 1, 10, 1, 16, 'banamex', 0, '120201015145152', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201015182735', 1, 328, 0, '2020-10-15 18:27:35', 0, 3800, '2020-10-22 17:25:47', 1, 10, 1, 16, 'santander', 0, '120201015182735', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201016110556', 1, 316, 0, '2020-10-16 11:05:56', 0, 300, '2020-11-03 22:33:33', 1, 10, 1, 16, 'oxxo', 0, '120201016110556', 0, NULL, 0, '93000591206030', '', NULL, NULL, 0),
('120201016133426', 1, 182, 15, '2020-10-16 13:34:26', 0, 3825, '2020-10-29 11:43:29', 1, 10, 1, 16, 'saldazo', 0, '120201016133426', 0, NULL, 0, '0', 'titulos/120201016133426.pdf', NULL, NULL, 0),
('120201017200447', 1, 296, 0, '2020-10-17 20:04:47', 0, 400, '2020-10-19 00:08:03', 1, 10, 1, 16, 'bancopel_isc', 0, '120201017200447', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201017200755', 1, 295, 0, '2020-10-17 20:07:55', 0, 810, '2020-10-28 12:17:00', 1, 10, 1, 16, 'bancopel_isc', 0, '120201017200755', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201022091818', 1, 329, 0, '2020-10-22 09:18:18', 0, 5413, '2020-10-23 10:44:29', 1, 10, 1, 16, 'paypal', 0, '120201022091818', 0, NULL, 0, '0', 'titulos/120201022091818.pdf', NULL, NULL, 0),
('120201026125807', 1, 296, 0, '2020-10-26 12:58:07', 0, 1040, '2020-10-28 12:16:54', 1, 10, 1, 16, 'bancopel_isc', 0, '120201026125807', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201030202430', 1, 330, 0, '2020-10-30 20:24:30', 0, 4500, '2020-11-03 19:52:44', 1, 10, 1, 16, 'efectivo', 0, '120201030202430', 0, NULL, 0, '0', 'titulos/120201030202430.pdf', NULL, NULL, 0),
('120201031123410', 1, 1, 0, '2020-10-31 12:34:10', 0, 150, '2020-10-31 12:34:32', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201031205458', 1, 199, 0, '2020-10-31 20:54:58', 0, 1900, '2020-10-31 20:54:58', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201031205521', 1, 210, 0, '2020-10-31 20:55:21', 0, 1800, '2020-10-31 20:55:21', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201103120906', 1, 296, 0, '2020-11-03 12:09:06', 0, 330, '2020-11-09 19:51:51', 1, 10, 1, 16, 'bancopel_isc', 0, '120201103120906', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201103121133', 1, 295, 0, '2020-11-03 12:11:33', 0, 810, '2020-11-23 13:31:28', 1, 10, 1, 16, 'bancopel_isc', 0, '120201103121133', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201106131911', 1, 313, 0, '2020-11-06 13:19:11', 0, 3250, '2020-11-09 19:55:01', 1, 10, 1, 16, 'saldazo', 0, '120201106131911', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201109195210', 1, 296, 0, '2020-11-09 19:52:10', 0, 600, '2020-11-10 13:15:11', 1, 10, 1, 16, 'bancopel_isc', 0, '120201109195210', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201112183932', 1, 290, 0, '2020-11-12 18:39:32', 0, 580, '2020-11-14 11:16:55', 1, 10, 1, 16, 'saldazo', 0, '120201112183932', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201113215420', 1, 182, 0, '2020-11-13 21:54:20', 0, 3500, '2020-11-23 12:41:19', 1, 10, 1, 16, 'banamex', 0, '120201113215420', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201114111404', 1, 198, 0, '2020-11-14 11:14:04', 0, 200, '2020-11-14 11:14:57', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201114212243', 1, 335, 15, '2020-11-14 21:22:43', 0, 6967.45, '2020-11-17 22:22:39', 1, 10, 1, 16, 'banamex', 0, '120201114212243', 0, NULL, 0, '0', 'titulos/120201114212243.pdf', NULL, NULL, 0),
('120201116111144', 1, 296, 0, '2020-11-16 11:11:44', 0, 600, '2020-11-17 10:44:05', 1, 10, 1, 16, 'bancopel_isc', 0, '120201116111144', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201123124946', 1, 296, 0, '2020-11-23 12:49:46', 0, 470, '2020-11-23 23:07:19', 1, 10, 1, 16, 'bancopel_isc', 0, '120201123124946', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201123133155', 1, 295, 0, '2020-11-23 13:31:55', 0, 420, '2020-11-24 13:13:06', 1, 10, 1, 16, 'bancopel_isc', 0, '120201123133155', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201124115412', 1, 198, 0, '2020-11-24 11:54:12', 0, 184, '2020-11-24 11:54:57', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201124161743', 1, 338, 0, '2020-11-24 16:17:43', 0, 4500, '2020-11-26 19:17:19', 1, 10, 1, 16, 'efectivo', 0, '120201124161743', 0, NULL, 0, '0', 'titulos/120201124161743.pdf', NULL, NULL, 0),
('120201124193245', 1, 339, 0, '2020-11-24 19:32:45', 0, 0, '2020-11-24 19:33:20', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201124193540', 1, 339, 0, '2020-11-24 19:35:40', 0, 280, '2020-11-26 19:46:35', 1, 10, 1, 16, 'oxxo', 0, '120201124193540', 0, NULL, 0, '93000672262837', '', NULL, NULL, 0),
('120201126114507', 1, 213, 0, '2020-11-26 11:45:07', 0, 580, '2020-11-26 14:43:09', 1, 10, 1, 16, 'oxxo', 0, '120201126114507', 0, NULL, 0, '93000675997264', '', NULL, NULL, 0),
('120201130103253', 1, 296, 0, '2020-11-30 10:32:53', 0, 440, '2020-12-01 15:43:32', 1, 10, 1, 16, 'bancopel_isc', 0, '120201130103253', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201130174720', 1, 279, 0, '2020-11-30 17:47:20', 0, 500, '2020-12-01 01:25:35', 1, 1, 1, 16, 'bancopel_isc', 0, '120201130174720', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201202115054', 1, 198, 0, '2020-12-02 11:50:54', 0, 192, '2020-12-02 11:51:42', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201207192738', 1, 296, 0, '2020-12-07 19:27:38', 0, 170, '2020-12-12 16:33:15', 1, 10, 1, 16, 'transferencia', 0, '120201207192738', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201210161510', 1, 302, 0, '2020-12-10 16:15:10', 0, 495, '2020-12-10 16:15:54', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201213130813', 1, 294, 0, '2020-12-13 13:08:13', 0, 672.8, '2020-12-15 10:40:47', 1, 10, 1, 16, 'saldazo', 0, '120201213130813', 0, NULL, 0, '0', 'titulos/120201213130813.pdf', NULL, NULL, 0),
('120201214105839', 1, 266, 0, '2020-12-14 10:58:39', 0, 696, '2020-12-15 10:40:18', 1, 10, 1, 16, 'banamex', 0, '120201214105839', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201214162711', 1, 198, 0, '2020-12-14 16:27:11', 0, 81, '2020-12-14 16:28:07', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201215104322', 1, 296, 0, '2020-12-15 10:43:22', 0, 620, '2020-12-15 12:43:47', 1, 10, 1, 16, 'bancopel_isc', 0, '120201215104322', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201215111551', 1, 295, 0, '2020-12-15 11:15:51', 0, 700, '2020-12-15 22:31:06', 1, 10, 1, 16, 'bancopel_isc', 0, '120201215111551', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201218105500', 1, 198, 0, '2020-12-18 10:55:00', 0, 56, '2020-12-18 10:55:46', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201220161404', 1, 343, 0, '2020-12-20 16:14:04', 0, 4999, '2020-12-22 16:15:57', 1, 10, 1, 16, 'bancopel_isc', 0, '120201220161404', 0, NULL, 0, '0', 'titulos/120201220161404.pdf', NULL, NULL, 0),
('120201228170127', 1, 344, 0, '2020-12-28 17:01:27', 0, 3500, '2021-01-06 19:38:09', 1, 10, 1, 16, 'bancopel_isc', 0, '120201228170127', 0, NULL, 0, '0', 'titulos/120201228170127.pdf', NULL, NULL, 0),
('120201230172435', 1, 296, 0, '2020-12-30 17:24:35', 0, 350, '2021-01-13 10:57:02', 1, 10, 1, 16, 'bancopel_isc', 0, '120201230172435', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120201230172644', 1, 295, 0, '2020-12-30 17:26:44', 0, 240, '2021-01-13 10:56:31', 1, 10, 1, 16, 'bancopel_isc', 0, '120201230172644', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210102172906', 1, 316, 0, '2021-01-02 17:29:06', 0, 312, '2021-01-02 17:58:15', 1, 10, 1, 16, 'oxxo', 0, '120210102172906', 0, NULL, 0, '93000766215907', '', NULL, NULL, 0);
INSERT INTO `folio_venta` (`folio`, `vendedor`, `client`, `descuento`, `fecha`, `open`, `cobrado`, `fecha_venta`, `cut`, `sucursal`, `cut_global`, `iva`, `t_pago`, `pedido`, `folio_venta_ini`, `cotizacion`, `concepto`, `comision_pagada`, `oxxo_pay`, `titulo`, `f_entrega`, `estrategia`, `facturar`) VALUES
('120210110121141', 1, 345, 0, '2021-01-10 12:11:41', 0, 140, '2021-01-10 12:13:00', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210112200725', 1, 296, 0, '2021-01-12 20:07:25', 0, 730, '2021-01-13 10:57:25', 1, 10, 1, 16, 'bancopel_isc', 0, '120210112200725', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210112201025', 1, 295, 0, '2021-01-12 20:10:25', 0, 1080, '2021-01-16 14:39:28', 1, 10, 1, 16, 'bancopel_isc', 0, '120210112201025', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210113105038', 1, 277, 0, '2021-01-13 10:50:38', 0, 1900, '2021-01-13 10:50:38', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210114201904', 1, 346, 0, '2021-01-14 20:19:04', 0, 1000, '2021-01-15 11:15:59', 1, 10, 1, 16, 'santander', 0, '120210114201904', 0, NULL, 0, '0', 'titulos/120210114201904.pdf', NULL, NULL, 0),
('120210118203518', 1, 285, 0, '2021-01-18 20:35:18', 0, 928, '2021-01-18 20:38:03', 1, 10, 1, 16, 'banamex', 0, '120210118203518', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210120204658', 1, 295, 0, '2021-01-20 20:46:58', 0, 550, '2021-01-23 12:57:42', 1, 10, 1, 16, 'bancopel_isc', 0, '120210120204658', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210121150755', 1, 335, 0, '2021-01-21 15:07:55', 0, 2900, '2021-02-13 11:22:08', 1, 10, 1, 16, 'bancopel_isc', 0, '120210121150755', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210128145640', 1, 295, 0, '2021-01-28 14:56:40', 0, 120, '2021-02-13 11:20:19', 1, 10, 1, 16, 'bancopel_isc', 0, '120210128145640', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210129143418', 1, 347, 0, '2021-01-29 14:34:18', 0, 425, '2021-02-13 11:18:55', 1, 10, 1, 16, 'bancopel_isc', 0, '120210129143418', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210203135257', 1, 348, 0, '2021-02-03 13:52:57', 0, 4500, '2021-02-03 19:35:41', 1, 10, 1, 16, 'bancopel_isc', 0, '120210203135257', 0, NULL, 0, '0', 'titulos/120210203135257.pdf', NULL, NULL, 0),
('120210204102701', 1, 296, 5, '2021-02-04 10:27:01', 0, 798, '2021-02-04 10:57:50', 1, 10, 1, 16, 'bancopel_isc', 0, '120210204102701', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210204141716', 1, 349, 0, '2021-02-04 14:17:16', 0, 4000, '2021-02-11 12:33:36', 1, 10, 1, 16, 'santander', 0, '120210204141716', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210206153434', 1, 350, 0, '2021-02-06 15:34:34', 0, 400, '2021-02-06 15:38:07', 1, 9, 1, 16, 'efectivo', 0, '120210206153434', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210209190449', 1, 332, 0, '2021-02-09 19:04:49', 0, 400, '2021-02-11 01:27:44', 1, 10, 1, 16, 'paypal', 0, '120210209190449', 0, NULL, 0, '93000869637098', '', NULL, NULL, 0),
('120210210085514', 1, 295, 0, '2021-02-10 08:55:14', 0, 1150, '2021-02-11 01:27:18', 1, 10, 1, 16, 'bancopel_isc', 0, '120210210085514', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210211173109', 1, 354, 0, '2021-02-11 17:31:09', 0, 928, '2021-02-13 11:31:14', 1, 10, 1, 16, 'banamex', 0, '120210211173109', 0, NULL, 0, '0', 'titulos/120210211173109.pdf', NULL, NULL, 0),
('120210212001457', 1, 315, 0, '2021-02-12 00:14:57', 0, 7000, '2021-02-12 18:06:36', 1, 10, 1, 16, 'santander', 0, '120210212001457', 0, NULL, 0, '93000875693093', 'titulos/120210212001457.pdf', NULL, NULL, 0),
('120210212183901', 1, 355, 0, '2021-02-12 18:39:01', 0, 4999, '2021-02-13 11:17:34', 1, 10, 1, 16, 'saldazo', 0, '120210212183901', 0, NULL, 0, '0', 'titulos/120210212183901.pdf', NULL, NULL, 0),
('120210213181913', 1, 357, 40, '2021-02-13 18:19:13', 0, 5847.6, '2021-02-14 13:04:41', 1, 10, 1, 16, 'paypal', 0, '120210213181913', 0, NULL, 0, '0', 'titulos/120210213181913.pdf', NULL, NULL, 0),
('120210217173310', 1, 296, 5, '2021-02-17 17:33:10', 0, 760, '2021-02-18 01:24:23', 1, 10, 1, 16, 'bancopel_isc', 0, '120210217173310', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210220161814', 1, 295, 0, '2021-02-20 16:18:14', 0, 460, '2021-02-21 22:02:53', 1, 10, 1, 16, 'bancopel_isc', 0, '120210220161814', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210221100529', 1, 358, 0, '2021-02-21 10:05:29', 0, 150, '2021-02-21 11:33:20', 1, 10, 1, 16, 'bancopel_isc', 0, '120210221100529', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210222143248', 1, 359, 40, '2021-02-22 14:32:48', 0, 3840, '2021-02-22 18:58:09', 1, 10, 1, 16, 'banamex', 0, '120210222143248', 0, NULL, 0, '0', 'titulos/120210222143248.pdf', NULL, NULL, 0),
('120210225222925', 1, 360, 40, '2021-02-25 22:29:25', 0, 2100, '2021-02-26 22:37:39', 1, 10, 1, 16, 'banamex', 0, '120210225222925', 0, NULL, 0, '0', 'titulos/120210225222925.pdf', NULL, NULL, 0),
('120210304151442', 1, 362, 0, '2021-03-04 15:14:42', 0, 800, '2021-03-08 18:52:17', 1, 10, 1, 16, 'bancopel_isc', 0, '120210304151442', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210315175223', 1, 363, 40, '2021-03-15 17:52:23', 0, 3206.4, '2021-03-15 18:58:46', 1, 10, 1, 16, 'paypal', 0, '120210315175223', 0, NULL, 0, '0', 'titulos/120210315175223.pdf', NULL, NULL, 0),
('120210317200843', 1, 366, 0, '2021-03-17 20:08:43', 0, 0, '2021-03-17 20:09:38', 1, 10, 1, 16, 'efectivo', 0, '120210317200843', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210318000551', 1, 367, 0, '2021-03-18 00:05:51', 0, 4999, '2021-03-18 00:06:45', 1, 10, 1, 16, 'banamex', 0, '120210318000551', 0, NULL, 0, '0', 'titulos/120210318000551.pdf', NULL, NULL, 0),
('120210319144928', 1, 368, 0, '2021-03-19 14:49:28', 0, 4500, '2021-03-19 14:49:52', 1, 10, 1, 16, 'efectivo', 0, '120210319144928', 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210330151444', 1, 371, 10, '2021-03-30 15:14:44', 0, 4499.1, '2021-03-31 18:08:55', 1, 10, 1, 16, 'bancopel_isc', 0, '120210330151444', 0, NULL, 0, '0', 'titulos/120210330151444.pdf', NULL, NULL, 0),
('120210330180545', 1, 372, 0, '2021-03-30 18:05:45', 0, 4500, '2021-03-30 18:13:43', 1, 10, 1, 16, 'transferencia', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210410103800', 1, 198, 0, '2021-04-10 10:38:00', 0, 104, '2021-04-10 10:40:47', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210427191553', 1, 374, 0, '2021-04-27 19:15:53', 0, 4999, '2021-04-27 19:16:46', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', 'titulos/120210427191553.pdf', NULL, NULL, 0),
('120210428141755', 1, 375, 0, '2021-04-28 14:17:55', 0, 4999, '2021-04-28 14:18:07', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', 'titulos/120210428141755.pdf', NULL, NULL, 0),
('120210430152931', 1, 213, 0, '2021-04-30 15:29:31', 0, 1900, '2021-04-30 15:29:31', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210506223451', 1, 348, 0, '2021-05-06 22:34:51', 0, 1900, '2021-05-06 22:35:32', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210517111226', 1, 290, 0, '2021-05-17 11:12:26', 0, 1900, '2021-05-17 11:13:18', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210528134116', 1, 379, 20, '2021-05-28 13:41:16', 0, 3999.2, '2021-05-28 16:24:03', 1, 10, 1, 16, 'santander', 0, '120210528134116', 0, NULL, 0, '0', 'titulos/120210528134116.pdf', NULL, NULL, 0),
('120210607174051', 1, 390, 20, '2021-06-07 17:40:51', 0, 3600, '2021-06-11 19:22:58', 1, 10, 1, 16, 'santander', 0, '120210607174051', 0, NULL, 0, '0', 'titulos/120210607174051.pdf', NULL, NULL, 0),
('120210611180546', 1, 275, 0, '2021-06-11 18:05:46', 0, 540, '2021-06-11 18:06:47', 1, 1, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210611182235', 1, 394, 0, '2021-06-11 18:22:35', 0, 147, '2021-06-11 18:23:32', 1, 9, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120210612164732', 1, 198, 0, '2021-06-12 16:47:32', 0, 80, '2021-06-12 16:48:18', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221011200900', 1, 215, 0, '2022-10-11 20:09:00', 0, 1900, '2022-10-11 20:09:00', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221012153041', 1, 418, 0, '2022-10-12 15:30:41', 0, 600, '2022-10-12 15:30:41', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221012181556', 1, 420, 0, '2022-10-12 18:15:56', 0, 2300, '2022-10-12 18:15:56', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221012181621', 1, 420, 0, '2022-10-12 18:16:21', 0, 2300, '2022-10-12 18:16:21', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221012182540', 1, 226, 0, '2022-10-12 18:25:40', 0, 555, '2022-10-12 18:25:40', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221013154709', 1, 421, 0, '2022-10-13 15:47:09', 0, 1800, '2022-10-13 15:47:09', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221013154746', 1, 421, 0, '2022-10-13 15:47:46', 0, 1800, '2022-10-13 15:47:46', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221013210019', 1, 422, 0, '2022-10-13 21:00:19', 0, 8000, '2022-10-19 15:28:06', 1, 10, 1, 16, 'Santander', 0, '120221013210019', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221018212021', 1, 424, 0, '2022-10-18 21:20:21', 0, 4500, '2022-10-18 21:21:05', 1, 10, 1, 16, 'efectivo', 0, '120221018212021', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221020175220', 1, 290, 0, '2022-10-20 17:52:20', 0, 693.68, '2022-11-29 20:26:42', 1, 10, 1, 16, 'bancopel_isc', 0, '120221020175220', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221021212747', 1, 426, 0, '2022-10-21 21:27:47', 0, 5200, '2022-10-21 21:29:03', 1, 1, 1, 16, 'efectivo', 0, '120221021212747', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221025002849', 1, 199, 0, '2022-10-25 00:28:49', 0, 1900, '2022-10-25 00:28:49', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221025003149', 1, 296, 5, '2022-10-25 00:31:49', 0, 760, '2022-10-26 03:43:48', 1, 1, 1, 16, 'bancopel_isc', 0, '120221025003149', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221030020833', 1, 427, 0, '2022-10-30 02:08:33', 0, 400, '2022-10-30 02:09:27', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221104195101', 1, 428, 0, '2022-11-04 19:51:01', 0, 450, '2022-11-04 19:51:34', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221107212338', 1, 398, 0, '2022-11-07 21:23:38', 0, 700, '2022-11-07 21:23:38', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221108172455', 1, 433, 0, '2022-11-08 17:24:55', 0, 5200, '2022-11-17 01:18:37', 1, 10, 1, 16, 'Santander', 0, '120221108172455', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221108173337', 1, 274, 0, '2022-11-08 17:33:37', 0, 600, '2022-11-08 17:33:37', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221108194502', 1, 432, 0, '2022-11-08 19:45:02', 0, 5200, '2022-11-24 18:48:55', 1, 1, 1, 16, 'Santander', 0, '120221108194502', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221110192725', 1, 420, 0, '2022-11-10 19:27:25', 0, 2300, '2022-11-10 19:27:25', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221115181348', 1, 1, 0, '2022-11-15 18:13:48', 0, 500, '2022-11-15 18:14:50', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221115181537', 1, 1, 0, '2022-11-15 18:15:37', 0, 700, '2022-11-15 18:15:58', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221121214836', 1, 435, 0, '2022-11-21 21:48:36', 0, 300, '2022-11-21 21:48:55', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221121215053', 1, 435, 0, '2022-11-21 21:50:53', 0, 300, '2022-11-21 21:50:53', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221122182334', 1, 436, 0, '2022-11-22 18:23:34', 0, 1900, '2022-11-22 18:23:34', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221122183026', 1, 437, 0, '2022-11-22 18:30:26', 0, 1900, '2022-11-22 18:30:26', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221122183103', 1, 219, 0, '2022-11-22 18:31:03', 0, 700, '2022-11-22 18:31:03', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221122183139', 1, 182, 0, '2022-11-22 18:31:39', 0, 1900, '2022-11-22 18:31:39', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221122183250', 1, 290, 0, '2022-11-22 18:32:50', 0, 1999, '2022-11-22 18:32:50', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221124202231', 1, 421, 0, '2022-11-24 20:22:31', 0, 1800, '2022-11-24 20:22:31', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221129170330', 1, 438, 0, '2022-11-29 17:03:30', 0, 199, '2022-11-29 17:03:30', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221129173407', 1, 290, 0, '2022-11-29 17:34:07', 0, 693.68, '2022-11-29 17:34:07', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221129204339', 1, 408, 0, '2022-11-29 20:43:39', 0, 600, '2022-11-29 20:43:39', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221203175424', 1, 433, 15, '2022-12-03 17:54:24', 0, 4420, '2022-12-12 18:07:03', 1, 1, 1, 16, 'bancopel_isc', 0, '120221203175424', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221212180827', 1, 439, 0, '2022-12-12 18:08:27', 0, 4698, '2022-12-12 18:09:27', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120221212183208', 1, 433, 15, '2022-12-12 18:32:08', 0, 4420, '2022-12-12 18:35:03', 1, 10, 1, 16, 'efectivo', 0, '120221212183208', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221213005930', 1, 420, 0, '2022-12-13 00:59:30', 0, 2300, '2022-12-13 00:59:30', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221214232820', 1, 440, 0, '2022-12-14 23:28:20', 0, 1300, '2022-12-14 23:28:20', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221218213908', 1, 433, 15, '2022-12-18 21:39:08', 0, 4420, '2022-12-19 18:51:48', 1, 1, 1, 16, 'bancopel_isc', 0, '120221218213908', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221220173644', 1, 441, 0, '2022-12-20 17:36:44', 0, 5200, '2022-12-20 17:37:23', 1, 10, 1, 16, 'efectivo', 0, '120221220173644', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221226190115', 1, 420, 0, '2022-12-26 19:01:15', 0, 2300, '2022-12-26 19:01:15', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221226190145', 1, 421, 0, '2022-12-26 19:01:45', 0, 1800, '2022-12-26 19:01:45', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221226190331', 1, 435, 0, '2022-12-26 19:03:31', 0, 300, '2022-12-26 19:03:31', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221226194831', 1, 219, 0, '2022-12-26 19:48:31', 0, 700, '2022-12-26 19:48:31', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221226201257', 1, 433, 15, '2022-12-26 20:12:57', 0, 4420, '2022-12-26 20:14:13', 1, 1, 1, 16, 'efectivo', 0, '120221226201257', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221228023443', 1, 447, 0, '2022-12-28 02:34:43', 0, 5200, '2022-12-28 02:35:28', 1, 10, 1, 16, 'efectivo', 0, '120221228023443', 0, NULL, 0, '0', '', NULL, 1, 0),
('120221228174614', 1, 210, 0, '2022-12-28 17:46:14', 0, 1500, '2022-12-28 17:46:14', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120221228174635', 1, 210, 0, '2022-12-28 17:46:35', 0, 1500, '2022-12-28 17:46:35', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230102221255', 1, 448, 0, '2023-01-02 22:12:55', 0, 2500, '2023-01-02 22:12:55', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230102221335', 1, 448, 0, '2023-01-02 22:13:35', 0, 2500, '2023-01-02 22:13:35', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230103214200', 1, 290, 0, '2023-01-03 21:42:00', 0, 693.68, '2023-01-03 21:42:00', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230103214252', 1, 408, 0, '2023-01-03 21:42:52', 0, 600, '2023-01-03 21:42:52', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230103222022', 1, 449, 0, '2023-01-03 22:20:22', 0, 0, '2023-01-03 22:21:23', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230110161258', 1, 450, 0, '2023-01-10 16:12:58', 0, 300, '2023-01-10 16:12:58', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230119175821', 1, 420, 0, '2023-01-19 17:58:21', 0, 2300, '2023-01-19 17:58:21', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230127212012', 1, 452, 0, '2023-01-27 21:20:12', 0, 10800, '2023-01-27 21:21:24', 1, 10, 1, 16, 'bancopel_arlene', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230130200054', 1, 448, 0, '2023-01-30 20:00:54', 0, 2500, '2023-01-30 20:00:54', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230131214018', 1, 1, 0, '2023-01-31 21:40:18', 0, 128, '2023-02-01 21:47:28', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230131214036', 1, 1, 0, '2023-01-31 21:40:36', 0, 900, '2023-01-31 21:41:00', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230207234628', 1, 1, 0, '2023-02-07 23:46:28', 0, 2500, '2023-02-07 23:47:20', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230210200032', 1, 210, 0, '2023-02-10 20:00:32', 0, 1500, '2023-02-10 20:00:32', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230220195054', 1, 1, 0, '2023-02-20 19:50:54', 0, 900, '2023-02-20 19:51:21', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230221162624', 1, 450, 0, '2023-02-21 16:26:24', 0, 300, '2023-02-21 16:26:24', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230221184925', 1, 405, 0, '2023-02-21 18:49:25', 0, 2800, '2023-02-21 18:49:25', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230221191207', 1, 448, 0, '2023-02-21 19:12:07', 0, 2500, '2023-02-21 19:12:07', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230221192703', 1, 1, 0, '2023-02-21 19:27:03', 0, 9486, '2023-02-21 19:30:17', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230222210704', 1, 456, 0, '2023-02-22 21:07:04', 0, 0, '2023-02-22 21:08:05', 1, 10, 1, 16, 'paypal', 0, '120230222210704', 0, NULL, 0, '0', '', NULL, 1, 0),
('120230223222142', 1, 1, 0, '2023-02-23 22:21:42', 0, 150, '2023-02-23 22:21:57', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230227191522', 1, 457, 0, '2023-02-27 19:15:22', 0, 1, '2023-02-27 19:16:04', 1, 10, 1, 16, 'efectivo', 0, '120230227191522', 0, NULL, 0, '0', '', NULL, 1, 0),
('120230228040225', 1, 420, 0, '2023-02-28 04:02:25', 0, 2300, '2023-02-28 04:02:25', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230228041645', 1, 1, 0, '2023-02-28 04:16:45', 0, 90, '2023-02-28 04:16:56', 1, 10, 1, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230310231734', 1, 1, 0, '2023-03-10 23:17:34', 0, 460, '2023-03-10 23:39:46', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230315224146', 1, 458, 0, '2023-03-15 22:41:46', 0, 0, '2023-03-15 22:42:07', 1, 10, 0, 16, 'efectivo', 0, '120230315224146', 0, NULL, 0, '0', '', NULL, 1, 0),
('120230318183303', 1, 448, 0, '2023-03-18 18:33:03', 0, 2000, '2023-03-18 18:33:03', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230323191244', 1, 1, 0, '2023-03-23 19:12:44', 0, 150, '2023-03-23 19:27:17', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230323201659', 1, 400, 0, '2023-03-23 20:16:59', 0, 1900, '2023-03-23 20:16:59', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230324085339', 1, 460, 0, '2023-03-24 08:53:39', 0, 650, '2023-03-24 08:53:39', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230324232839', 1, 1, 0, '2023-03-24 23:28:39', 0, 100, '2023-03-25 02:51:34', 1, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('120230325085530', 1, 1, 0, '2023-03-25 08:55:30', 1, NULL, NULL, 0, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, NULL, 0),
('120230325085538', 1, 463, 0, '2023-03-25 08:55:38', 0, 90, '2023-03-27 12:20:05', 0, 10, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0, '0', '', NULL, 1, 0),
('20190819205346', 1, 1, 0, '2019-08-19 20:53:46', 0, 860, '2019-08-19 20:53:46', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'clta parque leydi', 1, '0', '', NULL, NULL, 0),
('20190819205425', 1, 1, 0, '2019-08-19 20:54:25', 0, 860, '2019-08-19 20:54:25', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'a', 1, '0', '', NULL, NULL, 0),
('20200624211257', 1, 1, 0, '2020-06-24 21:12:57', 0, 830, '2020-06-24 21:12:57', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Joselin', 0, '0', '', NULL, NULL, 0),
('20200624211710', 1, 1, 0, '2020-06-24 21:17:10', 0, -100, '2020-06-24 21:17:10', 1, 1, 1, 0, 'efectivo', 0, '', 0, '2 ACTAS NACIMIENTO', 0, '0', '', NULL, NULL, 0),
('20200625205804', 1, 1, 0, '2020-06-25 20:58:04', 0, -23, '2020-06-25 20:58:04', 1, 10, 1, 0, 'efectivo', 0, '', 0, '3820200625124629 Producto', 0, '0', '', NULL, NULL, 0),
('20200625212347', 1, 1, 0, '2020-06-25 21:23:47', 0, 410, '2020-06-25 21:23:47', 1, 10, 1, 0, 'efectivo', 0, '', 0, '1 RECARGA 50 MXN ', 0, '0', '', NULL, NULL, 0),
('20200626170633', 1, 1, 0, '2020-06-26 17:06:33', 0, -200, '2020-06-26 17:06:33', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'Servicio luz', 0, '0', '', NULL, NULL, 0),
('20200626172124', 1, 1, 0, '2020-06-26 17:21:24', 0, -4172, '2020-06-26 17:21:24', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'temporal', 0, '0', '', NULL, NULL, 0),
('20200626210546', 1, 1, 0, '2020-06-26 21:05:46', 0, 510, '2020-06-26 21:05:46', 1, 1, 1, 0, 'efectivo', 0, '', 0, '43', 0, '0', '', NULL, NULL, 0),
('20200627202651', 1, 1, 0, '2020-06-27 20:26:51', 0, 450, '2020-06-27 20:26:51', 1, 1, 1, 0, 'efectivo', 0, '', 0, '43', 0, '0', 'titulos/20200627202651.pdf', NULL, NULL, 0),
('20200629200015', 1, 1, 0, '2020-06-29 20:00:15', 0, -80, '2020-06-29 20:00:15', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Recargas ', 0, '0', '', NULL, NULL, 0),
('20200629200154', 1, 1, 0, '2020-06-29 20:01:54', 0, 120, '2020-06-29 20:01:54', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'USB 16 GB', 0, '0', '', NULL, NULL, 0),
('20200629204459', 1, 1, 0, '2020-06-29 20:44:59', 0, 700, '2020-06-29 20:44:59', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c. 43, caja 17', 0, '0', '', NULL, NULL, 0),
('20200629204618', 1, 1, 0, '2020-06-29 20:46:18', 0, -120, '2020-06-29 20:46:18', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Ajuste USB', 0, '0', '', NULL, NULL, 0),
('20200630160057', 1, 1, 0, '2020-06-30 16:00:57', 0, -4000, '2020-06-30 16:00:57', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Faltante de Renta ', 0, '0', '', NULL, NULL, 0),
('20200630203337', 1, 1, 0, '2020-06-30 20:33:37', 0, 785, '2020-06-30 20:33:37', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c 43', 0, '0', '', NULL, NULL, 0),
('20200701173727', 1, 1, 0, '2020-07-01 17:37:27', 0, 365, '2020-07-01 17:37:27', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200702112909', 1, 1, 0, '2020-07-02 11:29:09', 0, 861, '2020-07-02 11:29:09', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200702191007', 1, 1, 0, '2020-07-02 19:10:07', 0, 2295, '2020-07-02 19:10:07', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200703093612', 1, 1, 0, '2020-07-03 09:36:12', 0, -200, '2020-07-03 09:36:12', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Recargas', 0, '0', '', NULL, NULL, 0),
('20200703093813', 1, 1, 0, '2020-07-03 09:38:13', 0, -1145, '2020-07-03 09:38:13', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Disco duro para refaccion', 0, '0', '', NULL, NULL, 0),
('20200703111621', 1, 1, 0, '2020-07-03 11:16:21', 0, -200, '2020-07-03 11:16:21', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Miguel electrico', 0, '0', '', NULL, NULL, 0),
('20200703125948', 1, 1, 0, '2020-07-03 12:59:48', 0, -1201, '2020-07-03 12:59:48', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'TELMEX 06', 0, '0', '', NULL, NULL, 0),
('20200703130040', 1, 1, 0, '2020-07-03 13:00:40', 0, -399, '2020-07-03 13:00:40', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'TELMEX 05', 0, '0', '', NULL, NULL, 0),
('20200703130109', 1, 1, 0, '2020-07-03 13:01:09', 0, -474, '2020-07-03 13:01:09', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'TELMEX', 0, '0', '', NULL, NULL, 0),
('20200703190715', 1, 1, 0, '2020-07-03 19:07:15', 0, 800, '2020-07-03 19:07:15', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200703204000', 1, 1, 0, '2020-07-03 20:40:00', 0, 50, '2020-07-03 20:40:00', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200704200116', 1, 1, 0, '2020-07-04 20:01:16', 0, 610, '2020-07-04 20:01:16', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Dominio zacatecas', 0, '0', '', NULL, NULL, 0),
('20200705210438', 1, 1, 0, '2020-07-05 21:04:38', 0, 640, '2020-07-05 21:04:38', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200706210641', 1, 1, 0, '2020-07-06 21:06:41', 0, 862, '2020-07-06 21:06:41', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200706211040', 1, 1, 0, '2020-07-06 21:10:40', 0, -1400, '2020-07-06 21:10:40', 1, 10, 1, 0, 'efectivo', 0, '', 0, '88 MARIBEL', 0, '0', '', NULL, NULL, 0),
('20200707162918', 1, 1, 0, '2020-07-07 16:29:18', 0, -250, '2020-07-07 16:29:18', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'actas', 0, '0', '', NULL, NULL, 0),
('20200707163022', 1, 1, 0, '2020-07-07 16:30:22', 0, -450, '2020-07-07 16:30:22', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Diseño tarjetas', 0, '0', '', NULL, NULL, 0),
('20200707212313', 1, 1, 0, '2020-07-07 21:23:13', 0, 100, '2020-07-07 21:23:13', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200707212405', 1, 1, 0, '2020-07-07 21:24:05', 0, 965, '2020-07-07 21:24:05', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200707212447', 1, 1, 0, '2020-07-07 21:24:47', 0, -1500, '2020-07-07 21:24:47', 1, 1, 1, 0, 'efectivo', 0, '', 0, '88 JOSELIN', 0, '0', '', NULL, NULL, 0),
('20200707212941', 1, 1, 0, '2020-07-07 21:29:41', 0, -4479, '2020-07-07 21:29:41', 1, 10, 1, 0, 'efectivo', 0, '', 0, '', 0, '0', '', NULL, NULL, 0),
('20200708210619', 1, 1, 0, '2020-07-08 21:06:19', 0, 1078, '2020-07-08 21:06:19', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200708210651', 1, 1, 0, '2020-07-08 21:06:51', 0, 2000, '2020-07-08 21:06:51', 1, 10, 1, 0, 'efectivo', 0, '', 0, '88 ADEUDO TIA MARIA', 0, '0', '', NULL, NULL, 0),
('20200709205922', 1, 1, 0, '2020-07-09 20:59:22', 0, -120, '2020-07-09 20:59:22', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Ajuste usb ', 0, '0', '', NULL, NULL, 0),
('20200709212736', 1, 1, 0, '2020-07-09 21:27:36', 0, 500, '2020-07-09 21:27:36', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200712201842', 1, 1, 0, '2020-07-12 20:18:42', 0, 215, '2020-07-12 20:18:42', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200712201918', 1, 1, 0, '2020-07-12 20:19:18', 0, 1800, '2020-07-12 20:19:18', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'Dysplay HP', 0, '0', '', NULL, NULL, 0),
('20200713141852', 1, 1, 0, '2020-07-13 14:18:52', 0, -400, '2020-07-13 14:18:52', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'recargas', 0, '0', '', NULL, NULL, 0),
('20200713141925', 1, 1, 0, '2020-07-13 14:19:25', 0, -6900, '2020-07-13 14:19:25', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Reenvolso taxi', 0, '0', '', NULL, NULL, 0),
('20200713141945', 1, 1, 0, '2020-07-13 14:19:45', 0, -1020, '2020-07-13 14:19:45', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Pago arlene ', 0, '0', '', NULL, NULL, 0),
('20200713142015', 1, 1, 0, '2020-07-13 14:20:15', 0, -400, '2020-07-13 14:20:15', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Ac5tas prospero', 0, '0', '', NULL, NULL, 0),
('20200714205609', 1, 1, 0, '2020-07-14 20:56:09', 0, -350, '2020-07-14 20:56:09', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200716161642', 1, 1, 0, '2020-07-16 16:16:42', 0, -5914, '2020-07-16 16:16:42', 1, 10, 1, 0, 'efectivo', 0, '', 0, '2 KIT TONER COLOR, FUSOR PABLO', 0, '0', '', NULL, NULL, 0),
('20200716161817', 1, 1, 0, '2020-07-16 16:18:17', 0, -580, '2020-07-16 16:18:17', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Paquete de hoja', 0, '0', '', NULL, NULL, 0),
('20200716222621', 1, 1, 0, '2020-07-16 22:26:21', 0, 250, '2020-07-16 22:26:21', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200717205446', 1, 1, 0, '2020-07-17 20:54:46', 0, 405, '2020-07-17 20:54:46', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200717210928', 1, 1, 0, '2020-07-17 21:09:28', 0, -4200, '2020-07-17 21:09:28', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'leydi y renta ', 0, '0', '', NULL, NULL, 0),
('20200719162822', 1, 1, 0, '2020-07-19 16:28:22', 0, 300, '2020-07-19 16:28:22', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200722114427', 1, 1, 0, '2020-07-22 11:44:27', 0, 1500, '2020-07-22 11:44:27', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200722114500', 1, 1, 0, '2020-07-22 11:45:00', 0, -1400, '2020-07-22 11:45:00', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'maribel', 0, '0', '', NULL, NULL, 0),
('20200723105020', 1, 1, 0, '2020-07-23 10:50:20', 0, 350, '2020-07-23 10:50:20', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200723184657', 1, 1, 0, '2020-07-23 18:46:57', 0, -260, '2020-07-23 18:46:57', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'agua', 0, '0', '', NULL, NULL, 0),
('20200723184721', 1, 1, 0, '2020-07-23 18:47:21', 0, -300, '2020-07-23 18:47:21', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'agua', 0, '0', '', NULL, NULL, 0),
('20200724194941', 1, 1, 0, '2020-07-24 19:49:41', 0, 450, '2020-07-24 19:49:41', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200724201119', 1, 1, 0, '2020-07-24 20:11:19', 0, -1750, '2020-07-24 20:11:19', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'acceosios  liente', 0, '0', '', NULL, NULL, 0),
('20200724201723', 1, 1, 0, '2020-07-24 20:17:23', 0, -550, '2020-07-24 20:17:23', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'rele', 0, '0', '', NULL, NULL, 0),
('20200731214643', 1, 1, 0, '2020-07-31 21:46:43', 0, 2000, '2020-07-31 21:46:43', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'c43 pd', 0, '0', '', NULL, NULL, 0),
('20200731214745', 1, 1, 0, '2020-07-31 21:47:45', 0, -12200, '2020-07-31 21:47:45', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'gastos y pagos', 0, '0', '', NULL, NULL, 0),
('20200801154919', 1, 1, 0, '2020-08-01 15:49:19', 0, -7000, '2020-07-31 15:49:19', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'renta', 0, '0', '', NULL, NULL, 0),
('20200803182850', 1, 1, 0, '2020-08-03 18:28:50', 0, -7000, '2020-07-31 18:28:50', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Abono ricardo', 0, '0', '', NULL, NULL, 0),
('20200803183324', 1, 1, 0, '2020-08-03 18:33:24', 0, -573.95, '2020-07-31 18:33:24', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'electra y otros gastos', 0, '0', '', NULL, NULL, 0),
('20200803183600', 1, 1, 0, '2020-08-03 18:36:00', 0, 695, '2020-08-03 18:36:00', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200803183812', 1, 1, 0, '2020-08-03 18:38:12', 0, -240, '2020-08-01 18:38:12', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'ascgar', 0, '0', '', NULL, NULL, 0),
('20200803205417', 1, 1, 0, '2020-08-03 20:54:17', 0, 585, '2020-08-03 20:54:17', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200804185921', 1, 1, 0, '2020-08-04 18:59:21', 0, 430, '2020-08-04 18:59:21', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200804193941', 1, 1, 0, '2020-08-04 19:39:41', 0, 465, '2020-08-04 19:39:41', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200805184922', 1, 1, 0, '2020-08-05 18:49:22', 0, 370, '2020-08-05 18:49:22', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200805201455', 1, 1, 0, '2020-08-05 20:14:55', 0, 460, '2020-08-05 20:14:55', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200806203914', 1, 1, 0, '2020-08-06 20:39:14', 0, -250, '2020-08-06 20:39:14', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'recargas', 0, '0', '', NULL, NULL, 0),
('20200806204147', 1, 1, 0, '2020-08-06 20:41:47', 0, 650, '2020-08-06 20:41:47', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200806204251', 1, 1, 0, '2020-08-06 20:42:51', 0, -1500, '2020-08-06 20:42:51', 1, 1, 1, 0, 'efectivo', 0, '', 0, '88 Joselin', 0, '0', '', NULL, NULL, 0),
('20200807112047', 1, 1, 0, '2020-08-07 11:20:47', 0, -1200, '2020-08-07 11:20:47', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200807112126', 1, 1, 0, '2020-08-07 11:21:26', 0, -400, '2020-08-07 11:21:26', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'telmex', 0, '0', '', NULL, NULL, 0),
('20200807112534', 1, 1, 0, '2020-08-07 11:25:34', 0, -100, '2020-08-07 11:25:34', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'actas', 0, '0', '', NULL, NULL, 0),
('20200807185212', 1, 1, 0, '2020-08-07 18:52:12', 0, 890, '2020-08-07 18:52:12', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200807195436', 1, 1, 0, '2020-08-07 19:54:36', 0, 535, '2020-08-07 19:54:36', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200807195737', 1, 1, 0, '2020-08-07 19:57:37', 0, -240, '2020-08-07 19:57:37', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'usb Arlene', 0, '0', '', NULL, NULL, 0),
('20200808191118', 1, 1, 0, '2020-08-08 19:11:18', 0, 300, '2020-08-08 19:11:18', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200808203204', 1, 1, 0, '2020-08-08 20:32:04', 0, 300, '2020-08-08 20:32:04', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C44', 0, '0', '', NULL, NULL, 0),
('20200809171603', 1, 1, 0, '2020-08-09 17:16:03', 0, 250, '2020-08-09 17:16:03', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200810191658', 1, 1, 0, '2020-08-10 19:16:58', 0, 1045, '2020-08-10 19:16:58', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200810193235', 1, 1, 0, '2020-08-10 19:32:35', 0, 640, '2020-08-10 19:32:35', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200810194109', 1, 1, 0, '2020-08-10 19:41:09', 0, -650, '2020-08-10 19:41:09', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Telmex 101 y actas ', 0, '0', '', NULL, NULL, 0),
('20200811195642', 1, 1, 0, '2020-08-11 19:56:42', 0, 900, '2020-08-11 19:56:42', 1, 9, 1, 0, 'efectivo', 0, '', 0, '43', 0, '0', '', NULL, NULL, 0),
('20200811200214', 1, 1, 0, '2020-08-11 20:02:14', 0, 655, '2020-08-11 20:02:14', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200813195405', 1, 1, 0, '2020-08-13 19:54:05', 0, 830, '2020-08-13 19:54:05', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200813195422', 1, 1, 0, '2020-08-13 19:54:22', 0, 920, '2020-08-13 19:54:22', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200815201631', 1, 1, 0, '2020-08-15 20:16:31', 0, 360, '2020-08-15 20:16:31', 1, 9, 1, 0, 'efectivo', 0, '', 0, '43', 0, '0', '', NULL, NULL, 0),
('20200815201649', 1, 1, 0, '2020-08-15 20:16:49', 0, 506, '2020-08-15 20:16:49', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200815201730', 1, 1, 0, '2020-08-15 20:17:30', 0, 800, '2020-08-15 20:17:30', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'C43 ', 0, '0', '', NULL, NULL, 0),
('20200815201750', 1, 1, 0, '2020-08-15 20:17:50', 0, -716, '2020-08-15 20:17:50', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Ascgar.com', 0, '0', '', NULL, NULL, 0),
('20200815202046', 1, 1, 0, '2020-08-15 20:20:46', 0, -4120, '2020-08-15 20:20:46', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Chapa, caller Id, próspero, actas', 0, '0', '', NULL, NULL, 0),
('20200816204911', 1, 1, 0, '2020-08-16 20:49:11', 0, 600, '2020-08-16 20:49:11', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200816204942', 1, 1, 0, '2020-08-16 20:49:42', 0, -1010, '2020-08-16 20:49:42', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'actas+guias', 0, '0', '', NULL, NULL, 0),
('20200816205005', 1, 1, 0, '2020-08-16 20:50:05', 0, -360, '2020-08-16 20:50:05', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'radio baofeng', 0, '0', '', NULL, NULL, 0),
('20200817191243', 1, 1, 0, '2020-08-17 19:12:43', 0, 1540, '2020-08-17 19:12:43', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200817191323', 1, 1, 0, '2020-08-17 19:13:23', 0, 955, '2020-08-17 19:13:23', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200817222008', 1, 1, 0, '2020-08-17 22:20:08', 0, -2753, '2020-08-17 22:20:08', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'Guias, disco duro, lector de huella ', 0, '0', '', NULL, NULL, 0),
('20200818194822', 1, 1, 0, '2020-08-18 19:48:22', 0, 845, '2020-08-18 19:48:22', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200818194855', 1, 1, 0, '2020-08-18 19:48:55', 0, 785, '2020-08-18 19:48:55', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200820192415', 1, 1, 0, '2020-08-20 19:24:15', 0, 940, '2020-08-20 19:24:15', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200820192437', 1, 1, 0, '2020-08-20 19:24:37', 0, 690, '2020-08-20 19:24:37', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200821215024', 1, 1, 0, '2020-08-21 21:50:24', 0, 1125, '2020-08-21 21:50:24', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200821215048', 1, 1, 0, '2020-08-21 21:50:48', 0, 700, '2020-08-21 21:50:48', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200821215107', 1, 1, 0, '2020-08-21 21:51:07', 0, -1500, '2020-08-21 21:51:07', 1, 10, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200822182253', 1, 1, 0, '2020-08-22 18:22:53', 0, 295, '2020-08-22 18:22:53', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'C43', 0, '0', '', NULL, NULL, 0),
('20200824192452', 1, 1, 0, '2020-08-24 19:24:52', 0, 1110, '2020-08-24 19:24:52', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200824192546', 1, 1, 0, '2020-08-24 19:25:46', 0, 1275, '2020-08-24 19:25:46', 1, 1, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0),
('20200908185430', 1, 1, 0, '2020-09-08 18:54:30', 0, 1295, '2020-09-08 18:54:30', 1, 9, 1, 0, 'efectivo', 0, '', 0, 'c43', 0, '0', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidades`
--

CREATE TABLE `mensualidades` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `concepto` varchar(254) NOT NULL,
  `price` float NOT NULL,
  `day` int(11) NOT NULL,
  `last_pay` datetime NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensualidades`
--

INSERT INTO `mensualidades` (`id`, `client`, `concepto`, `price`, `day`, `last_pay`, `active`) VALUES
(3, 408, 'SISTEMA CTRL SOCIOS 12 MESES X 600 PESOS - IN SEP 22 - FIN SEP 23', 600, 9, '2023-01-03 21:42:52', 0),
(9, 438, 'https://ferrelapasadita.000webhostapp.com/', 199, 29, '2022-11-29 17:03:30', 0),
(10, 290, 'https://caldereta.000webhostapp.com/', 693.68, 28, '2023-01-03 21:42:00', 0),
(11, 450, 'Control de socios Renta', 300, 10, '2023-02-21 16:26:24', 0),
(12, 460, '0hostelsystem.000webhostapp.com', 650, 24, '2023-03-24 08:53:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_buy`
--

CREATE TABLE `order_buy` (
  `id` int(11) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `user` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `unidades` int(11) NOT NULL,
  `pagar` decimal(64,2) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `order_buy`
--

INSERT INTO `order_buy` (`id`, `folio`, `user`, `fecha`, `unidades`, `pagar`, `estatus`) VALUES
(37, '20221008040524', 1, '2022-10-08 04:05:24', 23, 11500.00, 1),
(38, '20230128233552', 1, '2023-01-28 23:35:52', 0, 0.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_buy_products`
--

CREATE TABLE `order_buy_products` (
  `id` int(11) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `product` int(11) NOT NULL,
  `hijo` int(11) NOT NULL,
  `pedir` int(11) NOT NULL,
  `almacen` int(11) NOT NULL,
  `costo` decimal(64,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `order_buy_products`
--

INSERT INTO `order_buy_products` (`id`, `folio`, `product`, `hijo`, `pedir`, `almacen`, `costo`) VALUES
(641, '20221008040524', 4, 0, 23, 3, 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `no. De parte` varchar(254) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `descripcion` longtext NOT NULL,
  `almacen` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `loc_almacen` varchar(254) NOT NULL,
  `marca` varchar(254) NOT NULL,
  `proveedor` varchar(254) NOT NULL,
  `foto0` varchar(254) NOT NULL,
  `foto1` varchar(254) NOT NULL,
  `foto2` varchar(254) NOT NULL,
  `foto3` varchar(254) NOT NULL,
  `oferta` tinyint(1) NOT NULL DEFAULT 0,
  `precio_normal` float NOT NULL DEFAULT 0,
  `precio_oferta` float NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL,
  `tiempo de entrega` varchar(254) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock_max` int(11) NOT NULL,
  `precio_costo` float NOT NULL DEFAULT 0,
  `cv` varchar(254) NOT NULL DEFAULT '01010101',
  `um` varchar(254) NOT NULL DEFAULT 'H87',
  `um_des` varchar(254) NOT NULL DEFAULT 'NA',
  `pedir_medidas` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `no. De parte`, `nombre`, `descripcion`, `almacen`, `departamento`, `loc_almacen`, `marca`, `proveedor`, `foto0`, `foto1`, `foto2`, `foto3`, `oferta`, `precio_normal`, `precio_oferta`, `stock`, `tiempo de entrega`, `stock_min`, `stock_max`, `precio_costo`, `cv`, `um`, `um_des`, `pedir_medidas`) VALUES
(2, '290514', 'SISTEMA HOTELERO', 'Software para hoteles y moteles ...', 3, 37, 'CLOUD', 'CLTA', 'CLTA', 'product/product_img120221007231745.jpg', 'product/product_img220190819113601.jpg', 'product/product_img320190819113601.jpg', 'product/product_img420190819113601.jpg', 0, 4500, 4300, 4973, 'INMEDIATO', 1000, 10000, 0, '43232300', 'XUN', 'LICENCIA VITALICIA', 0),
(3, '290515', 'CONTROL DE SOCIOS GOLDEN', 'Sistema hotelero, administra mejor tu hotel o motel. ', 3, 37, 'CLOUD', 'CLTA', 'CLTA', 'product/product_img120221007231706.jpg', 'product/product_img220190819114221.jpg', 'product/product_img320190819114221.jpg', 'product/product_img420190819114221.jpg', 0, 5400, 4600, 4930, 'INMEDIATO', 1000, 10000, 0, '43232300', 'XUN', 'LICENCIA VITALICIA', 0),
(4, 'rele_v2', 'Circuito Relevador Usb (no/nc), Rele, Relevador', 'torniquetes, chapas electricas, compuertas', 3, 38, 'ZYHC', 'CLTA', 'CLTA', 'product/product_img120221009073601.jpg', 'product/product_img220190819120614.jpg', 'product/product_img320190819120614.jpg', 'product/product_img420190819120614.jpg', 0, 2300, 1900, 4, '1 DIA HABIL', 1, 4, 500, '32101600', 'H87', 'PIEZA', 0),
(5, '500013-001-103', 'Lector Digital Person 4500 UAERE', 'Lector de huella Usb, control de socios, control de acceso\r\n', 3, 38, '', 'DIGITAL PERSONA', 'DESCONOCIDO', 'product/product_img120221009073521.jpg', 'product/product_img220190819115510.jpg', 'product/product_img320190819115510.jpg', 'product/product_img420190819115510.jpg', 0, 1999, 1900, 471, '1 DIA HABIL', 0, 1000, 1528, '43211600', 'H87', 'PIEZA', 0),
(28, 'kit_ptv', 'Kit Punto De Venta Cajon +lector Base+ Miniprinter ', '', 1, 38, '', 'VARIOS', 'CLTA', 'product/product_img120221009073430.jpg', 'product/product_img220190820130510.jpg', 'product/product_img320190820130510.jpg', 'product/product_img420190820130510.jpg', 0, 2870, 2600, 999, '1 DIA HABIL', 0, 1000, 0, '01010101', 'H87', 'NA', 0),
(30, '22222', 'SOFTWARE MEDICO – MEDICIS', '', 3, 37, '', 'CLTA', 'CLTA', 'product/product_img120221009073632.jpg', '', '', '', 0, 6900, 6000, 1000, '1 DIA HABIL', 1, 1000, 0, '01010101', 'H87', 'NA', 0),
(46, '', 'Sistema WEB Cotización, Remisión, Facturación e Inventario', '', 3, 37, '', 'CLTA', 'CLTA', 'product/product_img120221009073356.jpg', '', '', '', 0, 6000, 60000, 1000, 'INMEDIATO', 0, 0, 0, '01010101', 'H87', 'NA', 0),
(47, 'mag-350', 'IMAN MAGNETICO PARA PUERTA', '', 3, 33, 'RSELL', 'VARIOS', 'DESCONOCIDO', 'product/product_img120221007231613.jpg', '', '', '', 0, 3500, 3300, 1, '1 DIA HABIL', 1, 1, 1600, '01010101', 'H87', 'NA', 0),
(49, 'ACT', 'ACTA DE NACIMIENTO MAYOREO', '', 3, 42, '', '', '', 'product/product_img120221009073303.jpg', '', '', '', 0, 90, 80, 999841, 'INMEDIATO', 10, 100, 50, '01010101', 'H87', 'NA', 0),
(66, '', 'Constancia sat Mayoreo', '', 3, 42, '', 'Desconocido', 'DESCONOCIDO', 'product/product_img120221009073240.jpg', '', '', '', 0, 110, 110, 99925, 'INMEDIATO', 10, 1000, 25, '01010101', 'H87', 'NA', 0),
(150, '290514', 'SISTEMA HOTELERO PLATAFORMA WEB', 'Software para hoteles y moteles ...', 3, 37, 'CLOUD', 'CLTA', 'CLTA', 'product/product_img120221007232512.jpg', 'product/product_img220190819113601.jpg', 'product/product_img320190819113601.jpg', 'product/product_img420190819113601.jpg', 0, 13800, 12800, 5000, 'INMEDIATO', 1000, 10000, 0, '43232300', 'XUN', 'LICENCIA VITALICIA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_sub`
--

CREATE TABLE `productos_sub` (
  `id` int(11) NOT NULL,
  `padre` int(11) NOT NULL,
  `almacen` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  `max` int(11) NOT NULL DEFAULT 0,
  `min` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_sub`
--

INSERT INTO `productos_sub` (`id`, `padre`, `almacen`, `stock`, `ubicacion`, `max`, `min`) VALUES
(1, 19, 2, 1, 'VIDRIO ENTRADA', 10, 2),
(3, 14, 2, 1, 'VIDRIO ENTRADA', 10, 2),
(4, 16, 2, 3, 'VIDRIO ENTRADA', 12, 4),
(5, 20, 2, 0, 'VIDRIO ENTRADA', 4, 1),
(10, 34, 2, 0, '', 1, 1),
(12, 39, 2, 1, '', 1, 1),
(13, 38, 2, -6, '', 1, 1),
(14, 37, 2, 0, '', 1, 1),
(15, 40, 2, -1, '', 1, 1),
(16, 43, 2, 1, 'PUERTA', 2, 1),
(17, 21, 2, 0, '', 2, 1),
(18, 57, 2, 1, '', 3, 1),
(19, 55, 2, 0, '', 2, 1),
(20, 54, 2, 0, '', 3, 1),
(21, 56, 2, 2, '', 10, 1),
(22, 38, 2, 2, '', 10, 1),
(23, 53, 2, 1, '', 2, 1),
(24, 59, 1, 1, '', 1, 1),
(25, 60, 2, 1, '', 1, 1),
(26, 61, 2, 1, '', 1, 1),
(27, 62, 1, -2, '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_pedido`
--

CREATE TABLE `product_pedido` (
  `id` int(11) NOT NULL,
  `folio_venta` varchar(254) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `unidades` int(11) NOT NULL,
  `precio` float NOT NULL,
  `p_generico` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_trasnfer`
--

CREATE TABLE `product_trasnfer` (
  `id` int(11) NOT NULL,
  `folio_tranfer` varchar(254) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `unidades` int(11) NOT NULL,
  `product_sub` int(11) DEFAULT NULL,
  `almacen_destino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_trasnfer`
--

INSERT INTO `product_trasnfer` (`id`, `folio_tranfer`, `product`, `unidades`, `product_sub`, `almacen_destino`) VALUES
(63, '20210605043410', 149, 1, NULL, 16),
(64, '20210605043404', 149, 1, NULL, 16),
(65, '20210605043404', 149, 3, 2, 14),
(66, '20210605043404', 149, 4, 3, 15),
(67, '20210605043404', 149, 3, 17, 14),
(68, '20210605043402', 149, 1, NULL, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_venta`
--

CREATE TABLE `product_venta` (
  `id` int(11) NOT NULL,
  `folio_venta` varchar(254) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `unidades` int(11) NOT NULL,
  `precio` float NOT NULL,
  `product_sub` int(11) DEFAULT NULL,
  `p_generico` varchar(254) DEFAULT NULL,
  `ancho` decimal(64,2) NOT NULL DEFAULT 0.00,
  `alto` decimal(64,2) NOT NULL DEFAULT 0.00,
  `largo` decimal(64,2) NOT NULL DEFAULT 0.00,
  `peso` decimal(64,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_venta`
--

INSERT INTO `product_venta` (`id`, `folio_venta`, `product`, `unidades`, `precio`, `product_sub`, `p_generico`, `ancho`, `alto`, `largo`, `peso`) VALUES
(3, '120190819143328', 3, 1, 4600, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(17, '120190820121431', 3, 1, 4600, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(18, '120190820121431', 5, 2, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(19, '120190820121431', 4, 2, 1058.62, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(22, '120190820190330', 3, 1, 4600, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(23, '120190820190330', NULL, 1, -805, NULL, 'COMISION ML', 0.00, 0.00, 0.00, 0.00),
(75, '120190829201049', NULL, 1, 180, NULL, 'Cable de energia for pC', 0.00, 0.00, 0.00, 0.00),
(84, '120190829205530', NULL, 1, 190, NULL, 'OPTIMIZACION DE SISTEMA OPERATIVO ', 0.00, 0.00, 0.00, 0.00),
(88, '120190831213732', NULL, 1, 300, NULL, 'INSTALACION E. NUEVOS', 0.00, 0.00, 0.00, 0.00),
(104, '120190904183621', NULL, 1, 300, NULL, 'Instalación equipos nuevos', 0.00, 0.00, 0.00, 0.00),
(105, '120190904183621', NULL, 5, 20, NULL, 'Limpieza virus USB', 0.00, 0.00, 0.00, 0.00),
(108, '120190905085759', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(129, '120190907112858', NULL, 1, 190, NULL, 'Paqueteria office', 0.00, 0.00, 0.00, 0.00),
(130, '120190907112858', NULL, 1, 100, NULL, 'Antivirus Karspersky free', 0.00, 0.00, 0.00, 0.00),
(138, '120190907143803', 16, 1, 35, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(139, '120190907143803', 20, 1, 53, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(141, '120190907201649', NULL, 1, -10, NULL, 'DESCUENTO', 0.00, 0.00, 0.00, 0.00),
(148, '120190909205319', NULL, 1, 60, NULL, 'Diagnostico laptop compaq presario CQ56', 0.00, 0.00, 0.00, 0.00),
(176, '120190916123500', NULL, 1, 200, NULL, 'Reiniciar/Restaurar Sistema', 0.00, 0.00, 0.00, 0.00),
(177, '120190916123500', NULL, 1, 150, NULL, 'Instalacion suite office', 0.00, 0.00, 0.00, 0.00),
(178, '120190916123500', NULL, 1, 49.99, NULL, 'Antivirus', 0.00, 0.00, 0.00, 0.00),
(179, '120190916193937', 23, 1, 150, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(180, '120190916221358', NULL, 1, 4800, NULL, 'SISTEMA CONTROL DE SOCIOS ', 0.00, 0.00, 0.00, 0.00),
(181, '120190917120915', 34, 1, 70, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(183, '120190917192301', NULL, 1, 0, NULL, 'IMPRESORA REVIZAR RODILLOS, NO JALA LA HOJA', 0.00, 0.00, 0.00, 0.00),
(189, '120190921153718', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(203, '120190925202625', NULL, 1, 280, NULL, 'Instalacion basica ', 0.00, 0.00, 0.00, 0.00),
(206, '120190926141326', 38, 1, 25, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(207, '120190926141326', 35, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(211, '120190926205952', 4, 4, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(212, '120190927122730', NULL, 1, 4500, NULL, 'Lic. Vitalicia sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(213, '120190927195056', NULL, 18, 5, NULL, 'Escaneo de documentos', 0.00, 0.00, 0.00, 0.00),
(214, '120190927195056', NULL, 1, 10, NULL, 'Envio de correo electronico', 0.00, 0.00, 0.00, 0.00),
(217, '120190928145049', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(220, '120190928164919', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(229, '120190929102555', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(237, '120190930114626', NULL, 1, 180, NULL, 'Configuracion de printer', 0.00, 0.00, 0.00, 0.00),
(239, '120190925093148', NULL, 1, 400, NULL, 'SEPARAR REPORTE POR CONCEPTO ANTCP. 50 %', 0.00, 0.00, 0.00, 0.00),
(240, '120190925093148', NULL, 1, 225, NULL, 'MONTO TOTAL Y NUMEROS DE MOVIMIENTOS EN REPORTES ANTICIPO 50 %', 0.00, 0.00, 0.00, 0.00),
(242, '120190925093148', NULL, 1, 300, NULL, 'REPORTE DE CLIENTES POR SEXO Y MUNICIPIO ANTICIPO 50 %', 0.00, 0.00, 0.00, 0.00),
(243, '120190925093148', NULL, 1, 200, NULL, 'AGRAGAR CAMPO SEXO Y MUNICIPIO EN CLIENTES ANTICIPO 50 %', 0.00, 0.00, 0.00, 0.00),
(267, '120191004195727', NULL, 27, 8, NULL, 'impresiones color', 0.00, 0.00, 0.00, 0.00),
(268, '120191004195727', NULL, 34, 0.7, NULL, 'impresiones bn mayoreo', 0.00, 0.00, 0.00, 0.00),
(270, '120191005195335', 37, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(272, '120191006181905', NULL, 1, 480, NULL, 'actualización sistema control de socios.  ', 0.00, 0.00, 0.00, 0.00),
(274, '120191007150313', NULL, 1, 100, NULL, 'generico', 0.00, 0.00, 0.00, 0.00),
(290, '120191011135643', NULL, 1, 4500, NULL, 'Licencia Sistema Hotelero', 0.00, 0.00, 0.00, 0.00),
(291, '120191011192654', NULL, 1, 350, NULL, 'INSTALACION BASICA', 0.00, 0.00, 0.00, 0.00),
(292, '120191011192654', NULL, 1, 350, NULL, 'fORMATEO DE EQUIPO', 0.00, 0.00, 0.00, 0.00),
(293, '120191014113426', NULL, 1, 400, NULL, 'PRODUCTO SEPARAR REPORTE POR CONCEPTO ', 0.00, 0.00, 0.00, 0.00),
(294, '120191014113426', NULL, 1, 200, NULL, 'MONTO TOTAL Y NUMEROS DE MOVIMIENTOS EN REPORTES ', 0.00, 0.00, 0.00, 0.00),
(295, '120191014113426', NULL, 1, 300, NULL, 'REPORTE DE CLIENTES POR SEXO Y MUNICIPIO', 0.00, 0.00, 0.00, 0.00),
(296, '120191014113426', NULL, 1, 225, NULL, 'AGRAGAR CAMPO SEXO Y MUNICIPIO EN CLIENTES', 0.00, 0.00, 0.00, 0.00),
(298, '120191014165302', NULL, 1, 290, NULL, 'Actualizacion sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(299, '120191014165302', NULL, 461, 2.32, NULL, 'folios facturas', 0.00, 0.00, 0.00, 0.00),
(301, '120191014193713', 35, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(302, '120191016124524', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(303, '120191016215055', NULL, 1, 1900, NULL, 'Lector de huellas digital person 4500 uaere', 0.00, 0.00, 0.00, 0.00),
(304, '120191016215055', NULL, 1, 100, NULL, 'Diagnostico y configuración ', 0.00, 0.00, 0.00, 0.00),
(309, '120191017195945', 40, 1, 150, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(313, '120191011135643', NULL, 1, 950, NULL, 'Anualidad cfdi.  50 % descuento ', 0.00, 0.00, 0.00, 0.00),
(316, '120191020164646', 43, 1, 66, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(318, '120191020164646', NULL, 1, 40, NULL, 'Cable USB', 0.00, 0.00, 0.00, 0.00),
(323, '120191022111046', NULL, 1, 4600, NULL, 'Sistema control de socios precio anterior.  ', 0.00, 0.00, 0.00, 0.00),
(324, '120191022145144', NULL, 1, 2000, NULL, 'Modulo tarifas y folios en reportes Z', 0.00, 0.00, 0.00, 0.00),
(359, '120191029181000', NULL, 1, 4500, NULL, 'SISTEMA HOTELERO LICENCIA.  ', 0.00, 0.00, 0.00, 0.00),
(368, '120191030143747', NULL, 1, 950, NULL, 'Anualidad CFDI 50 % descuento', 0.00, 0.00, 0.00, 0.00),
(370, '120191101093802', NULL, 1, 1800, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(375, '120191105205941', NULL, 1, 480, NULL, 'Actualización, Sistema control de socios', 0.00, 0.00, 0.00, 0.00),
(376, '120191107163213', NULL, 1, 480, NULL, 'Actualización control de socios.  ', 0.00, 0.00, 0.00, 0.00),
(377, '120191108193425', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(405, '120191113223531', NULL, 1, 100, NULL, 'Anualidad correo electronico', 0.00, 0.00, 0.00, 0.00),
(406, '120191114005331', NULL, 1, 480, NULL, 'Reinstalacion de sistema control de socios', 0.00, 0.00, 0.00, 0.00),
(409, '120191114180220', NULL, 1, 200, NULL, 'Instalacion de 18 drivers en pc', 0.00, 0.00, 0.00, 0.00),
(410, '120191116151736', NULL, 1, 1831.32, NULL, 'Software tallez lic. vitalica', 0.00, 0.00, 0.00, 0.00),
(412, '120191119190512', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(414, '120191119190512', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(415, '120191119190512', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(416, '120191119235516', NULL, 1, 300, NULL, 'Optimización y limpieza de windows os.  ', 0.00, 0.00, 0.00, 0.00),
(420, '120191121122200', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(421, '120191121122456', NULL, 1, 641, NULL, 'reporte TXT o CSV', 0.00, 0.00, 0.00, 0.00),
(422, '120191121122456', NULL, 1, 890, NULL, 'Agregar campos, pais, f. nacimiento, genero, canal de reserva', 0.00, 0.00, 0.00, 0.00),
(424, '120191121122456', NULL, 1, 400, NULL, 'Autogenerar Archivo y dejarlo en pc', 0.00, 0.00, 0.00, 0.00),
(425, '120191121122456', NULL, 1, 400, NULL, 'Subir dinero a ftp ', 0.00, 0.00, 0.00, 0.00),
(427, '120191122200257', NULL, 1, 8, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(428, '120191123103040', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(429, '120191123103040', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(431, '120191126104315', NULL, 1, 199, NULL, 'Soporte tecnico', 0.00, 0.00, 0.00, 0.00),
(436, '120191127121217', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(439, '120191128095310', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(441, '120191122200257', NULL, 25, 8, NULL, 'Impresiones color', 0.00, 0.00, 0.00, 0.00),
(442, '120191122200257', NULL, 4, 1, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(443, '120191122200257', NULL, 6, 0.5, NULL, 'Copias TC', 0.00, 0.00, 0.00, 0.00),
(444, '120191122200257', NULL, 6, 1, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(445, '120191122200257', NULL, 1, 20, NULL, 'Uso internet', 0.00, 0.00, 0.00, 0.00),
(446, '120191122200257', NULL, 7, 0.5, NULL, 'Copias TC', 0.00, 0.00, 0.00, 0.00),
(447, '120191122200257', NULL, 3, 1, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(448, '120191122200257', NULL, 2, 1, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(449, '120191122200257', NULL, 7, 0.5, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(451, '120191128191557', NULL, 1, 8, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(452, '120191128191557', NULL, 25, 8, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(453, '120191128191557', NULL, 4, 1, NULL, ' Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(454, '120191128191557', NULL, 6, 0.5, NULL, ' Copias TC', 0.00, 0.00, 0.00, 0.00),
(455, '120191128191557', NULL, 6, 1, NULL, ' Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(456, '120191128191557', NULL, 1, 20, NULL, ' Uso internet', 0.00, 0.00, 0.00, 0.00),
(458, '120191128191557', NULL, 3, 1, NULL, ' Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(459, '120191128191557', NULL, 2, 1, NULL, ' Impresiones BN ', 0.00, 0.00, 0.00, 0.00),
(460, '120191128191557', NULL, 7, 1, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(461, '120191201121446', NULL, 1, 230, NULL, 'Instalacion de office', 0.00, 0.00, 0.00, 0.00),
(471, '120191211172238', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(472, '120191211172238', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(473, '120191211172238', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(474, '120191212182812', NULL, 1, 780, NULL, 'Código Fuente Genera Pdf De Xml Cfdi 3.3 - C#', 0.00, 0.00, 0.00, 0.00),
(475, '120191212203154', NULL, 3, 7, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(476, '120191212203154', NULL, 5, 7, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(477, '120191212203154', NULL, 17, 7, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(478, '120191212203154', NULL, 21, 7, NULL, 'Impresion Color   ', 0.00, 0.00, 0.00, 0.00),
(482, '120191215121646', NULL, 1, 100, NULL, 'Instalación y configuración dvr', 0.00, 0.00, 0.00, 0.00),
(483, '120191215121646', NULL, 1, 700, NULL, 'Disco duro hdd 500Gb 3.5', 0.00, 0.00, 0.00, 0.00),
(484, '120191215121646', NULL, 1, 2900, NULL, 'Dvr 16 canales dahua ', 0.00, 0.00, 0.00, 0.00),
(500, '120191219190531', NULL, 17, 7, NULL, 'Impresiones color ', 0.00, 0.00, 0.00, 0.00),
(501, '120191220114310', NULL, 1, 4800, NULL, 'Sistema control de socios ', 0.00, 0.00, 0.00, 0.00),
(507, '120191222191800', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(508, '120191223101413', NULL, 1, 580, NULL, 'Actualización control de socios ', 0.00, 0.00, 0.00, 0.00),
(509, '120191223121908', NULL, 1, 4800, NULL, 'Control de socios ', 0.00, 0.00, 0.00, 0.00),
(510, '120191223121908', NULL, 1, 1900, NULL, 'Relevador usb ', 0.00, 0.00, 0.00, 0.00),
(511, '120191223191852', NULL, 1, 700, NULL, 'Disco duro ssd 120 GB', 0.00, 0.00, 0.00, 0.00),
(512, '120191223191852', NULL, 1, 100, NULL, 'Gabinete Medio USO', 0.00, 0.00, 0.00, 0.00),
(513, '120191223191852', NULL, 1, 500, NULL, 'mantenimiento a equipo de computo', 0.00, 0.00, 0.00, 0.00),
(515, '120191224090514', NULL, 1, 2464, NULL, 'Kit ptv 12 % descuento ', 0.00, 0.00, 0.00, 0.00),
(516, '120191224090514', NULL, 1, 2400, NULL, 'Sistema control socios. 50 % descuento.   ', 0.00, 0.00, 0.00, 0.00),
(517, '120191226110834', NULL, 1, 4500, NULL, 'Sistema hotelero lic', 0.00, 0.00, 0.00, 0.00),
(518, '120191226133437', NULL, 1, 580, NULL, 'Actualización control de socios.  ', 0.00, 0.00, 0.00, 0.00),
(520, '120191227183100', NULL, 1, 4800, NULL, 'Sistema control de socios Sistema control de socios Lic', 0.00, 0.00, 0.00, 0.00),
(521, '120191227193742', NULL, 1, 4800, NULL, 'Sistema control de socio', 0.00, 0.00, 0.00, 0.00),
(526, '120191231095013', NULL, 1, 1276, NULL, 'Modificaciones, segun lo acordado', 0.00, 0.00, 0.00, 0.00),
(538, '120200103144631', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(539, '120200103162126', NULL, 1, 2870, NULL, 'Kit Punto De Venta lector de barras  , impresora cajón ', 0.00, 0.00, 0.00, 0.00),
(540, '120200103162126', NULL, 1, 1900, NULL, 'Lector de huellas ', 0.00, 0.00, 0.00, 0.00),
(542, '120200105121047', NULL, 1, 4800, NULL, 'Sistema control de socios.  ', 0.00, 0.00, 0.00, 0.00),
(543, '120200105140748', NULL, 1, 4800, NULL, 'Control de socios Lic. Vitalicia ', 0.00, 0.00, 0.00, 0.00),
(546, '120200107203605', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(547, '120200107203605', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(548, '120200110093529', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(549, '120200111110951', NULL, 20, 9, NULL, 'Imp color', 0.00, 0.00, 0.00, 0.00),
(550, '120200104175315', NULL, 1, 25, NULL, 'cable usb', 0.00, 0.00, 0.00, 0.00),
(552, '120200114134955', 4, 3, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(553, '120200114134955', 3, 2, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(554, '120200115120846', NULL, 1, 4800, NULL, 'Control de socios Lic vitalicia', 0.00, 0.00, 0.00, 0.00),
(555, '120200115134352', NULL, 1, 4800, NULL, 'Control de socios', 0.00, 0.00, 0.00, 0.00),
(556, '120200115134352', NULL, 1, 1900, NULL, 'Lector de huella', 0.00, 0.00, 0.00, 0.00),
(559, '120200117130324', NULL, 1, 4800, NULL, 'Control de socios licencia vitalicia', 0.00, 0.00, 0.00, 0.00),
(570, '120200118142448', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(571, '120200118142448', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(578, '120200124105728', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(579, '120200124105728', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(580, '120200124105728', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(588, '120200124201751', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(605, '120200129214930', NULL, 1, 4999, NULL, 'Control de socios Lic.  Vitalicia ', 0.00, 0.00, 0.00, 0.00),
(615, '120200205122840', NULL, 1, 3000, NULL, 'Licencia Sistema Estacionamiento', 0.00, 0.00, 0.00, 0.00),
(624, '120200210122304', 3, 1, 4800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(625, '120200211003703', NULL, 1, 4500, NULL, 'Sistema hotelero. ', 0.00, 0.00, 0.00, 0.00),
(628, '120200211200422', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(629, '120200211200422', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(630, '120200211200422', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(633, '120200214191541', NULL, 121, 0.6, NULL, 'Copías TC', 0.00, 0.00, 0.00, 0.00),
(634, '120200215121630', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(635, '120200215121630', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(636, '120200215121630', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(641, '120200217223930', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(642, '120200217223930', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(643, '120200218131603', NULL, 1, 5500, NULL, 'Sistema lic. vitalicia Web Inventarios', 0.00, 0.00, 0.00, 0.00),
(644, '120200218131603', NULL, 1, 1000, NULL, 'Hosting Anualidad', 0.00, 0.00, 0.00, 0.00),
(645, '120200219111106', NULL, 1, 4999, NULL, 'Lic.  Control de socios ', 0.00, 0.00, 0.00, 0.00),
(646, '120200219164131', NULL, 503, 2.32, NULL, 'Servicio de timbrado a la fecha.', 0.00, 0.00, 0.00, 0.00),
(656, '120200221110215', NULL, 1, 1900, NULL, 'Anualidad CFDI , CABB891111CL8', 0.00, 0.00, 0.00, 0.00),
(657, '120200222191451', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(661, '120200223223835', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(662, '120200223223835', NULL, 1, 100, NULL, 'Anualidad Emails', 0.00, 0.00, 0.00, 0.00),
(664, '120200224140712', 3, 1, 5000, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(665, '120200224141101', NULL, 1, 100, NULL, 'Anualidad SendMAil. fol 120200223223835', 0.00, 0.00, 0.00, 0.00),
(667, '120200227090513', NULL, 1, 4999, NULL, 'Sistema control de socios ', 0.00, 0.00, 0.00, 0.00),
(668, '120200227090513', NULL, 1, 1900, NULL, 'Lector de huellas digital person ', 0.00, 0.00, 0.00, 0.00),
(670, '120200227090513', NULL, 1, 2870, NULL, 'Chapa magnética 300 libras ', 0.00, 0.00, 0.00, 0.00),
(671, '120200227090513', NULL, 1, 1900, NULL, 'Relevador usb ', 0.00, 0.00, 0.00, 0.00),
(672, '120200228101706', 28, 1, 2870, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(673, '120200301183321', NULL, 1, 4000, NULL, 'Anticipo sistema de ventas con modificaciones acordadas. ', 0.00, 0.00, 0.00, 0.00),
(707, '120200310104440', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(708, '120200310104440', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(710, '120200311102623', NULL, 1, 464, NULL, 'Servicio Soporte  Tecnico', 0.00, 0.00, 0.00, 0.00),
(712, '120200311102840', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(713, '120200311102840', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(716, '120200313173607', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(718, '120200314104810', NULL, 5, 6, NULL, 'Impresiones color', 0.00, 0.00, 0.00, 0.00),
(719, '120200314104810', NULL, 10, 6, NULL, 'Impresiones mayoreo color', 0.00, 0.00, 0.00, 0.00),
(727, '120200324191513', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(728, '120200325181657', NULL, 14, 7, NULL, 'Imp Color', 0.00, 0.00, 0.00, 0.00),
(750, '120200401195048', NULL, 1, 450, NULL, 'Reinstalacion y respaldo Control de socios', 0.00, 0.00, 0.00, 0.00),
(751, '120200404153703', NULL, 1, 3000, NULL, '50 % Sistema PTv WEb', 0.00, 0.00, 0.00, 0.00),
(753, '120200404160402', NULL, 1, 1300, NULL, 'moamao-tpv.com + certificado digital, anualidad. ', 0.00, 0.00, 0.00, 0.00),
(756, '120200407215434', NULL, 1, 5800, NULL, 'Software Radio taxi + 1 caller ID', 0.00, 0.00, 0.00, 0.00),
(760, '120200410164933', NULL, 1, 400, NULL, 'Reinstalación y respaldo de sistema', 0.00, 0.00, 0.00, 0.00),
(766, '120200422094312', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(768, '120200422192310', NULL, 1, 1000, NULL, 'Anualidad server', 0.00, 0.00, 0.00, 0.00),
(770, '120200422192310', NULL, 2, 4500, NULL, 'Sistema hotelero.  Lic vitalicia ', 0.00, 0.00, 0.00, 0.00),
(777, '120200428203701', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(778, '120200428203701', NULL, 1, -1249, NULL, 'Desc', 0.00, 0.00, 0.00, 0.00),
(782, '120200430104842', NULL, 1, 4500, NULL, 'Lic. Sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(784, '120200430104842', NULL, 1, 1900, NULL, 'Anualidad cfdi.  ', 0.00, 0.00, 0.00, 0.00),
(794, '120200512211718', NULL, 1, 1000, NULL, 'Abono por un total de $ 1950 ajustes control de socios', 0.00, 0.00, 0.00, 0.00),
(795, '120200513104001', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(796, '120200513112736', NULL, 1, 150, NULL, 'Asistencia tecnica', 0.00, 0.00, 0.00, 0.00),
(797, '120200514232903', NULL, 1, 8120, NULL, 'Sistema web + anualidad servidor', 0.00, 0.00, 0.00, 0.00),
(799, '120200521115213', NULL, 18, 6, NULL, 'impresiones color', 0.00, 0.00, 0.00, 0.00),
(801, '120200525125754', NULL, 1, 3364, NULL, 'Ajustes acordados ', 0.00, 0.00, 0.00, 0.00),
(803, '120200526153134', NULL, 1, 4800, NULL, 'Sistema web control', 0.00, 0.00, 0.00, 0.00),
(804, '120200526153239', NULL, 2, 1500, NULL, 'Minisuper + ajuste familias', 0.00, 0.00, 0.00, 0.00),
(805, '120200527092213', NULL, 1, 3364, NULL, 'Ajustes solicitados', 0.00, 0.00, 0.00, 0.00),
(806, '120200527092332', NULL, 2, 1900, NULL, 'Anualidad cfdi', 0.00, 0.00, 0.00, 0.00),
(812, '120200529165018', NULL, 2, 580, NULL, 'Actualización sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(817, '120200602141246', NULL, 2, 580, NULL, 'Actualizacion sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(818, '120200603154543', NULL, 1, 812, NULL, 'Reinstalación sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(820, '120200604174537', NULL, 1, 400, NULL, 'Reinstalacion sistema control de socios', 0.00, 0.00, 0.00, 0.00),
(823, '120200610192001', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(824, '120200613121227', NULL, 1, 6500, NULL, 'Ajustes a medida solicitados', 0.00, 0.00, 0.00, 0.00),
(825, '120200613121227', NULL, 1, 1500, NULL, 'Caller ID', 0.00, 0.00, 0.00, 0.00),
(826, '120200613122527', NULL, 1, 6500, NULL, 'AJUSTES A MEDIDA SOLICITADOS', 0.00, 0.00, 0.00, 0.00),
(831, '120200615120441', 48, 23, 8.12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(834, '120200617152417', 48, 62, 8.12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(836, '120200619150321', 48, 27, 8.12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(837, '120200619184843', 48, 27, 8.12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(838, '120200620145755', 20, 1, 53, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(839, '120200620161632', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(840, '120200620161632', 50, 1, 350, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(841, '120200620161732', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(842, '120200620163250', NULL, 1, 10, NULL, 'aa', 0.00, 0.00, 0.00, 0.00),
(843, '120200620170024', 58, 1, 290, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(845, '120200622190933', 54, 1, 120, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(846, '120200622193924', NULL, 1, 200, NULL, 'Eliminar Abonos de caja', 0.00, 0.00, 0.00, 0.00),
(848, '120200622193924', NULL, 1, 324, NULL, 'Cierre de caja en modo corte x & z', 0.00, 0.00, 0.00, 0.00),
(849, '120200622193924', NULL, 1, 1700, NULL, 'Informtes (Listado)', 0.00, 0.00, 0.00, 0.00),
(850, '120200622193924', NULL, 1, 1948, NULL, 'Control de pedidos', 0.00, 0.00, 0.00, 0.00),
(855, '120200626165105', NULL, 1, 580, NULL, 'Restauración. ', 0.00, 0.00, 0.00, 0.00),
(856, '120200627145955', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(861, '120200630124124', NULL, 1, 672.8, NULL, 'Reinicie licencia manual ', 0.00, 0.00, 0.00, 0.00),
(864, '120200630144036', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(866, '120200701150827', 19, 1, 25, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(867, '120200701161718', NULL, 1, 780.44, NULL, 'Recontruccion de usuario administrador', 0.00, 0.00, 0.00, 0.00),
(1415, '120200703143244', NULL, 1, 650, NULL, 'AJUSTE BOTONES POR SEMANA', 0.00, 0.00, 0.00, 0.00),
(1418, '120200704194244', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1419, '120200704194345', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1420, '120200705162232', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1421, '120200705162232', NULL, 1, 800, NULL, 'LECTOR RFID', 0.00, 0.00, 0.00, 0.00),
(1422, '120200705162232', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1423, '120200705162232', NULL, 100, 17, NULL, 'Tarjetas Proximidad', 0.00, 0.00, 0.00, 0.00),
(1424, '120200705162232', NULL, 50, 29, NULL, 'Llaveros rfid', 0.00, 0.00, 0.00, 0.00),
(1428, '120200708154251', 48, 1, 552, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1439, '120200708192655', NULL, 29, 3, NULL, 'Impresion color', 0.00, 0.00, 0.00, 0.00),
(1442, '120200710135209', NULL, 1, 464, NULL, 'Reinstalación sistema en blanco ', 0.00, 0.00, 0.00, 0.00),
(1443, '120200711120307', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1444, '120200711120531', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1449, '120200715194200', NULL, 1, 800, NULL, 'Lector RFID', 0.00, 0.00, 0.00, 0.00),
(1450, '120200715194200', NULL, 100, 17, NULL, 'Tarjetas RFID', 0.00, 0.00, 0.00, 0.00),
(1451, '120200716143707', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1452, '120200619150321', NULL, 1, 580, NULL, 'Reinstalacion Sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(1454, '120200716165040', 32, 1, 190, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1456, '120200717120846', 48, 58, 10, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1459, '120200719162107', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1460, '120200720134513', 48, 28, 10, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1471, '120200723202347', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1472, '120200724182732', NULL, 1, 673, NULL, 'Actualizacion sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(1477, '120200727135904', NULL, 1, 680, NULL, 'Reinstalacion sistema hotelero con respaldo', 0.00, 0.00, 0.00, 0.00),
(1478, '120200725171239', 62, 1, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1479, '120200725171239', 56, 1, 120, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1480, '120200727165512', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1481, '120200727181614', 52, 1, 75, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1482, '120200728140040', NULL, 1, 580, NULL, 'Reinstalacion de sistema en blanco y recuperacion de contraseña', 0.00, 0.00, 0.00, 0.00),
(1484, '120200728194758', 48, 48, 10, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1485, '120200728194758', NULL, 3, 250, NULL, 'Quitar actualizaciones forzosas de windows', 0.00, 0.00, 0.00, 0.00),
(1486, '120200728194758', NULL, 2, 580, NULL, 'Actualizar sistemas a ultima version a detalle.', 0.00, 0.00, 0.00, 0.00),
(1489, '120200730084615', NULL, 1, 580, NULL, 'Configuracion de red', 0.00, 0.00, 0.00, 0.00),
(1490, '120200730084615', NULL, 1, -280, NULL, 'Ajuste por acuerdo', 0.00, 0.00, 0.00, 0.00),
(1492, '120200720134513', NULL, 1, 28, NULL, 'Penalizacion 10 %, 30 de julio 2020', 0.00, 0.00, 0.00, 0.00),
(1494, '120200701161718', NULL, 1, 77.72, NULL, 'Penalizacion 10 %, 30 de julio 2020', 0.00, 0.00, 0.00, 0.00),
(1496, '120200801161527', 48, 24, 10, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1508, '120200804181332', NULL, 1, 250, NULL, 'INSTALACION Y CONFIGURACION DE IMPRESORAS', 0.00, 0.00, 0.00, 0.00),
(1510, '120200805200705', 58, 1, 290, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1515, '120200807195248', 59, 1, 55, 24, NULL, 0.00, 0.00, 0.00, 0.00),
(1518, '120200809164733', 48, 45, 12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1520, '120200810173138', 56, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1521, '120200810173138', 44, 1, 270, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1528, '120200811194742', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1529, '120200811194742', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1531, '120200811194742', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1532, '120200811194742', 47, 1, 2800, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1533, '120200811194742', NULL, 3, 199, NULL, 'Envios', 0.00, 0.00, 0.00, 0.00),
(1540, '120200814100403', NULL, 1, 580, NULL, 'Instalacion y clonado de disco duro', 0.00, 0.00, 0.00, 0.00),
(1541, '120200814100403', NULL, 1, 450, NULL, 'Limpieza y mantenimiento fisico de equipo de computo', 0.00, 0.00, 0.00, 0.00),
(1546, '120200815121621', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1552, '120200817170823', NULL, 1, 464, NULL, 'Servicios ', 0.00, 0.00, 0.00, 0.00),
(1553, '120200817174845', NULL, 1, 75, NULL, 'Cargador de viaje tipo c', 0.00, 0.00, 0.00, 0.00),
(1554, '120200818205714', 5, 1, 1999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1555, '120200820200136', 63, 1, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1556, '120200814100403', NULL, 1, 2800, NULL, 'Hdd 2 tb', 0.00, 0.00, 0.00, 0.00),
(1557, '120200822133029', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1559, '120200822133029', 66, 1, 30, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1560, '120200822135458', 49, 8, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1561, '120200822142007', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1562, '120200822142007', NULL, 1, 800, NULL, 'Configuracion de red Servidor', 0.00, 0.00, 0.00, 0.00),
(1563, '120200822142007', NULL, 1, 150, NULL, 'Configuracion de Pc red Cliente', 0.00, 0.00, 0.00, 0.00),
(1566, '120200823142507', 56, 1, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1574, '120200825181518', NULL, 1, 350, NULL, 'Configuracion de impresora', 0.00, 0.00, 0.00, 0.00),
(1585, '120200829131920', 66, 3, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1586, '120200829131920', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1587, '120200829131920', NULL, 1, 45, NULL, 'Constancia sat Mayoreo PRECIO ANTERIOR', 0.00, 0.00, 0.00, 0.00),
(1588, '120200830133556', 63, 1, 220, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1589, '120200831162442', NULL, 13, 0.6, NULL, 'Imp. BN Mayoreo', 0.00, 0.00, 0.00, 0.00),
(1590, '120200831162442', NULL, 26, 0.6, NULL, 'Imp. Bn Mayoreo ', 0.00, 0.00, 0.00, 0.00),
(1591, '120200831162442', NULL, 60, 0.6, NULL, 'Imp Bn Mayoreo', 0.00, 0.00, 0.00, 0.00),
(1593, '120200901175435', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1594, '120200901175435', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1595, '120200901175435', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1602, '120200903174256', NULL, 1, 60, NULL, 'imp. color Premium', 0.00, 0.00, 0.00, 0.00),
(1618, '120200905154855', 49, 5, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1619, '120200905154855', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1620, '120200905104822', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1625, '120200701161718', NULL, 1, 85.81, NULL, 'Penalizacion 10 %, 30 de agosto 2020', 0.00, 0.00, 0.00, 0.00),
(1627, '120200907121651', NULL, 1, 580, NULL, 'Recuperacion de sistema', 0.00, 0.00, 0.00, 0.00),
(1630, '120200907173049', 48, 28, 12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1634, '120200909213745', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1639, '120200910113931', NULL, 10, 6, NULL, 'Imp. Color ', 0.00, 0.00, 0.00, 0.00),
(1641, '120200911125555', NULL, 1, 580, NULL, 'ACTUALIZACION DE SISTEMAS', 0.00, 0.00, 0.00, 0.00),
(1643, '120200913115621', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1644, '120200913115621', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1645, '120200913115636', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1648, '120200914122030', NULL, 1, 180, NULL, 'ERROR EN CONFIGURACION DE SISTEMA', 0.00, 0.00, 0.00, 0.00),
(1650, '120200914182517', 64, 2, 230, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1651, '120200914212125', NULL, 1, 2500, NULL, 'Carrito de compras ', 0.00, 0.00, 0.00, 0.00),
(1652, '120200914212125', NULL, 1, 1900, NULL, 'Pagos ', 0.00, 0.00, 0.00, 0.00),
(1653, '120200914212125', NULL, 1, 2800, NULL, 'Administración ', 0.00, 0.00, 0.00, 0.00),
(1654, '120200914212125', NULL, 1, 1900, NULL, 'Pedido/ventas ', 0.00, 0.00, 0.00, 0.00),
(1655, '120200914212125', NULL, 1, 2500, NULL, 'Envíos', 0.00, 0.00, 0.00, 0.00),
(1656, '120200914212125', NULL, 1, 2800, NULL, 'Estructura, usuario, módulos básicos. ', 0.00, 0.00, 0.00, 0.00),
(1663, '120200918191937', NULL, 1, 180, NULL, 'ERROR EN CONFIGURACION DE SISTEMA', 0.00, 0.00, 0.00, 0.00),
(1666, '120200921151954', 66, 4, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1667, '120200921151954', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1668, '120200921192728', 62, 1, 150, 27, NULL, 0.00, 0.00, 0.00, 0.00),
(1672, '120200925232641', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1673, '120200925232824', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1674, '120200926130636', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1680, '120200928102847', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(1688, '120200701161718', NULL, 1, 94.38, NULL, ' Penalizacion 10 %, 30 de septiembre 2020 ', 0.00, 0.00, 0.00, 0.00),
(1693, '120201002122249', NULL, 1, 150, NULL, 'Reactivacion de licencia', 0.00, 0.00, 0.00, 0.00),
(1694, '120201004102140', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1695, '120201004102140', 49, 5, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1696, '120201007105346', 48, 27, 12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1697, '120201007105346', NULL, 1, 250, NULL, 'Desactivacion de actualizaciones automaticas de windows', 0.00, 0.00, 0.00, 0.00),
(1699, '120201008143527', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1700, '120201010124929', NULL, 1, 800, NULL, 'Configuracion de servidor para trabajo en red', 0.00, 0.00, 0.00, 0.00),
(1701, '120201010124929', NULL, 1, 150, NULL, 'Equipo adicional, Misma red', 0.00, 0.00, 0.00, 0.00),
(1702, '120201010124929', NULL, 1, 0, NULL, 'Migrar Sistema de un equipo a otro.', 0.00, 0.00, 0.00, 0.00),
(1705, '120201010185030', NULL, 1, 250, NULL, 'Instalacion office', 0.00, 0.00, 0.00, 0.00),
(1706, '120201010195300', 66, 3, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1707, '120201010195711', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1711, '120201012143843', NULL, 1, 440.8, NULL, 'Regla no poder agregar abonos mayores al adeudo', 0.00, 0.00, 0.00, 0.00),
(1712, '120201012143843', NULL, 1, 348, NULL, 'Fondo gris con letras blancas en encabezados de reportes', 0.00, 0.00, 0.00, 0.00),
(1713, '120201012143843', NULL, 1, 2088, NULL, 'Módulo de pedido por cliente mostrando adeudo.', 0.00, 0.00, 0.00, 0.00),
(1724, '120201013113045', NULL, 1, 3500, NULL, 'anticipo 50 % Sistema inmobiliaria web de acuerdo a requisitos acordados. ', 0.00, 0.00, 0.00, 0.00),
(1725, '120201015104323', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1726, '120201015104323', NULL, 1, 800, NULL, 'Lector RFID', 0.00, 0.00, 0.00, 0.00),
(1727, '120201015104323', NULL, 20, 19, NULL, 'Tarjetas RFID pvc', 0.00, 0.00, 0.00, 0.00),
(1728, '120201015145152', 4, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1729, '120201015182735', 5, 2, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1736, '120201016110556', 48, 25, 12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1737, '120201016133426', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1738, '120201017200447', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1739, '120201017200447', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1740, '120201017200755', 49, 9, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1743, '120201022091818', 3, 1, 5413, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1746, '120201026125807', 66, 7, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1747, '120201026125807', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1750, '120201030202430', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1751, '120201031123410', 55, 1, 150, 19, NULL, 0.00, 0.00, 0.00, 0.00),
(1752, '120201031205458', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(1753, '120201031205521', NULL, 1, 1800, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(1755, '120201103120906', 66, 3, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1756, '120201103121133', 49, 9, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1774, '120201106131911', NULL, 1, 800, NULL, 'Lector rfid', 0.00, 0.00, 0.00, 0.00),
(1775, '120201106131911', NULL, 50, 17, NULL, 'Tarjetas rfid', 0.00, 0.00, 0.00, 0.00),
(1776, '120201106131911', NULL, 50, 28, NULL, 'Llaveros rfid', 0.00, 0.00, 0.00, 0.00),
(1777, '120201106131911', NULL, 1, 200, NULL, 'Envío Dhl ', 0.00, 0.00, 0.00, 0.00),
(1783, '120201109195210', 66, 3, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1784, '120201109195210', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1798, '120201112183932', NULL, 1, 580, NULL, 'Migracion de sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(1800, '120201113215420', NULL, 1, 3500, NULL, 'Liquidacion 50 % Pendientes Sistema inmobiliaria web de acuerdo a requisitos acordados folio anterior: 120201013113045', 0.00, 0.00, 0.00, 0.00),
(1801, '120201114111404', NULL, 40, 5, NULL, 'Impresiones Color ', 0.00, 0.00, 0.00, 0.00),
(1802, '120201114212243', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1803, '120201114212243', 5, 1, 1900, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1804, '120201114212243', NULL, 1, 900, NULL, 'Lector de barras ', 0.00, 0.00, 0.00, 0.00),
(1805, '120201114212243', NULL, 2, 199, NULL, 'Envíos ', 0.00, 0.00, 0.00, 0.00),
(1837, '120201116111144', 66, 3, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1838, '120201116111144', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1839, '120201116111144', 67, 3, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1845, '120201123124946', 67, 3, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1846, '120201123124946', 66, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1847, '120201123124946', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1848, '120201123133155', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1849, '120201123133155', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1851, '120201124115412', NULL, 23, 8, NULL, 'Impresion Color', 0.00, 0.00, 0.00, 0.00),
(1853, '120201124161743', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1854, '120201124193245', NULL, 1, 0, NULL, 'Licencia Ctrl Socios: 0001237', 0.00, 0.00, 0.00, 0.00),
(1855, '120201124193540', NULL, 1, 280, NULL, 'Configuracion de impresora', 0.00, 0.00, 0.00, 0.00),
(1873, '120201126114507', NULL, 1, 580, NULL, 'Migración de sistema hotelero. ', 0.00, 0.00, 0.00, 0.00),
(1878, '120201130103253', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1879, '120201130103253', 66, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1880, '120201130103253', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1885, '120201130174720', NULL, 1, 500, NULL, 'Reestablecimiento Tabla de usuarios ', 0.00, 0.00, 0.00, 0.00),
(1886, '120201202115054', NULL, 24, 8, NULL, 'Impresiones Color', 0.00, 0.00, 0.00, 0.00),
(1891, '120201207192738', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1892, '120201207192738', 66, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1894, '120201210161510', NULL, 165, 3, NULL, 'Impresiones Color', 0.00, 0.00, 0.00, 0.00),
(1898, '120201213130813', NULL, 1, 672.8, NULL, 'Migración sistema hotelero ', 0.00, 0.00, 0.00, 0.00),
(1899, '120201214105839', NULL, 1, 696, NULL, 'Servicio técnico ', 0.00, 0.00, 0.00, 0.00),
(1900, '120201214162711', NULL, 9, 9, NULL, 'Imp.  Color ', 0.00, 0.00, 0.00, 0.00),
(1905, '120201215104322', 66, 4, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1906, '120201215104322', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1907, '120201215111551', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1908, '120201215111551', 67, 2, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1909, '120201215111551', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1916, '120201218105500', NULL, 7, 8, NULL, 'imp Color ', 0.00, 0.00, 0.00, 0.00),
(1918, '120201220161404', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1924, '120201228170127', 3, 1, 3500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1925, '120201230172435', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1926, '120201230172435', 66, 1, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1927, '120201230172435', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1928, '120201230172644', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1929, '120201230172644', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1930, '120210102172906', 48, 26, 12, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1931, '120191215121646', NULL, 3, 499, NULL, 'Camara Bullet 2021 exterior', 0.00, 0.00, 0.00, 0.00),
(1934, '120210110121141', NULL, 200, 0.6, NULL, 'Impresiones BN', 0.00, 0.00, 0.00, 0.00),
(1935, '120210110121141', NULL, 1, 20, NULL, 'LLAVERO DE SUPERHEROE', 0.00, 0.00, 0.00, 0.00),
(1937, '120210112200725', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1938, '120210112200725', 66, 5, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1939, '120210112201025', 67, 3, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1941, '120210112201025', 49, 10, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1942, '120210113105038', NULL, 1, 1900, NULL, 'Anualidad CFDI , CABB891111CL8', 0.00, 0.00, 0.00, 0.00),
(1943, '120210114201904', NULL, 2, 500, NULL, 'Ractivacion licencia ', 0.00, 0.00, 0.00, 0.00),
(1944, '120210118203518', NULL, 1, 928, NULL, 'Servicio Tecnico', 0.00, 0.00, 0.00, 0.00),
(1947, '120210120204658', 49, 3, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1948, '120210120204658', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1949, '120210120204658', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1950, '120210121150755', NULL, 1, 1000, NULL, 'Ajuste máquina adicional', 0.00, 0.00, 0.00, 0.00),
(1951, '120210121150755', NULL, 1, 1900, NULL, 'Lector De Huella', 0.00, 0.00, 0.00, 0.00),
(1957, '120210128145640', 67, 2, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1958, '120210129143418', NULL, 1, 75, NULL, 'Alta NUevo RFC', 0.00, 0.00, 0.00, 0.00),
(1959, '120210129143418', NULL, 1, 150, NULL, 'COnstancia de situacion fiscal', 0.00, 0.00, 0.00, 0.00),
(1960, '120210129143418', NULL, 1, 200, NULL, 'Soporte tecnico', 0.00, 0.00, 0.00, 0.00),
(1962, '120210203135257', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1963, '120210204102701', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1964, '120210204102701', 66, 6, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1965, '120210204141716', NULL, 1, 4000, NULL, 'Control De Socios con promoción', 0.00, 0.00, 0.00, 0.00),
(1979, '120210206153434', NULL, 396, 1, NULL, 'Impresiones a color varios ', 0.00, 0.00, 0.00, 0.00),
(1980, '120210206153434', NULL, 1, 4, NULL, 'Carpeta tamaño carta ', 0.00, 0.00, 0.00, 0.00),
(1988, '120210209190449', NULL, 1, 400, NULL, 'Asistencia tecnica', 0.00, 0.00, 0.00, 0.00),
(1989, '120210210085514', 66, 5, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1990, '120210210085514', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1991, '120210210085514', 49, 6, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1994, '120210212001457', NULL, 2, 3500, NULL, 'Sistema control de socios precio especial ', 0.00, 0.00, 0.00, 0.00),
(1996, '120210211173109', NULL, 1, 928, NULL, 'Reactivacion lic sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(1997, '120210212183901', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(1998, '120210212183901', NULL, 1, 0, NULL, 'Lions GYMs', 0.00, 0.00, 0.00, 0.00),
(2002, '120210213181913', 3, 1, 5146, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2003, '120210213181913', 5, 1, 2500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2004, '120210213181913', NULL, 1, 2100, NULL, 'Relevador Puerta', 0.00, 0.00, 0.00, 0.00),
(2005, '120210217173310', 66, 4, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2006, '120210217173310', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2007, '120210220161814', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2008, '120210220161814', 66, 2, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2009, '120210220161814', 49, 2, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2010, '120210221100529', 67, 1, 60, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2011, '120210221100529', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2012, '120210222143248', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2013, '120210222143248', NULL, 1, 1900, NULL, 'Anualidad Cfdi ', 0.00, 0.00, 0.00, 0.00),
(2014, '120210225222925', NULL, 1, 3500, NULL, 'Sistema Restaurant ', 0.00, 0.00, 0.00, 0.00),
(2030, '120210304151442', NULL, 1, 800, NULL, 'Reactivacion licencia. ', 0.00, 0.00, 0.00, 0.00),
(2034, '120210315175223', 3, 1, 5344, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2035, '120200708154251', NULL, 1, 311.37, NULL, 'Asistencia tecnica', 0.00, 0.00, 0.00, 0.00),
(2045, '120210317200843', 2, 1, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2046, '120210318000551', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2047, '120210319144928', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2055, '120210330151444', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2059, '120210330180545', NULL, 1, 4500, NULL, 'Sistema hotelero', 0.00, 0.00, 0.00, 0.00),
(2060, '120210410103800', NULL, 1, 104, NULL, 'Varios imp Color ', 0.00, 0.00, 0.00, 0.00),
(2080, '120210427191553', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2081, '120210428141755', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2083, '120210430152931', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(2088, '120210506223451', NULL, 1, 1900, NULL, '	CFDI ANUALIDAD GAGJ8209199N7', 0.00, 0.00, 0.00, 0.00),
(2103, '120210517111226', NULL, 1, 1900, NULL, 'anualidad rfc GIA100728216 , GIC040830321', 0.00, 0.00, 0.00, 0.00),
(2109, '120210528134116', 3, 1, 4999, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2117, '120210607174051', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2129, '120210611180546', NULL, 108, 5, NULL, 'Escaneos', 0.00, 0.00, 0.00, 0.00),
(2130, '120210611182235', NULL, 1, 147, NULL, 'Impresiones color varios', 0.00, 0.00, 0.00, 0.00),
(2131, '120210612164732', NULL, 10, 8, NULL, 'Impresiones color', 0.00, 0.00, 0.00, 0.00),
(3854, '120221011200900', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(3855, '120221012153041', NULL, 1, 600, NULL, 'CTRL SOCIOS 6 * 1225.47 FN: SEP 22', 0.00, 0.00, 0.00, 0.00),
(3856, '120221012181556', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO - Dia de pago mensual: [1]', 0.00, 0.00, 0.00, 0.00),
(3857, '120221012181621', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO - Dia de pago mensual: [5]', 0.00, 0.00, 0.00, 0.00),
(3858, '120221012182540', NULL, 1, 555, NULL, 'ssss', 0.00, 0.00, 0.00, 0.00),
(3859, '120221013154709', NULL, 1, 1800, NULL, 'RENTA INMUEBLE NEZAHUALCOYOTL', 0.00, 0.00, 0.00, 0.00),
(3860, '120221013154746', NULL, 1, 1800, NULL, 'RENTA INMUEBLE NEZAHUALCOYOTL - Dia de pago mensual: [12]', 0.00, 0.00, 0.00, 0.00),
(3862, '120221013210019', NULL, 20, 400, NULL, 'Sistema Hotelero', 0.00, 0.00, 0.00, 0.00),
(3869, '120221018212021', 2, 1, 4500, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3875, '120221021212747', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3876, '120221025002849', NULL, 1, 1900, NULL, 'Anualidad CFDI', 0.00, 0.00, 0.00, 0.00),
(3877, '120221025003149', 66, 4, 110, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3878, '120221025003149', 49, 4, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3880, '120221030020833', NULL, 1, 400, NULL, 'lIC. hOTELERO rEINSTALACION', 0.00, 0.00, 0.00, 0.00),
(3883, '120221104195101', NULL, 1, 450, NULL, 'Reactivacion de licencia', 0.00, 0.00, 0.00, 0.00),
(3886, '120221107212338', NULL, 1, 700, NULL, 'Hotel WEb creditoscafetos.com/07102022', 0.00, 0.00, 0.00, 0.00),
(3891, '120221108172455', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3892, '120221108173337', NULL, 1, 600, NULL, 'Anualidad Control de Socios', 0.00, 0.00, 0.00, 0.00),
(3893, '120221108194502', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3896, '120221110192725', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO', 0.00, 0.00, 0.00, 0.00),
(3899, '120221115181348', NULL, 1, 500, NULL, 'Paqu Office 16 , limpieza, ant', 0.00, 0.00, 0.00, 0.00),
(3900, '120221115181537', NULL, 1, 700, NULL, 'Paqu Office 16 , limpieza, ant', 0.00, 0.00, 0.00, 0.00),
(3903, '120221121214836', NULL, 1, 300, NULL, 'aCTIVACION cONTROL DE SOCIOS', 0.00, 0.00, 0.00, 0.00),
(3904, '120221121215053', NULL, 1, 300, NULL, 'Mensualidad Control de socios  - Dia de pago mensual: [21]', 0.00, 0.00, 0.00, 0.00),
(3905, '120221122182334', NULL, 1, 1900, NULL, 'servidor elsolhotel.com', 0.00, 0.00, 0.00, 0.00),
(3906, '120221122183026', NULL, 1, 1900, NULL, 'quepeso.com', 0.00, 0.00, 0.00, 0.00),
(3907, '120221122183103', NULL, 1, 700, NULL, 'alparied.com.mx', 0.00, 0.00, 0.00, 0.00),
(3908, '120221122183139', NULL, 1, 1900, NULL, 'inmobiliariabkl.com', 0.00, 0.00, 0.00, 0.00),
(3909, '120221122183250', NULL, 1, 1999, NULL, 'creditoscafetos.com', 0.00, 0.00, 0.00, 0.00),
(3911, '120221020175220', NULL, 1, 693.68, NULL, 'SISTEMA DE VENTAS E INVENTARIO WEB PC- MOVILES RENTA MENSUAL ', 0.00, 0.00, 0.00, 0.00),
(3912, '120221124202231', NULL, 1, 1800, NULL, 'RENTA INMUEBLE NEZAHUALCOYOTL', 0.00, 0.00, 0.00, 0.00),
(3915, '120221129170330', NULL, 1, 199, NULL, 'https://ferrelapasadita.000webhostapp.com/ - Dia de pago mensual: [29]', 0.00, 0.00, 0.00, 0.00),
(3916, '120221129173407', NULL, 1, 693.68, NULL, 'https://caldereta.000webhostapp.com/ - Dia de pago mensual: [28]', 0.00, 0.00, 0.00, 0.00),
(3917, '120221129204339', NULL, 1, 600, NULL, 'SISTEMA CTRL SOCIOS 12 MESES X 600 PESOS', 0.00, 0.00, 0.00, 0.00),
(3918, '120221203175424', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3919, '120221212180827', NULL, 1, 4698, NULL, 'SFW HOTELERO DESC 10 + IVA 38 HAB', 0.00, 0.00, 0.00, 0.00),
(3920, '120221212183208', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3925, '120221213005930', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO', 0.00, 0.00, 0.00, 0.00),
(3926, '120221214232820', NULL, 1, 1300, NULL, 'Renovacion Ctrl Socios 65 USD', 0.00, 0.00, 0.00, 0.00),
(3927, '120221218213908', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3928, '120221220173644', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3929, '120221226190115', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO', 0.00, 0.00, 0.00, 0.00),
(3930, '120221226190145', NULL, 1, 1800, NULL, 'RENTA INMUEBLE NEZAHUALCOYOTL', 0.00, 0.00, 0.00, 0.00),
(3931, '120221226190331', NULL, 1, 300, NULL, 'Mensualidad Control de socios ', 0.00, 0.00, 0.00, 0.00),
(3932, '120221226194831', NULL, 1, 700, NULL, 'alparied.com.mx', 0.00, 0.00, 0.00, 0.00),
(3933, '120221226201257', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3935, '120221228023443', 3, 1, 5200, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(3936, '120221228174614', NULL, 1, 1500, NULL, 'DTP191016P83 RFC', 0.00, 0.00, 0.00, 0.00),
(3937, '120221228174635', NULL, 1, 1500, NULL, 'LOLA560503FU9 RFC', 0.00, 0.00, 0.00, 0.00),
(3944, '120230102221255', NULL, 1, 2500, NULL, 'ANUALIDAD CTRL SOCIOS', 0.00, 0.00, 0.00, 0.00),
(3945, '120230102221335', NULL, 1, 2500, NULL, 'ANUALIDAD CTRL SOCIOS', 0.00, 0.00, 0.00, 0.00),
(3946, '120230103214200', NULL, 1, 693.68, NULL, 'https://caldereta.000webhostapp.com/', 0.00, 0.00, 0.00, 0.00),
(3947, '120230103214252', NULL, 1, 600, NULL, 'SISTEMA CTRL SOCIOS 12 MESES X 600 PESOS - IN SEP 22 - FIN SEP 23', 0.00, 0.00, 0.00, 0.00),
(3949, '120230103222022', NULL, 1, 0, NULL, 'lIC. SWF HOTELERO 120211104125501', 0.00, 0.00, 0.00, 0.00),
(3957, '120230110161258', NULL, 1, 300, NULL, 'Control de socios Renta - Dia de pago mensual: [10]', 0.00, 0.00, 0.00, 0.00),
(3962, '120230119175821', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO', 0.00, 0.00, 0.00, 0.00),
(3964, '120230127212012', NULL, 1, 10800, NULL, 'sW+KIT PTV+3INSTALACIONES', 0.00, 0.00, 0.00, 0.00),
(3971, '120230130200054', NULL, 1, 2500, NULL, 'LIC CONTROL DE SOCIOS', 0.00, 0.00, 0.00, 0.00),
(3972, '120230131214036', NULL, 1, 900, NULL, 'Alta RFC MARTHA PATRICIA JIMENEZ CRUZ', 0.00, 0.00, 0.00, 0.00),
(3973, '120230131214018', NULL, 1, 128, NULL, 'Imp officio', 0.00, 0.00, 0.00, 0.00),
(3978, '120230207234628', NULL, 1, 2500, NULL, 'Correccion de lugar de nacimiento *AMATITLAN, VERACRUZ*', 0.00, 0.00, 0.00, 0.00),
(3979, '120230210200032', NULL, 1, 1500, NULL, 'Anualidad CFDI FerreLucy', 0.00, 0.00, 0.00, 0.00),
(3982, '120230220195054', NULL, 1, 900, NULL, 'ISABEL HERNANDEZ T', 0.00, 0.00, 0.00, 0.00);
INSERT INTO `product_venta` (`id`, `folio_venta`, `product`, `unidades`, `precio`, `product_sub`, `p_generico`, `ancho`, `alto`, `largo`, `peso`) VALUES
(3983, '120230221162624', NULL, 1, 300, NULL, 'Control de socios Renta', 0.00, 0.00, 0.00, 0.00),
(3984, '120230221184925', NULL, 1, 2800, NULL, 'Anualidad Ctrl Socios lic: 120220212163825', 0.00, 0.00, 0.00, 0.00),
(3985, '120230221191207', NULL, 1, 2500, NULL, 'ANUALIDAD CTRL SOCIOS', 0.00, 0.00, 0.00, 0.00),
(3986, '120230221192703', NULL, 1, 9486, NULL, 'Sft + Kit ptv + Lector de huella + 10 desc', 0.00, 0.00, 0.00, 0.00),
(3991, '120230222210704', NULL, 1, 0, NULL, 'ser realiza cambio de licencia 120190928164919 por 120230222210704 | $ 50 USD', 0.00, 0.00, 0.00, 0.00),
(3992, '120230223222142', NULL, 1, 150, NULL, 'RFC constcnaia reimpresion ', 0.00, 0.00, 0.00, 0.00),
(3993, '120230227191522', NULL, 1, 1, NULL, 'SOCIOS LIC 270 USD', 0.00, 0.00, 0.00, 0.00),
(3994, '120230228040225', NULL, 1, 2300, NULL, 'RENTA LOCAL COMERCIAL. J. MARIO ROSADO', 0.00, 0.00, 0.00, 0.00),
(3995, '120230228041645', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(4010, '120230310231734', NULL, 1, 150, NULL, 'ACTA DE NACIMIENTO ROSL760928MVZLRC06', 0.00, 0.00, 0.00, 0.00),
(4011, '120230310231734', NULL, 2, 150, NULL, 'CONTANCIAS DE SITUACION FISCAL. CURPS: ROSY8204057J5 Y ROSR8401067Y8', 0.00, 0.00, 0.00, 0.00),
(4012, '120230310231734', NULL, 1, 10, NULL, 'cURP', 0.00, 0.00, 0.00, 0.00),
(4015, '120230315224146', NULL, 1, 0, NULL, 'SE REACTIVA LICENCIA.', 0.00, 0.00, 0.00, 0.00),
(4016, '120230318183303', NULL, 1, 2000, NULL, 'Control de socios', 0.00, 0.00, 0.00, 0.00),
(4021, '120230323191244', NULL, 1, 150, NULL, 'RFC RECL961005C44', 0.00, 0.00, 0.00, 0.00),
(4022, '120230323201659', NULL, 1, 1900, NULL, 'Anualidad CFDI LLO181123B25 ', 0.00, 0.00, 0.00, 0.00),
(4023, '120230324085339', NULL, 1, 650, NULL, '0hostelsystem.000webhostapp.com - Dia de pago mensual: [24]', 0.00, 0.00, 0.00, 0.00),
(4027, '120230324232839', NULL, 1, 100, NULL, 'producto de prueba', 0.00, 0.00, 0.00, 0.00),
(4028, '120230325085538', 49, 1, 90, NULL, NULL, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospecto_acciones`
--

CREATE TABLE `prospecto_acciones` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `propuesta` varchar(300) NOT NULL,
  `accion` varchar(300) NOT NULL,
  `realizada` tinyint(1) NOT NULL DEFAULT 0,
  `interesados` tinyint(1) NOT NULL DEFAULT 0,
  `fecha` datetime NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte`
--

CREATE TABLE `soporte` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(254) NOT NULL,
  `costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `soporte`
--

INSERT INTO `soporte` (`id`, `descripcion`, `costo`) VALUES
(1, 'REINSTALACION SISTEMA SIN RESPALDO', 150),
(2, 'REINSTALACION DE SISTEMA CON RESPALDO', 400),
(3, 'CONFIGURACION DE WINDOWS PARA TRABAJO EN RED', 400),
(4, 'AGREGAR COMPUTADORA ADICIONAL', 100),
(5, 'INSTALACION Y CONFIGURACION DE IMPRESORAS', 150),
(6, 'RECUPERACION DE CONTRASEÑA', 350),
(7, 'ERROR EN CONFIGURACION DE SISTEMA', 180),
(8, 'ERROR EN CONFIGURACION DE SISTEMA OPERATIVO', 220),
(9, 'OPTIMIZACION DE SISTEMA OPERATIVO', 250),
(10, 'LIMPIEZA DE VIRUS Y AMENAZAS DIGITALES', 201),
(11, 'ACTUALIZACION DE SISTEMAS', 580);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `cfdi_serie` varchar(254) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `direccion`, `telefono`, `cfdi_serie`) VALUES
(1, '# # #   C O Q U I T O S   # # #', 'VEINTE DE NOVIEMBRE.NO.324, COL. BARRIO DE LAS FLORES, VERACRUZ, MEX 96980, TEL: + 52 923 120 05 05', '+52 55 4163 0891', 'A'),
(9, 'CLTA | BENITO JUAREZ', 'PARQUE JUAREZ NO. 9, COL. CENTRO, VERACRUZ, MEXICO 96980, TEL: + 52 923 120 05 05', '+52 55 4163 0891', 'C'),
(10, '# # #  C Y B E R C H O A P A S  # # #', 'LAS CHOAPAS VERACRUZ 96980,  MEXICO', '+52 923 120 05 05', 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_almacen`
--

CREATE TABLE `sucursal_almacen` (
  `id` int(11) NOT NULL,
  `sucursal` int(11) NOT NULL,
  `almacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal_almacen`
--

INSERT INTO `sucursal_almacen` (`id`, `sucursal`, `almacen`) VALUES
(5, 9, 2),
(6, 1, 1),
(9, 10, 3),
(17, 10, 2),
(18, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey`
--

CREATE TABLE `survey` (
  `id` int(11) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `fecha` datetime NOT NULL,
  `cumplimos` int(11) NOT NULL,
  `realizamos` int(11) NOT NULL,
  `atendimos` int(11) NOT NULL,
  `quejas` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traspasos`
--

CREATE TABLE `traspasos` (
  `folio` varchar(254) NOT NULL,
  `fecha` datetime NOT NULL,
  `user` int(11) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `traspasos`
--

INSERT INTO `traspasos` (`folio`, `fecha`, `user`, `open`) VALUES
('20230228015429', '2023-02-28 01:54:29', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `imagen` varchar(254) NOT NULL,
  `product_add` tinyint(1) NOT NULL DEFAULT 0,
  `product_gest` tinyint(1) NOT NULL DEFAULT 0,
  `gen_orden_compra` tinyint(1) NOT NULL DEFAULT 0,
  `client_add` tinyint(1) NOT NULL DEFAULT 0,
  `client_guest` tinyint(1) NOT NULL DEFAULT 0,
  `almacen_add` tinyint(1) NOT NULL DEFAULT 0,
  `almacen_guest` tinyint(1) NOT NULL DEFAULT 0,
  `depa_add` tinyint(1) NOT NULL DEFAULT 0,
  `depa_guest` tinyint(1) NOT NULL DEFAULT 0,
  `propiedades` tinyint(1) NOT NULL DEFAULT 0,
  `usuarios` tinyint(1) NOT NULL DEFAULT 0,
  `finanzas` tinyint(1) NOT NULL DEFAULT 0,
  `descripcion` longtext NOT NULL,
  `sucursal` int(11) NOT NULL,
  `change_suc` tinyint(1) NOT NULL,
  `sucursal_gest` tinyint(1) NOT NULL DEFAULT 0,
  `caja` tinyint(1) NOT NULL DEFAULT 0,
  `super_pedidos` tinyint(1) NOT NULL DEFAULT 0,
  `comision` int(11) DEFAULT 5,
  `sueldo` float NOT NULL DEFAULT 0,
  `vtd_pg` tinyint(1) NOT NULL DEFAULT 0,
  `full_graficas` tinyint(1) NOT NULL DEFAULT 0,
  `traspasos` tinyint(1) NOT NULL DEFAULT 0,
  `facturar` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `imagen`, `product_add`, `product_gest`, `gen_orden_compra`, `client_add`, `client_guest`, `almacen_add`, `almacen_guest`, `depa_add`, `depa_guest`, `propiedades`, `usuarios`, `finanzas`, `descripcion`, `sucursal`, `change_suc`, `sucursal_gest`, `caja`, `super_pedidos`, `comision`, `sueldo`, `vtd_pg`, `full_graficas`, `traspasos`, `facturar`) VALUES
(1, 'root', '6990149e5865432c7061b4b1376b7283', 'ISC. FRANCISCO E. ASCENCIO DOMINGUEZ', 'users/usuario20221008044036.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'CEO', 10, 1, 1, 1, 1, 5, 1800, 1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `annuities`
--
ALTER TABLE `annuities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annuity_client` (`client`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_user` (`user`);

--
-- Indices de la tabla `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `factura` (`factura`),
  ADD KEY `credit_client` (`client`),
  ADD KEY `credit_sucursal` (`sucursal`);

--
-- Indices de la tabla `credit_pay`
--
ALTER TABLE `credit_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit` (`credito`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `e_ventas`
--
ALTER TABLE `e_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `cliente_cliente` (`cliente`);

--
-- Indices de la tabla `folio_venta`
--
ALTER TABLE `folio_venta`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `client_folio` (`client`),
  ADD KEY `vendedor_folio` (`vendedor`),
  ADD KEY `sale_sucursal` (`sucursal`),
  ADD KEY `estrategia_venta` (`estrategia`);

--
-- Indices de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_buy`
--
ALTER TABLE `order_buy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folio` (`folio`);

--
-- Indices de la tabla `order_buy_products`
--
ALTER TABLE `order_buy_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_almacen` (`almacen`),
  ADD KEY `producto_departamento` (`departamento`);

--
-- Indices de la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `padre_hijo` (`padre`),
  ADD KEY `hijo_almacen` (`almacen`);

--
-- Indices de la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto` (`product`),
  ADD KEY `folio` (`folio_venta`);

--
-- Indices de la tabla `product_trasnfer`
--
ALTER TABLE `product_trasnfer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_venta`
--
ALTER TABLE `product_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folio_venta` (`folio_venta`),
  ADD KEY `sale_product` (`product`),
  ADD KEY `hijo` (`product_sub`);

--
-- Indices de la tabla `prospecto_acciones`
--
ALTER TABLE `prospecto_acciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accion_prospecto` (`cliente`),
  ADD KEY `accion_prospecto_user` (`user`);

--
-- Indices de la tabla `soporte`
--
ALTER TABLE `soporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursal_almacen`
--
ALTER TABLE `sucursal_almacen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sucursal` (`sucursal`),
  ADD KEY `almacen` (`almacen`);

--
-- Indices de la tabla `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folio` (`folio`);

--
-- Indices de la tabla `traspasos`
--
ALTER TABLE `traspasos`
  ADD PRIMARY KEY (`folio`),
  ADD UNIQUE KEY `folio` (`folio`),
  ADD KEY `tras_user` (`user`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendedor_sucursal` (`sucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `annuities`
--
ALTER TABLE `annuities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT de la tabla `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `credit_pay`
--
ALTER TABLE `credit_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `e_ventas`
--
ALTER TABLE `e_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `order_buy`
--
ALTER TABLE `order_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `order_buy_products`
--
ALTER TABLE `order_buy_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `product_trasnfer`
--
ALTER TABLE `product_trasnfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `product_venta`
--
ALTER TABLE `product_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4029;

--
-- AUTO_INCREMENT de la tabla `prospecto_acciones`
--
ALTER TABLE `prospecto_acciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `soporte`
--
ALTER TABLE `soporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sucursal_almacen`
--
ALTER TABLE `sucursal_almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `annuities`
--
ALTER TABLE `annuities`
  ADD CONSTRAINT `annuity_client` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clientes_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credit_client` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `credit_sucursal` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `credit_pay`
--
ALTER TABLE `credit_pay`
  ADD CONSTRAINT `credit` FOREIGN KEY (`credito`) REFERENCES `credits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `cliente_cliente` FOREIGN KEY (`cliente`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `folio_venta`
--
ALTER TABLE `folio_venta`
  ADD CONSTRAINT `client_folio` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estrategia_venta` FOREIGN KEY (`estrategia`) REFERENCES `e_ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_sucursal` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vendedor_folio` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `producto_almacen` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_departamento` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  ADD CONSTRAINT `hijo_almacen` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `padre_hijo` FOREIGN KEY (`padre`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  ADD CONSTRAINT `folio` FOREIGN KEY (`folio_venta`) REFERENCES `folio_venta` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto` FOREIGN KEY (`product`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `product_venta`
--
ALTER TABLE `product_venta`
  ADD CONSTRAINT `folio_venta` FOREIGN KEY (`folio_venta`) REFERENCES `folio_venta` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hijo` FOREIGN KEY (`product_sub`) REFERENCES `productos_sub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_product` FOREIGN KEY (`product`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prospecto_acciones`
--
ALTER TABLE `prospecto_acciones`
  ADD CONSTRAINT `accion_prospecto` FOREIGN KEY (`cliente`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accion_prospecto_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal_almacen`
--
ALTER TABLE `sucursal_almacen`
  ADD CONSTRAINT `almacen` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sucursal` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `traspasos`
--
ALTER TABLE `traspasos`
  ADD CONSTRAINT `tras_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `vendedor_sucursal` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
