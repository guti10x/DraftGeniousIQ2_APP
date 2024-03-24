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
  `id_team` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `puntos` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `num_jugadores` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla draftgeniousiq2.predicciones_puntos
CREATE TABLE IF NOT EXISTS `predicciones_puntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla draftgeniousiq2.predicciones_valor_mercado
CREATE TABLE IF NOT EXISTS `predicciones_valor_mercado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
