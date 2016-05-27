
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-04-2016 a las 20:42:49
-- Versión del servidor: 5.5.42
-- Versión de PHP: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `app`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_new_user`(IN susername varchar(16),
	IN semail varchar(80) ,IN spassw varchar(32),IN srol INT )
BEGIN
	insert into users(username,email,passw,rol) 
    values(susername,semail,md5(spassw),srol);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Advertises`
--

CREATE TABLE `Advertises` (
  `idAdvertises` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(45) DEFAULT NULL,
  `publishDate` varchar(45) DEFAULT NULL,
  `modifyDate` varchar(45) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Advertises`
--

INSERT INTO `Advertises` (`idAdvertises`, `idUser`, `subject`, `description`, `foto1`, `foto2`, `foto3`, `publishDate`, `modifyDate`, `priority`, `value`) VALUES
(1, 5, 'Moto', 'Venc moto xul, molt xula', 'http://gdriv.es/tarari/fut.jpg', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(3, 5, 'Cuna', 'Venc cuna per a nen i nena', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(4, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(5, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(6, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(7, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(8, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(9, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(10, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(11, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(12, 5, 'Moto', 'Venc moto xul, molt xula', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL),
(13, 5, 'Moto', 'Compro casa barata\r\n', 'foto1', 'foto2', NULL, '2016-02-15', NULL, 10, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advert_tag`
--

CREATE TABLE `advert_tag` (
  `idadvert` int(11) NOT NULL,
  `tag_word` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `descr` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `descr`) VALUES
(1, 'Administrador'),
(2, 'usuari');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `tag_word` varchar(45) NOT NULL,
  `tag_desc` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(80) NOT NULL,
  `passw` varchar(32) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUser`, `username`, `email`, `passw`, `rol`) VALUES
(1, 'admin', 't.m@m.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(5, 'pep', 'pep@m.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(6, 'poc', 'poc@m.com', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(7, 're', 're@m.com', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(8, 'xzzcx', 'xzc', '7bfc85c0d74ff05806e0b5a0fa0c1df1', 1),
(9, 'Rom', 'rom@m.com', '1f32aa4c9a1d2ea010adcf2348166a04', 1),
(10, 'Romi', 'romi@m.com', '1f32aa4c9a1d2ea010adcf2348166a04', 2),
(11, 'Romi', 'romi@m.com', '1f32aa4c9a1d2ea010adcf2348166a04', 2),
(12, 'pac', 'pac@m.com', '1f32aa4c9a1d2ea010adcf2348166a04', 2),
(13, 'ro', 'ro@m.com', '14e1b600b1fd579f47433b88e8d85291', 2),
(14, 'ser', 'ser@m.com', '14e1b600b1fd579f47433b88e8d85291', 2),
(15, 'carmena', 'carmena@m.com', '14e1b600b1fd579f47433b88e8d85291', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) unsigned NOT NULL,
  `session_id` char(32) NOT NULL,
  `created` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracions`
--

CREATE TABLE `valoracions` (
  `valoracio` varchar(45) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `advert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Advertises`
--
ALTER TABLE `Advertises`
  ADD PRIMARY KEY (`idAdvertises`),
  ADD KEY `fk_Advertises_user1_idx` (`idUser`);

--
-- Indices de la tabla `advert_tag`
--
ALTER TABLE `advert_tag`
  ADD PRIMARY KEY (`idadvert`,`tag_word`),
  ADD KEY `fk_advert_tag_tags1_idx` (`tag_word`),
  ADD KEY `fk_advert_tag_Advertises1_idx` (`idadvert`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_word`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `fk_user_rol1_idx` (`rol`);

--
-- Indices de la tabla `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_user_idx` (`user_id`);

--
-- Indices de la tabla `valoracions`
--
ALTER TABLE `valoracions`
  ADD PRIMARY KEY (`advert`,`user`),
  ADD KEY `fk_valoracions_user1_idx` (`user`),
  ADD KEY `fk_valoracions_Advertises1_idx` (`advert`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Advertises`
--
ALTER TABLE `Advertises`
  MODIFY `idAdvertises` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Advertises`
--
ALTER TABLE `Advertises`
  ADD CONSTRAINT `fk_Advertises_user1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `advert_tag`
--
ALTER TABLE `advert_tag`
  ADD CONSTRAINT `fk_advert_tag_Advertises1` FOREIGN KEY (`idadvert`) REFERENCES `Advertises` (`idAdvertises`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_advert_tag_tags1` FOREIGN KEY (`tag_word`) REFERENCES `tags` (`tag_word`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_rol1` FOREIGN KEY (`rol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `fk_sessions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `valoracions`
--
ALTER TABLE `valoracions`
  ADD CONSTRAINT `fk_valoracions_Advertises1` FOREIGN KEY (`advert`) REFERENCES `Advertises` (`idAdvertises`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_valoracions_user1` FOREIGN KEY (`user`) REFERENCES `users` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
