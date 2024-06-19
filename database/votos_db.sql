-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 22:15:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votos_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidates`
--

CREATE TABLE `candidates` (
  `id_candidate` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `party` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidates`
--

INSERT INTO `candidates` (`id_candidate`, `name`, `region_id`, `party`) VALUES
(1, 'Candidato 1', 1, 'Partido A'),
(2, 'Candidato 2', 1, 'Partido B'),
(3, 'Candidato 3', 2, 'Partido C'),
(4, 'Candidato 4', 2, 'Partido A'),
(5, 'Candidato 5', 3, 'Partido B'),
(6, 'Candidato 6', 3, 'Partido C'),
(7, 'Candidato 7', 4, 'Partido A'),
(8, 'Candidato 8', 4, 'Partido B'),
(9, 'Candidato 9', 5, 'Partido C'),
(10, 'Candidato 10', 5, 'Partido A'),
(11, 'Candidato 11', 6, 'Partido B'),
(12, 'Candidato 12', 6, 'Partido C'),
(13, 'Candidato 13', 7, 'Partido A'),
(14, 'Candidato 14', 7, 'Partido B'),
(15, 'Candidato 15', 8, 'Partido C'),
(16, 'Candidato 16', 8, 'Partido A'),
(17, 'Candidato 17', 9, 'Partido B'),
(18, 'Candidato 18', 9, 'Partido C'),
(19, 'Candidato 19', 10, 'Partido A'),
(20, 'Candidato 20', 10, 'Partido B'),
(21, 'Candidato 21', 11, 'Partido C'),
(22, 'Candidato 22', 11, 'Partido A'),
(23, 'Candidato 23', 12, 'Partido B'),
(24, 'Candidato 24', 12, 'Partido C'),
(25, 'Candidato 25', 13, 'Partido A'),
(26, 'Candidato 26', 13, 'Partido B'),
(27, 'Candidato 27', 14, 'Partido C'),
(28, 'Candidato 28', 14, 'Partido A'),
(29, 'Candidato 29', 15, 'Partido B'),
(30, 'Candidato 30', 15, 'Partido C'),
(31, 'Candidato 31', 16, 'Partido A'),
(32, 'Candidato 32', 16, 'Partido B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id_city` int(10) UNSIGNED NOT NULL,
  `id_region` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id_city`, `id_region`, `id_country`, `name`) VALUES
(1, 1, 1, 'Arica'),
(2, 1, 1, 'Camarones'),
(3, 1, 1, 'Putre'),
(4, 1, 1, 'General Lagos'),
(5, 2, 1, 'Iquique'),
(6, 2, 1, 'Alto Hospicio'),
(7, 2, 1, 'Pozo Almonte'),
(8, 2, 1, 'Camiña'),
(9, 2, 1, 'Colchane'),
(10, 2, 1, 'Huara'),
(11, 2, 1, 'Pica'),
(12, 3, 1, 'Antofagasta'),
(13, 3, 1, 'Mejillones'),
(14, 3, 1, 'Sierra Gorda'),
(15, 3, 1, 'Taltal'),
(16, 3, 1, 'Calama'),
(17, 3, 1, 'Ollagüe'),
(18, 3, 1, 'San Pedro de Atacama'),
(19, 3, 1, 'Tocopilla'),
(20, 3, 1, 'María Elena'),
(21, 4, 1, 'Copiapó'),
(22, 4, 1, 'Caldera'),
(23, 4, 1, 'Tierra Amarilla'),
(24, 4, 1, 'Chañaral'),
(25, 4, 1, 'Diego de Almagro'),
(26, 4, 1, 'Vallenar'),
(27, 4, 1, 'Alto del Carmen'),
(28, 4, 1, 'Freirina'),
(29, 4, 1, 'Huasco'),
(30, 5, 1, 'La Serena'),
(31, 5, 1, 'Coquimbo'),
(32, 5, 1, 'Andacollo'),
(33, 5, 1, 'La Higuera'),
(34, 5, 1, 'Paihuano'),
(35, 5, 1, 'Vicuña'),
(36, 5, 1, 'Illapel'),
(37, 5, 1, 'Canela'),
(38, 5, 1, 'Los Vilos'),
(39, 5, 1, 'Salamanca'),
(40, 5, 1, 'Ovalle'),
(41, 5, 1, 'Combarbalá'),
(42, 5, 1, 'Monte Patria'),
(43, 5, 1, 'Punitaqui'),
(44, 5, 1, 'Río Hurtado'),
(45, 6, 1, 'Valparaíso'),
(46, 6, 1, 'Casablanca'),
(47, 6, 1, 'Concón'),
(48, 6, 1, 'Juan Fernández'),
(49, 6, 1, 'Puchuncaví'),
(50, 6, 1, 'Quintero'),
(51, 6, 1, 'Viña del Mar'),
(52, 6, 1, 'Isla de Pascua'),
(53, 6, 1, 'Los Andes'),
(54, 6, 1, 'Calle Larga'),
(55, 6, 1, 'Rinconada'),
(56, 6, 1, 'San Esteban'),
(57, 6, 1, 'La Ligua'),
(58, 6, 1, 'Cabildo'),
(59, 6, 1, 'Papudo'),
(60, 6, 1, 'Petorca'),
(61, 6, 1, 'Zapallar'),
(62, 6, 1, 'Quillota'),
(63, 6, 1, 'La Calera'),
(64, 6, 1, 'Hijuelas'),
(65, 6, 1, 'La Cruz'),
(66, 6, 1, 'Nogales'),
(67, 6, 1, 'San Antonio'),
(68, 6, 1, 'Algarrobo'),
(69, 6, 1, 'Cartagena'),
(70, 6, 1, 'El Quisco'),
(71, 6, 1, 'El Tabo'),
(72, 6, 1, 'Santo Domingo'),
(73, 6, 1, 'San Felipe'),
(74, 6, 1, 'Catemu'),
(75, 6, 1, 'Llay-Llay'),
(76, 6, 1, 'Panquehue'),
(77, 6, 1, 'Putaendo'),
(78, 6, 1, 'Santa María'),
(79, 6, 1, 'Quilpué'),
(80, 6, 1, 'Limache'),
(81, 6, 1, 'Olmué'),
(82, 6, 1, 'Villa Alemana'),
(83, 8, 1, 'Rancagua'),
(84, 8, 1, 'Codegua'),
(85, 8, 1, 'Coinco'),
(86, 8, 1, 'Coltauco'),
(87, 8, 1, 'Doñihue'),
(88, 8, 1, 'Graneros'),
(89, 8, 1, 'Las Cabras'),
(90, 8, 1, 'Machalí'),
(91, 8, 1, 'Malloa'),
(92, 8, 1, 'Mostazal'),
(93, 8, 1, 'Olivar'),
(94, 8, 1, 'Peumo'),
(95, 8, 1, 'Pichidegua'),
(96, 8, 1, 'Quinta de Tilcoco'),
(97, 8, 1, 'Rengo'),
(98, 8, 1, 'Requínoa'),
(99, 8, 1, 'San Vicente'),
(100, 8, 1, 'Pichilemu'),
(101, 8, 1, 'La Estrella'),
(102, 8, 1, 'Litueche'),
(103, 8, 1, 'Marchihue'),
(104, 8, 1, 'Navidad'),
(105, 8, 1, 'Paredones'),
(106, 8, 1, 'San Fernando'),
(107, 8, 1, 'Chépica'),
(108, 8, 1, 'Chimbarongo'),
(109, 8, 1, 'Lolol'),
(110, 8, 1, 'Nancagua'),
(111, 8, 1, 'Palmilla'),
(112, 8, 1, 'Peralillo'),
(113, 8, 1, 'Placilla'),
(114, 8, 1, 'Pumanque'),
(115, 8, 1, 'Santa Cruz'),
(116, 9, 1, 'Talca'),
(117, 9, 1, 'Constitución'),
(118, 9, 1, 'Curepto'),
(119, 9, 1, 'Empedrado'),
(120, 9, 1, 'Maule'),
(121, 9, 1, 'Pelarco'),
(122, 9, 1, 'Pencahue'),
(123, 9, 1, 'Río Claro'),
(124, 9, 1, 'San Clemente'),
(125, 9, 1, 'San Rafael'),
(126, 9, 1, 'Cauquenes'),
(127, 9, 1, 'Chanco'),
(128, 9, 1, 'Pelluhue'),
(129, 9, 1, 'Curicó'),
(130, 9, 1, 'Hualañé'),
(131, 9, 1, 'Licantén'),
(132, 9, 1, 'Molina'),
(133, 9, 1, 'Rauco'),
(134, 9, 1, 'Romeral'),
(135, 9, 1, 'Sagrada Familia'),
(136, 9, 1, 'Teno'),
(137, 9, 1, 'Vichuquén'),
(138, 9, 1, 'Linares'),
(139, 9, 1, 'Colbún'),
(140, 9, 1, 'Longaví'),
(141, 9, 1, 'Parral'),
(142, 9, 1, 'Retiro'),
(143, 9, 1, 'San Javier'),
(144, 9, 1, 'Villa Alegre'),
(145, 9, 1, 'Yerbas Buenas'),
(146, 10, 1, 'Chillán'),
(147, 10, 1, 'Bulnes'),
(148, 10, 1, 'Chillán Viejo'),
(149, 10, 1, 'El Carmen'),
(150, 10, 1, 'Pemuco'),
(151, 10, 1, 'Pinto'),
(152, 10, 1, 'Quillón'),
(153, 10, 1, 'San Ignacio'),
(154, 10, 1, 'Yungay'),
(155, 10, 1, 'Quirihue'),
(156, 10, 1, 'Cobquecura'),
(157, 10, 1, 'Coelemu'),
(158, 10, 1, 'Ninhue'),
(159, 10, 1, 'Portezuelo'),
(160, 10, 1, 'Ránquil'),
(161, 10, 1, 'Treguaco'),
(162, 10, 1, 'San Carlos'),
(163, 10, 1, 'Coihueco'),
(164, 10, 1, 'Ñiquén'),
(165, 10, 1, 'San Fabián'),
(166, 10, 1, 'San Nicolás'),
(167, 11, 1, 'Concepción'),
(168, 11, 1, 'Coronel'),
(169, 11, 1, 'Chiguayante'),
(170, 11, 1, 'Florida'),
(171, 11, 1, 'Hualqui'),
(172, 11, 1, 'Lota'),
(173, 11, 1, 'Penco'),
(174, 11, 1, 'San Pedro de La Paz'),
(175, 11, 1, 'Santa Juana'),
(176, 11, 1, 'Talcahuano'),
(177, 11, 1, 'Tomé'),
(178, 11, 1, 'Hualpén'),
(179, 11, 1, 'Lebu'),
(180, 11, 1, 'Arauco'),
(181, 11, 1, 'Cañete'),
(182, 11, 1, 'Contulmo'),
(183, 11, 1, 'Curanilahue'),
(184, 11, 1, 'Los Álamos'),
(185, 11, 1, 'Tirúa'),
(186, 11, 1, 'Los Ángeles'),
(187, 11, 1, 'Antuco'),
(188, 11, 1, 'Cabrero'),
(189, 11, 1, 'Laja'),
(190, 11, 1, 'Mulchén'),
(191, 11, 1, 'Nacimiento'),
(192, 11, 1, 'Negrete'),
(193, 11, 1, 'Quilaco'),
(194, 11, 1, 'Quilleco'),
(195, 11, 1, 'San Rosendo'),
(196, 11, 1, 'Santa Bárbara'),
(197, 11, 1, 'Tucapel'),
(198, 11, 1, 'Yumbel'),
(199, 11, 1, 'Alto Biobío'),
(200, 12, 1, 'Temuco'),
(201, 12, 1, 'Carahue'),
(202, 12, 1, 'Cunco'),
(203, 12, 1, 'Curarrehue'),
(204, 12, 1, 'Freire'),
(205, 12, 1, 'Galvarino'),
(206, 12, 1, 'Gorbea'),
(207, 12, 1, 'Lautaro'),
(208, 12, 1, 'Loncoche'),
(209, 12, 1, 'Melipeuco'),
(210, 12, 1, 'Nueva Imperial'),
(211, 12, 1, 'Padre Las Casas'),
(212, 12, 1, 'Perquenco'),
(213, 12, 1, 'Pitrufquén'),
(214, 12, 1, 'Pucón'),
(215, 12, 1, 'Saavedra'),
(216, 12, 1, 'Teodoro Schmidt'),
(217, 12, 1, 'Toltén'),
(218, 12, 1, 'Vilcún'),
(219, 12, 1, 'Villarrica'),
(220, 12, 1, 'Cholchol'),
(221, 12, 1, 'Angol'),
(222, 12, 1, 'Collipulli'),
(223, 12, 1, 'Curacautín'),
(224, 12, 1, 'Ercilla'),
(225, 12, 1, 'Lonquimay'),
(226, 12, 1, 'Los Sauces'),
(227, 12, 1, 'Lumaco'),
(228, 12, 1, 'Purén'),
(229, 12, 1, 'Renaico'),
(230, 12, 1, 'Traiguén'),
(231, 12, 1, 'Victoria'),
(232, 13, 1, 'Valdivia'),
(233, 13, 1, 'Corral'),
(234, 13, 1, 'Lanco'),
(235, 13, 1, 'Los Lagos'),
(236, 13, 1, 'Máfil'),
(237, 13, 1, 'Mariquina'),
(238, 13, 1, 'Paillaco'),
(239, 13, 1, 'Panguipulli'),
(240, 13, 1, 'La Unión'),
(241, 13, 1, 'Futrono'),
(242, 13, 1, 'Lago Ranco'),
(243, 13, 1, 'Río Bueno'),
(244, 14, 1, 'Puerto Montt'),
(245, 14, 1, 'Calbuco'),
(246, 14, 1, 'Cochamó'),
(247, 14, 1, 'Fresia'),
(248, 14, 1, 'Frutillar'),
(249, 14, 1, 'Los Muermos'),
(250, 14, 1, 'Llanquihue'),
(251, 14, 1, 'Maullín'),
(252, 14, 1, 'Puerto Varas'),
(253, 14, 1, 'Castro'),
(254, 14, 1, 'Ancud'),
(255, 14, 1, 'Chonchi'),
(256, 14, 1, 'Curaco de Vélez'),
(257, 14, 1, 'Dalcahue'),
(258, 14, 1, 'Puqueldón'),
(259, 14, 1, 'Queilén'),
(260, 14, 1, 'Quellón'),
(261, 14, 1, 'Quemchi'),
(262, 14, 1, 'Quinchao'),
(263, 14, 1, 'Osorno'),
(264, 14, 1, 'Puerto Octay'),
(265, 14, 1, 'Purranque'),
(266, 14, 1, 'Puyehue'),
(267, 14, 1, 'Río Negro'),
(268, 14, 1, 'San Juan de la Costa'),
(269, 14, 1, 'San Pablo'),
(270, 14, 1, 'Chaitén'),
(271, 14, 1, 'Futaleufú'),
(272, 14, 1, 'Hualaihué'),
(273, 14, 1, 'Palena'),
(274, 15, 1, 'Coyhaique'),
(275, 15, 1, 'Lago Verde'),
(276, 15, 1, 'Aysén'),
(277, 15, 1, 'Cisnes'),
(278, 15, 1, 'Guaitecas'),
(279, 15, 1, 'Cochrane'),
(280, 15, 1, 'O\'Higgins'),
(281, 15, 1, 'Tortel'),
(282, 15, 1, 'Chile Chico'),
(283, 15, 1, 'Río Ibáñez'),
(284, 16, 1, 'Punta Arenas'),
(285, 16, 1, 'Laguna Blanca'),
(286, 16, 1, 'Río Verde'),
(287, 16, 1, 'San Gregorio'),
(288, 16, 1, 'Cabo de Hornos'),
(289, 16, 1, 'Antártica'),
(290, 16, 1, 'Porvenir'),
(291, 16, 1, 'Primavera'),
(292, 16, 1, 'Timaukel'),
(293, 16, 1, 'Natales'),
(294, 16, 1, 'Torres del Paine'),
(295, 7, 1, 'Santiago'),
(296, 7, 1, 'Cerrillos'),
(297, 7, 1, 'Cerro Navia'),
(298, 7, 1, 'Conchalí'),
(299, 7, 1, 'El Bosque'),
(300, 7, 1, 'Estación Central'),
(301, 7, 1, 'Huechuraba'),
(302, 7, 1, 'Independencia'),
(303, 7, 1, 'La Cisterna'),
(304, 7, 1, 'La Florida'),
(305, 7, 1, 'La Granja'),
(306, 7, 1, 'La Pintana'),
(307, 7, 1, 'La Reina'),
(308, 7, 1, 'Las Condes'),
(309, 7, 1, 'Lo Barnechea'),
(310, 7, 1, 'Lo Espejo'),
(311, 7, 1, 'Lo Prado'),
(312, 7, 1, 'Macul'),
(313, 7, 1, 'Maipú'),
(314, 7, 1, 'Ñuñoa'),
(315, 7, 1, 'Pedro Aguirre Cerda'),
(316, 7, 1, 'Peñalolén'),
(317, 7, 1, 'Providencia'),
(318, 7, 1, 'Pudahuel'),
(319, 7, 1, 'Quilicura'),
(320, 7, 1, 'Quinta Normal'),
(321, 7, 1, 'Recoleta'),
(322, 7, 1, 'Renca'),
(323, 7, 1, 'San Joaquín'),
(324, 7, 1, 'San Miguel'),
(325, 7, 1, 'San Ramón'),
(326, 7, 1, 'Vitacura'),
(327, 7, 1, 'Puente Alto'),
(328, 7, 1, 'Pirque'),
(329, 7, 1, 'San José de Maipo'),
(330, 7, 1, 'Colina'),
(331, 7, 1, 'Lampa'),
(332, 7, 1, 'Til Til'),
(333, 7, 1, 'San Bernardo'),
(334, 7, 1, 'Buin'),
(335, 7, 1, 'Calera de Tango'),
(336, 7, 1, 'Paine'),
(337, 7, 1, 'Melipilla'),
(338, 7, 1, 'Alhué'),
(339, 7, 1, 'Curacaví'),
(340, 7, 1, 'María Pinto'),
(341, 7, 1, 'San Pedro'),
(342, 7, 1, 'Talagante'),
(343, 7, 1, 'El Monte'),
(344, 7, 1, 'Isla de Maipo'),
(345, 7, 1, 'Padre Hurtado'),
(346, 7, 1, 'Peñaflor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id_country`, `name`) VALUES
(1, 'Chile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id_region` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`id_region`, `id_country`, `name`) VALUES
(1, 1, 'Región de Arica y Parinacota'),
(2, 1, 'Región de Tarapacá'),
(3, 1, 'Región de Antofagasta'),
(4, 1, 'Región de Atacama'),
(5, 1, 'Región de Coquimbo'),
(6, 1, 'Región de Valparaíso'),
(7, 1, 'Región Metropolitana de Santiago'),
(8, 1, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 1, 'Región del Maule'),
(10, 1, 'Región de Ñuble'),
(11, 1, 'Región del Biobío'),
(12, 1, 'Región de La Araucanía'),
(13, 1, 'Región de Los Ríos'),
(14, 1, 'Región de Los Lagos'),
(15, 1, 'Región Aysén del General Carlos Ibáñez del Campo'),
(16, 1, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(255) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `rut` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `candidato` varchar(50) DEFAULT NULL,
  `referencia` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id`, `nombre_apellido`, `alias`, `rut`, `email`, `region`, `comuna`, `candidato`, `referencia`, `fecha_creacion`) VALUES
(6, 'Alexis', 'ale555', '17341157-K', 'apizarro1204@gmail.com', 'candidato1', 'comuna1', 'region1', 'Web, TV, Redes Sociales', '2023-11-23 14:49:10'),
(7, 'Alexis', 'ale999', '19923461-7', 'apizarro1204@gmail.com', 'candidato1', 'comuna1', 'region1', 'Web, TV, Redes Sociales', '2023-11-23 14:51:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id_candidate`),
  ADD KEY `idx_region` (`region_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `FK_cities_regions` (`id_region`),
  ADD KEY `FK_cities_countries` (`id_country`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id_region`),
  ADD KEY `FK_regions_countries` (`id_country`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rut` (`rut`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id_candidate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `id_region` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id_region`);

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_cities_countries` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`),
  ADD CONSTRAINT `FK_cities_regions` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id_region`);

--
-- Filtros para la tabla `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `FK_regions_countries` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
