-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2015 a las 18:21:26
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hevacloud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beacon`
--

CREATE TABLE IF NOT EXISTS `beacon` (
  `mac` varchar(50) NOT NULL,
  `idBeacon` varchar(50) NOT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `major` int(11) DEFAULT NULL,
  `minor` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `beacon`
--

INSERT INTO `beacon` (`mac`, `idBeacon`, `uuid`, `major`, `minor`, `color`, `name`, `icon`) VALUES
('c53b38767f23', 'B9407F30-F5F8-466E-AFF9-25556B57FE6D:32547:14454', 'B9407F30-F5F8-466E-AFF9-25556B57FE6D', 32547, 14454, 'blueberry', 'blueberry', 'BEACON-BLUEBERRY_PIE.png'),
('d1b0498e35a1', 'CBD80D0C-B084-28CD-8039-734905A7A2A5:32547:18830', 'CBD80D0C-B084-28CD-8039-734905A7A2A5', 32547, 18830, 'mint', 'mint', 'BEACON-MINT-COCKTAIL.png'),
('fa91a34e079d', '6E28149A-CF12-48B7-B337-0B230C569328:1949:41806', '6E28149A-CF12-48B7-B337-0B230C569328', 1949, 41806, 'ice', 'ice', 'BEACON-ICY-MARSHMALLOW.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campain`
--

CREATE TABLE IF NOT EXISTS `campain` (
  `idCampain` int(10) unsigned NOT NULL,
  `title` text NOT NULL,
  `content` text,
  `featuredImage` text
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campain`
--

INSERT INTO `campain` (`idCampain`, `title`, `content`, `featuredImage`) VALUES
(16, 'EL MEJOR CACAO DEL MUNDO,ES NUESTRA TRADICIÓN.', 'Por la compra de 50 dólares de nuestros productos, recibe 20% de descuento.Además un increíble regalo personalizado.', 'http://redigital.ec/wp-content/uploads/2015/10/cacai.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campain_has_beacon`
--

CREATE TABLE IF NOT EXISTS `campain_has_beacon` (
  `Campain_idCampain` int(10) unsigned NOT NULL,
  `Beacon_mac` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campain_has_beacon`
--

INSERT INTO `campain_has_beacon` (`Campain_idCampain`, `Beacon_mac`) VALUES
(0, '?'),
(8, 'fa91a34e079d'),
(11, 'fa91a34e079d'),
(12, 'c53b38767f23'),
(13, 'c53b38767f23'),
(14, 'd1b0498e35a1'),
(14, 'fa91a34e079d'),
(15, 'd1b0498e35a1'),
(15, 'fa91a34e079d'),
(16, 'd1b0498e35a1'),
(16, 'fa91a34e079d'),
(17, 'c53b38767f23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campain_has_tags`
--

CREATE TABLE IF NOT EXISTS `campain_has_tags` (
  `Campain_idCampain` int(10) unsigned NOT NULL,
  `Tags_idTags` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campain_has_tags`
--

INSERT INTO `campain_has_tags` (`Campain_idCampain`, `Tags_idTags`) VALUES
(0, 22),
(8, 1),
(11, 6),
(11, 8),
(11, 21),
(12, 23),
(13, 24),
(14, 25),
(14, 26),
(15, 25),
(15, 26),
(16, 25),
(16, 26),
(17, 1),
(17, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_accionessecciones`
--

CREATE TABLE IF NOT EXISTS `cat_accionessecciones` (
  `id_AccionSeccion` int(11) NOT NULL,
  `tx_NombreAccion` char(200) DEFAULT NULL,
  `i_activa` int(11) DEFAULT NULL,
  `id_Seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_accionessecciones`
--

INSERT INTO `cat_accionessecciones` (`id_AccionSeccion`, `tx_NombreAccion`, `i_activa`, `id_Seccion`) VALUES
(1, 'Modificar datos de otro usuario', 1, 1),
(2, 'Modificar sus datos personales', 1, 1),
(3, 'Ver bitacora de sesiones de otro usuario', 1, 1),
(4, 'Ver su bitacora de sesiones', 1, 1),
(5, 'Modificar password de otro usuario', 1, 1),
(6, 'Modificar su propio password', 1, 1),
(7, 'Cambiar el rol de otro usuario', 1, 1),
(8, 'Cambiar su propio rol de usuario', 1, 1),
(9, 'Cambiar el status de otro usuario', 1, 1),
(10, 'Cambiar su status de usuario', 1, 1),
(11, 'Dar de alta a nuevos usuario', 1, 1),
(12, 'Eliminar usuarios', 1, 1),
(13, 'Entrar a seccion', 1, 3),
(14, 'Entrar a seccion', 1, 4),
(15, 'Entrar a seccion', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_secciones`
--

CREATE TABLE IF NOT EXISTS `cat_secciones` (
  `id_seccion` int(11) NOT NULL,
  `tx_NombreSeccion` char(100) DEFAULT NULL,
  `i_activa` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_secciones`
--

INSERT INTO `cat_secciones` (`id_seccion`, `tx_NombreSeccion`, `i_activa`) VALUES
(1, 'Administracion de usuarios', 1),
(2, 'Conciliaciones', 0),
(3, 'Crear reportes', 1),
(4, 'Reportes de desempeño', 1),
(5, 'Reportes generales', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_statususuario`
--

CREATE TABLE IF NOT EXISTS `cat_statususuario` (
  `id_StatusUsuario` int(11) NOT NULL,
  `tx_StatusUsuario` char(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_statususuario`
--

INSERT INTO `cat_statususuario` (`id_StatusUsuario`, `tx_StatusUsuario`) VALUES
(1, 'Activo'),
(2, 'Bloqueado'),
(3, 'Eliminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tiposbloqueo`
--

CREATE TABLE IF NOT EXISTS `cat_tiposbloqueo` (
  `id_TipoBloqueo` int(11) NOT NULL,
  `tx_TipoBloqueo` char(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_tiposbloqueo`
--

INSERT INTO `cat_tiposbloqueo` (`id_TipoBloqueo`, `tx_TipoBloqueo`) VALUES
(1, 'Bloqueo Permanente'),
(2, 'Bloqueo Temporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tiposusuario`
--

CREATE TABLE IF NOT EXISTS `cat_tiposusuario` (
  `id_TipoUsuario` int(11) NOT NULL,
  `tx_TipoUsuario` char(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_tiposusuario`
--

INSERT INTO `cat_tiposusuario` (`id_TipoUsuario`, `tx_TipoUsuario`) VALUES
(1, 'Administrador'),
(2, 'Supervisor'),
(3, 'Operador'),
(4, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `idTags` int(10) unsigned NOT NULL,
  `Name` text
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`idTags`, `Name`) VALUES
(1, 'ropa'),
(6, 'colores'),
(7, 'otros'),
(8, 'zapatos'),
(20, 'azul'),
(21, 'pera'),
(22, '?'),
(23, 'ropa de mujer'),
(24, 'camisetas termicas'),
(25, 'Cacao'),
(26, 'Chocolate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_configuracionapp`
--

CREATE TABLE IF NOT EXISTS `tbl_configuracionapp` (
  `id_ConfiguracionApp` int(11) NOT NULL,
  `tx_ConfiguracionNombre` char(50) DEFAULT NULL,
  `tx_ConfiguracionDescripcion` char(250) DEFAULT NULL,
  `ConfiguracionValor` int(11) DEFAULT NULL,
  `tx_TipoValor` char(5) DEFAULT NULL,
  `i_Activo` int(11) DEFAULT NULL,
  `dt_FechaRegistro` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_configuracionapp`
--

INSERT INTO `tbl_configuracionapp` (`id_ConfiguracionApp`, `tx_ConfiguracionNombre`, `tx_ConfiguracionDescripcion`, `ConfiguracionValor`, `tx_TipoValor`, `i_Activo`, `dt_FechaRegistro`) VALUES
(1, 'Maximo Intentos Login', 'Maximo numero de veces que un usuario puede intentar hacer login en los ultimos 30 minutos.', 5, 'num', 1, '2015-08-17 10:09:20'),
(2, 'Caducidad Password', 'Tiempo que debe pasar para que la contraseña del usuario caduque y deje de ser valida.', 1, 'meses', 1, '2015-08-17 10:09:20'),
(3, 'Tiempo Notificar Password', 'Tiempo previo a la caducidad de la contraseña para empezar a notificar al usuario que debe cambiarla.', 15, 'dias', 1, '2015-08-17 10:09:20'),
(4, 'Maximo Sesiones Activas', 'Maximo numero de sesiones activas por usuario.', 3, 'num', 1, '2015-08-17 10:09:20'),
(5, 'Bloquear Usuarios Password Caducada', 'Al intentar hacer login ¿Se debe bloquear a los usuarios con contraseña caducada?.', 1, 'bool', 1, '2015-08-17 10:09:20'),
(6, 'Id Super Usuario', 'Id del usuario administrador. Sirve para tomar datos de ese usuario y enviar notificaciones de la aplicacion.', 1, 'num', 1, '2015-08-17 10:09:20'),
(7, 'Tiempo Bloqueo Intentos', 'Tiempo que debe ser bloqueado un usuario por exceder el maximo de intento fallidos.', 1, 'hrs', 1, '2015-08-17 10:09:20'),
(8, 'Maxima Actividad  Sesiones', 'Tiempo maximo que una sesion puede estar activa.', 1, 'dias', 1, '2015-08-17 10:09:20'),
(9, 'Maxima Inactividad  Sesiones', 'Tiempo maximo que una sesion puede estar inactiva sin cerrarse automaticamente.', 20, 'min', 1, '2015-08-17 10:09:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_logssesiones`
--

CREATE TABLE IF NOT EXISTS `tbl_logssesiones` (
  `id_logsesion` int(11) NOT NULL,
  `tx_username` char(50) DEFAULT NULL,
  `tx_password` char(50) DEFAULT NULL,
  `tx_ClaveSesion` char(50) DEFAULT NULL,
  `tx_StatusIntento` char(50) DEFAULT NULL,
  `i_IntentoFallido` int(11) DEFAULT NULL,
  `dt_FechaRegistro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisosusuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_permisosusuarios` (
  `id_PermisoUsuario` int(11) NOT NULL,
  `id_Usuario` int(11) DEFAULT NULL,
  `id_Seccion` int(11) DEFAULT NULL,
  `id_AccionSeccion` int(11) DEFAULT NULL,
  `i_permiso` int(11) DEFAULT NULL,
  `id_UsuarioAsignacion` int(11) DEFAULT NULL,
  `dt_FechaAsignacion` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_permisosusuarios`
--

INSERT INTO `tbl_permisosusuarios` (`id_PermisoUsuario`, `id_Usuario`, `id_Seccion`, `id_AccionSeccion`, `i_permiso`, `id_UsuarioAsignacion`, `dt_FechaAsignacion`) VALUES
(1, 1, 1, 1, 1, 1, '2015-08-17 10:09:19'),
(2, 1, 1, 2, 1, 1, '2015-08-17 10:09:19'),
(3, 1, 1, 3, 1, 1, '2015-08-17 10:09:19'),
(4, 1, 1, 4, 1, 1, '2015-08-17 10:09:19'),
(5, 1, 1, 5, 1, 1, '2015-08-17 10:09:19'),
(6, 1, 1, 6, 1, 1, '2015-08-17 10:09:19'),
(7, 1, 1, 7, 1, 1, '2015-08-17 10:09:19'),
(8, 1, 1, 8, 1, 1, '2015-08-17 10:09:19'),
(9, 1, 1, 9, 1, 1, '2015-08-17 10:09:19'),
(10, 1, 1, 10, 1, 1, '2015-08-17 10:09:19'),
(11, 1, 1, 11, 1, 1, '2015-08-17 10:09:19'),
(12, 1, 1, 12, 1, 1, '2015-08-17 10:09:19'),
(13, 1, 3, 13, 1, 1, '2015-08-17 10:09:19'),
(14, 1, 4, 14, 1, 1, '2015-08-17 10:09:19'),
(15, 1, 5, 15, 1, 1, '2015-08-17 10:09:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `tx_username` char(30) DEFAULT NULL,
  `tx_password` char(50) DEFAULT NULL,
  `tx_Nombre` char(50) DEFAULT NULL,
  `tx_ApellidoPaterno` char(50) DEFAULT NULL,
  `tx_ApellidoMaterno` char(50) DEFAULT NULL,
  `tx_Email` char(50) DEFAULT NULL,
  `id_TipoUsuario` int(11) DEFAULT NULL,
  `id_StatusUsuario` int(11) DEFAULT NULL,
  `id_UsuarioAlta` int(11) DEFAULT NULL,
  `dt_FechaRegistro` datetime DEFAULT NULL,
  `dt_UltimaModificacionUsuario` datetime DEFAULT NULL,
  `dt_UltimaModificacionPw` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_Usuario`, `tx_username`, `tx_password`, `tx_Nombre`, `tx_ApellidoPaterno`, `tx_ApellidoMaterno`, `tx_Email`, `id_TipoUsuario`, `id_StatusUsuario`, `id_UsuarioAlta`, `dt_FechaRegistro`, `dt_UltimaModificacionUsuario`, `dt_UltimaModificacionPw`) VALUES
(1, 'gonzasilve', 'cc03e747a6afbbcbf8be7668acfebee5', 'Gonzalo', 'Silverio', 'Silverio', 'gonzasilve@gmail.com', 1, 1, 1, '2015-08-17 10:09:16', '2015-08-17 10:09:16', '2015-08-17 10:09:16'),
(2, 'xavier_byte', 'cc03e747a6afbbcbf8be7668acfebee5', 'Xavier', 'Silverio', 'Blake', 'xavier_byte@hotmail.com', 1, 2, 3, '2015-08-17 10:09:16', '2015-08-17 10:09:16', '2015-08-17 10:09:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_sesionesactivas`
--

CREATE TABLE IF NOT EXISTS `tmp_sesionesactivas` (
  `id_sesion` int(11) NOT NULL,
  `id_Usuario` int(11) DEFAULT NULL,
  `tx_ClaveSesion` char(50) DEFAULT NULL,
  `dt_FechaRegistro` datetime DEFAULT NULL,
  `dt_UltimaActividad` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_usuariosbloqueados`
--

CREATE TABLE IF NOT EXISTS `tmp_usuariosbloqueados` (
  `id_UsuarioBloqueado` int(11) NOT NULL,
  `id_Usuario` int(11) DEFAULT NULL,
  `tx_username` char(50) DEFAULT NULL,
  `id_TipoBloqueo` int(11) DEFAULT NULL,
  `tiempo` int(11) DEFAULT NULL,
  `tx_TipoTiempo` char(5) DEFAULT NULL,
  `dt_FechaRegistro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `fb_id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `url_prfile_photo` varchar(20) DEFAULT NULL,
  `brirthdays` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_like`
--

CREATE TABLE IF NOT EXISTS `user_like` (
  `user_data_email` varchar(50) NOT NULL,
  `user_data_fb_id` varchar(50) NOT NULL,
  `Campain_idCampain` int(10) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_share`
--

CREATE TABLE IF NOT EXISTS `user_share` (
  `user_data_email` varchar(50) NOT NULL,
  `user_data_fb_id` varchar(50) NOT NULL,
  `Campain_idCampain` int(10) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `beacon`
--
ALTER TABLE `beacon`
  ADD PRIMARY KEY (`mac`);

--
-- Indices de la tabla `campain`
--
ALTER TABLE `campain`
  ADD PRIMARY KEY (`idCampain`);

--
-- Indices de la tabla `campain_has_beacon`
--
ALTER TABLE `campain_has_beacon`
  ADD PRIMARY KEY (`Campain_idCampain`,`Beacon_mac`), ADD KEY `Campain_has_Beacon_FKIndex1` (`Campain_idCampain`), ADD KEY `Campain_has_Beacon_FKIndex2` (`Beacon_mac`);

--
-- Indices de la tabla `campain_has_tags`
--
ALTER TABLE `campain_has_tags`
  ADD PRIMARY KEY (`Campain_idCampain`,`Tags_idTags`), ADD KEY `Campain_has_Tags_FKIndex1` (`Campain_idCampain`), ADD KEY `Campain_has_Tags_FKIndex2` (`Tags_idTags`);

--
-- Indices de la tabla `cat_accionessecciones`
--
ALTER TABLE `cat_accionessecciones`
  ADD PRIMARY KEY (`id_AccionSeccion`), ADD KEY `id_Seccion` (`id_Seccion`);

--
-- Indices de la tabla `cat_secciones`
--
ALTER TABLE `cat_secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `cat_statususuario`
--
ALTER TABLE `cat_statususuario`
  ADD PRIMARY KEY (`id_StatusUsuario`);

--
-- Indices de la tabla `cat_tiposbloqueo`
--
ALTER TABLE `cat_tiposbloqueo`
  ADD PRIMARY KEY (`id_TipoBloqueo`);

--
-- Indices de la tabla `cat_tiposusuario`
--
ALTER TABLE `cat_tiposusuario`
  ADD PRIMARY KEY (`id_TipoUsuario`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`idTags`);

--
-- Indices de la tabla `tbl_configuracionapp`
--
ALTER TABLE `tbl_configuracionapp`
  ADD PRIMARY KEY (`id_ConfiguracionApp`);

--
-- Indices de la tabla `tbl_logssesiones`
--
ALTER TABLE `tbl_logssesiones`
  ADD PRIMARY KEY (`id_logsesion`);

--
-- Indices de la tabla `tbl_permisosusuarios`
--
ALTER TABLE `tbl_permisosusuarios`
  ADD PRIMARY KEY (`id_PermisoUsuario`), ADD KEY `id_Usuario` (`id_Usuario`), ADD KEY `id_Seccion` (`id_Seccion`), ADD KEY `id_AccionSeccion` (`id_AccionSeccion`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_Usuario`), ADD KEY `id_TipoUsuario` (`id_TipoUsuario`), ADD KEY `id_StatusUsuario` (`id_StatusUsuario`);

--
-- Indices de la tabla `tmp_sesionesactivas`
--
ALTER TABLE `tmp_sesionesactivas`
  ADD PRIMARY KEY (`id_sesion`), ADD KEY `id_Usuario` (`id_Usuario`);

--
-- Indices de la tabla `tmp_usuariosbloqueados`
--
ALTER TABLE `tmp_usuariosbloqueados`
  ADD PRIMARY KEY (`id_UsuarioBloqueado`), ADD KEY `id_TipoBloqueo` (`id_TipoBloqueo`);

--
-- Indices de la tabla `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`fb_id`,`email`);

--
-- Indices de la tabla `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`user_data_email`,`user_data_fb_id`,`Campain_idCampain`), ADD KEY `user_data_has_Campain_FKIndex1` (`user_data_fb_id`,`user_data_email`), ADD KEY `user_data_has_Campain_FKIndex2` (`Campain_idCampain`);

--
-- Indices de la tabla `user_share`
--
ALTER TABLE `user_share`
  ADD PRIMARY KEY (`user_data_email`,`user_data_fb_id`,`Campain_idCampain`), ADD KEY `user_data_has_Campain_FKIndex1` (`user_data_fb_id`,`user_data_email`), ADD KEY `user_data_has_Campain_FKIndex2` (`Campain_idCampain`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campain`
--
ALTER TABLE `campain`
  MODIFY `idCampain` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `cat_accionessecciones`
--
ALTER TABLE `cat_accionessecciones`
  MODIFY `id_AccionSeccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `cat_secciones`
--
ALTER TABLE `cat_secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cat_statususuario`
--
ALTER TABLE `cat_statususuario`
  MODIFY `id_StatusUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cat_tiposbloqueo`
--
ALTER TABLE `cat_tiposbloqueo`
  MODIFY `id_TipoBloqueo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cat_tiposusuario`
--
ALTER TABLE `cat_tiposusuario`
  MODIFY `id_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `idTags` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `tbl_configuracionapp`
--
ALTER TABLE `tbl_configuracionapp`
  MODIFY `id_ConfiguracionApp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tbl_logssesiones`
--
ALTER TABLE `tbl_logssesiones`
  MODIFY `id_logsesion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_permisosusuarios`
--
ALTER TABLE `tbl_permisosusuarios`
  MODIFY `id_PermisoUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tmp_sesionesactivas`
--
ALTER TABLE `tmp_sesionesactivas`
  MODIFY `id_sesion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tmp_usuariosbloqueados`
--
ALTER TABLE `tmp_usuariosbloqueados`
  MODIFY `id_UsuarioBloqueado` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cat_accionessecciones`
--
ALTER TABLE `cat_accionessecciones`
ADD CONSTRAINT `cat_accionessecciones_ibfk_1` FOREIGN KEY (`id_Seccion`) REFERENCES `cat_secciones` (`id_seccion`);

--
-- Filtros para la tabla `tbl_permisosusuarios`
--
ALTER TABLE `tbl_permisosusuarios`
ADD CONSTRAINT `tbl_permisosusuarios_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `tbl_usuarios` (`id_Usuario`),
ADD CONSTRAINT `tbl_permisosusuarios_ibfk_2` FOREIGN KEY (`id_Seccion`) REFERENCES `cat_secciones` (`id_seccion`),
ADD CONSTRAINT `tbl_permisosusuarios_ibfk_3` FOREIGN KEY (`id_AccionSeccion`) REFERENCES `cat_accionessecciones` (`id_AccionSeccion`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`id_TipoUsuario`) REFERENCES `cat_tiposusuario` (`id_TipoUsuario`),
ADD CONSTRAINT `tbl_usuarios_ibfk_2` FOREIGN KEY (`id_StatusUsuario`) REFERENCES `cat_statususuario` (`id_StatusUsuario`);

--
-- Filtros para la tabla `tmp_sesionesactivas`
--
ALTER TABLE `tmp_sesionesactivas`
ADD CONSTRAINT `tmp_sesionesactivas_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `tbl_usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `tmp_usuariosbloqueados`
--
ALTER TABLE `tmp_usuariosbloqueados`
ADD CONSTRAINT `tmp_usuariosbloqueados_ibfk_1` FOREIGN KEY (`id_TipoBloqueo`) REFERENCES `cat_tiposbloqueo` (`id_TipoBloqueo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
