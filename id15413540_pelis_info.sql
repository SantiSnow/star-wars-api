-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-01-2021 a las 22:26:41
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id15413540_pelis_info`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armas`
--

CREATE TABLE `armas` (
  `Nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Principal_usuario` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Creador` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Foto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `armas`
--

INSERT INTO `armas` (`Nombre`, `Principal_usuario`, `Tipo`, `Creador`, `Foto`, `ID`) VALUES
('Ballesta de Chewbacca', 'Chewbacca (Wookiee)', 'Ballesta hecha a mano, capaz de disparar proyectiles de plasma o explosivos. Al ser armas hechas por sus usuarios, no tenían ningún estándar.', 'Wookiees', '', 1),
('Sable de luz o Espada Laser', 'Orden Jedi, Orden Sith', 'Arma cuerpo a cuerpo, que consta de una hoja de plasma, cuya energía es tomada de los cristales kyber. Existen de varios colores, que varían según el cristal del cual fue construido.', 'Orden Jedi', '', 2),
('Blaster E-11', 'Stormtroopers, Mercenarios, Resto Imperial, Primera Orden, etc.', 'Arma de proyectiles laser automatica', 'Republica Galáctica', 'blaster-e11.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naves`
--

CREATE TABLE `naves` (
  `Nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Propietario` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Foto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `naves`
--

INSERT INTO `naves` (`Nombre`, `Propietario`, `Tipo`, `Estado`, `Foto`, `ID`) VALUES
('Halcon Milenario', 'Lando Calrissian, Han Solo', 'Nave de carga ligera de tipo Corelliana tipo YT-1300, con armas de defensa, y velocidad maxima de 1050 km/h (Vel. en Atmosfera).', 'Activo', '', 1),
('Garra del Cuervo', 'El Imperio, Kyle Katarn, Jan Ors.', 'Nave de transporte o lanzadera, nave mensajera con armamento. Cuenta con torpedos y armas laser. Su primer aparicion es en los juegos de LucasArts Jedy Knight: Jedy Outcast y Jedy Academy.', 'Activa.', 'RavensClaw.jpg', 2),
('Primer Estrella de la Muerte', 'Darth Sidious', 'Base espacial con capacidad para destruir planetas. Fue diseñada por orden del Conde Dooku, y construida por Darth Sidious, luego de la caida de la Republica Galactica', 'Destruida', '', 3),
('Caza estelar TIE', 'El Imperio', 'Caza TIE con capacidad de vuelo de corto alcance, que fueron construidos en varios modelos, Bombarderos, Reconocimiento, Caza Depredador, Lanzadera, entre otros. Fueron construidos por el Imperio y tras su caida siguieron siendo utilizados por el Resto Im', 'Activos', '', 4),
('Segunda Estrella de la Muerte', 'Darth Sidious', 'Base espacial construida tras la destruccion de la primer Estrella de la Muerte.', 'Destruida', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `Nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Vivo',
  `Planeta_Origen` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Rango` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Sensible` tinyint(1) NOT NULL,
  `Trilogia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Peliculas` text COLLATE utf8_unicode_ci NOT NULL,
  `Raza` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Genero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Interprete` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `Foto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`Nombre`, `Estado`, `Planeta_Origen`, `Rango`, `Sensible`, `Trilogia`, `Peliculas`, `Raza`, `Genero`, `Interprete`, `Foto`, `ID`) VALUES
('Luke Skywalker', 'Muerto', 'Tatooine', 'Maestro Jedi', 1, 'Original y Secuela', 'Star Wars: Episodio IV\r\nStar Wars: Episodio V\r\nStar Wars: Episodio VI\r\nStar Wars: Episodio VII\r\nStar Wars: Episodio VIII\r\nStar Wars: Episodio IX', 'Humano', 'Masculino', 'Mark Hamill', 'luke-skywalker.jpg', 1),
('Obi-Wan Kenobi (Ben Kenobi)', 'Muerto', 'Stewjon', 'Maestro Jedi', 1, 'Original y Percuela', 'Star Wars: Episodio I\r\nStar Wars: Episodio II\r\nStar Wars: Episodio III\r\nStar Wars: Episode IV\r\nStar Wars: Episode V\r\nStar Wars: Episode VI', 'Humano', 'Masculino', 'Ewan McGregor, Alec Guinness', 'obi-wan.jpg', 2),
('Qui-Gon Jinn', 'Muerto', '\r\nCoruscant', 'Maestro Jedi', 1, 'Precuela', 'Star Wars: Episodio I', 'Humano', 'Masculino', 'Liam Neeson', 'gon-jin.jpg', 3),
('Anakin Skywalker (Jedi)', 'Muerto', 'Tatooine', 'Caballero Jedi', 1, 'Original, Percuela y Secuela', 'Star Wars: Episodio I\r\nStar Wars: Episodio II\r\nStar Wars: Episodio III\r\nStar Wars: Episode VI\r\nStar Wars: Episodio IX', 'Humano', 'Masculino', 'Hayden Christensen', 'anakin-skywalker.jpg', 4),
('Darth Vader (Sith)', 'Muerto', 'Tatooine', 'Lord Sith', 1, 'Original y Secuela', 'Star Wars: Episodio IV\r\nStar Wars: Episodio V\r\nStar Wars: Episodio VI\r\nStar Wars: Episodio VII', 'Humano', 'Masculino', 'James Earl Jones (Voz), David Prowse y Sebastian Shaw (Actuación) Bob Anderson (Doble), Spencer Wilding (Rogue One)', 'darth-vader.jpg', 5),
('Ahsoka Tano', 'Resucitada', 'Shili', 'Padawan', 1, 'Star Wars: The Clone Wars', 'Star Wars: The Clone Wars\r\nStar Wars: Episodio IX (Fantasma de la Fuerza)', 'Shili', 'Femenino', 'Ashley Eckstein (Voz)', 'Ahsoka-Tano.jpg', 6),
('Kit Fisto', 'Muerto', 'Glee Anselm', 'Maestro Jedi', 1, 'Precuela', 'Star Wars: Episodio II\r\nStar Wars: Episodio III', 'Glee Anselmian', 'Masculino', 'Phil LaMarr (Voz)', 'kit-fisto.jpg', 7),
('Mace Windu', 'Muerto', 'Haruun Kal', 'Maestro Jedi', 1, 'Precuela', 'Star Wars: Episodio I\r\nStar Wars: Episodio II\r\nStar Wars: Episodio III', 'Humano', 'Masculino', 'Samuel L. Jackson', 'mace-windu.jpg', 8),
('Yoda', 'Muerto', 'Desconocido', 'Maestro Yedi', 1, 'Original, Percuela y Secuela', 'Star Wars: Episodio I\r\nStar Wars: Episodio II\r\nStar Wars: Episodio III\r\nStar Wars: Episode IV\r\nStar Wars: Episode V\r\nStar Wars: Episode VI\r\nStar Wars: Episodio VIII\r\nStar Wars: Episodio IX', 'Desconocida', 'Masculino', 'Frank Oz (Voz)', 'yoda.jpg', 9),
('Rey Skywalker', 'Viva', 'Desconocido (Infancia en Jakku)', 'Caballero Jedi', 1, 'Secuela', 'Star Wars: Episodio VII\r\nStar Wars: Episodio VIII\r\nStar Wars: Episodio IX', 'Humana', 'Femenino', 'Daisy Ridley', 'rey-skywalker.jpg', 10),
('Han Solo', 'Muerto', 'Corellia', 'Oficial de la Resistencia', 0, 'Original y Secuela', 'Star Wars: Episode IV\r\nStar Wars: Episode V\r\nStar Wars: Episode VI\r\nStar Wars: Episode VII\r\nStar Wars: Episode IX', 'Humano', 'Masculino', 'Harrison Ford', 'han-solo.jpg', 11),
('Leia Organa', 'Muerta', 'Alderaan', 'Princesa de Alderaan, Lider de la Resistencia', 1, 'Original, Percuela y Secuela', 'Star Wars: Episodio III\r\nStar Wars: Episode IV\r\nStar Wars: Episode V\r\nStar Wars: Episode VI\r\nStar Wars: Episode VII\r\nStar Wars: Episode VIII\r\nStar Wars: Episode IX', 'Humana', 'Femenino', 'Carrie Fisher', 'leia-organa.jpg', 12),
('Jaden Korr', 'Vivo', 'Coruscant', 'Maestro Jedi', 1, '-', '-', 'Humano', 'Masculino', '-', 'jaden-korr.jpg', 13),
('Kyle Katarn', 'Vivo', 'Sulon', 'Maestro Jedi, Oficial en el Imperio', 1, '-', '-', 'Humano', 'Masculino', 'Jason Court (Voz)', 'kyle-katarn.jpg', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planetas`
--

CREATE TABLE `planetas` (
  `Nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Primer_Aparicion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Foto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `planetas`
--

INSERT INTO `planetas` (`Nombre`, `Descripcion`, `Primer_Aparicion`, `Foto`, `ID`) VALUES
('Coruscant', 'Planeta centro del Sistema Planetario de Coruscant. Allí se encontraba la capital de la Republica, y fue también considerado Centro Imperial durante la Era Imperial. El planeta completo era una metrópolis, y allí operaba el Senado Galáctico, así como tamb', 'Star Wars: Episodio IV Una Nueva Esperanza (Mencion), Star Wars: Episodio I La Amenaza Fantasma', 'coruscant.jpg', 1),
('Tatooine', 'Planeta desértico, ubicado en los Territorios del Borde Exterior de la galaxia. Fue el hogar de Anakin Skaywalker y Luke Skywalker. Principalmente habitado por Jawas, humanos y Moradores de las Arenas. Allí se encuentra el puerto espacial de Mos Eisley.', 'Star Wars: Episodio IV Una Nueva Esperanza', 'tatooine.jpg', 2),
('Alderaan', 'Planeta terrestre cubierto de montañas, gobernado por la Reina Breha Organa, madre adoptiva de Leia Organa. Fue destruido por Wilhuff Tarkin como prueba de que la Estrella de la Muerte podía destruir planetas.', 'Star Wars: Episodio IV Una Nueva Esperanza', 'Alderaan.jpg', 3),
('Geonosis', 'Planeta desértico, lugar de origen de los Geonosianos, una raza insectoide, donde tomo lugar la primera batalla de La Guerra de los Clones. También fue la primera capital de la Confederación de Sistemas Independientes. Se encontraba en Territorios del Bor', 'Star Wars: Episode II El ataque de los clones', 'geonosis.jpg', 4),
('Korriban (Moraband)', 'Es un planeta desértico, donde nació la raza de los Sith. Esta orden, lo considera un lugar sagrado y se encuentran enterrados gran cantidad de Antiguos y Poderosos Lores Sith. También albergo dos academias Sith. Luego de Oscuridad de los Cien Años, Korri', 'Tales of the Jedi: Dark Lords of the Sith', 'korriban.jpg', 5),
('Corellia', 'Planeta ubicado en los mundos del núcleo de la galaxia, y es el hogar natal de Han Solo y del capitan Antilles.', 'Han Solo: Una Historia de Star Wars', 'Corellia.jpg', 6),
('Taspir III', 'Planeta montañoso, con rios de lava, en la zona del borde exterior. Fue ocupado por el resto imperial y por discipulos de Ragnos.', 'Star Wars: Jedi Knight: Jedi Academy', 'Taspir.jpg', 7),
('Jakku', 'Planeta remoto, de clima árido, y con pocos habitantes, ubicado en el borde exterior.', 'Estrellas Perdidas', 'jakku.jpg', 8),
('Vjun', 'Planeta del borde exterior, con clima de lluvias acidas constantes y desiertos. En este planeta Vader construyo un castillo propio conocido como Bast', 'Dark Empire II 3', 'vjun.jpg', 9),
('Chandrila', 'Mundo del núcleo, fue capital de La Nueva Republica y hogar natal de Mon Mothma. Tambien presenta zonas interesantes como la tumba de un antiguo Maestro Jedi desconocido.', 'Afthermath', 'Chandrila.jpg', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `armas`
--
ALTER TABLE `armas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `naves`
--
ALTER TABLE `naves`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `planetas`
--
ALTER TABLE `planetas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `armas`
--
ALTER TABLE `armas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `naves`
--
ALTER TABLE `naves`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `planetas`
--
ALTER TABLE `planetas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
