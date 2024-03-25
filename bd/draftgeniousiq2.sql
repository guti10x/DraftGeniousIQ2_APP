-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.3.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para draftgeniousiq2
CREATE DATABASE IF NOT EXISTS `draftgeniousiq2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `draftgeniousiq2`;

-- Volcando estructura para tabla draftgeniousiq2.equipos
CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.equipos: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` (`id_equipo`, `nombre`) VALUES
	(1, 'Admin'),
	(2, 'M31-G6-AcMilanesa'),
	(3, 'M31-G7-DraftKings'),
	(4, 'M32-G5-BabooManager'),
	(5, 'M31-G3-CactusPanda'),
	(6, 'M32-G3-GoalAnalitics'),
	(7, 'M31-G1-FutX'),
	(8, 'jluzon'),
	(9, 'M31-G2-UA2CCC'),
	(10, 'M32-G9-PREDITECH INSIGHTS'),
	(11, ' M32-G7-KleinGroup'),
	(12, 'M32-G8 - Los Capys'),
	(13, ' M32-G2-dreamx1'),
	(14, 'M31-G4-DLA'),
	(15, 'M32-G6_Jammin&#039'),
	(16, 'M32-G2-xGarcii'),
	(17, 'M31-G5-REALE'),
	(18, 'Jafeth Suarez');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadisticas_jornadas
CREATE TABLE IF NOT EXISTS `estadisticas_jornadas` (
  `id_jornada` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `puntuacion_fantasy` float DEFAULT NULL,
  `puntuacion_as` float DEFAULT NULL,
  `puntuacion_marca` float DEFAULT NULL,
  `puntuacion_mundo_deportivo` float DEFAULT NULL,
  `valor_mercado` float DEFAULT NULL,
  `ultimo_rival` int(11) DEFAULT NULL,
  `resultado_del_partido` char(50) DEFAULT NULL,
  `proximo_rival` int(11) DEFAULT NULL,
  `proximo_partido_es_local` char(50) DEFAULT NULL,
  `Pases_totales` int(11) DEFAULT NULL,
  `Pases_precisos` int(11) DEFAULT NULL,
  `Balones_en_largo_totales` int(11) DEFAULT NULL,
  `Balones_en_largo_precisos` int(11) DEFAULT NULL,
  `Centros_totales` int(11) DEFAULT NULL,
  `Duelos_perdidos` int(11) DEFAULT NULL,
  `Duelos_ganados` int(11) DEFAULT NULL,
  `Pérdidas` int(11) DEFAULT NULL,
  `Regates_totales` int(11) DEFAULT NULL,
  `Regates_completados` int(11) DEFAULT NULL,
  `Tiros_a_puerta` int(11) DEFAULT NULL,
  `Tiros_bloqueados_en_ataque` int(11) DEFAULT NULL,
  `Entradas_totales` int(11) DEFAULT NULL,
  `Faltas_recibidas` int(11) DEFAULT NULL,
  `Faltas_cometidas` int(11) DEFAULT NULL,
  `Minutos_jugados` int(11) DEFAULT NULL,
  `Toques` int(11) DEFAULT NULL,
  `Posesiones_perdidas` int(11) DEFAULT NULL,
  `Goles_esperados` float DEFAULT NULL,
  `match_stat_expectedAssists` float DEFAULT NULL,
  PRIMARY KEY (`id_jornada`) USING BTREE,
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_jornadas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_jornadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadisticas_jornadas` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadísticas_equipos
CREATE TABLE IF NOT EXISTS `estadísticas_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `media_puntos_jornada` float DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `num_jugadores` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadísticas_equipos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `estadísticas_equipos` DISABLE KEYS */;
INSERT INTO `estadísticas_equipos` (`id`, `id_equipo`, `timestamp`, `puntos`, `media_puntos_jornada`, `valor`, `num_jugadores`) VALUES
	(10, 1, '2024-03-25 10:52:49', 1044, 49.7, 317.9, 25),
	(11, 2, '2024-03-25 10:54:39', 1011, 48.1, 206.3, 18),
	(12, 3, '2024-03-25 10:56:00', 989, 47.1, 180.6, 21),
	(13, 4, '2024-03-25 10:57:32', 841, 40, 124.5, 16),
	(14, 5, '2024-03-25 10:58:44', 797, 38, 100.6, 13),
	(15, 6, '2024-03-25 10:59:43', 790, 37.6, 110.4, 19),
	(16, 7, '2024-03-25 11:01:08', 781, 37.2, 78.9, 12),
	(17, 8, '2024-03-25 11:02:03', 737, 35.1, 85.9, 14),
	(18, 9, '2024-03-25 11:03:07', 705, 33.6, 249.9, 25),
	(19, 10, '2024-03-25 11:04:56', 700, 33.3, 78.5, 11),
	(20, 12, '2024-03-25 11:07:04', 565, 29.7, 40.3, 15),
	(21, 14, '2024-03-25 11:09:19', 515, 24.5, 48.7, 16),
	(22, 16, '2024-03-25 11:11:39', 475, 29.7, 30.9, 15),
	(23, 17, '2024-03-25 11:12:46', 389, 19.5, 50.5, 15),
	(24, 18, '2024-03-25 11:13:54', 215, 26.9, 43.3, 15);
/*!40000 ALTER TABLE `estadísticas_equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.jugadores
CREATE TABLE IF NOT EXISTS `jugadores` (
  `id_player` int(11) NOT NULL AUTO_INCREMENT,
  `id_eqipo` int(11) NOT NULL,
  `posicion` int(11) DEFAULT NULL,
  `equipo` int(11) DEFAULT NULL,
  `media_puntos_local` int(11) DEFAULT NULL,
  `media_puntos_visitante` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_player`) USING BTREE,
  KEY `id_eqipo` (`id_eqipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.jugadores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.notificaciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.predicciones_puntos
CREATE TABLE IF NOT EXISTS `predicciones_puntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_puntos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_puntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `predicciones_puntos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.predicciones_valor_mercado
CREATE TABLE IF NOT EXISTS `predicciones_valor_mercado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_valor_mercado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_valor_mercado` DISABLE KEYS */;
/*!40000 ALTER TABLE `predicciones_valor_mercado` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_team` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `esAdmin` int(11) DEFAULT NULL,
  `Equipo` text DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  KEY `id_team` (`id_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
