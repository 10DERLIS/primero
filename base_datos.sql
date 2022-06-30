-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla primero.estudiantes
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `est_id` int(11) NOT NULL AUTO_INCREMENT,
  `est_nombres` varchar(50) CHARACTER SET latin2 NOT NULL,
  `est_apellidos` varchar(50) CHARACTER SET latin2 NOT NULL,
  `est_cedula` varchar(50) CHARACTER SET latin2 NOT NULL,
  `est_edad` int(11) DEFAULT NULL,
  `est_ciudad` varchar(60) CHARACTER SET latin7 DEFAULT NULL,
  `est_genero` varchar(50) CHARACTER SET latin2 DEFAULT NULL,
  PRIMARY KEY (`est_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla primero.estudiantes: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` (`est_id`, `est_nombres`, `est_apellidos`, `est_cedula`, `est_edad`, `est_ciudad`, `est_genero`) VALUES
	(3, 'Karen ', 'Perez ', '1714589623', 15, 'Quito', 'Femenino'),
	(4, 'Carlos', 'Sanchez', '1745789236', 52, 'Guayaquil', 'Masculino'),
	(5, 'Samantha', 'Tandazo', '1745896234', 13, 'Quito', 'Femenino'),
	(6, 'Bryan', 'Benavides', '1745896321', 25, 'Quito', 'Masculino'),
	(7, 'Andy', 'Velasco', '1457552152', 16, 'Quito', 'Masculino'),
	(8, 'Liliana', 'Arichavala', '1745872369', 15, 'Quito', 'Femenino'),
	(9, 'Camily', 'Torres', '1745879632', 15, 'Quito', 'Femenino'),
	(10, 'Geordy', 'Tandazo', '1745987236', 16, 'Quito', 'Masculino'),
	(11, 'Kevin', 'Aguilar', '1745896427', 16, 'Quito', 'Masculino'),
	(12, 'Carolina', 'Viteri', '1752068112', 15, 'Quito', 'Femenino'),
	(13, 'Johanna', 'Viteri', '1745278968', 18, 'Quito', 'Femenino'),
	(14, 'Alan', 'Cuvi', '1745879324', 17, 'Guayaquil', 'Masculino'),
	(15, 'Geovanny', 'Pila', '1716689102', 41, 'Ambato', 'Masculino'),
	(16, 'Danna', 'Crespo', '1765415555', 16, 'Quito', 'Femenino'),
	(17, 'Milena', 'Quitema', '1445475225', 38, 'Cuenca', 'Femenino'),
	(18, 'Willian', 'Andrango', '1745842685', 21, 'Cayambe', 'Masculino'),
	(19, 'Alain', 'Morales', '1745892263', 19, 'Quito', 'Masculino'),
	(20, 'Fernando', 'Apolo', '1745862247', 25, 'Quito', 'Masculino');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;

-- Volcando estructura para tabla primero.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nombres` varchar(50) DEFAULT NULL,
  `usu_apellidos` varchar(50) DEFAULT NULL,
  `usu_cedula` varchar(50) DEFAULT NULL,
  `usu_edad` int(11) DEFAULT NULL,
  `usu_ciudad` varchar(50) DEFAULT NULL,
  `usu_genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla primero.usuarios: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`usu_id`, `usu_nombres`, `usu_apellidos`, `usu_cedula`, `usu_edad`, `usu_ciudad`, `usu_genero`) VALUES
	(2, 'Juan', 'Rodriguez', '1745789231', 15, 'Guayaquil', 'Masculino'),
	(3, 'Pedro', 'lopez', '1748795234', 45, 'Manabi', 'Masculino'),
	(4, 'Coraline', 'Flores', '1748795223', 78, 'Quito', 'Femenino'),
	(5, 'Anthony', 'Gonzalez', '1745879545', 21, 'Quito', 'Masculino'),
	(6, 'Miguel', 'Zambrano', '1745885547', 32, 'Quito', 'Masculino'),
	(7, 'Maicol', 'Garcia', '1745879523', 14, 'Guayaquil', 'Masculino'),
	(8, 'Sandra', 'Miller', '1745789234', 10, 'Ambato', 'Femenino'),
	(9, 'Angeles', 'Andrade', '1745879212', 18, 'Quito', 'Femenino'),
	(10, 'Johanna', 'Viteri', '1716689102', 18, 'Quito', 'Femenino'),
	(12, 'Carlos', 'Tepu', '1478212546', 19, 'Guayaquil', 'Masculino'),
	(13, 'Samuel', 'Galarza', '1455248555', 23, 'Quito', 'Masculino'),
	(14, 'Diego', 'Loor', '1751455222', 20, 'Quito', 'Masculino'),
	(15, 'Cesar', 'Panche', '1745852256', 26, 'Quito', 'Masculino');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
