-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2020 a las 09:30:36
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dietapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(75) COLLATE utf8_bin NOT NULL,
  `peso` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`id`, `nombre`, `peso`, `tipo`) VALUES
(1, 'Abadejo', 175, 'p'),
(2, 'Atún en lata', 120, 'p'),
(3, 'Berberechos en conserva', 130, 'p'),
(4, 'Chuleta de ternera', 90, 'p'),
(5, 'Clara de huevo', 200, 'p'),
(6, 'Gambas', 100, 'p'),
(7, 'Gelatina neutra pura', 25, 'p'),
(8, 'Lenguado', 120, 'p'),
(9, 'Lomo de ternera', 80, 'p'),
(10, 'Lomo embuchado', 40, 'p'),
(11, 'Lubina', 100, 'p'),
(12, 'Lubina cocinada', 70, 'p'),
(13, 'Mejillones al natural', 100, 'p'),
(14, 'Merluza', 160, 'p'),
(15, 'Muslo de pavo', 90, 'p'),
(16, 'Muslo de pollo sin piel', 70, 'p'),
(17, 'Pechuga de pavo', 100, 'p'),
(18, 'Pechuga de pollo cocinada', 50, 'p'),
(19, 'Pechuga de pollo sin piel', 90, 'p'),
(20, 'Proteína whey', 25, 'p'),
(21, 'Queso fresco desnatado', 150, 'p'),
(22, 'Queso quark', 150, 'p'),
(23, 'Requesón', 100, 'p'),
(24, 'Requesón light', 130, 'p'),
(25, 'Sepia', 125, 'p'),
(26, 'Solomillo añojo/buey/ternera', 90, 'p'),
(27, 'Solomillo de cerdo', 60, 'p'),
(28, 'Ala de pollo', 50, 'pg'),
(29, 'Atún en aceite', 60, 'pg'),
(30, 'Boquerón', 70, 'pg'),
(31, 'Caballa en conserva', 50, 'pg'),
(32, 'Chuleta de cerdo', 30, 'pg'),
(33, 'Costillas de cerdo', 40, 'pg'),
(34, 'Huevos', 70, 'pg'),
(35, 'Jamón serrano', 45, 'pg'),
(36, 'Jurel', 90, 'pg'),
(37, 'Lomo de añojo', 45, 'pg'),
(38, 'Lomo de cerdo', 30, 'pg'),
(39, 'Magro de cerdo', 60, 'pg'),
(40, 'Mejillones en conserva', 120, 'pg'),
(41, 'Muslo de pollo con piel', 50, 'pg'),
(42, 'Pez espada', 70, 'pg'),
(43, 'Pez espada cocinado', 60, 'pg'),
(44, 'Queso brie', 30, 'pg'),
(45, 'Queso Curado de cabra', 20, 'pg'),
(46, 'Queso de burgos', 50, 'pg'),
(47, 'Queso emmental', 30, 'pg'),
(48, 'Queso Fresco o de burgos', 55, 'pg'),
(49, 'Queso gouda', 30, 'pg'),
(50, 'Queso manchego curado', 20, 'pg'),
(51, 'Queso manchego semicurado', 25, 'pg'),
(52, 'Queso manchego tierno', 30, 'pg'),
(53, 'Salmón', 70, 'pg'),
(54, 'Salmonete', 90, 'pg'),
(55, 'Sardinas en conserva', 50, 'pg'),
(56, 'Sardinas frescas', 60, 'pg'),
(57, 'Tempeh', 50, 'pg'),
(58, 'Tofu', 85, 'pg'),
(59, 'Trucha', 70, 'pg'),
(60, 'Aceite de coco', 10, 'g'),
(61, 'Aceite de oliva virgen extra', 10, 'g'),
(62, 'Aceitunas con hueso', 85, 'g'),
(63, 'Aguacate', 60, 'g'),
(64, 'Almendras', 15, 'g'),
(65, 'Anacardos', 20, 'g'),
(66, 'Avellanas', 15, 'g'),
(67, 'Bacon', 30, 'g'),
(68, 'Cacahuete', 15, 'g'),
(69, 'Chocolate >85%', 20, 'g'),
(70, 'Coco', 30, 'g'),
(71, 'Mantequilla', 15, 'g'),
(72, 'Mantequilla de cacahuete', 15, 'g'),
(73, 'Nata/crema de leche', 15, 'g'),
(74, 'Nueces', 15, 'g'),
(75, 'Nueces de brasil', 15, 'g'),
(76, 'Nueces de macadamia', 15, 'g'),
(77, 'Nueces pecanas', 15, 'g'),
(78, 'Piñones secos', 15, 'g'),
(79, 'Pistachos con cáscara', 20, 'g'),
(80, 'Pistachos sin cáscara', 15, 'g'),
(81, 'Semillas de chía', 20, 'g'),
(82, 'Semillas de girasol', 15, 'g'),
(83, 'Semillas de lino', 20, 'g'),
(84, 'Sésamo', 15, 'g'),
(85, 'Alubias cocidas', 115, 'c'),
(86, 'Alubias en seco', 40, 'c'),
(87, 'Arándanos frescos', 175, 'c'),
(88, 'Arándanos secos', 30, 'c'),
(89, 'Arroz', 30, 'c'),
(90, 'Arroz cocido', 60, 'c'),
(91, 'Avena', 30, 'c'),
(92, 'Boniato/batata', 115, 'c'),
(93, 'Bulgur cocinado', 80, 'c'),
(94, 'Bulgur en seco', 30, 'c'),
(95, 'Cacao puro en polvo', 25, 'c'),
(96, 'Caqui', 130, 'c'),
(97, 'Centeno', 30, 'c'),
(98, 'Chirimoya', 140, 'c'),
(99, 'Ciruelas', 217, 'c'),
(100, 'Ciruelas secas', 30, 'c'),
(101, 'Colines/picos de pan', 25, 'c'),
(102, 'Dátiles', 35, 'c'),
(103, 'Frambuesas', 192, 'c'),
(104, 'Fresas', 310, 'c'),
(105, 'Frutos rojos', 250, 'c'),
(106, 'Frutos rojos, yogur y 5g de cacao', 100, 'c'),
(107, 'Frutos rojos y yogur natural desnatado', 125, 'c'),
(108, 'Garbanzo cocido', 85, 'c'),
(109, 'Garbanzos en seco', 30, 'c'),
(110, 'Guisantes', 120, 'c'),
(111, 'Habas', 30, 'c'),
(112, 'Kiwi', 190, 'c'),
(113, 'Leche desnatada', 285, 'c'),
(114, 'Leche entera', 160, 'c'),
(115, 'Leche semidesnatada', 215, 'c'),
(116, 'Lenteja cocida', 100, 'c'),
(117, 'Lentejas en seco', 35, 'c'),
(118, 'Limón', 360, 'c'),
(119, 'Mandarina', 220, 'c'),
(120, 'Manzana', 180, 'c'),
(121, 'Melocotón', 200, 'c'),
(122, 'Melón', 180, 'c'),
(123, 'Mijo', 30, 'c'),
(124, 'Naranja', 220, 'c'),
(125, 'Nectarina', 200, 'c'),
(126, 'Orejones o albaricoque seco', 40, 'c'),
(127, 'Pan', 30, 'c'),
(128, 'Pasta cocinada', 70, 'c'),
(129, 'Pasta de trigo', 30, 'c'),
(130, 'Patata', 130, 'c'),
(131, 'Patata cocinada', 115, 'c'),
(132, 'Pera', 200, 'c'),
(133, 'Piña', 200, 'c'),
(134, 'Plátano', 110, 'c'),
(135, 'Quinoa', 30, 'c'),
(136, 'Quinoa cocinada', 70, 'c'),
(137, 'Remolacha', 220, 'c'),
(138, 'Remolacha cocida', 250, 'c'),
(139, 'Sandía', 350, 'c'),
(140, 'Sémola de trigo/couscous', 30, 'c'),
(141, 'Uva', 145, 'c'),
(142, 'Uvas pasas', 30, 'c'),
(143, 'Yogur natural desnatado', 250, 'c'),
(144, 'Yogur natural desnatado+12g cacao', 125, 'c'),
(145, 'Yuca', 65, 'c'),
(146, 'Zanahoria', 250, 'c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `id` int(11) NOT NULL,
  `porciones` int(11) NOT NULL,
  `idAlimento` int(11) NOT NULL,
  `idUserComida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`id`, `porciones`, `idAlimento`, `idUserComida`) VALUES
(1, 2, 89, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subuser`
--

CREATE TABLE `subuser` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `subuser`
--

INSERT INTO `subuser` (`id`, `idUser`, `name`) VALUES
(1, 1, 'juanma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usercomida`
--

CREATE TABLE `usercomida` (
  `id` int(11) NOT NULL,
  `idSubUser` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usercomida`
--

INSERT INTO `usercomida` (`id`, `idSubUser`, `fecha`) VALUES
(1, 1, '2020-08-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `code`, `name`) VALUES
(1, '5', 'juanma');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comida_sli` (`idAlimento`);

--
-- Indices de la tabla `subuser`
--
ALTER TABLE `subuser`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usercomida`
--
ALTER TABLE `usercomida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subuser`
--
ALTER TABLE `subuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usercomida`
--
ALTER TABLE `usercomida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comida`
--
ALTER TABLE `comida`
  ADD CONSTRAINT `id_comida_sli` FOREIGN KEY (`idAlimento`) REFERENCES `alimentos` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
