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

-- Volcando estructura para tabla draftgeniousiq2.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.cache: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.cache_locks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.equipos
CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `logo` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.equipos: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` (`id_equipo`, `nombre`, `logo`, `updated_at`, `created_at`) VALUES
	(0, 'Mister', '../../assets/teams/teams_MF/Mister.png', '2024-04-25 12:37:27', '2024-04-25 12:36:54'),
	(1, 'Admin', '../../assets/teams/teams_MF/Admin.png', '2024-04-25 10:41:55', '2024-03-30 10:46:30'),
	(2, 'M31-G6-AcMilanesa', '../../assets/teams/teams_MF/M31-G6-AcMilanesa.png', '2024-04-25 10:42:32', '2024-03-30 10:46:30'),
	(3, 'M31-G7-DraftKings', '../../assets/teams/teams_MF/M31-G7-DraftKings.png', '2024-04-25 10:43:20', '2024-03-30 10:46:30'),
	(4, 'M32-G5-BabooManager', '../../assets/teams/teams_MF/M32-G5-BabooManager.png', '2024-04-25 10:44:23', '2024-03-30 10:46:30'),
	(5, 'M31-G3-CactusPanda', '../../assets/teams/teams_MF/M31-G3-CactusPanda.png', '2024-04-25 10:44:04', '2024-03-30 10:46:30'),
	(6, 'M32-G3-GoalAnalitics', '../../assets/teams/teams_MF/M32-G3-GoalAnalitics.png', '2024-04-25 10:44:46', '2024-03-30 10:46:30'),
	(7, 'M31-G1-FutX', '../../assets/teams/teams_MF/M31-G1_FutX.png', '2024-04-25 10:47:31', '2024-03-30 10:46:30'),
	(8, 'jluzon', '../../assets/teams/teams_MF/jluzon.png', '2024-04-25 10:47:38', '2024-03-30 10:46:30'),
	(9, 'M31-G2-UA2CCC', '../../assets/teams/teams_MF/M31-G2-UA2CCC.png', '2024-04-25 10:45:50', '2024-03-30 10:46:30'),
	(10, 'M32-G9-PREDITECH INSIGHTS', '../../assets/teams/teams_MF/M32-G9-PREDITECH INSIGHTS.png', '2024-04-25 10:45:55', '2024-03-30 10:46:30'),
	(11, 'M32-G7-KleinGroup', '../../assets/teams/teams_MF/M32-G7-KleinGroup.png', '2024-04-25 10:46:08', '2024-03-30 10:46:30'),
	(12, 'M32-G8 - Los Capys', '../../assets/teams/teams_MF/M32-G8 - Los Capys.png', '2024-04-25 10:45:01', '2024-03-30 10:46:30'),
	(13, 'M32-G2-dreamx1', '../../assets/teams/teams_MF/M32-G2-dreamx1.png', '2024-04-25 10:47:11', '2024-03-30 10:46:30'),
	(14, 'M31-G4-DLA', '../../assets/teams/teams_MF/M31-G4-DLA.png', '2024-04-25 10:45:21', '2024-03-30 10:46:30'),
	(15, 'M32-G6_Jammin&#039', '../../assets/teams/teams_MF/M32-G6_Jammin&#039.png', '2024-04-28 14:06:35', '2024-03-30 10:46:30'),
	(16, 'M32-G2-xGarcii', '../../assets/teams/teams_MF/M32-G2-xGarcii.png', '2024-04-25 10:46:43', '2024-03-30 10:46:30'),
	(17, 'M31-G5-REALE', '../../assets/teams/teams_MF/M31-G5-REALE.png', '2024-04-25 10:47:14', '2024-03-30 10:46:30'),
	(18, 'Jafeth Suarez', '../../assets/teams/teams_MF/Jafeth Suarez.png', '2024-04-25 10:47:44', '2024-03-30 10:46:30');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadisticas_equipos
CREATE TABLE IF NOT EXISTS `estadisticas_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `media_puntos_jornada` float DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `num_jugadores` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_equipos: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_equipos` DISABLE KEYS */;
INSERT INTO `estadisticas_equipos` (`id`, `id_equipo`, `puntos`, `money`, `media_puntos_jornada`, `valor`, `num_jugadores`, `created_at`, `updated_at`) VALUES
	(48, 1, 1159, NULL, 50.4, 321.4, 24, '2024-04-18 12:30:06', '2024-04-18 12:30:06'),
	(49, 2, 1156, 21235201, 50.3, 226.7, 18, '2024-04-18 12:31:36', '2024-04-18 12:31:36'),
	(50, 3, 1070, NULL, 46.5, 176.7, 21, '2024-04-18 12:33:21', '2024-04-18 12:33:21'),
	(51, 4, 905, NULL, 39.3, 126.7, 16, '2024-04-18 12:34:44', '2024-04-18 12:34:44'),
	(52, 6, 864, NULL, 37.6, 101.4, 19, '2024-04-18 12:36:20', '2024-04-18 12:36:20'),
	(53, 7, 842, NULL, 36.6, 74.2, 12, '2024-04-18 12:37:26', '2024-04-18 12:37:26'),
	(54, 5, 837, NULL, 36.4, 96, 13, '2024-04-18 12:38:36', '2024-04-18 12:38:36'),
	(55, 8, 819, NULL, 35.6, 94, 17, '2024-04-18 12:40:03', '2024-04-18 12:40:03'),
	(56, 9, 799, NULL, 34.7, 180.9, 14, '2024-04-18 12:41:17', '2024-04-18 12:41:17'),
	(57, 10, 754, NULL, 32.8, 72.1, 11, '2024-04-18 12:42:20', '2024-04-18 12:42:20'),
	(58, 11, 711, NULL, 30.9, 55.7, 17, '2024-04-18 12:43:50', '2024-04-18 12:43:50'),
	(59, 12, 621, NULL, 29.6, 38.9, 15, '2024-04-18 12:45:09', '2024-04-18 12:45:09'),
	(60, 13, 607, NULL, 26.4, 52.1, 15, '2024-04-18 12:46:27', '2024-04-18 12:46:27'),
	(61, 14, 574, NULL, 25, 48.3, 16, '2024-04-18 12:47:49', '2024-04-18 12:47:49'),
	(62, NULL, 537, NULL, 23.3, 37.8, 15, '2024-04-18 12:49:07', '2024-04-18 12:49:07'),
	(63, 16, 533, NULL, 29.6, 29.5, 15, '2024-04-18 12:50:25', '2024-04-18 12:50:25'),
	(64, 17, 411, NULL, 18.7, 48.2, 15, '2024-04-18 12:51:42', '2024-04-18 12:51:42'),
	(65, 18, 270, NULL, 27, 43.9, 15, '2024-04-18 12:53:01', '2024-04-18 12:53:01');
/*!40000 ALTER TABLE `estadisticas_equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadisticas_jornadas
CREATE TABLE IF NOT EXISTS `estadisticas_jornadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `jornada` int(11) NOT NULL,
  `puntuacion_fantasy` int(11) DEFAULT NULL,
  `puntuacion_as` int(11) DEFAULT NULL,
  `puntuacion_marca` int(11) DEFAULT NULL,
  `puntuacion_mundo_deportivo` int(11) DEFAULT NULL,
  `media_puntos_visitante` float DEFAULT NULL,
  `media_puntos_local` float DEFAULT NULL,
  `valor_mercado` int(11) DEFAULT NULL,
  `ultimo_rival` text DEFAULT NULL,
  `resultado_del_partido` text DEFAULT NULL,
  `proximo_rival` text DEFAULT NULL,
  `proximo_partido_es_local` text DEFAULT NULL,
  `balones_en_largo_totales` int(11) DEFAULT NULL,
  `ocasiones_claras_falladas` int(11) DEFAULT NULL,
  `tiros_bloqueados_en_defensa` int(11) DEFAULT NULL,
  `entradas_como_último_hombre` int(11) DEFAULT NULL,
  `goles_evitados` float DEFAULT NULL,
  `salidas_precisas` int(11) DEFAULT NULL,
  `minutos_jugados` int(11) DEFAULT NULL,
  `goles_esperados` float DEFAULT NULL,
  `balones_en_largo_precisos` int(11) DEFAULT NULL,
  `intercepciones` int(11) DEFAULT NULL,
  `tiros_fuera` int(11) DEFAULT NULL,
  `tiros_bloqueados_en_ataque` int(11) DEFAULT NULL,
  `posesiones_perdidas` int(11) DEFAULT NULL,
  `paradas_desde_dentro_del_área` int(11) DEFAULT NULL,
  `centros_totales` int(11) DEFAULT NULL,
  `entradas_totales` int(11) DEFAULT NULL,
  `despejes_por_alto` int(11) DEFAULT NULL,
  `duelos_aéreos_perdidos` int(11) DEFAULT NULL,
  `duelos_ganados` int(11) DEFAULT NULL,
  `pases_totales` int(11) DEFAULT NULL,
  `penaltis_cometidos` int(11) DEFAULT NULL,
  `asistencias_esperadas` float DEFAULT NULL,
  `pérdidas` int(11) DEFAULT NULL,
  `regates_totales` int(11) DEFAULT NULL,
  `penaltis_provocados` int(11) DEFAULT NULL,
  `despejes_con_los_puños` int(11) DEFAULT NULL,
  `goles` int(11) DEFAULT NULL,
  `asistencias_de_gol` int(11) DEFAULT NULL,
  `tiros_al_palo` int(11) DEFAULT NULL,
  `regates_completados` int(11) DEFAULT NULL,
  `ocasiones_creadas` int(11) DEFAULT NULL,
  `penaltis_fallados` int(11) DEFAULT NULL,
  `pases_clave` int(11) DEFAULT NULL,
  `tiros_a_puerta` int(11) DEFAULT NULL,
  `fueras_de_juego` int(11) DEFAULT NULL,
  `centros_precisos` int(11) DEFAULT NULL,
  `errores_que_llevan_a_disparo` int(11) DEFAULT NULL,
  `despejes_totales` int(11) DEFAULT NULL,
  `duelos_aéreos_ganados` int(11) DEFAULT NULL,
  `paradas` int(11) DEFAULT NULL,
  `pases_precisos` int(11) DEFAULT NULL,
  `toques` int(11) DEFAULT NULL,
  `duelos_perdidos` int(11) DEFAULT NULL,
  `faltas_recibidas` int(11) DEFAULT NULL,
  `errores_que_llevan_a_gol` int(11) DEFAULT NULL,
  `salidas_totales` int(11) DEFAULT NULL,
  `penaltis_parados` int(11) DEFAULT NULL,
  `regateado` int(11) DEFAULT NULL,
  `faltas_cometidas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_jornadas: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_jornadas` DISABLE KEYS */;
INSERT INTO `estadisticas_jornadas` (`id`, `id_player`, `jornada`, `puntuacion_fantasy`, `puntuacion_as`, `puntuacion_marca`, `puntuacion_mundo_deportivo`, `media_puntos_visitante`, `media_puntos_local`, `valor_mercado`, `ultimo_rival`, `resultado_del_partido`, `proximo_rival`, `proximo_partido_es_local`, `balones_en_largo_totales`, `ocasiones_claras_falladas`, `tiros_bloqueados_en_defensa`, `entradas_como_último_hombre`, `goles_evitados`, `salidas_precisas`, `minutos_jugados`, `goles_esperados`, `balones_en_largo_precisos`, `intercepciones`, `tiros_fuera`, `tiros_bloqueados_en_ataque`, `posesiones_perdidas`, `paradas_desde_dentro_del_área`, `centros_totales`, `entradas_totales`, `despejes_por_alto`, `duelos_aéreos_perdidos`, `duelos_ganados`, `pases_totales`, `penaltis_cometidos`, `asistencias_esperadas`, `pérdidas`, `regates_totales`, `penaltis_provocados`, `despejes_con_los_puños`, `goles`, `asistencias_de_gol`, `tiros_al_palo`, `regates_completados`, `ocasiones_creadas`, `penaltis_fallados`, `pases_clave`, `tiros_a_puerta`, `fueras_de_juego`, `centros_precisos`, `errores_que_llevan_a_disparo`, `despejes_totales`, `duelos_aéreos_ganados`, `paradas`, `pases_precisos`, `toques`, `duelos_perdidos`, `faltas_recibidas`, `errores_que_llevan_a_gol`, `salidas_totales`, `penaltis_parados`, `regateado`, `faltas_cometidas`, `created_at`, `updated_at`) VALUES
	(304, 1, 20, 1, 10, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Sevilla', 'false', 5, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(305, 2, 20, 6, 1, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(306, 3, 20, 9, 10, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(307, 6, 20, 2, 10, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(308, 23, 20, 5, 12, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(309, 31, 20, 2, 10, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
	(310, 41, 20, 5, 10, 15, 10, 3, 4, 4555662, 'Sevilla', 'win', 'Granada', 'true', 4, 3, 3, 4, 3, 4, 4, 4, 2, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL);
/*!40000 ALTER TABLE `estadisticas_jornadas` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.job_batches: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.jugadores
CREATE TABLE IF NOT EXISTS `jugadores` (
  `id_player` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `nombre` text NOT NULL,
  `posicion` text NOT NULL,
  `equipo` text DEFAULT NULL,
  `titular` int(11) DEFAULT NULL,
  `transferible` int(11) DEFAULT NULL,
  `recomendado` int(11) DEFAULT NULL,
  `transferido_desde` text DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_player`) USING BTREE,
  KEY `id_eqipo` (`id_equipo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.jugadores: ~527 rows (aproximadamente)
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` (`id_player`, `id_equipo`, `nombre`, `posicion`, `equipo`, `titular`, `transferible`, `recomendado`, `transferido_desde`, `edad`, `altura`, `peso`, `created_at`, `updated_at`) VALUES
	(1, 9, 'Jude Bellingham', 'MC', 'Real Madrid', NULL, 1, 1, '2', 20, 1.88, NULL, '2024-04-18 09:52:21', '2024-04-18 09:52:21'),
	(2, 5, 'Ante Budimir', 'DL', 'Osasuna', NULL, 1, 1, '1', 32, 1.9, 75, '2024-04-18 09:52:26', '2024-04-18 09:52:26'),
	(3, 1, 'Isco', 'MC', 'Betis', NULL, 1, 1, '0', 31, 1.76, 74, '2024-04-18 09:52:31', '2024-04-18 09:52:31'),
	(4, 7, 'Sávio', 'DL', 'Girona', NULL, 1, NULL, NULL, 20, 1.76, NULL, '2024-04-18 09:52:35', '2024-04-18 09:52:35'),
	(5, 6, 'Artem Dovbyk', 'DL', 'Girona', NULL, NULL, NULL, NULL, 26, 1.89, 76, '2024-04-18 09:52:39', '2024-04-18 09:52:39'),
	(6, 2, 'Antoine Griezmann', 'DL', 'Atlético de Madrid', NULL, NULL, 1, NULL, 33, 1.76, 71, '2024-04-18 09:52:44', '2024-04-18 09:52:44'),
	(7, 3, 'Iñaki Williams', 'DL', 'Athletic Club', NULL, NULL, NULL, NULL, 29, 1.86, 76, '2024-04-18 09:52:48', '2024-04-18 09:52:48'),
	(8, 1, 'Pepelu', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 25, 1.85, 73, '2024-04-18 09:52:53', '2024-04-18 09:52:53'),
	(9, 7, 'Gorka Guruzeta', 'DL', 'Athletic Club', NULL, NULL, NULL, NULL, 27, 1.88, NULL, '2024-04-18 09:52:58', '2024-04-18 09:52:58'),
	(10, 1, 'Kirian Rodríguez', 'MC', 'Las Palmas', NULL, 1, NULL, NULL, 28, 1.8, NULL, '2024-04-18 09:53:02', '2024-04-18 09:53:02'),
	(11, 3, 'Borja Mayoral', 'DL', 'Getafe', NULL, NULL, NULL, NULL, 27, 1.82, 68, '2024-04-18 09:53:07', '2024-04-18 09:53:07'),
	(12, 3, 'Aleix García', 'MC', 'Girona', NULL, NULL, NULL, NULL, 26, 1.73, 61, '2024-04-18 09:53:11', '2024-04-18 09:53:11'),
	(13, 1, 'Takefusa Kubo', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 22, 1.74, 67, '2024-04-18 09:53:16', '2024-04-18 09:53:16'),
	(14, 6, 'Jørgen Strand Larsen', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 24, 1.93, 79, '2024-04-18 09:53:20', '2024-04-18 09:53:20'),
	(15, 9, 'Fede Valverde', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 25, 1.81, 67, '2024-04-18 09:53:25', '2024-04-18 09:53:25'),
	(16, 5, 'Lamine Yamal', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 16, 1.8, NULL, '2024-04-18 09:53:29', '2024-04-18 09:53:29'),
	(17, 9, 'İlkay Gündoğan', 'MC', 'Barcelona', NULL, NULL, NULL, NULL, 33, 1.8, 80, '2024-04-18 09:53:34', '2024-04-18 09:53:34'),
	(18, 4, 'Hugo Duro', 'DL', 'Valencia', NULL, NULL, NULL, NULL, 24, 1.8, NULL, '2024-04-18 09:53:38', '2024-04-18 09:53:38'),
	(19, 10, 'Gerard Moreno', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 32, 1.8, 75, '2024-04-18 09:53:43', '2024-04-18 09:53:43'),
	(20, 2, 'Rodrygo', 'DL', 'Real Madrid', 1, NULL, NULL, NULL, 23, 1.74, 62, '2024-04-18 09:53:47', '2024-04-18 09:53:47'),
	(21, 3, 'Martín Zubimendi', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 25, 1.8, 74, '2024-04-18 09:53:51', '2024-04-18 09:53:51'),
	(22, 1, 'Alexander Sørloth', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 28, 1.94, 90, '2024-04-18 09:53:56', '2024-04-18 09:53:56'),
	(23, 2, 'Giorgi Mamardashvili', 'PT', 'Valencia', 1, NULL, 1, NULL, 23, 2, NULL, '2024-04-18 09:54:01', '2024-04-18 09:54:01'),
	(24, 9, 'Toni Kroos', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 34, 1.83, 78, '2024-04-18 09:54:05', '2024-04-18 09:54:05'),
	(25, 4, 'Brais Méndez', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.84, 76, '2024-04-18 09:54:09', '2024-04-18 09:54:09'),
	(26, 10, 'Álvaro Valles', 'PT', 'Las Palmas', NULL, NULL, NULL, NULL, 26, 1.92, NULL, '2024-04-18 09:54:14', '2024-04-18 09:54:14'),
	(27, 3, 'Mason Greenwood', 'DL', 'Getafe', NULL, NULL, NULL, NULL, 22, 1.81, NULL, '2024-04-18 09:54:18', '2024-04-18 09:54:18'),
	(28, NULL, 'Álvaro Morata', 'DL', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 31, 1.89, 85, '2024-04-18 09:54:33', '2024-04-18 09:54:33'),
	(29, 17, 'Unai Simón', 'PT', 'Athletic Club', NULL, NULL, NULL, NULL, 26, 1.89, 86, '2024-04-18 09:54:37', '2024-04-18 09:54:37'),
	(30, 9, 'Óscar Mingueza', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 24, 1.84, NULL, '2024-04-18 09:54:42', '2024-04-18 09:54:42'),
	(31, 2, 'Robert Lewandowski', 'DL', 'Barcelona', 1, NULL, 1, NULL, 35, 1.84, 79, '2024-04-18 09:54:46', '2024-04-18 09:54:46'),
	(32, 16, 'Nemanja Maksimović', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 29, 1.84, 75, '2024-04-18 09:54:51', '2024-04-18 09:54:51'),
	(33, 1, 'Iago Aspas', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 36, 1.76, 67, '2024-04-18 09:54:55', '2024-04-18 09:54:55'),
	(34, 9, 'Luis Rioja', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 30, 1.73, NULL, '2024-04-18 09:54:59', '2024-04-18 09:54:59'),
	(35, 1, 'Vinícius Júnior', 'DL', 'Real Madrid', NULL, NULL, NULL, NULL, 23, 1.76, 62, '2024-04-18 09:55:04', '2024-04-18 09:55:04'),
	(36, 13, 'Florian Lejeune', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 32, 1.9, 81, '2024-04-18 09:55:08', '2024-04-18 09:55:08'),
	(37, 1, 'Mikel Oyarzabal', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 26, 1.81, 75, '2024-04-18 09:55:13', '2024-04-18 09:55:13'),
	(38, 2, 'Alex Baena', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 22, 1.74, NULL, '2024-04-18 09:55:17', '2024-04-18 09:55:17'),
	(39, 1, 'Dani Carvajal', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 32, 1.73, 73, '2024-04-18 09:55:21', '2024-04-18 09:55:21'),
	(40, 1, 'Filip Jörgensen', 'PT', 'Villarreal', NULL, NULL, NULL, NULL, 22, 1.9, NULL, '2024-04-18 09:55:26', '2024-04-18 09:55:26'),
	(41, 2, 'Viktor Tsygankov', 'MC', 'Girona', NULL, NULL, 1, NULL, 26, 1.78, 70, '2024-04-18 09:55:30', '2024-04-18 09:55:30'),
	(42, 13, 'Sergi Cardona', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 24, 1.86, NULL, '2024-04-18 09:55:35', '2024-04-18 09:55:35'),
	(43, NULL, 'Chris Ramos', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 27, 1.93, NULL, '2024-04-18 09:55:49', '2024-04-18 09:55:49'),
	(44, 11, 'Samuel Lino', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 24, 1.78, NULL, '2024-04-18 09:55:54', '2024-04-18 09:55:54'),
	(45, 2, 'Yan Couto', 'DF', 'Girona', NULL, NULL, NULL, NULL, 21, 1.69, NULL, '2024-04-18 09:55:58', '2024-04-18 09:55:58'),
	(46, 3, 'Predrag Rajković', 'PT', 'Mallorca', NULL, NULL, NULL, NULL, 28, 1.92, 70, '2024-04-18 09:56:03', '2024-04-18 09:56:03'),
	(47, NULL, 'Marcos Llorente', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 29, 1.84, 71, '2024-04-18 09:56:17', '2024-04-18 09:56:17'),
	(48, 8, 'David Soria', 'PT', 'Getafe', NULL, NULL, NULL, NULL, 31, 1.92, 85, '2024-04-18 09:56:22', '2024-04-18 09:56:22'),
	(49, 5, 'Miguel Gutiérrez', 'DF', 'Girona', NULL, NULL, NULL, NULL, 22, 1.8, NULL, '2024-04-18 09:56:26', '2024-04-18 09:56:26'),
	(50, 11, 'Jan Oblak', 'PT', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 31, 1.89, 84, '2024-04-18 09:56:30', '2024-04-18 09:56:30'),
	(51, 17, 'Mikel Merino', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.88, 79, '2024-04-18 09:56:40', '2024-04-18 09:56:40'),
	(52, 14, 'Antonio Sivera', 'PT', 'Alavés', NULL, NULL, NULL, NULL, 27, 1.84, 75, '2024-04-18 09:56:45', '2024-04-18 09:56:45'),
	(53, 8, 'Isi Palazón', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 29, 1.69, 71, '2024-04-18 09:56:49', '2024-04-18 09:56:49'),
	(54, 18, 'Alex Remiro', 'PT', 'Real Sociedad', NULL, NULL, NULL, NULL, 29, 1.91, 80, '2024-04-18 09:56:54', '2024-04-18 09:56:54'),
	(55, NULL, 'Myrto Uzuni', 'DL', 'Granada', NULL, NULL, NULL, NULL, 28, 1.78, NULL, '2024-04-18 09:57:08', '2024-04-18 09:57:08'),
	(56, 1, 'Brahim Díaz', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 24, 1.7, 68, '2024-04-18 09:57:13', '2024-04-18 09:57:13'),
	(57, 1, 'Daniel Vivian', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 24, 1.83, NULL, '2024-04-18 09:57:17', '2024-04-18 09:57:17'),
	(58, 5, 'Sergio Arribas', 'MC', 'Almería', NULL, NULL, NULL, NULL, 22, 1.71, NULL, '2024-04-18 09:57:22', '2024-04-18 09:57:22'),
	(59, 8, 'Samu Omorodion', 'DL', 'Alavés', NULL, NULL, NULL, NULL, 19, 1.93, NULL, '2024-04-18 09:57:26', '2024-04-18 09:57:26'),
	(60, 1, 'Nico Williams', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 21, 1.8, NULL, '2024-04-18 09:57:31', '2024-04-18 09:57:31'),
	(61, 12, 'Cristhian Mosquera', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 19, 1.88, NULL, '2024-04-18 09:57:35', '2024-04-18 09:57:35'),
	(62, 6, 'Germán Pezzella', 'DF', 'Betis', NULL, NULL, NULL, NULL, 32, 1.87, 82, '2024-04-18 09:57:39', '2024-04-18 09:57:39'),
	(63, 16, 'Axel Witsel', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 35, 1.86, 73, '2024-04-18 09:57:44', '2024-04-18 09:57:44'),
	(64, NULL, 'Jeremías Ledesma', 'PT', 'Cádiz', NULL, NULL, NULL, NULL, 31, 1.86, 85, '2024-04-18 09:57:59', '2024-04-18 09:57:59'),
	(65, 3, 'Iván Martín', 'MC', 'Girona', NULL, NULL, NULL, NULL, 25, 1.78, NULL, '2024-04-18 09:58:03', '2024-04-18 09:58:03'),
	(66, 8, 'Rubén Alcaraz', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 32, 1.8, 76, '2024-04-18 09:58:08', '2024-04-18 09:58:08'),
	(67, 10, 'Lucas Ocampos', 'DL', 'Sevilla', NULL, NULL, NULL, NULL, 29, 1.87, 84, '2024-04-18 09:58:12', '2024-04-18 09:58:12'),
	(68, NULL, 'Álvaro García', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 31, 1.68, 58, '2024-04-18 09:58:27', '2024-04-18 09:58:27'),
	(69, 8, 'Willian José', 'DL', 'Betis', NULL, NULL, NULL, NULL, 32, 1.89, 87, '2024-04-18 09:58:31', '2024-04-18 09:58:31'),
	(70, NULL, 'Stole Dimitrievski', 'PT', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 30, 1.88, 81, '2024-04-18 09:58:46', '2024-04-18 09:58:46'),
	(71, 6, 'Paulo Gazzaniga', 'PT', 'Girona', NULL, NULL, NULL, NULL, 32, 1.96, 90, '2024-04-18 09:58:50', '2024-04-18 09:58:50'),
	(72, 2, 'Antonio Rüdiger', 'DF', 'Real Madrid', 1, NULL, NULL, NULL, 31, 1.91, 85, '2024-04-18 09:58:54', '2024-04-18 09:58:54'),
	(73, 1, 'Vedat Muriqi', 'DL', 'Mallorca', NULL, NULL, NULL, NULL, 29, 1.94, 92, '2024-04-18 09:58:59', '2024-04-18 09:58:59'),
	(74, 9, 'João Félix', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 24, 1.81, 62, '2024-04-18 09:59:03', '2024-04-18 09:59:03'),
	(75, 10, 'Luka Modrić', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 38, 1.73, 65, '2024-04-18 09:59:08', '2024-04-18 09:59:08'),
	(76, 6, 'Daley Blind', 'DF', 'Girona', NULL, NULL, NULL, NULL, 34, 1.8, 72, '2024-04-18 09:59:12', '2024-04-18 09:59:12'),
	(77, 7, 'Sergio Herrera', 'PT', 'Osasuna', NULL, NULL, NULL, NULL, 30, 1.92, 82, '2024-04-18 09:59:16', '2024-04-18 09:59:16'),
	(78, 7, 'Rodrigo De Paul', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 29, 1.8, 67, '2024-04-18 09:59:21', '2024-04-18 09:59:21'),
	(79, 13, 'Oihan Sancet', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 23, 1.88, NULL, '2024-04-18 09:59:25', '2024-04-18 09:59:25'),
	(80, NULL, 'Mika Mármol', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 22, 1.81, NULL, '2024-04-18 09:59:40', '2024-04-18 09:59:40'),
	(81, 11, 'Andoni Gorosabel', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 27, 1.74, NULL, '2024-04-18 09:59:45', '2024-04-18 09:59:45'),
	(82, 4, 'Diego López', 'DL', 'Valencia', NULL, NULL, NULL, NULL, 21, 1.72, NULL, '2024-04-18 09:59:49', '2024-04-18 09:59:49'),
	(83, 8, 'Iñigo Ruiz De Galarreta', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 30, 1.74, 64, '2024-04-18 09:59:53', '2024-04-18 09:59:53'),
	(84, 12, 'Óscar Valentín', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 29, 1.77, NULL, '2024-04-18 09:59:58', '2024-04-18 09:59:58'),
	(85, 3, 'Jon Guridi', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 29, 1.79, 64, '2024-04-18 10:00:02', '2024-04-18 10:00:02'),
	(86, 4, 'Eduardo Camavinga', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 21, 1.82, NULL, '2024-04-18 10:00:07', '2024-04-18 10:00:07'),
	(87, NULL, 'Luís Maximiano', 'PT', 'Almería', NULL, NULL, NULL, NULL, 25, 1.9, 74, '2024-04-18 10:00:21', '2024-04-18 10:00:21'),
	(88, 8, 'Javier Guerra', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 20, 1.87, NULL, '2024-04-18 10:00:25', '2024-04-18 10:00:25'),
	(89, 8, 'Christian Stuani', 'DL', 'Girona', NULL, NULL, NULL, NULL, 37, 1.84, 74, '2024-04-18 10:00:30', '2024-04-18 10:00:30'),
	(90, 2, 'Eric García', 'DF', 'Girona', 1, NULL, NULL, NULL, 23, 1.82, 79, '2024-04-18 10:00:35', '2024-04-18 10:00:35'),
	(91, 17, 'Álex Berenguer', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 28, 1.75, 70, '2024-04-18 10:00:39', '2024-04-18 10:00:39'),
	(92, 4, 'Cristian Portu', 'MC', 'Girona', NULL, NULL, NULL, NULL, 31, 1.67, 70, '2024-04-18 10:00:43', '2024-04-18 10:00:43'),
	(93, 10, 'Samuel Costa', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 23, 1.83, NULL, '2024-04-18 10:00:48', '2024-04-18 10:00:48'),
	(94, 9, 'Aitor Paredes', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 23, 1.86, NULL, '2024-04-18 10:00:52', '2024-04-18 10:00:52'),
	(95, 4, 'Igor Zubeldia', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.8, 75, '2024-04-18 10:00:56', '2024-04-18 10:00:56'),
	(96, NULL, 'Javi Muñoz', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 29, 1.79, 75, '2024-04-18 10:01:11', '2024-04-18 10:01:11'),
	(97, NULL, 'Ander Guevara', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 26, 1.8, NULL, '2024-04-18 10:01:25', '2024-04-18 10:01:25'),
	(98, 14, 'Ángel Correa', 'DL', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 29, 1.71, 67, '2024-04-18 10:01:29', '2024-04-18 10:01:29'),
	(99, 2, 'Youssef En Nesyri', 'DL', 'Sevilla', 0, NULL, NULL, NULL, 26, 1.9, 73, '2024-04-18 10:01:34', '2024-04-18 10:01:34'),
	(100, 7, 'Diego Rico', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 31, 1.81, 76, '2024-04-18 10:01:38', '2024-04-18 10:01:38'),
	(101, NULL, 'Joselu', 'DL', 'Real Madrid', NULL, NULL, NULL, NULL, 34, 1.91, 80, '2024-04-18 10:01:58', '2024-04-18 10:01:58'),
	(102, 14, 'Unai Núñez', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 27, 1.86, 81, '2024-04-18 10:02:02', '2024-04-18 10:02:02'),
	(103, 14, 'Yangel Herrera', 'MC', 'Girona', NULL, NULL, NULL, NULL, 26, 1.84, 75, '2024-04-18 10:02:06', '2024-04-18 10:02:06'),
	(104, 9, 'Koke', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 32, 1.77, 73, '2024-04-18 10:02:11', '2024-04-18 10:02:11'),
	(105, 8, 'Dani Rodríguez', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 35, 1.77, 71, '2024-04-18 10:02:15', '2024-04-18 10:02:15'),
	(106, 6, 'Marc Roca', 'MC', 'Betis', NULL, NULL, NULL, NULL, 27, 1.84, 74, '2024-04-18 10:02:19', '2024-04-18 10:02:19'),
	(107, 1, 'Dani Parejo', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 35, 1.8, 74, '2024-04-18 10:02:23', '2024-04-18 10:02:23'),
	(108, NULL, 'Jesus Areso', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 24, 1.83, NULL, '2024-04-18 10:02:38', '2024-04-18 10:02:38'),
	(109, 2, 'Jules Koundé', 'DF', 'Barcelona', 1, NULL, NULL, NULL, 25, 1.8, 70, '2024-04-18 10:02:42', '2024-04-18 10:02:42'),
	(110, 6, 'Aimar Oroz', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 22, 1.77, NULL, '2024-04-18 10:02:46', '2024-04-18 10:02:46'),
	(111, NULL, 'Frenkie De Jong', 'MC', 'Barcelona', NULL, NULL, NULL, NULL, 26, 1.8, 70, '2024-04-18 10:03:00', '2024-04-18 10:03:00'),
	(112, NULL, 'Fermín López', 'MC', 'Barcelona', NULL, NULL, NULL, NULL, 20, 1.76, NULL, '2024-04-18 10:03:15', '2024-04-18 10:03:15'),
	(113, NULL, 'Ferran Torres', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 24, 1.85, 77, '2024-04-18 10:03:29', '2024-04-18 10:03:29'),
	(114, 4, 'Ayoze Pérez', 'DL', 'Betis', NULL, NULL, NULL, NULL, 30, 1.8, 66, '2024-04-18 10:03:33', '2024-04-18 10:03:33'),
	(115, 3, 'João Cancelo', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 29, 1.82, 74, '2024-04-18 10:03:37', '2024-04-18 10:03:37'),
	(116, 5, 'Ronald Araújo', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 25, 1.91, 79, '2024-04-18 10:03:42', '2024-04-18 10:03:42'),
	(117, 2, 'Aurélien Tchouaméni', 'MC', 'Real Madrid', 1, NULL, NULL, NULL, 24, 1.88, NULL, '2024-04-18 10:03:46', '2024-04-18 10:03:46'),
	(118, NULL, 'Gerard Gumbau', 'MC', 'Granada', NULL, NULL, NULL, NULL, 29, 1.87, 77, '2024-04-18 10:04:01', '2024-04-18 10:04:01'),
	(119, 8, 'Adri Embarba', 'MC', 'Almería', NULL, NULL, NULL, NULL, 31, 1.73, 66, '2024-04-18 10:04:05', '2024-04-18 10:04:05'),
	(120, NULL, 'José Luis Gayà', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 28, 1.72, 64, '2024-04-18 10:04:19', '2024-04-18 10:04:19'),
	(121, 12, 'Unai López', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 28, 1.69, 64, '2024-04-18 10:04:24', '2024-04-18 10:04:24'),
	(122, 5, 'Raphinha', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 27, 1.76, 68, '2024-04-18 10:04:28', '2024-04-18 10:04:28'),
	(123, 8, 'Robin Le Normand', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.87, NULL, '2024-04-18 10:04:32', '2024-04-18 10:04:32'),
	(124, 5, 'Lucas Robertone', 'MC', 'Almería', NULL, NULL, NULL, NULL, 27, 1.73, NULL, '2024-04-18 10:04:37', '2024-04-18 10:04:37'),
	(125, 11, 'Largie Ramazani', 'DL', 'Almería', NULL, NULL, NULL, NULL, 23, 1.67, NULL, '2024-04-18 10:04:41', '2024-04-18 10:04:41'),
	(126, 1, 'Yuri Berchiche', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 34, 1.81, 77, '2024-04-18 10:04:45', '2024-04-18 10:04:45'),
	(127, NULL, 'Sergi Darder', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 30, 1.8, 71, '2024-04-18 10:05:00', '2024-04-18 10:05:00'),
	(128, 18, 'Fran Pérez', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 21, 1.76, NULL, '2024-04-18 10:05:04', '2024-04-18 10:05:04'),
	(129, NULL, 'Jonathan Bamba', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.75, 72, '2024-04-18 10:05:08', '2024-04-18 10:05:08'),
	(130, NULL, 'David García', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 30, 1.85, 72, '2024-04-18 10:05:12', '2024-04-18 10:05:12'),
	(131, 4, 'Andriy Lunin', 'PT', 'Real Madrid', NULL, NULL, NULL, NULL, 25, 1.91, 80, '2024-04-18 10:05:17', '2024-04-18 10:05:17'),
	(132, 9, 'Ter Stegen', 'PT', 'Barcelona', NULL, NULL, NULL, NULL, 31, 1.87, 85, '2024-04-18 10:05:22', '2024-04-18 10:05:22'),
	(133, 14, 'Hamari Traoré', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 32, 1.75, 64, '2024-04-18 10:05:26', '2024-04-18 10:05:26'),
	(134, 11, 'Antonio Raíllo', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 32, 1.86, 77, '2024-04-18 10:05:30', '2024-04-18 10:05:30'),
	(135, NULL, 'Óscar De Marcos', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 35, 1.8, 78, '2024-04-18 10:05:44', '2024-04-18 10:05:44'),
	(136, NULL, 'Munir El Haddadi', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.75, 69, '2024-04-18 10:05:59', '2024-04-18 10:05:59'),
	(137, NULL, 'Abdón Prats', 'DL', 'Mallorca', NULL, NULL, NULL, NULL, 31, 1.81, 79, '2024-04-18 10:06:13', '2024-04-18 10:06:13'),
	(138, 17, 'Sergio Ruiz', 'MC', 'Granada', NULL, NULL, NULL, NULL, 29, 1.71, NULL, '2024-04-18 10:06:17', '2024-04-18 10:06:17'),
	(139, NULL, 'Ignasi Miquel', 'DF', 'Granada', NULL, NULL, NULL, NULL, 31, 1.89, 80, '2024-04-18 10:06:32', '2024-04-18 10:06:32'),
	(140, 12, 'Vicente Guaita', 'PT', 'Celta de Vigo', NULL, NULL, NULL, NULL, 37, 1.9, 81, '2024-04-18 10:06:36', '2024-04-18 10:06:36'),
	(141, NULL, 'Rodrigo Riquelme', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 24, 1.74, NULL, '2024-04-18 10:06:50', '2024-04-18 10:06:50'),
	(142, 18, 'Alberto Moleiro', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 20, 1.69, NULL, '2024-04-18 10:06:54', '2024-04-18 10:06:54'),
	(143, NULL, 'Alex Suárez', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 31, 1.79, NULL, '2024-04-18 10:07:09', '2024-04-18 10:07:09'),
	(144, 9, 'Sergio Ramos', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 38, 1.84, 75, '2024-04-18 10:07:13', '2024-04-18 10:07:13'),
	(145, 12, 'Gonzalo Villar', 'MC', 'Granada', NULL, NULL, NULL, NULL, 26, 1.81, NULL, '2024-04-18 10:07:17', '2024-04-18 10:07:17'),
	(146, 2, 'Guido Rodríguez', 'MC', 'Betis', NULL, NULL, NULL, NULL, 30, 1.85, 80, '2024-04-18 10:07:21', '2024-04-18 10:07:21'),
	(147, 4, 'Gastón Álvarez', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 24, 1.84, NULL, '2024-04-18 10:07:26', '2024-04-18 10:07:26'),
	(148, NULL, 'Saúl Ñíguez', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 29, 1.84, 76, '2024-04-18 10:07:40', '2024-04-18 10:07:40'),
	(149, 1, 'David López', 'DF', 'Girona', NULL, NULL, NULL, NULL, 34, 1.85, 81, '2024-04-18 10:07:44', '2024-04-18 10:07:44'),
	(150, NULL, 'Ander Barrenetxea', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 22, 1.74, NULL, '2024-04-18 10:07:49', '2024-04-18 10:07:49'),
	(151, NULL, 'Kike García', 'DL', 'Alavés', NULL, NULL, NULL, NULL, 34, 1.86, 79, '2024-04-18 10:08:08', '2024-04-18 10:08:08'),
	(152, 1, 'Mario Hermoso', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 28, 1.84, 74, '2024-04-18 10:08:12', '2024-04-18 10:08:12'),
	(153, NULL, 'Javier López', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 22, 1.83, NULL, '2024-04-18 10:08:27', '2024-04-18 10:08:27'),
	(154, 8, 'Iván Balliu', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 32, 1.75, 68, '2024-04-18 10:08:31', '2024-04-18 10:08:31'),
	(155, NULL, 'Pacha Espino', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 32, 1.72, 70, '2024-04-18 10:08:45', '2024-04-18 10:08:45'),
	(156, NULL, 'Marvin Park', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 24, 1.77, NULL, '2024-04-18 10:09:00', '2024-04-18 10:09:00'),
	(157, 12, 'Rafa Marín', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 21, 1.9, NULL, '2024-04-18 10:09:04', '2024-04-18 10:09:04'),
	(158, 7, 'Fali Giménez', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 30, 1.86, 72, '2024-04-18 10:09:08', '2024-04-18 10:09:08'),
	(159, 9, 'Giovanni González', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 29, 1.75, 70, '2024-04-18 10:09:12', '2024-04-18 10:09:12'),
	(160, NULL, 'Carl Starfelt', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.85, 80, '2024-04-18 10:09:27', '2024-04-18 10:09:27'),
	(161, 1, 'Javi Hernández', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 25, 1.81, 72, '2024-04-18 10:09:31', '2024-04-18 10:09:31'),
	(162, NULL, 'Jaime Mata', 'DL', 'Getafe', NULL, NULL, NULL, NULL, 35, 1.85, 75, '2024-04-18 10:09:45', '2024-04-18 10:09:45'),
	(163, NULL, 'Ricard Sánchez', 'DF', 'Granada', NULL, NULL, NULL, NULL, 24, 1.75, NULL, '2024-04-18 10:10:00', '2024-04-18 10:10:00'),
	(164, NULL, 'Cyle Larin', 'DL', 'Mallorca', NULL, NULL, NULL, NULL, 29, 1.87, 86, '2024-04-18 10:10:04', '2024-04-18 10:10:04'),
	(165, NULL, 'Rui Silva', 'PT', 'Betis', NULL, NULL, NULL, NULL, 30, 1.89, 85, '2024-04-18 10:10:08', '2024-04-18 10:10:08'),
	(166, 13, 'Enzo Loiodice', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 23, 1.76, NULL, '2024-04-18 10:10:13', '2024-04-18 10:10:13'),
	(167, 1, 'Sandro', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.75, 71, '2024-04-18 10:10:17', '2024-04-18 10:10:17'),
	(168, 13, 'Iker Muñoz', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 21, 1.79, NULL, '2024-04-18 10:10:21', '2024-04-18 10:10:21'),
	(169, NULL, 'Matija Nastasić', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 31, 1.88, 83, '2024-04-18 10:10:36', '2024-04-18 10:10:36'),
	(170, 9, 'Moi Gómez', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 29, 1.74, 65, '2024-04-18 10:10:40', '2024-04-18 10:10:40'),
	(171, NULL, 'Pathé Ciss', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 30, 1.83, 71, '2024-04-18 10:10:44', '2024-04-18 10:10:44'),
	(172, NULL, 'Álex Sola', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 24, 1.78, NULL, '2024-04-18 10:10:58', '2024-04-18 10:10:58'),
	(173, NULL, 'Adrià Pedrosa', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 25, 1.76, 69, '2024-04-18 10:11:13', '2024-04-18 10:11:13'),
	(174, 4, 'Luis Milla', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 29, 1.75, NULL, '2024-04-18 10:11:17', '2024-04-18 10:11:17'),
	(175, NULL, 'Pablo Barrios', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 20, 1.81, NULL, '2024-04-18 10:11:21', '2024-04-18 10:11:21'),
	(176, NULL, 'Rubén Duarte', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 28, 1.8, 75, '2024-04-18 10:11:36', '2024-04-18 10:11:36'),
	(177, 16, 'Antonio Sánchez', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 26, 1.79, NULL, '2024-04-18 10:11:40', '2024-04-18 10:11:40'),
	(178, 3, 'Luca de la Torre', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 25, 1.78, 63, '2024-04-18 10:11:44', '2024-04-18 10:11:44'),
	(179, NULL, 'Iza Carcelén', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 30, 1.74, 70, '2024-04-18 10:11:58', '2024-04-18 10:11:58'),
	(180, 17, 'Memphis Depay', 'DL', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 30, 1.76, 78, '2024-04-18 10:12:03', '2024-04-18 10:12:03'),
	(181, NULL, 'Jorge Cuenca', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 24, 1.9, NULL, '2024-04-18 10:12:18', '2024-04-18 10:12:18'),
	(182, 16, 'Dakonam Djené', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 32, 1.78, 71, '2024-04-18 10:12:22', '2024-04-18 10:12:22'),
	(183, 5, 'Antonio Blanco', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 23, 1.76, NULL, '2024-04-18 10:12:26', '2024-04-18 10:12:26'),
	(184, 3, 'Beñat Prados', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 23, 1.79, NULL, '2024-04-18 10:12:30', '2024-04-18 10:12:30'),
	(185, 11, 'Rubén García', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 30, 1.71, 72, '2024-04-18 10:12:35', '2024-04-18 10:12:35'),
	(186, NULL, 'Dion Lopy', 'MC', 'Almería', NULL, NULL, NULL, NULL, 22, 1.86, NULL, '2024-04-18 10:12:49', '2024-04-18 10:12:49'),
	(187, 1, 'Ørjan Nyland', 'PT', 'Sevilla', NULL, NULL, NULL, NULL, 33, 1.92, 78, '2024-04-18 10:12:53', '2024-04-18 10:12:53'),
	(188, NULL, 'Manu Sánchez', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 23, 1.79, NULL, '2024-04-18 10:13:08', '2024-04-18 10:13:08'),
	(189, NULL, 'Édgar González', 'DF', 'Almería', NULL, NULL, NULL, NULL, 27, 1.93, NULL, '2024-04-18 10:13:22', '2024-04-18 10:13:22'),
	(190, NULL, 'Jon Moncayola', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 25, 1.82, 73, '2024-04-18 10:13:36', '2024-04-18 10:13:36'),
	(191, NULL, 'Étienne Capoue', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 35, 1.87, 80, '2024-04-18 10:13:50', '2024-04-18 10:13:50'),
	(192, 2, 'Pedri', 'MC', 'Barcelona', 1, NULL, NULL, NULL, 21, 1.74, 60, '2024-04-18 10:13:55', '2024-04-18 10:13:55'),
	(193, 6, 'Lucas Vázquez', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 32, 1.73, 70, '2024-04-18 10:13:59', '2024-04-18 10:13:59'),
	(194, NULL, 'Mikel Vesga', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 31, 1.91, 84, '2024-04-18 10:14:13', '2024-04-18 10:14:13'),
	(195, 7, 'Léo Baptistão', 'DL', 'Almería', NULL, NULL, NULL, NULL, 31, 1.81, 72, '2024-04-18 10:14:18', '2024-04-18 10:14:18'),
	(196, 3, 'Dimitri Foulquier', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 31, 1.83, 79, '2024-04-18 10:14:22', '2024-04-18 10:14:22'),
	(197, 8, 'Carlos Neva', 'DF', 'Granada', NULL, NULL, NULL, NULL, 27, 1.74, NULL, '2024-04-18 10:14:26', '2024-04-18 10:14:26'),
	(198, 3, 'Saúl Coco', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 25, 1.88, NULL, '2024-04-18 10:14:30', '2024-04-18 10:14:30'),
	(199, NULL, 'Julián Araujo', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 22, 1.75, 70, '2024-04-18 10:14:45', '2024-04-18 10:14:45'),
	(200, 13, 'Santi Comesaña', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 27, 1.87, NULL, '2024-04-18 10:14:49', '2024-04-18 10:14:49'),
	(201, NULL, 'Ilias Akhomach', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 20, 1.75, NULL, '2024-04-18 10:15:09', '2024-04-18 10:15:09'),
	(202, 3, 'Robert Navarro', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 22, 1.78, NULL, '2024-04-18 10:15:19', '2024-04-18 10:15:19'),
	(203, 12, 'José Luis Morales', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 36, 1.8, 70, '2024-04-18 10:15:23', '2024-04-18 10:15:23'),
	(204, 16, 'Raúl García de Haro', 'DL', 'Osasuna', NULL, NULL, NULL, NULL, 23, 1.92, 70, '2024-04-18 10:15:28', '2024-04-18 10:15:28'),
	(205, 7, 'Fran Beltrán', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 25, 1.7, 66, '2024-04-18 10:15:32', '2024-04-18 10:15:32'),
	(206, 2, 'Thierry Correia', 'DF', 'Valencia', 1, NULL, NULL, NULL, 25, 1.76, NULL, '2024-04-18 10:15:36', '2024-04-18 10:15:36'),
	(207, NULL, 'Sergio Camello', 'DL', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 23, 1.77, NULL, '2024-04-18 10:15:50', '2024-04-18 10:15:50'),
	(208, 11, 'Manu Morlanes', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 25, 1.78, NULL, '2024-04-18 10:15:55', '2024-04-18 10:15:55'),
	(209, 3, 'Pau Cubarsi', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 17, 1.84, 76, '2024-04-18 10:15:59', '2024-04-18 10:15:59'),
	(210, NULL, 'Raúl Albiol', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 38, 1.9, 82, '2024-04-18 10:16:13', '2024-04-18 10:16:13'),
	(211, 7, 'Suso', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 30, 1.76, 70, '2024-04-18 10:16:18', '2024-04-18 10:16:18'),
	(212, NULL, 'Nahuel Molina', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 26, 1.74, 69, '2024-04-18 10:16:32', '2024-04-18 10:16:32'),
	(213, NULL, 'Jorge de Frutos', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 27, 1.73, NULL, '2024-04-18 10:16:46', '2024-04-18 10:16:46'),
	(214, NULL, 'Johan Mojica', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 31, 1.85, 73, '2024-04-18 10:17:00', '2024-04-18 10:17:00'),
	(215, 13, 'Lucas Boyé', 'DL', 'Granada', NULL, NULL, NULL, NULL, 28, 1.83, 81, '2024-04-18 10:17:05', '2024-04-18 10:17:05'),
	(216, 5, 'Máximo Perrone', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 21, 1.78, NULL, '2024-04-18 10:17:09', '2024-04-18 10:17:09'),
	(217, 5, 'Óscar Trejo', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 35, 1.77, 79, '2024-04-18 10:17:13', '2024-04-18 10:17:13'),
	(218, 8, 'Juan Iglesias', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 25, 1.85, NULL, '2024-04-18 10:17:18', '2024-04-18 10:17:18'),
	(219, NULL, 'Abdelkabir Abqar', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 25, 1.88, NULL, '2024-04-18 10:17:32', '2024-04-18 10:17:32'),
	(220, NULL, 'Lucas Torró', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 29, 1.9, 77, '2024-04-18 10:17:46', '2024-04-18 10:17:46'),
	(221, 14, 'Boubakary Soumaré', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 25, 1.88, NULL, '2024-04-18 10:17:50', '2024-04-18 10:17:50'),
	(222, 4, 'Alejandro Catena', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 29, 1.94, NULL, '2024-04-18 10:17:55', '2024-04-18 10:17:55'),
	(223, NULL, 'Jonathan Viera', 'MC', 'Almería', NULL, NULL, NULL, NULL, 34, 1.71, 65, '2024-04-18 10:18:09', '2024-04-18 10:18:09'),
	(224, 14, 'Dodi Lukébakio', 'DL', 'Sevilla', NULL, NULL, NULL, NULL, 26, 1.87, 77, '2024-04-18 10:18:13', '2024-04-18 10:18:13'),
	(225, NULL, 'Ander Herrera', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 34, 1.82, 70, '2024-04-18 10:18:28', '2024-04-18 10:18:28'),
	(226, 2, 'Arsen Zakharyan', 'MC', 'Real Sociedad', 1, NULL, NULL, NULL, 20, 1.83, NULL, '2024-04-18 10:18:32', '2024-04-18 10:18:32'),
	(227, 6, 'Martin Valjent', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 28, 1.87, 70, '2024-04-18 10:18:36', '2024-04-18 10:18:36'),
	(228, NULL, 'Umar Sadiq', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.92, 75, '2024-04-18 10:18:50', '2024-04-18 10:18:50'),
	(229, NULL, 'Gavi', 'MC', 'Barcelona', NULL, NULL, NULL, NULL, 19, 1.73, NULL, '2024-04-18 10:19:05', '2024-04-18 10:19:05'),
	(230, NULL, 'Aitor Ruibal', 'DF', 'Betis', NULL, NULL, NULL, NULL, 28, 1.76, NULL, '2024-04-18 10:19:19', '2024-04-18 10:19:19'),
	(231, NULL, 'Sergi Canós', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 27, 1.73, 75, '2024-04-18 10:19:33', '2024-04-18 10:19:33'),
	(232, NULL, 'Omar Alderete', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 27, 1.87, 77, '2024-04-18 10:19:48', '2024-04-18 10:19:48'),
	(233, 11, 'Anastasios Douvikas', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 24, 1.84, 78, '2024-04-18 10:19:52', '2024-04-18 10:19:52'),
	(234, 6, 'Óliver Torres', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 29, 1.78, 70, '2024-04-18 10:19:56', '2024-04-18 10:19:56'),
	(235, NULL, 'Kike Salas', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 22, 1.86, NULL, '2024-04-18 10:20:10', '2024-04-18 10:20:10'),
	(236, NULL, 'Íñigo Lekue', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 30, 1.8, 73, '2024-04-18 10:20:25', '2024-04-18 10:20:25'),
	(237, 3, 'Hugo Guillamón', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 24, 1.78, NULL, '2024-04-18 10:20:29', '2024-04-18 10:20:29'),
	(238, NULL, 'Rubén Peña', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 32, 1.7, 65, '2024-04-18 10:20:43', '2024-04-18 10:20:43'),
	(239, NULL, 'Andreas Christensen', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 28, 1.88, 78, '2024-04-18 10:20:58', '2024-04-18 10:20:58'),
	(240, 11, 'Lucas Pires', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 23, 1.82, NULL, '2024-04-18 10:21:02', '2024-04-18 10:21:02'),
	(241, NULL, 'Juan Miranda', 'DF', 'Betis', NULL, NULL, NULL, NULL, 24, 1.85, 79, '2024-04-18 10:21:16', '2024-04-18 10:21:16'),
	(242, 3, 'Chadi Riad', 'DF', 'Betis', NULL, NULL, NULL, NULL, 20, 1.86, NULL, '2024-04-18 10:21:21', '2024-04-18 10:21:21'),
	(243, NULL, 'Loïc Badé', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 24, 1.91, NULL, '2024-04-18 10:21:35', '2024-04-18 10:21:35'),
	(244, 7, 'Rodrigo Sanchez', 'MC', 'Betis', NULL, NULL, NULL, NULL, 23, 1.75, NULL, '2024-04-18 10:21:39', '2024-04-18 10:21:39'),
	(245, NULL, 'Pablo Ibáñez', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 26, 1.79, NULL, '2024-04-18 10:21:53', '2024-04-18 10:21:53'),
	(246, NULL, 'Unai Gómez', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 20, 1.83, NULL, '2024-04-18 10:22:08', '2024-04-18 10:22:08'),
	(247, NULL, 'Gabriel Paulista', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 33, 1.87, 72, '2024-04-18 10:22:22', '2024-04-18 10:22:22'),
	(248, 6, 'Beñat Turrientes', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 22, 1.79, NULL, '2024-04-18 10:22:26', '2024-04-18 10:22:26'),
	(249, 18, 'Toni Lato', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 26, 1.73, 64, '2024-04-18 10:22:30', '2024-04-18 10:22:30'),
	(250, NULL, 'Nemanja Gudelj', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 32, 1.87, 73, '2024-04-18 10:22:50', '2024-04-18 10:22:50'),
	(251, NULL, 'Roger Martí', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 33, 1.78, 74, '2024-04-18 10:23:06', '2024-04-18 10:23:06'),
	(252, NULL, 'Renato Tapia', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.85, 78, '2024-04-18 10:23:21', '2024-04-18 10:23:21'),
	(253, 18, 'Marc Cardona', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.82, 68, '2024-04-18 10:23:25', '2024-04-18 10:23:25'),
	(254, NULL, 'Abde Ezzalzouli', 'DL', 'Betis', NULL, NULL, NULL, NULL, 22, 1.77, NULL, '2024-04-18 10:23:29', '2024-04-18 10:23:29'),
	(255, NULL, 'Abde Rebbach', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 25, 1.76, NULL, '2024-04-18 10:23:34', '2024-04-18 10:23:34'),
	(256, 10, 'Ferland Mendy', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 28, 1.78, 73, '2024-04-18 10:23:38', '2024-04-18 10:23:38'),
	(257, NULL, 'Juanlu Sánchez', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 20, 1.86, NULL, '2024-04-18 10:23:52', '2024-04-18 10:23:52'),
	(258, NULL, 'Aihen Muñoz', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 26, 1.75, 72, '2024-04-18 10:24:06', '2024-04-18 10:24:06'),
	(259, NULL, 'Djibril Sow', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 27, 1.84, 77, '2024-04-18 10:24:21', '2024-04-18 10:24:21'),
	(260, 16, 'Rubén Sobrino', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 32, 1.85, 73, '2024-04-18 10:24:25', '2024-04-18 10:24:25'),
	(261, NULL, 'Alberto Moreno', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 31, 1.71, 65, '2024-04-18 10:24:39', '2024-04-18 10:24:39'),
	(262, NULL, 'Iván Alejo', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 29, 1.84, 77, '2024-04-18 10:24:54', '2024-04-18 10:24:54'),
	(263, 2, 'José Arnaiz', 'DL', 'Osasuna', 1, NULL, NULL, NULL, 29, 1.75, 70, '2024-04-18 10:24:58', '2024-04-18 10:24:58'),
	(264, NULL, 'Assane Diao', 'MC', 'Betis', NULL, NULL, NULL, NULL, 18, 1.85, NULL, '2024-04-18 10:25:12', '2024-04-18 10:25:12'),
	(265, NULL, 'Fran García', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 24, 1.7, NULL, '2024-04-18 10:25:26', '2024-04-18 10:25:26'),
	(266, NULL, 'Valery Fernández', 'MC', 'Girona', NULL, NULL, NULL, NULL, 24, 1.79, NULL, '2024-04-18 10:25:41', '2024-04-18 10:25:41'),
	(267, NULL, 'Carles Aleñá', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 26, 1.8, 73, '2024-04-18 10:25:55', '2024-04-18 10:25:55'),
	(268, 18, 'Isaac Romero', 'DL', 'Sevilla', NULL, NULL, 0, NULL, 23, 1.84, NULL, '2024-04-18 10:25:59', '2024-04-18 10:25:59'),
	(269, 3, 'Augusto Batalla', 'PT', 'Granada', NULL, NULL, NULL, NULL, 27, 1.86, 80, '2024-04-18 10:26:04', '2024-04-18 10:26:04'),
	(270, 10, 'Jon Pacheco', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 23, 1.84, NULL, '2024-04-18 10:26:08', '2024-04-18 10:26:08'),
	(271, 16, 'Aridane Hernández', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 35, 1.86, 77, '2024-04-18 10:26:12', '2024-04-18 10:26:12'),
	(272, 14, 'Juan Cruz', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 31, 1.8, NULL, '2024-04-18 10:26:17', '2024-04-18 10:26:17'),
	(273, NULL, 'Iddrisu Baba', 'MC', 'Almería', NULL, NULL, NULL, NULL, 28, 1.82, NULL, '2024-04-18 10:26:31', '2024-04-18 10:26:31'),
	(274, NULL, 'Carlos Benavídez', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 26, 1.85, 76, '2024-04-18 10:26:35', '2024-04-18 10:26:35'),
	(275, 6, 'Darwin Machís', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 31, 1.74, 70, '2024-04-18 10:26:40', '2024-04-18 10:26:40'),
	(276, NULL, 'Omar Mascarell', 'MC', 'Mallorca', NULL, NULL, NULL, NULL, 31, 1.81, 74, '2024-04-18 10:26:54', '2024-04-18 10:26:54'),
	(277, NULL, 'Jaume Costa', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 36, 1.71, 62, '2024-04-18 10:27:08', '2024-04-18 10:27:08'),
	(278, 8, 'Kike Pérez', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 27, 1.84, NULL, '2024-04-18 10:27:12', '2024-04-18 10:27:12'),
	(279, 18, 'Johnny Cardoso', 'MC', 'Betis', NULL, NULL, 0, NULL, 22, 1.82, NULL, '2024-04-18 10:27:17', '2024-04-18 10:27:17'),
	(280, NULL, 'César Azpilicueta', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 34, 1.78, 78, '2024-04-18 10:27:31', '2024-04-18 10:27:31'),
	(281, 10, 'Alejandro Balde', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 20, 1.75, NULL, '2024-04-18 10:27:35', '2024-04-18 10:27:35'),
	(282, NULL, 'Oriol Romeu', 'MC', 'Barcelona', NULL, NULL, NULL, NULL, 32, 1.82, 83, '2024-04-18 10:27:50', '2024-04-18 10:27:50'),
	(283, NULL, 'Mouctar Diakhaby', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 27, 1.92, 74, '2024-04-18 10:28:04', '2024-04-18 10:28:04'),
	(284, NULL, 'Maxi Gómez', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 27, 1.86, 70, '2024-04-18 10:28:18', '2024-04-18 10:28:18'),
	(285, 11, 'Raúl de Tomás', 'DL', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 29, 1.81, 74, '2024-04-18 10:28:23', '2024-04-18 10:28:23'),
	(286, 5, 'Jesús Navas', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 38, 1.7, 60, '2024-04-18 10:28:27', '2024-04-18 10:28:27'),
	(287, 9, 'Sergi Roberto', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 32, 1.78, 68, '2024-04-18 10:28:31', '2024-04-18 10:28:31'),
	(288, 12, 'Juan Foyth', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 26, 1.87, 77, '2024-04-18 10:28:36', '2024-04-18 10:28:36'),
	(289, NULL, 'Íñigo Martínez', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 32, 1.81, 77, '2024-04-18 10:28:50', '2024-04-18 10:28:50'),
	(290, NULL, 'Kieran Tierney', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 26, 1.78, 70, '2024-04-18 10:29:04', '2024-04-18 10:29:04'),
	(291, 10, 'Stefan Savić', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 33, 1.86, 80, '2024-04-18 10:29:09', '2024-04-18 10:29:09'),
	(292, NULL, 'Pablo Torre', 'MC', 'Girona', NULL, NULL, NULL, NULL, 21, 1.7, NULL, '2024-04-18 10:29:23', '2024-04-18 10:29:23'),
	(293, 10, 'Ezequiel Ávila', 'DL', 'Betis', NULL, NULL, NULL, NULL, 30, 1.71, 81, '2024-04-18 10:29:27', '2024-04-18 10:29:27'),
	(294, NULL, 'Javi Galán', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 29, 1.72, 70, '2024-04-18 10:29:42', '2024-04-18 10:29:42'),
	(295, 7, 'José Giménez', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 29, 1.85, 77, '2024-04-18 10:29:46', '2024-04-18 10:29:46'),
	(296, 1, 'Nabil Fekir', 'MC', 'Betis', NULL, NULL, NULL, NULL, 30, 1.73, 72, '2024-04-18 10:29:50', '2024-04-18 10:29:50'),
	(297, 1, 'Abdul Mumin', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 25, 1.88, NULL, '2024-04-18 10:29:55', '2024-04-18 10:29:55'),
	(298, NULL, 'Gonzalo Melero', 'MC', 'Almería', NULL, NULL, NULL, NULL, 30, 1.83, 77, '2024-04-18 10:30:09', '2024-04-18 10:30:09'),
	(299, 1, 'Pablo Fornals', 'MC', 'Betis', NULL, NULL, NULL, NULL, 28, 1.78, 67, '2024-04-18 10:30:19', '2024-04-18 10:30:19'),
	(300, NULL, 'William Carvalho', 'MC', 'Betis', NULL, NULL, NULL, NULL, 32, 1.87, 83, '2024-04-18 10:30:34', '2024-04-18 10:30:34'),
	(301, NULL, 'Ianis Hagi', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 25, 1.8, 60, '2024-04-18 10:30:49', '2024-04-18 10:30:49'),
	(302, 6, 'José Copete', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 24, 1.9, NULL, '2024-04-18 10:30:53', '2024-04-18 10:30:53'),
	(303, NULL, 'Victor Chust', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 24, 1.82, NULL, '2024-04-18 10:31:07', '2024-04-18 10:31:07'),
	(304, NULL, 'Kiko Femenía', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 33, 1.8, 61, '2024-04-18 10:31:22', '2024-04-18 10:31:22'),
	(305, NULL, 'Roman Yaremchuk', 'DL', 'Valencia', NULL, NULL, NULL, NULL, 28, 1.91, 74, '2024-04-18 10:31:36', '2024-04-18 10:31:36'),
	(306, NULL, 'Álex Fernández', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 31, 1.83, 74, '2024-04-18 10:31:50', '2024-04-18 10:31:50'),
	(307, NULL, 'André Almeida', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 23, 1.76, 62, '2024-04-18 10:31:55', '2024-04-18 10:31:55'),
	(308, NULL, 'Miguel Rubio', 'DF', 'Granada', NULL, NULL, NULL, NULL, 26, 1.91, 86, '2024-04-18 10:32:09', '2024-04-18 10:32:09'),
	(309, NULL, 'Óscar Rodríguez', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 25, 1.74, 68, '2024-04-18 10:32:23', '2024-04-18 10:32:23'),
	(310, 4, 'José Ángel Carmona', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 22, 1.83, NULL, '2024-04-18 10:32:27', '2024-04-18 10:32:27'),
	(311, NULL, 'Yeray Álvarez', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 29, 1.83, 78, '2024-04-18 10:32:42', '2024-04-18 10:32:42'),
	(312, 8, 'Nacho Fernández', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 34, 1.8, 75, '2024-04-18 10:32:46', '2024-04-18 10:32:46'),
	(313, 7, 'Chumi', 'DF', 'Almería', NULL, NULL, NULL, NULL, 25, 1.86, NULL, '2024-04-18 10:32:50', '2024-04-18 10:32:50'),
	(314, NULL, 'Luis Suárez', 'DL', 'Almería', NULL, NULL, NULL, NULL, 26, 1.85, NULL, '2024-04-18 10:33:05', '2024-04-18 10:33:05'),
	(315, NULL, 'Kepa Arrizabalaga', 'PT', 'Real Madrid', NULL, NULL, NULL, NULL, 29, 1.88, 84, '2024-04-18 10:33:19', '2024-04-18 10:33:19'),
	(316, NULL, 'Alfonso Pedraza', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 28, 1.84, 73, '2024-04-18 10:33:33', '2024-04-18 10:33:33'),
	(317, NULL, 'Arnau Martínez', 'DF', 'Girona', NULL, NULL, NULL, NULL, 20, 1.81, NULL, '2024-04-18 10:33:48', '2024-04-18 10:33:48'),
	(318, NULL, 'Cenk Özkacar', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 23, 1.9, NULL, '2024-04-18 10:34:02', '2024-04-18 10:34:02'),
	(319, NULL, 'Abner Vinícius', 'DF', 'Betis', NULL, NULL, NULL, NULL, 23, 1.81, NULL, '2024-04-18 10:34:17', '2024-04-18 10:34:17'),
	(320, 18, 'Marcos Acuña', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 32, 1.72, 72, '2024-04-18 10:34:21', '2024-04-18 10:34:21'),
	(321, NULL, 'Nahuel Tenaglia', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 28, 1.82, 71, '2024-04-18 10:34:35', '2024-04-18 10:34:35'),
	(322, NULL, 'Héctor Bellerín', 'DF', 'Betis', NULL, NULL, NULL, NULL, 29, 1.78, 74, '2024-04-18 10:34:50', '2024-04-18 10:34:50'),
	(323, 11, 'Óscar Melendo', 'MC', 'Granada', NULL, NULL, NULL, NULL, 26, 1.67, 63, '2024-04-18 10:34:54', '2024-04-18 10:34:54'),
	(324, 18, 'David Alaba', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 31, 1.8, 76, '2024-04-18 10:34:58', '2024-04-18 10:34:58'),
	(325, NULL, 'Pejiño', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 27, 1.77, NULL, '2024-04-18 10:35:12', '2024-04-18 10:35:12'),
	(326, NULL, 'Rominigue Kouamé', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 27, 1.77, 68, '2024-04-18 10:35:27', '2024-04-18 10:35:27'),
	(327, 17, 'Pablo Maffeo', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 26, 1.73, 68, '2024-04-18 10:35:31', '2024-04-18 10:35:31'),
	(328, NULL, 'Jesús Vázquez', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 21, 1.82, NULL, '2024-04-18 10:35:45', '2024-04-18 10:35:45'),
	(329, NULL, 'José Callejón', 'MC', 'Granada', NULL, NULL, NULL, NULL, 37, 1.78, 73, '2024-04-18 10:36:00', '2024-04-18 10:36:00'),
	(330, NULL, 'Juanmi Jiménez', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 30, 1.69, 63, '2024-04-18 10:36:14', '2024-04-18 10:36:14'),
	(331, NULL, 'Gonçalo Guedes', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 27, 1.79, 68, '2024-04-18 10:36:28', '2024-04-18 10:36:28'),
	(332, 18, 'Bruno Méndez', 'DF', 'Granada', NULL, NULL, NULL, NULL, 24, 1.84, NULL, '2024-04-18 10:36:33', '2024-04-18 10:36:33'),
	(333, 17, 'Aïssa Mandi', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 32, 1.86, 78, '2024-04-18 10:36:37', '2024-04-18 10:36:37'),
	(334, NULL, 'Aleksandar Sedlar', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 32, 1.8, 79, '2024-04-18 10:36:51', '2024-04-18 10:36:51'),
	(335, NULL, 'Jorge Herrando', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 23, 1.92, NULL, '2024-04-18 10:37:06', '2024-04-18 10:37:06'),
	(336, 17, 'Bebé', 'DL', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 33, 1.9, 78, '2024-04-18 10:37:10', '2024-04-18 10:37:10'),
	(337, NULL, 'Reinildo Mandava', 'DF', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 30, 1.8, 74, '2024-04-18 10:37:24', '2024-04-18 10:37:24'),
	(338, 5, 'Radamel Falcao', 'DL', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 38, 1.77, 72, '2024-04-18 10:37:29', '2024-04-18 10:37:29'),
	(339, NULL, 'Antonio Puertas', 'MC', 'Granada', NULL, NULL, NULL, NULL, 32, 1.83, 72, '2024-04-18 10:37:43', '2024-04-18 10:37:43'),
	(340, NULL, 'Williot Swedberg', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 20, 1.85, NULL, '2024-04-18 10:37:57', '2024-04-18 10:37:57'),
	(341, NULL, 'Marko Dmitrović', 'PT', 'Sevilla', NULL, NULL, NULL, NULL, 32, 1.94, 94, '2024-04-18 10:38:12', '2024-04-18 10:38:12'),
	(342, 13, 'Hugo Sotelo', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 20, 1.8, NULL, '2024-04-18 10:38:16', '2024-04-18 10:38:16'),
	(343, 3, 'Facundo Pellistri', 'DL', 'Granada', NULL, NULL, NULL, NULL, 22, 1.74, NULL, '2024-04-18 10:38:20', '2024-04-18 10:38:20'),
	(344, NULL, 'Iñaki Peña', 'PT', 'Barcelona', NULL, NULL, NULL, NULL, 25, 1.85, NULL, '2024-04-18 10:38:35', '2024-04-18 10:38:35'),
	(345, NULL, 'Carlos Vicente', 'DL', 'Alavés', NULL, NULL, NULL, NULL, 24, 1.79, NULL, '2024-04-18 10:38:49', '2024-04-18 10:38:49'),
	(346, NULL, 'Iker Muniain', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 31, 1.69, 64, '2024-04-18 10:39:03', '2024-04-18 10:39:03'),
	(347, NULL, 'Gonzalo Escalante', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 31, 1.82, 76, '2024-04-18 10:39:18', '2024-04-18 10:39:18'),
	(348, NULL, 'Benito Ramírez', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.8, NULL, '2024-04-18 10:39:37', '2024-04-18 10:39:37'),
	(349, NULL, 'Nacho Vidal', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 29, 1.8, NULL, '2024-04-18 10:39:54', '2024-04-18 10:39:54'),
	(350, 17, 'Mihailo Ristić', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.8, 73, '2024-04-18 10:39:58', '2024-04-18 10:39:58'),
	(351, NULL, 'Francis Coquelin', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 32, 1.78, 74, '2024-04-18 10:40:12', '2024-04-18 10:40:12'),
	(352, NULL, 'Dani García', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 33, 1.8, 75, '2024-04-18 10:40:27', '2024-04-18 10:40:27'),
	(353, NULL, 'Sokratis Papastathopoulos', 'DF', 'Betis', NULL, NULL, NULL, NULL, 35, 1.85, 85, '2024-04-18 10:40:41', '2024-04-18 10:40:41'),
	(354, NULL, 'Carlos Fernández', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 27, 1.86, 82, '2024-04-18 10:40:55', '2024-04-18 10:40:55'),
	(355, 14, 'Erik Lamela', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 32, 1.83, 80, '2024-04-18 10:41:00', '2024-04-18 10:41:00'),
	(356, NULL, 'André Silva', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 28, 1.85, 79, '2024-04-18 10:41:14', '2024-04-18 10:41:14'),
	(357, NULL, 'Selim Amallah', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 27, 1.87, NULL, '2024-04-18 10:41:29', '2024-04-18 10:41:29'),
	(358, 18, 'Sheraldo Becker', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 29, 1.8, 75, '2024-04-18 10:41:33', '2024-04-18 10:41:33'),
	(359, NULL, 'Luis Hernández', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 35, 1.82, 75, '2024-04-18 10:41:47', '2024-04-18 10:41:47'),
	(360, NULL, 'Carles Pérez', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 26, 1.72, NULL, '2024-04-18 10:42:02', '2024-04-18 10:42:02'),
	(361, NULL, 'Ramón Terrats', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 23, 1.79, NULL, '2024-04-18 10:42:16', '2024-04-18 10:42:16'),
	(362, NULL, 'Carlos Dotor', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 23, 1.8, 68, '2024-04-18 10:42:30', '2024-04-18 10:42:30'),
	(363, 14, 'Juanpe', 'DF', 'Girona', NULL, NULL, NULL, NULL, 32, 1.89, 85, '2024-04-18 10:42:35', '2024-04-18 10:42:35'),
	(364, NULL, 'Sergi Guardiola', 'DL', 'Cádiz', NULL, NULL, NULL, NULL, 32, 1.85, 77, '2024-04-18 10:42:49', '2024-04-18 10:42:49'),
	(365, NULL, 'Randy Nteka', 'DL', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 26, 1.9, NULL, '2024-04-18 10:43:03', '2024-04-18 10:43:03'),
	(366, NULL, 'Javi Llabrés', 'DL', 'Mallorca', NULL, NULL, NULL, NULL, 21, 1.74, NULL, '2024-04-18 10:43:18', '2024-04-18 10:43:18'),
	(367, 11, 'Sory Kaba', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.91, NULL, '2024-04-18 10:43:22', '2024-04-18 10:43:22'),
	(368, NULL, 'César Montes', 'DF', 'Almería', NULL, NULL, NULL, NULL, 27, 1.95, 70, '2024-04-18 10:43:36', '2024-04-18 10:43:36'),
	(369, NULL, 'Yerson Mosquera', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 22, 1.88, NULL, '2024-04-18 10:43:51', '2024-04-18 10:43:51'),
	(370, NULL, 'Aritz Elustondo', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 30, 1.78, 72, '2024-04-18 10:43:55', '2024-04-18 10:43:55'),
	(371, NULL, 'Vitor Roque', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 19, 1.72, 76, '2024-04-18 10:44:09', '2024-04-18 10:44:09'),
	(372, NULL, 'Franco Cervi', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 29, 1.65, 62, '2024-04-18 10:44:24', '2024-04-18 10:44:24'),
	(373, 10, 'Kike Barja', 'MC', 'Osasuna', NULL, NULL, NULL, NULL, 27, 1.78, 69, '2024-04-18 10:44:28', '2024-04-18 10:44:28'),
	(374, NULL, 'Álex Pozo', 'DF', 'Almería', NULL, NULL, NULL, NULL, 25, 1.74, NULL, '2024-04-18 10:44:42', '2024-04-18 10:44:42'),
	(375, NULL, 'Sergi Altimira', 'MC', 'Betis', NULL, NULL, NULL, NULL, 22, 1.88, NULL, '2024-04-18 10:44:57', '2024-04-18 10:44:57'),
	(376, 8, 'Iván Villar', 'PT', 'Celta de Vigo', NULL, NULL, NULL, NULL, 26, 1.83, 76, '2024-04-18 10:45:01', '2024-04-18 10:45:01'),
	(377, 13, 'Asier Villalibre', 'DL', 'Athletic Club', NULL, NULL, NULL, NULL, 26, 1.83, 80, '2024-04-18 10:45:05', '2024-04-18 10:45:05'),
	(378, NULL, 'Rafa Mir', 'DL', 'Sevilla', NULL, NULL, NULL, NULL, 26, 1.89, 87, '2024-04-18 10:45:20', '2024-04-18 10:45:20'),
	(379, NULL, 'Luka Romero', 'MC', 'Almería', NULL, NULL, NULL, NULL, 19, 1.65, NULL, '2024-04-18 10:45:34', '2024-04-18 10:45:34'),
	(380, NULL, 'Raúl Torrente', 'DF', 'Granada', NULL, NULL, NULL, NULL, 22, 1.93, NULL, '2024-04-18 10:45:48', '2024-04-18 10:45:48'),
	(381, 5, 'Claudio Bravo', 'PT', 'Betis', NULL, NULL, NULL, NULL, 41, 1.85, 80, '2024-04-18 10:45:53', '2024-04-18 10:45:53'),
	(382, 18, 'Jon Ander Olasagasti', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 23, 1.69, NULL, '2024-04-18 10:45:57', '2024-04-18 10:45:57'),
	(383, NULL, 'Miguel Crespo', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 27, 1.87, 73, '2024-04-18 10:46:12', '2024-04-18 10:46:12'),
	(384, 4, 'Jordi Martín', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 23, 1.74, NULL, '2024-04-18 10:46:16', '2024-04-18 10:46:16'),
	(385, NULL, 'Aleksandar Radovanovic', 'DF', 'Almería', NULL, NULL, NULL, NULL, 30, 1.89, NULL, '2024-04-18 10:46:30', '2024-04-18 10:46:30'),
	(386, 12, 'Yéremi Pino', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 21, 1.72, NULL, '2024-04-18 10:46:35', '2024-04-18 10:46:35'),
	(387, NULL, 'Choco Lozano', 'DL', 'Almería', NULL, NULL, NULL, NULL, 30, 1.83, 79, '2024-04-18 10:46:49', '2024-04-18 10:46:49'),
	(388, 6, 'Yellu Santiago', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 19, 1.92, NULL, '2024-04-18 10:46:54', '2024-04-18 10:46:54'),
	(389, NULL, 'Jorge Meré', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 27, 1.82, 78, '2024-04-18 10:47:08', '2024-04-18 10:47:08'),
	(390, NULL, 'Alex Centelles', 'DF', 'Almería', NULL, NULL, NULL, NULL, 24, 1.85, NULL, '2024-04-18 10:47:23', '2024-04-18 10:47:23'),
	(391, NULL, 'Malcom Adu Ares', 'DL', 'Athletic Club', NULL, NULL, NULL, NULL, 22, 1.83, 183, '2024-04-18 10:47:37', '2024-04-18 10:47:37'),
	(392, NULL, 'Kevin Vázquez', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 31, 1.73, NULL, '2024-04-18 10:47:51', '2024-04-18 10:47:51'),
	(393, 16, 'Raúl García', 'DL', 'Athletic Club', NULL, NULL, NULL, NULL, 37, 1.84, 84, '2024-04-18 10:47:56', '2024-04-18 10:47:56'),
	(394, NULL, 'Bertrand Traoré', 'DL', 'Villarreal', NULL, NULL, NULL, NULL, 28, 1.8, 72, '2024-04-18 10:48:10', '2024-04-18 10:48:10'),
	(395, NULL, 'Eric Bailly', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 30, 1.87, 77, '2024-04-18 10:48:24', '2024-04-18 10:48:24'),
	(396, NULL, 'Jailson', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.87, 74, '2024-04-18 10:48:39', '2024-04-18 10:48:39'),
	(397, NULL, 'Manu Trigueros', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 32, 1.78, 71, '2024-04-18 10:48:58', '2024-04-18 10:48:58'),
	(398, 3, 'Youssouf Sabaly', 'DF', 'Betis', NULL, NULL, NULL, NULL, 31, 1.74, 70, '2024-04-18 10:49:03', '2024-04-18 10:49:03'),
	(399, NULL, 'Andrei Rațiu', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 25, 1.83, NULL, '2024-04-18 10:49:17', '2024-04-18 10:49:17'),
	(400, NULL, 'Jhon Solís', 'MC', 'Girona', NULL, NULL, NULL, NULL, 19, 1.86, NULL, '2024-04-18 10:49:31', '2024-04-18 10:49:31'),
	(401, NULL, 'Jon Aramburu', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 21, 1.74, 71, '2024-04-18 10:49:46', '2024-04-18 10:49:46'),
	(402, NULL, 'Javier Manquillo', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 29, 1.8, 62, '2024-04-18 10:50:01', '2024-04-18 10:50:01'),
	(403, NULL, 'Mauro Arambarri', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 28, 1.75, 76, '2024-04-18 10:50:15', '2024-04-18 10:50:15'),
	(404, NULL, 'Martin Hongla', 'MC', 'Granada', NULL, NULL, NULL, NULL, 26, 1.83, NULL, '2024-04-18 10:50:29', '2024-04-18 10:50:29'),
	(405, NULL, 'Matías Arezo', 'DL', 'Granada', NULL, NULL, NULL, NULL, 21, 1.78, 76, '2024-04-18 10:50:44', '2024-04-18 10:50:44'),
	(406, NULL, 'Marko Milovanovic', 'DL', 'Almería', NULL, NULL, NULL, NULL, 20, 1.96, NULL, '2024-04-18 10:50:58', '2024-04-18 10:50:58'),
	(407, NULL, 'Dani Ceballos', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 27, 1.79, 65, '2024-04-18 10:51:12', '2024-04-18 10:51:12'),
	(408, NULL, 'David Gil', 'PT', 'Cádiz', NULL, NULL, NULL, NULL, 30, 1.83, 80, '2024-04-18 10:51:27', '2024-04-18 10:51:27'),
	(409, NULL, 'Hugo Álvarez', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, 20, 1.76, NULL, '2024-04-18 10:51:41', '2024-04-18 10:51:41'),
	(410, 3, 'Tadeo Allende', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 25, 1.85, NULL, '2024-04-18 10:51:46', '2024-04-18 10:51:46'),
	(411, 6, 'Juanma Herzog', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 19, 1.86, NULL, '2024-04-18 10:51:51', '2024-04-18 10:51:51'),
	(412, NULL, 'Nemanja Radonjić', 'DL', 'Mallorca', NULL, NULL, NULL, NULL, 28, 1.85, 76, '2024-04-18 10:52:05', '2024-04-18 10:52:05'),
	(413, NULL, 'Domingos Duarte', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 29, 1.91, 83, '2024-04-18 10:52:20', '2024-04-18 10:52:20'),
	(414, 16, 'Ilaix Moriba', 'MC', 'Getafe', NULL, NULL, NULL, NULL, 21, 1.83, NULL, '2024-04-18 10:52:24', '2024-04-18 10:52:24'),
	(415, NULL, 'Adrià Altimira', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 23, 1.7, NULL, '2024-04-18 10:52:38', '2024-04-18 10:52:38'),
	(416, 14, 'Joseph Aidoo', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 28, 1.84, 80, '2024-04-18 10:52:43', '2024-04-18 10:52:43'),
	(417, NULL, 'Peter Federico', 'DL', 'Valencia', NULL, NULL, NULL, NULL, 21, 1.78, NULL, '2024-04-18 10:52:57', '2024-04-18 10:52:57'),
	(418, NULL, 'Alberto Marí', 'DL', 'Valencia', NULL, NULL, NULL, NULL, 22, 1.83, NULL, '2024-04-18 10:53:11', '2024-04-18 10:53:11'),
	(419, NULL, 'Brian Ocampo', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 24, 1.73, 70, '2024-04-18 10:53:26', '2024-04-18 10:53:26'),
	(420, NULL, 'Arda Güler', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 19, 1.76, NULL, '2024-04-18 10:53:40', '2024-04-18 10:53:40'),
	(421, NULL, 'Carlos Romero', 'DF', 'Villarreal', NULL, NULL, NULL, NULL, 22, 0, NULL, '2024-04-18 10:53:55', '2024-04-18 10:53:55'),
	(422, NULL, 'Unai García', 'DF', 'Osasuna', NULL, NULL, NULL, NULL, 31, 1.82, 81, '2024-04-18 10:54:09', '2024-04-18 10:54:09'),
	(423, NULL, 'Cristian Herrera', 'DL', 'Las Palmas', NULL, NULL, NULL, NULL, 33, 1.89, 85, '2024-04-18 10:54:24', '2024-04-18 10:54:24'),
	(424, NULL, 'Xeber Alkain', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 26, 1.74, NULL, '2024-04-18 10:54:38', '2024-04-18 10:54:38'),
	(425, 2, 'Hector Fort', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 17, 1.85, 77, '2024-04-18 10:54:42', '2024-04-18 10:54:42'),
	(426, NULL, 'Yarek Gasiorowski', 'DF', 'Valencia', NULL, NULL, NULL, NULL, 19, 1.9, NULL, '2024-04-18 10:54:57', '2024-04-18 10:54:57'),
	(427, NULL, 'Imanol García', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 23, 1.77, NULL, '2024-04-18 10:55:11', '2024-04-18 10:55:11'),
	(428, NULL, 'Fran Vieites', 'PT', 'Betis', NULL, NULL, NULL, NULL, 24, 1.96, NULL, '2024-04-18 10:55:26', '2024-04-18 10:55:26'),
	(429, NULL, 'Lucien Agoumé', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 22, 1.85, NULL, '2024-04-18 10:55:40', '2024-04-18 10:55:40'),
	(430, NULL, 'Marcos Alonso', 'DF', 'Barcelona', NULL, NULL, NULL, NULL, 33, 1.88, 84, '2024-04-18 10:55:55', '2024-04-18 10:55:55'),
	(431, NULL, 'Aiham Ousou', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 24, 1.86, NULL, '2024-04-18 10:56:10', '2024-04-18 10:56:10'),
	(432, NULL, 'Aitor Fernández', 'PT', 'Osasuna', NULL, NULL, NULL, NULL, 32, 1.82, 78, '2024-04-18 10:56:24', '2024-04-18 10:56:24'),
	(433, NULL, 'Giuliano Simeone', 'DL', 'Alavés', NULL, NULL, NULL, NULL, 21, 1.78, NULL, '2024-04-18 10:56:38', '2024-04-18 10:56:38'),
	(434, NULL, 'Joseba Zaldua', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 31, 1.76, 70, '2024-04-18 10:56:53', '2024-04-18 10:56:53'),
	(435, 14, 'Miguel Rodríguez', 'DL', 'Celta de Vigo', NULL, NULL, NULL, NULL, 20, 1.79, NULL, '2024-04-18 10:56:57', '2024-04-18 10:56:57'),
	(436, NULL, 'Marc Guiu', 'DL', 'Barcelona', NULL, NULL, NULL, NULL, 18, 1.87, NULL, '2024-04-18 10:57:11', '2024-04-18 10:57:11'),
	(437, 12, 'Momo Mbaye', 'DF', 'Cádiz', NULL, NULL, NULL, NULL, 25, 1.88, NULL, '2024-04-18 10:57:16', '2024-04-18 10:57:16'),
	(438, NULL, 'Raúl Fernández', 'PT', 'Granada', NULL, NULL, NULL, NULL, 36, 1.96, 88, '2024-04-18 10:57:30', '2024-04-18 10:57:30'),
	(439, NULL, 'Jon Magunazelaia', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 22, 1.8, NULL, '2024-04-18 10:57:44', '2024-04-18 10:57:44'),
	(440, NULL, 'Tanguy Nianzou', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 21, 1.92, 83, '2024-04-18 10:57:59', '2024-04-18 10:57:59'),
	(441, NULL, 'Ibrahima Koné', 'DL', 'Almería', NULL, NULL, NULL, NULL, 24, 1.9, NULL, '2024-04-18 10:58:13', '2024-04-18 10:58:13'),
	(442, NULL, 'Siebe Van der Heyden', 'DF', 'Mallorca', NULL, NULL, NULL, NULL, 25, 1.85, NULL, '2024-04-18 10:58:28', '2024-04-18 10:58:28'),
	(443, NULL, 'Theo Corbeanu', 'DL', 'Granada', NULL, NULL, NULL, NULL, 21, 1.9, NULL, '2024-04-18 10:58:43', '2024-04-18 10:58:43'),
	(444, NULL, 'Kamil Jóźwiak', 'MC', 'Granada', NULL, NULL, NULL, NULL, 25, 1.76, 70, '2024-04-18 10:58:57', '2024-04-18 10:58:57'),
	(445, NULL, 'Adnan Januzaj', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 29, 1.86, 75, '2024-04-18 10:59:12', '2024-04-18 10:59:12'),
	(446, NULL, 'José Campaña', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 30, 1.79, 72, '2024-04-18 10:59:26', '2024-04-18 10:59:26'),
	(447, 16, 'Joan Jordan', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 29, 1.84, 74, '2024-04-18 10:59:36', '2024-04-18 10:59:36'),
	(448, NULL, 'Diadié Samassékou', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 28, 1.75, 67, '2024-04-18 10:59:52', '2024-04-18 10:59:52'),
	(449, NULL, 'Faitout Maouassa', 'DF', 'Granada', NULL, NULL, NULL, NULL, 25, 1.72, 74, '2024-04-18 11:00:06', '2024-04-18 11:00:06'),
	(450, 6, 'Marcão', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 27, 1.85, 75, '2024-04-18 11:00:10', '2024-04-18 11:00:10'),
	(451, NULL, 'Mariano Díaz', 'DL', 'Sevilla', NULL, NULL, NULL, NULL, 30, 1.8, 79, '2024-04-18 11:00:25', '2024-04-18 11:00:25'),
	(452, NULL, 'Fabrizio Angileri', 'DF', 'Getafe', NULL, NULL, NULL, NULL, 30, 1.85, 84, '2024-04-18 11:00:39', '2024-04-18 11:00:39'),
	(453, 16, 'Dominik Greif', 'PT', 'Mallorca', NULL, NULL, NULL, NULL, 27, 1.97, 82, '2024-04-18 11:00:44', '2024-04-18 11:00:44'),
	(454, NULL, 'Álvaro Lemos', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 31, 1.75, NULL, '2024-04-18 11:00:48', '2024-04-18 11:00:48'),
	(455, NULL, 'Denis Suárez', 'MC', 'Villarreal', NULL, NULL, NULL, NULL, 30, 1.76, 69, '2024-04-18 11:01:02', '2024-04-18 11:01:02'),
	(456, 18, 'Pablo Gozálbez', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 22, 1.7, NULL, '2024-04-18 11:01:07', '2024-04-18 11:01:07'),
	(457, NULL, 'Bruno Langa', 'DF', 'Almería', NULL, NULL, NULL, NULL, 26, 1.78, NULL, '2024-04-18 11:01:21', '2024-04-18 11:01:21'),
	(458, NULL, 'Mikel Jauregizar', 'MC', 'Athletic Club', NULL, NULL, NULL, NULL, 20, 1.77, NULL, '2024-04-18 11:01:35', '2024-04-18 11:01:35'),
	(459, 12, 'Urko González', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 23, 1.89, NULL, '2024-04-18 11:01:40', '2024-04-18 11:01:40'),
	(460, 12, 'Fede San Emeterio', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 27, 1.74, 68, '2024-04-18 11:01:45', '2024-04-18 11:01:45'),
	(461, NULL, 'Marcos Peña', 'MC', 'Almería', NULL, NULL, NULL, NULL, 19, 0, NULL, '2024-04-18 11:01:59', '2024-04-18 11:01:59'),
	(462, NULL, 'Álvaro Odriozola', 'DF', 'Real Sociedad', NULL, NULL, NULL, NULL, 28, 1.75, 74, '2024-04-18 11:02:14', '2024-04-18 11:02:14'),
	(463, NULL, 'Omenuke Mfulu', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 30, 1.82, 70, '2024-04-18 11:02:28', '2024-04-18 11:02:28'),
	(464, NULL, 'Ricardo Visus', 'DF', 'Betis', NULL, NULL, NULL, NULL, 22, 1.92, NULL, '2024-04-18 11:02:42', '2024-04-18 11:02:42'),
	(465, NULL, 'Jesús Vallejo', 'DF', 'Granada', NULL, NULL, NULL, NULL, 27, 1.84, 74, '2024-04-18 11:02:57', '2024-04-18 11:02:57'),
	(466, NULL, 'Arthur Vermeeren', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 19, 1.8, NULL, '2024-04-18 11:03:11', '2024-04-18 11:03:11'),
	(467, 11, 'Víctor Díaz', 'DF', 'Granada', NULL, NULL, NULL, NULL, 35, 1.83, 72, '2024-04-18 11:03:15', '2024-04-18 11:03:15'),
	(468, 4, 'Éder Militão', 'DF', 'Real Madrid', NULL, NULL, NULL, NULL, 26, 1.86, 78, '2024-04-18 11:03:20', '2024-04-18 11:03:20'),
	(469, NULL, 'Cédric Bakambu', 'DL', 'Betis', NULL, NULL, NULL, NULL, 33, 1.82, 73, '2024-04-18 11:03:34', '2024-04-18 11:03:34'),
	(470, NULL, 'Aarón Escandell', 'PT', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.88, 73, '2024-04-18 11:03:49', '2024-04-18 11:03:49'),
	(471, NULL, 'Joaquín Panichelli', 'DL', 'Alavés', NULL, NULL, NULL, NULL, 21, 1.86, 82, '2024-04-18 11:04:03', '2024-04-18 11:04:03'),
	(472, NULL, 'Alejo Véliz', 'DL', 'Sevilla', NULL, NULL, NULL, NULL, 20, 1.87, 77, '2024-04-18 11:04:17', '2024-04-18 11:04:17'),
	(473, NULL, 'Marc Bartra', 'DF', 'Betis', NULL, NULL, NULL, NULL, 33, 1.83, 73, '2024-04-18 11:04:32', '2024-04-18 11:04:32'),
	(474, NULL, 'Hannibal Mejbri', 'MC', 'Sevilla', NULL, NULL, NULL, NULL, 21, 1.82, NULL, '2024-04-18 11:04:46', '2024-04-18 11:04:46'),
	(475, NULL, 'Diego Hormigo', 'DF', 'Sevilla', NULL, NULL, NULL, NULL, 21, 1.82, NULL, '2024-04-18 11:05:01', '2024-04-18 11:05:01'),
	(476, NULL, 'Antal Yaakobishvili', 'DF', 'Girona', NULL, NULL, NULL, NULL, 19, 1.93, NULL, '2024-04-18 11:05:15', '2024-04-18 11:05:15'),
	(477, NULL, 'Damián Rodríguez', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-18 11:05:40', '2024-04-18 11:05:40'),
	(478, NULL, 'Unai Marrero', 'PT', 'Real Sociedad', NULL, NULL, NULL, NULL, 22, 1.87, NULL, '2024-04-18 11:05:54', '2024-04-18 11:05:54'),
	(479, NULL, 'Mario Dominguez', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 20, 1.75, NULL, '2024-04-18 11:06:09', '2024-04-18 11:06:09'),
	(480, NULL, 'Diego Mariño', 'PT', 'Almería', NULL, NULL, NULL, NULL, 33, 1.87, 75, '2024-04-18 11:06:23', '2024-04-18 11:06:23'),
	(481, 14, 'Julen Agirrezabala', 'PT', 'Athletic Club', NULL, NULL, NULL, NULL, 23, 1.87, NULL, '2024-04-18 11:06:27', '2024-04-18 11:06:27'),
	(482, NULL, 'Pepe Reina', 'PT', 'Villarreal', NULL, NULL, NULL, NULL, 41, 1.88, 92, '2024-04-18 11:06:42', '2024-04-18 11:06:42'),
	(483, NULL, 'Fernando Martínez', 'PT', 'Almería', NULL, NULL, NULL, NULL, 33, 1.85, 79, '2024-04-18 11:06:57', '2024-04-18 11:06:57'),
	(484, 11, 'José Mari', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 36, 1.81, 75, '2024-04-18 11:07:01', '2024-04-18 11:07:01'),
	(485, NULL, 'Pablo Busto', 'DF', 'Betis', NULL, NULL, NULL, NULL, 18, 1.8, NULL, '2024-04-18 11:07:15', '2024-04-18 11:07:15'),
	(486, 6, 'Kamil Piatkowski', 'DF', 'Granada', NULL, NULL, NULL, NULL, 23, 1.91, NULL, '2024-04-18 11:07:20', '2024-04-18 11:07:20'),
	(487, 16, 'Diego Mendez', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 20, 1.82, NULL, '2024-04-18 11:07:24', '2024-04-18 11:07:24'),
	(488, 17, 'Eric Curbelo', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 30, 1.81, NULL, '2024-04-18 11:07:28', '2024-04-18 11:07:28'),
	(489, NULL, 'Etta Eyong', 'MC', 'Cádiz', NULL, NULL, NULL, NULL, 20, 0, NULL, '2024-04-18 11:07:43', '2024-04-18 11:07:43'),
	(490, 17, 'José Ángel Pozo', 'MC', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 28, 1.7, 60, '2024-04-18 11:07:47', '2024-04-18 11:07:47'),
	(491, 16, 'Gonzalo García', 'DL', 'Real Madrid', NULL, NULL, NULL, NULL, 20, 1.82, NULL, '2024-04-18 11:07:52', '2024-04-18 11:07:52'),
	(492, NULL, 'Nico Paz', 'MC', 'Real Madrid', NULL, NULL, NULL, NULL, 19, 1.85, NULL, '2024-04-18 11:08:06', '2024-04-18 11:08:06'),
	(493, NULL, 'Thomas Lemar', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 28, 1.7, 58, '2024-04-18 11:08:21', '2024-04-18 11:08:21'),
	(494, NULL, 'Víctor Parada', 'DF', 'Alavés', NULL, NULL, NULL, NULL, 22, 1.84, NULL, '2024-04-18 11:08:35', '2024-04-18 11:08:35'),
	(495, NULL, 'Alberto Dadie', 'DL', 'Real Sociedad', NULL, NULL, NULL, NULL, 21, 1.7, NULL, '2024-04-18 11:08:49', '2024-04-18 11:08:49'),
	(496, NULL, 'Silvi Clúa', 'MC', 'Girona', NULL, NULL, NULL, NULL, 19, 0, NULL, '2024-04-18 11:09:09', '2024-04-18 11:09:09'),
	(497, 4, 'Thibaut Courtois', 'PT', 'Real Madrid', NULL, NULL, NULL, NULL, 31, 2, 94, '2024-04-18 11:09:15', '2024-04-18 11:09:15'),
	(498, 12, 'Jesús Owono', 'PT', 'Alavés', NULL, NULL, NULL, NULL, 23, 1.81, 67, '2024-04-18 11:09:19', '2024-04-18 11:09:19'),
	(499, 11, 'Juan Carlos Martín', 'PT', 'Girona', NULL, NULL, NULL, NULL, 36, 1.87, 81, '2024-04-18 11:09:24', '2024-04-18 11:09:24'),
	(500, NULL, 'Borja García', 'MC', 'Girona', NULL, NULL, NULL, NULL, 33, 1.75, 65, '2024-04-18 11:09:39', '2024-04-18 11:09:39'),
	(501, 14, 'Vitolo', 'MC', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 34, 1.85, 80, '2024-04-18 11:09:43', '2024-04-18 11:09:43'),
	(502, 16, 'Pichu Cuéllar', 'PT', 'Mallorca', NULL, NULL, NULL, NULL, 39, 1.87, 76, '2024-04-18 11:09:47', '2024-04-18 11:09:47'),
	(503, NULL, 'Julen Jon Guerrero', 'MC', 'Alavés', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-18 11:10:12', '2024-04-18 11:10:12'),
	(504, 18, 'Pablo Marín', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 20, 1.78, NULL, '2024-04-18 11:10:16', '2024-04-18 11:10:16'),
	(505, NULL, 'Martín Merquelanz', 'MC', 'Real Sociedad', NULL, NULL, NULL, NULL, 28, 1.76, NULL, '2024-04-18 11:10:30', '2024-04-18 11:10:30'),
	(506, 17, 'Toni Villa', 'MC', 'Girona', NULL, NULL, NULL, NULL, 29, 1.71, 63, '2024-04-18 11:10:35', '2024-04-18 11:10:35'),
	(507, NULL, 'Cristian Rivero', 'PT', 'Valencia', NULL, NULL, NULL, NULL, 26, 1.88, NULL, '2024-04-18 11:10:49', '2024-04-18 11:10:49'),
	(508, NULL, 'Martín Tejón', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 20, 1.65, NULL, '2024-04-18 11:11:04', '2024-04-18 11:11:04'),
	(509, NULL, 'Adama Boiro', 'DF', 'Athletic Club', NULL, NULL, NULL, NULL, 21, 1.82, NULL, '2024-04-18 11:11:18', '2024-04-18 11:11:18'),
	(510, NULL, 'Adri López', 'PT', 'Granada', NULL, NULL, NULL, NULL, 25, 1.85, NULL, '2024-04-18 11:11:32', '2024-04-18 11:11:32'),
	(511, NULL, 'Alberto Flores', 'PT', 'Sevilla', NULL, NULL, NULL, NULL, 20, 1.87, NULL, '2024-04-18 11:11:47', '2024-04-18 11:11:47'),
	(512, NULL, 'Álvaro Rodríguez', 'DL', 'Real Madrid', NULL, NULL, NULL, NULL, 19, 1.93, NULL, '2024-04-18 11:12:01', '2024-04-18 11:12:01'),
	(513, 18, 'Dani Cárdenas', 'PT', 'Rayo Vallecano', NULL, NULL, 0, NULL, 27, 1.85, NULL, '2024-04-18 11:12:06', '2024-04-18 11:12:06'),
	(514, 13, 'Daniel Fuzato', 'PT', 'Getafe', NULL, NULL, NULL, NULL, 26, 1.9, NULL, '2024-04-18 11:12:10', '2024-04-18 11:12:10'),
	(515, NULL, 'Horațiu Moldovan', 'PT', 'Atlético de Madrid', NULL, NULL, NULL, NULL, 26, 1.82, NULL, '2024-04-18 11:12:24', '2024-04-18 11:12:24'),
	(516, NULL, 'Jastin García', 'DL', 'Girona', NULL, NULL, NULL, NULL, 20, 1.8, NULL, '2024-04-18 11:12:39', '2024-04-18 11:12:39'),
	(517, 17, 'Jaume Doménech', 'PT', 'Valencia', NULL, NULL, NULL, NULL, 33, 1.86, 73, '2024-04-18 11:12:43', '2024-04-18 11:12:43'),
	(518, NULL, 'Marc Martínez', 'PT', 'Granada', NULL, NULL, NULL, NULL, 34, 1.85, 74, '2024-04-18 11:12:58', '2024-04-18 11:12:58'),
	(519, 13, 'Martín Pascual', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 24, 1.9, NULL, '2024-04-18 11:13:03', '2024-04-18 11:13:03'),
	(520, NULL, 'Toni Fuidias', 'PT', 'Girona', NULL, NULL, NULL, NULL, 23, 1.95, NULL, '2024-04-18 11:13:17', '2024-04-18 11:13:17'),
	(521, NULL, 'Unai Ropero', 'MC', 'Alavés', NULL, NULL, NULL, NULL, 22, 1.88, NULL, '2024-04-18 11:13:31', '2024-04-18 11:13:31'),
	(522, NULL, 'Daley Sinkgraven', 'DF', 'Las Palmas', NULL, NULL, NULL, NULL, 28, 1.79, 65, '2024-04-18 11:13:46', '2024-04-18 11:13:46'),
	(523, NULL, 'Pep Chavarría', 'DF', 'Rayo Vallecano', NULL, NULL, NULL, NULL, 26, 1.74, NULL, '2024-04-18 11:15:32', '2024-04-18 11:15:32'),
	(524, NULL, 'Juanmi Latasa', 'DL', 'Getafe', NULL, NULL, NULL, NULL, 23, 1.91, NULL, '2024-04-18 11:20:00', '2024-04-18 11:20:00'),
	(525, NULL, 'Carlos Dominguez', 'DF', 'Celta de Vigo', NULL, NULL, NULL, NULL, 23, 1.87, NULL, '2024-04-18 11:20:00', '2024-04-18 11:20:00'),
	(526, NULL, 'Hugo Gonzalez', 'MC', 'Valencia', NULL, NULL, NULL, NULL, 21, 1.81, NULL, '2024-04-18 11:20:00', '2024-04-18 11:20:00'),
	(527, NULL, 'Fabio González ', 'MC', 'Las Palmas', NULL, NULL, NULL, NULL, 27, 1.76, NULL, '2024-04-18 11:20:00', '2024-04-18 11:20:00');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_03_28_202802_create_personal_access_tokens_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id_ntf` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_ntf`) USING BTREE,
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.notificaciones: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` (`id_ntf`, `id_user`, `type`, `title`, `content`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, 'Recomendación de compra', 'DrafgeniusIQ1 reomienda la compra de Álvaro Morata', NULL, NULL),
	(2, 2, 1, 'Recomendación de compra', 'DrafgeniusIQ1 reomienda la compra de Pedri', NULL, NULL);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.partidos
CREATE TABLE IF NOT EXISTS `partidos` (
  `id_partido` int(11) NOT NULL AUTO_INCREMENT,
  `jornada` int(11) NOT NULL,
  `equipo_local` text DEFAULT NULL,
  `equipo_visitante` text DEFAULT NULL,
  `goles_local` int(11) DEFAULT NULL,
  `goles_visitante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.partidos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` (`id_partido`, `jornada`, `equipo_local`, `equipo_visitante`, `goles_local`, `goles_visitante`) VALUES
	(1, 34, 'Getafe', 'Athletic Club', 0, 2),
	(2, 34, 'Real Sociedad', 'Las Palmas', 2, 0),
	(3, 34, 'Real Madrid', 'Cádiz', 3, 0),
	(4, 34, 'Girona', 'Barcelona', 4, 2),
	(5, 34, 'Mallorca', 'Atlético de Madrid', 0, 1),
	(6, 34, 'Osasuna', 'Betis', 0, 2),
	(7, 34, 'Celta de Vigo', 'Villarreal', 0, 2),
	(8, 34, 'Valencia', 'Alavés', 0, 1),
	(9, 34, 'Sevilla', 'Granada', 3, 0),
	(10, 34, 'Rayo Vallecano', 'Almería', 0, 1);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.password_reset_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.predicciones_puntos
CREATE TABLE IF NOT EXISTS `predicciones_puntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_puntos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_puntos` DISABLE KEYS */;
INSERT INTO `predicciones_puntos` (`id`, `id_player`, `valor`, `created_at`, `updated_at`) VALUES
	(6, 1, 9, NULL, NULL),
	(7, 2, 14, NULL, NULL),
	(8, 3, 5, NULL, NULL),
	(9, 6, 3, NULL, NULL),
	(10, 23, 11, NULL, NULL),
	(11, 31, 6, NULL, NULL),
	(12, 41, 5, NULL, NULL);
/*!40000 ALTER TABLE `predicciones_puntos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.predicciones_valor_mercado
CREATE TABLE IF NOT EXISTS `predicciones_valor_mercado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_valor_mercado: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_valor_mercado` DISABLE KEYS */;
INSERT INTO `predicciones_valor_mercado` (`id`, `id_player`, `valor`, `created_at`, `updated_at`) VALUES
	(1, 1, 21326000, NULL, NULL),
	(2, 2, 26320800, NULL, NULL),
	(3, 3, 15326600, NULL, NULL),
	(6, 6, 6320800, NULL, NULL),
	(23, 23, 12320800, NULL, NULL),
	(31, 31, 5520800, NULL, NULL),
	(41, 41, 21320800, NULL, NULL);
/*!40000 ALTER TABLE `predicciones_valor_mercado` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.sessions: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('bVXTT3LH3orZTPOpjQ2WkS5FBxe3eAwkaKRM3K1i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakdqb3Q2a3FFVEY4NjVZeHlpa1RmVmNZWkRCWEdHU3JBWHJlazMxMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711662393),
	('njh1Thz6hgqw3rHve2vfyNLpWoQygaGhRHVunlw2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUUyVmdzNFlTNmFQU1VrZTE4SXUyc3JOV1R2UzU2QUZKdGQ2c3Q3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711788859),
	('t6umVWgBy3FIioMkIo1JSHozhmEBJJIazesCMhjk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHFLUUZpWnhUMWJScjZLMkFKTTZtY2NaV0FPTllBb0t0cFFSUWpXNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711704069);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_team` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `rol` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id_team` (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.users: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `id_team`, `name`, `rol`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 2, 'Grupo6', 0, 'm31_grupo6@outlook.com', NULL, 'hola', NULL, '2024-04-11 10:47:31', '2024-05-09 18:58:50'),
	(3, 1, 'Alberto', 1, 'adminalberto@admin.com', NULL, '$2y$12$OLaFAKHDqPmE/hNx/PAb8ekJyiK1guC96CJ8.yq7clG2NH.snenUW', NULL, '2024-04-11 10:47:31', '2024-05-09 18:58:17'),
	(41, 3, 'Daniel Gutiérrez', 0, '22060943@live.uem.es', NULL, '$2y$12$8tNdp56izqeinIsDDnnxZuwwUilJwNvMSk3ivGryzCtxNlyMD/oQm', NULL, '2024-05-02 10:01:10', '2024-05-09 18:58:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
