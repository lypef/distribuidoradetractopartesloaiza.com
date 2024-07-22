-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-07-2024 a las 02:23:13
-- Versión del servidor: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Versión de PHP: 7.1.33-53+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ascgar`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `annuities`
--

CREATE TABLE `annuities` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `concepto` varchar(254) NOT NULL,
  `price` float NOT NULL,
  `date_ini` date NOT NULL DEFAULT current_timestamp(),
  `date_last` date NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL DEFAULT 'DESCONOCIDO',
  `telefono` varchar(254) NOT NULL DEFAULT 'DESCONOCIDO',
  `descuento` int(11) NOT NULL DEFAULT 0,
  `rfc` varchar(254) NOT NULL DEFAULT 'XAXX010101000',
  `razon_social` varchar(254) NOT NULL DEFAULT 'DESCONOCIDO',
  `correo` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'DESCONOCIDO',
  `prospecto` tinyint(1) NOT NULL DEFAULT 0,
  `interes` varchar(254) NOT NULL DEFAULT 'DESCONOCIDO',
  `c_entero_nosotros` varchar(254) NOT NULL DEFAULT 'DESCONOCIDO',
  `user` int(11) NOT NULL DEFAULT 1,
  `creado` date DEFAULT NULL,
  `clasificacion` varchar(254) NOT NULL DEFAULT 'B',
  `r_fiscal` int(11) NOT NULL DEFAULT 621,
  `d_fiscal` int(11) NOT NULL DEFAULT 96980
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nombre`, `direccion`, `telefono`, `descuento`, `rfc`, `razon_social`, `correo`, `prospecto`, `interes`, `c_entero_nosotros`, `user`, `creado`, `clasificacion`, `r_fiscal`, `d_fiscal`) VALUES
(1, 'PUBLICO EN GENERAL', 'DIRECCION', '5219231200505', 0, 'XAXX010101000', 'PUBLICO EN GENERAL', 'cyberchoapas@gmail.com', 0, '', '', 1, '2021-06-14', 'B', 616, 96980);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credit_pay`
--

CREATE TABLE `credit_pay` (
  `id` int(11) NOT NULL,
  `credito` int(11) NOT NULL,
  `monto` decimal(65,4) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `descripcion` varchar(254) NOT NULL,
  `view_index` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `nombre_corto`, `direccion`, `correo`, `telefono`, `mision`, `vision`, `contacto`, `facebook`, `twitter`, `youtube`, `iva`, `footer`, `cfdi_lugare_expedicion`, `cfdi_rfc`, `cfdi_regimen`, `cfdi_cer`, `cfdi_key`, `cfdi_pass`, `token`) VALUES
(1, ' CYBERCHOAPAS', 'GA', 'Veracruz, Mexico', 'contacto@cyberchoapa.scom', '+52 923 120 05 05', 'Somos una empresa fundada físicamente el 29 de mayo del año 2013 en el estado de Veracruz, México. Dedicada al desarrollo, distribución y venta de software, soluciones en Internet, venta de equipos (Hardware) y servicios varios. Ofreciendo una solución global a empresas, profesionales, administraciones, usuarios particulares y al publico en general, en todo el territorio nacional e internacional.', 'Pretendemos ser un referente en el mercado nacional en el sector de las TIC, y para ello abarcaremos todos los servicios que ofrecemos actualmente incrementando los que vayan surgiendo debido a la necesidad de cambio provocado por los avances tecnológicos. Esto es así ya que somos una empresa en constante innovación ya que el sector de la tecnología así lo requiere.', 'Telefono\r\n<br>\r\n+52 923 120 05 05\r\n<br><br>\r\nVentas | Informacion \r\n<br>\r\nventas@cyberchoapas.com', '', '', '', 16, '<h5 style=\"background-color: #898989; text-align: center;\"><span style=\"background-color: #898989; color: #ffffff;\"><em><strong>### ESTE DOCUMENTO NO TIENE VALOR FISCAL ###</strong></em></span><span style=\"background-color: #898989; color: #ffffff;\"><em><strong><br /></strong></em></span></h5>', '96980', 'EKU9003173C9', '603', 'SDK2/certificados/EKU9003173C9.cer  ', 'SDK2/certificados/EKU9003173C9.key', '12345678a', 'g4UW4c0gIkyX2yH90bOHlCx8ivt0lD3/Eyh7AnLuSrmVeBiyFbjEmdlFBs0uaaeVOxQRjz5DPTmXzuZrWdVZs/bsVoQ8Tc4BWo/XDDG+EvA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_ventas`
--

CREATE TABLE `e_ventas` (
  `id` int(11) NOT NULL,
  `estrategia` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `serie` varchar(254) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `estatus` varchar(254) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `no. De parte`, `nombre`, `descripcion`, `almacen`, `departamento`, `loc_almacen`, `marca`, `proveedor`, `foto0`, `foto1`, `foto2`, `foto3`, `oferta`, `precio_normal`, `precio_oferta`, `stock`, `tiempo de entrega`, `stock_min`, `stock_max`, `precio_costo`, `cv`, `um`, `um_des`, `pedir_medidas`) VALUES
(2, 'SFWHL', 'SISTEMA HOTELERO', '<p>Hostel system es un sistema inform&aacute;tico hotelero con el cual podr&aacute;s llevar el control de tu hotel, motel,posada, etc.</p>\r\n\r\n<ul>\r\n	<li>La Tecnolog&iacute;a ser&aacute; tu mejor aliado en la atenci&oacute;n que reciben sus clientes.</li>\r\n	<li>Llevara un buen control de hu&eacute;speds y habitaciones</li>\r\n	<li>Le ayudar&aacute; a terminar con los problemas de las reservas</li>\r\n	<li>Le ayudar&aacute; a&nbsp;administrar la venta de art&iacute;culos a sus clientes</li>\r\n	<li>Podr&aacute; generar un eficiente control de las reservaciones y un eficaz manejo de la recepci&oacute;n.</li>\r\n	<li>Sus clientes podr&aacute;n reservar f&aacute;cilmente.</li>\r\n	<li>Le llegara un email de los movimientos, este donde este</li>\r\n	<li>Crea y planifica tus promociones, agr&eacute;galas y el sistema te las recordara autom&aacute;ticamente.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Ventajas</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>&Aacute;gil control de las Reservaciones</li>\r\n	<li>F&aacute;cil manejo de Recepci&oacute;n</li>\r\n	<li>Check In y Check Out f&aacute;cil y r&aacute;pido</li>\r\n	<li>Visualizaci&oacute;n gr&aacute;fica de la ocupaci&oacute;n del hotel</li>\r\n	<li>Tecnolog&iacute;a en l&iacute;nea que le permite estar conectado y concentrar la informaci&oacute;n en un solo sistema</li>\r\n	<li>Actualice desde su sistema tarifas y tarifas por habitaci&oacute;n</li>\r\n	<li>Permita a sus visitantes realizar reservaciones</li>\r\n	<li>Presentaci&oacute;n de manera de atractiva de su hotel con galer&iacute;as fotogr&aacute;ficas</li>\r\n	<li>promociones</li>\r\n	<li>Facturacion electronica &ndash; Emite facturas electronicas a tus clientes dese el propio sistema</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>M&oacute;dulos de sistema</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>Reservaciones</li>\r\n	<li>Check In</li>\r\n	<li>Check Out</li>\r\n	<li>Cat&aacute;logos</li>\r\n	<li>Reportes</li>\r\n	<li>Estado de cuenta del Huesped</li>\r\n	<li>Disponibilidad de habitaciones</li>\r\n	<li>Usuarios y Permisos</li>\r\n	<li>Promociones</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Facturaci&oacute;n</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>&nbsp; &nbsp; El costo de la activacion del modulo de facturaci&oacute;n es pago &uacute;nico y es por separado del sistema hotelero</li>\r\n	<li>&nbsp; &nbsp; El emisor puede configurar de acuerdo a sus necesidades los datos fiscales</li>\r\n	<li>&nbsp; &nbsp; Se requiere fiel (firma electr&oacute;nica) y sello digital vigente proporcionados por el sat</li>\r\n	<li>&nbsp; &nbsp; Las facturas que emita el emisor tendr&aacute;n un costo de 1 peso por factura</li>\r\n	<li>&nbsp; &nbsp; Se pagan mensuales o puede pagarlas por adelantado si as&iacute; lo desea</li>\r\n	<li>&nbsp; &nbsp;&nbsp;Puede emitir y cancelar facturas desde el sistema</li>\r\n	<li>&nbsp; &nbsp;&nbsp;Puede regenerar el pdf</li>\r\n	<li>&nbsp; &nbsp;&nbsp;Puede reenviar la factura a su cliente</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Cat&aacute;logos</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hu&eacute;spedes</li>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Productos / Servicios</li>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usuarios</li>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clientes</li>\r\n</ul>\r\n', 3, 37, 'GDRIVE', 'CLTA', 'CLTA', 'product/product_img120231113123445.jpg', 'product/product_img220190819113601.jpg', 'product/product_img320190819113601.jpg', 'product/product_img420190819113601.jpg', 0, 4500, 4300, 4971, 'INMEDIATO', 1000, 10000, 0, '43232300', 'XUN', 'LVITALICIA', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `p_generico` varchar(254) DEFAULT NULL,
  `ancho` decimal(64,2) NOT NULL DEFAULT 0.00,
  `alto` decimal(64,2) NOT NULL DEFAULT 0.00,
  `largo` decimal(64,2) NOT NULL DEFAULT 0.00,
  `peso` decimal(64,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte`
--

CREATE TABLE `soporte` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(254) NOT NULL,
  `costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_almacen`
--

CREATE TABLE `sucursal_almacen` (
  `id` int(11) NOT NULL,
  `sucursal` int(11) NOT NULL,
  `almacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traspasos`
--

CREATE TABLE `traspasos` (
  `folio` varchar(254) NOT NULL,
  `fecha` datetime NOT NULL,
  `user` int(11) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `imagen`, `product_add`, `product_gest`, `gen_orden_compra`, `client_add`, `client_guest`, `almacen_add`, `almacen_guest`, `depa_add`, `depa_guest`, `propiedades`, `usuarios`, `finanzas`, `descripcion`, `sucursal`, `change_suc`, `sucursal_gest`, `caja`, `super_pedidos`, `comision`, `sueldo`, `vtd_pg`, `full_graficas`, `traspasos`, `facturar`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845', 'ISC. FRANCISCO E. ASCENCIO DOMINGUEZ', 'users/usuario20221008044036.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'CEO', 10, 1, 1, 1, 1, 5, 1800, 1, 1, 1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `annuities`
--
ALTER TABLE `annuities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT de la tabla `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credit_pay`
--
ALTER TABLE `credit_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `e_ventas`
--
ALTER TABLE `e_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_buy`
--
ALTER TABLE `order_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_buy_products`
--
ALTER TABLE `order_buy_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_trasnfer`
--
ALTER TABLE `product_trasnfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_venta`
--
ALTER TABLE `product_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prospecto_acciones`
--
ALTER TABLE `prospecto_acciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soporte`
--
ALTER TABLE `soporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal_almacen`
--
ALTER TABLE `sucursal_almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
