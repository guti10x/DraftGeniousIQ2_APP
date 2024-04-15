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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.equipos: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` (`id_equipo`, `nombre`, `logo`, `updated_at`, `created_at`) VALUES
	(1, 'Admin', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(2, 'M31-G6-AcMilanesa', '../../assets/teams/teams_MF/u1.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(3, 'M31-G7-DraftKings', '', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(4, 'M32-G5-BabooManager', '../../assets/teams/teams_MF/u4.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(5, 'M31-G3-CactusPanda', '../../assets/teams/teams_MF/u7.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(6, 'M32-G3-GoalAnalitics', '../../assets/teams/teams_MF/u3.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(7, 'M31-G1-FutX', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(8, 'jluzon', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(9, 'M31-G2-UA2CCC', '../../assets/teams/teams_MF/u2.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(10, 'M32-G9-PREDITECH INSIGHTS', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(11, 'M32-G7-KleinGroup', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(12, 'M32-G8 - Los Capys', '../../assets/teams/teams_MF/u6.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(13, 'M32-G2-dreamx1', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(14, 'M31-G4-DLA', '../../assets/teams/teams_MF/u5.png', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(15, 'M32-G6_Jammin&#039', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(16, 'M32-G2-xGarcii', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(17, 'M31-G5-REALE', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(18, 'Jafeth Suarez', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(19, 'AlbertoFC', NULL, '2024-03-30 10:47:31', '2024-03-30 10:46:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_equipos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_equipos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_jornadas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_jornadas` DISABLE KEYS */;
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
  `edad` int(11) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_player`) USING BTREE,
  KEY `id_eqipo` (`id_equipo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.jugadores: ~528 rows (aproximadamente)
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` (`id_player`, `id_equipo`, `nombre`, `posicion`, `equipo`, `titular`, `edad`, `altura`, `peso`, `created_at`, `updated_at`) VALUES
	(1, 9, 'Jude Bellingham', 'MC', 'Real Madrid', NULL, 20, 1.88, NULL, NULL, NULL),
	(2, 5, 'Ante Budimir', 'DL', 'Osasuna', NULL, 32, 1.9, 75, NULL, NULL),
	(3, 7, ' Sávio', 'DL', 'Girona', NULL, 19, 1.76, NULL, NULL, NULL),
	(4, 1, ' Isco', 'MC', 'Betis', NULL, 31, 1.76, 74, NULL, NULL),
	(5, 3, 'Iñaki Williams', 'DL', 'Athletic Club', NULL, 29, 1.86, 76, NULL, NULL),
	(6, 3, 'Borja Mayoral', 'DL', 'Getafe', NULL, 26, 1.82, 68, NULL, NULL),
	(7, 7, 'Gorka Guruzeta', 'DL', 'Athletic Club', NULL, 27, 1.88, NULL, NULL, NULL),
	(8, 1, 'Takefusa Kubo', 'MC', 'Real Sociedad', NULL, 22, 1.74, 67, NULL, NULL),
	(9, 1, 'Kirian Rodríguez', 'MC', 'Las Palmas', NULL, 28, 1.8, NULL, NULL, NULL),
	(10, 3, 'Aleix García', 'MC', 'Girona', NULL, 26, 1.73, 61, NULL, NULL),
	(11, 1, ' Pepelu', 'MC', 'Valencia', NULL, 25, 1.85, 73, NULL, NULL),
	(12, 2, 'Antoine Griezmann', 'DL', 'Atlético de Madrid', 1, 33, 1.76, 71, NULL, NULL),
	(13, 10, 'Álvaro Valles', 'PT', 'Las Palmas', NULL, 26, 1.92, NULL, NULL, NULL),
	(14, 6, 'Artem Dovbyk', 'DL', 'Girona', NULL, 26, 1.89, 76, NULL, NULL),
	(15, 5, 'Lamine Yamal', 'DL', 'Barcelona', NULL, 16, 1.8, NULL, NULL, NULL),
	(16, 9, 'Fede Valverde', 'MC', 'Real Madrid', NULL, 25, 1.81, 67, NULL, NULL),
	(17, 9, 'İlkay Gündoğan', 'MC', 'Barcelona', NULL, 33, 1.8, 80, NULL, NULL),
	(18, 6, 'Jørgen Strand Larsen', 'DL', 'Celta de Vigo', NULL, 24, 1.93, 79, NULL, NULL),
	(19, 10, 'Gerard Moreno', 'DL', 'Villarreal', NULL, 31, 1.8, 75, NULL, NULL),
	(20, 4, 'Brais Méndez', 'MC', 'Real Sociedad', NULL, 27, 1.84, 76, NULL, NULL),
	(21, 4, 'Hugo Duro', 'DL', 'Valencia', NULL, 24, 1.8, NULL, NULL, NULL),
	(22, 3, 'Martín Zubimendi', 'MC', 'Real Sociedad', NULL, 25, 1.8, 74, NULL, NULL),
	(23, 9, 'Toni Kroos', 'MC', 'Real Madrid', NULL, 34, 1.83, 78, NULL, NULL),
	(24, 1, 'Alexander Sørloth', 'DL', 'Villarreal', NULL, 28, 1.94, 90, NULL, NULL),
	(25, 2, 'Giorgi Mamardashvili', 'PT', 'Valencia', 1, 23, 2, NULL, NULL, NULL),
	(26, NULL, ' Rodrygo', 'DL', 'Real Madrid', NULL, 23, 1.74, 62, NULL, NULL),
	(27, 3, 'Mason Greenwood', 'DL', 'Getafe', NULL, 22, 1.81, NULL, NULL, NULL),
	(28, 17, 'Unai Simón', 'PT', 'Athletic Club', NULL, 26, 1.89, 86, NULL, NULL),
	(29, 2, 'Robert Lewandowski', 'DL', 'Barcelona', NULL, 35, 1.84, 79, NULL, NULL),
	(30, NULL, 'Luis Rioja', 'MC', 'Alavés', NULL, 30, 1.73, NULL, NULL, NULL),
	(31, 9, 'Álvaro Morata', 'DL', 'Atlético de Madrid', NULL, 31, 1.89, 85, NULL, NULL),
	(32, 16, 'Nemanja Maksimović', 'MC', 'Getafe', NULL, 29, 1.84, 75, NULL, NULL),
	(33, 13, 'Florian Lejeune', 'DF', 'Rayo Vallecano', NULL, 32, 1.9, 81, NULL, NULL),
	(34, 1, 'Vinícius Júnior', 'DL', 'Real Madrid', NULL, 23, 1.76, 62, NULL, NULL),
	(35, 13, 'Sergi Cardona', 'DF', 'Las Palmas', NULL, 24, 1.86, NULL, NULL, NULL),
	(36, 9, 'Óscar Mingueza', 'DF', 'Celta de Vigo', NULL, 24, 1.84, NULL, NULL, NULL),
	(37, 1, 'Dani Carvajal', 'DF', 'Real Madrid', NULL, 32, 1.73, 73, NULL, NULL),
	(38, 9, 'Chris Ramos', 'DL', 'Cádiz', NULL, 27, 1.93, NULL, NULL, NULL),
	(39, 2, 'Viktor Tsygankov', 'MC', 'Girona', NULL, 26, 1.78, 70, NULL, NULL),
	(40, 5, 'Miguel Gutiérrez', 'DF', 'Girona', NULL, 22, 1.8, NULL, NULL, NULL),
	(41, 5, 'Sergio Arribas', 'MC', 'Almería', NULL, 22, 1.71, NULL, NULL, NULL),
	(42, 8, 'Samu Omorodion', 'DL', 'Alavés', NULL, 19, 1.93, NULL, NULL, NULL),
	(43, 1, 'Iago Aspas', 'DL', 'Celta de Vigo', NULL, 36, 1.76, 67, NULL, NULL),
	(44, 2, 'Alex Baena', 'MC', 'Villarreal', NULL, 22, 1.74, NULL, NULL, NULL),
	(45, 2, 'Yan Couto', 'DF', 'Girona', 1, 21, 1.69, NULL, NULL, NULL),
	(46, 1, 'Filip Jörgensen', 'PT', 'Villarreal', NULL, 21, 1.9, NULL, NULL, NULL),
	(47, 2, 'Marcos Llorente', 'MC', 'Atlético de Madrid', 1, 29, 1.84, 71, NULL, NULL),
	(48, 8, 'David Soria', 'PT', 'Getafe', NULL, 30, 1.92, 85, NULL, NULL),
	(49, 3, 'Predrag Rajković', 'PT', 'Mallorca', NULL, 28, 1.92, 70, NULL, NULL),
	(50, 11, 'Samuel Lino', 'MC', 'Atlético de Madrid', NULL, 24, 1.78, NULL, NULL, NULL),
	(51, 8, 'Isi Palazón', 'MC', 'Rayo Vallecano', NULL, 29, 1.69, 71, NULL, NULL),
	(52, 18, 'Alex Remiro', 'PT', 'Real Sociedad', NULL, 29, 1.91, 80, NULL, NULL),
	(53, 14, 'Antonio Sivera', 'PT', 'Alavés', NULL, 27, 1.84, 75, NULL, NULL),
	(54, 1, 'Nico Williams', 'MC', 'Athletic Club', NULL, 21, 1.8, NULL, NULL, NULL),
	(55, NULL, 'Álvaro García', 'MC', 'Rayo Vallecano', NULL, 31, 1.68, 58, NULL, NULL),
	(56, 11, 'Jan Oblak', 'PT', 'Atlético de Madrid', NULL, 31, 1.89, 84, NULL, NULL),
	(57, 17, 'Mikel Merino', 'MC', 'Real Sociedad', NULL, 27, 1.88, 79, NULL, NULL),
	(58, 1, 'Mikel Oyarzabal', 'DL', 'Real Sociedad', NULL, 26, 1.81, 75, NULL, NULL),
	(59, 1, 'Brahim Díaz', 'MC', 'Real Madrid', NULL, 24, 1.7, 68, NULL, NULL),
	(60, 3, 'Iván Martín', 'MC', 'Girona', NULL, 25, 1.78, NULL, NULL, NULL),
	(61, 1, 'Daniel Vivian', 'DF', 'Athletic Club', NULL, 24, 1.83, NULL, NULL, NULL),
	(62, NULL, 'Jeremías Ledesma', 'PT', 'Cádiz', NULL, 31, 1.86, 85, NULL, NULL),
	(63, 10, 'Lucas Ocampos', 'DL', 'Sevilla', NULL, 29, 1.87, 84, NULL, NULL),
	(64, 6, 'Paulo Gazzaniga', 'PT', 'Girona', NULL, 32, 1.96, 90, NULL, NULL),
	(65, NULL, 'Stole Dimitrievski', 'PT', 'Rayo Vallecano', NULL, 30, 1.88, 81, NULL, NULL),
	(66, 6, 'Germán Pezzella', 'DF', 'Betis', NULL, 32, 1.87, 82, NULL, NULL),
	(67, NULL, 'Rubén Alcaraz', 'MC', 'Cádiz', NULL, 32, 1.8, 76, NULL, NULL),
	(68, 2, 'Myrto Uzuni', 'DL', 'Granada', NULL, 28, 1.78, NULL, NULL, NULL),
	(69, 1, 'Vedat Muriqi', 'DL', 'Mallorca', NULL, 29, 1.94, 92, NULL, NULL),
	(70, 7, 'Rodrigo De Paul', 'MC', 'Atlético de Madrid', NULL, 29, 1.8, 67, NULL, NULL),
	(71, 6, 'Daley Blind', 'DF', 'Girona', NULL, 34, 1.8, 72, NULL, NULL),
	(72, 9, 'Mika Mármol', 'DF', 'Las Palmas', NULL, 22, 1.81, NULL, NULL, NULL),
	(73, 3, 'Jon Guridi', 'MC', 'Alavés', NULL, 29, 1.79, 64, NULL, NULL),
	(74, 8, 'Iñigo Ruiz De Galarreta', 'MC', 'Athletic Club', NULL, 30, 1.74, 64, NULL, NULL),
	(75, 10, 'Luka Modrić', 'MC', 'Real Madrid', NULL, 38, 1.73, 65, NULL, NULL),
	(76, 11, 'Andoni Gorosabel', 'DF', 'Alavés', NULL, 27, 1.74, NULL, NULL, NULL),
	(77, 16, 'Axel Witsel', 'DF', 'Atlético de Madrid', NULL, 35, 1.86, 73, NULL, NULL),
	(78, 2, 'Antonio Rüdiger', 'DF', 'Real Madrid', 1, 31, 1.91, 85, NULL, NULL),
	(79, 7, 'Sergio Herrera', 'PT', 'Osasuna', NULL, 30, 1.92, 82, NULL, NULL),
	(80, 12, 'Cristhian Mosquera', 'DF', 'Valencia', NULL, 19, 1.88, NULL, NULL, NULL),
	(81, 9, 'Luís Maximiano', 'PT', 'Almería', NULL, 25, 1.9, 74, NULL, NULL),
	(82, 4, 'Igor Zubeldia', 'DF', 'Real Sociedad', NULL, 26, 1.8, 75, NULL, NULL),
	(83, 12, 'Óscar Valentín', 'MC', 'Rayo Vallecano', NULL, 29, 1.77, NULL, NULL, NULL),
	(84, 6, 'Marc Roca', 'MC', 'Betis', NULL, 27, 1.84, 74, NULL, NULL),
	(85, 8, 'Willian José', 'DL', 'Betis', NULL, 32, 1.89, 87, NULL, NULL),
	(86, 4, 'Diego López', 'DL', 'Valencia', NULL, 21, 1.72, NULL, NULL, NULL),
	(87, 14, 'Unai Núñez', 'DF', 'Celta de Vigo', NULL, 27, 1.86, 81, NULL, NULL),
	(88, 17, 'Álex Berenguer', 'MC', 'Athletic Club', NULL, 28, 1.75, 70, NULL, NULL),
	(89, NULL, 'Javi Muñoz', 'MC', 'Las Palmas', NULL, 29, 1.79, 75, NULL, NULL),
	(90, 8, 'Dani Rodríguez', 'MC', 'Mallorca', NULL, 35, 1.77, 71, NULL, NULL),
	(91, NULL, 'Frenkie De Jong', 'MC', 'Barcelona', NULL, 26, 1.8, 70, NULL, NULL),
	(92, NULL, ' Joselu', 'DL', 'Real Madrid', NULL, 34, 1.91, 80, NULL, NULL),
	(93, NULL, 'Ander Guevara', 'MC', 'Alavés', NULL, 26, 1.8, NULL, NULL, NULL),
	(94, 5, 'Ronald Araújo', 'DF', 'Barcelona', NULL, 25, 1.91, 79, NULL, NULL),
	(95, 4, 'Eduardo Camavinga', 'MC', 'Real Madrid', NULL, 21, 1.82, NULL, NULL, NULL),
	(96, 8, 'Javier Guerra', 'MC', 'Valencia', NULL, 20, 1.87, NULL, NULL, NULL),
	(97, 6, 'Aimar Oroz', 'MC', 'Osasuna', NULL, 22, 1.77, NULL, NULL, NULL),
	(98, 14, 'Yangel Herrera', 'MC', 'Girona', NULL, 26, 1.84, 75, NULL, NULL),
	(99, 2, 'José Luis Gayà', 'DF', 'Valencia', NULL, 28, 1.72, 64, NULL, NULL),
	(100, 2, 'Eric García', 'DF', 'Girona', NULL, 23, 1.82, 79, NULL, NULL),
	(101, 13, 'Oihan Sancet', 'MC', 'Athletic Club', NULL, 23, 1.88, NULL, NULL, NULL),
	(102, 4, 'Cristian Portu', 'MC', 'Girona', NULL, 31, 1.67, 70, NULL, NULL),
	(103, 10, 'Samuel Costa', 'MC', 'Mallorca', NULL, 23, 1.83, NULL, NULL, NULL),
	(104, 8, 'Christian Stuani', 'DL', 'Girona', NULL, 37, 1.84, 74, NULL, NULL),
	(105, 9, 'João Félix', 'DL', 'Barcelona', NULL, 24, 1.81, 62, NULL, NULL),
	(106, 9, 'Aitor Paredes', 'DF', 'Athletic Club', NULL, 23, 1.86, NULL, NULL, NULL),
	(107, NULL, 'Ferran Torres', 'DL', 'Barcelona', NULL, 24, 1.85, 77, NULL, NULL),
	(108, 7, 'Diego Rico', 'DF', 'Getafe', NULL, 31, 1.81, 76, NULL, NULL),
	(109, 4, 'Ayoze Pérez', 'DL', 'Betis', NULL, 30, 1.8, 66, NULL, NULL),
	(110, 3, 'João Cancelo', 'DF', 'Barcelona', NULL, 29, 1.82, 74, NULL, NULL),
	(111, 8, 'Robin Le Normand', 'DF', 'Real Sociedad', NULL, 27, 1.87, NULL, NULL, NULL),
	(112, 2, 'Youssef En Nesyri', 'DL', 'Sevilla', NULL, 26, 1.9, 73, NULL, NULL),
	(113, NULL, ' Koke', 'MC', 'Atlético de Madrid', NULL, 32, 1.77, 73, NULL, NULL),
	(114, 1, 'Yuri Berchiche', 'DF', 'Athletic Club', NULL, 34, 1.81, 77, NULL, NULL),
	(115, 14, 'Ángel Correa', 'DL', 'Atlético de Madrid', NULL, 29, 1.71, 67, NULL, NULL),
	(116, 5, 'Lucas Robertone', 'MC', 'Almería', NULL, 27, 1.73, NULL, NULL, NULL),
	(117, 2, 'Jules Koundé', 'DF', 'Barcelona', 1, 25, 1.8, 70, NULL, NULL),
	(118, 11, 'Largie Ramazani', 'DL', 'Almería', NULL, 23, 1.67, NULL, NULL, NULL),
	(119, NULL, 'Jesus Areso', 'DF', 'Osasuna', NULL, 24, 1.83, NULL, NULL, NULL),
	(120, NULL, 'Jonathan Bamba', 'DL', 'Celta de Vigo', NULL, 28, 1.75, 72, NULL, NULL),
	(121, 9, 'Fermín López', 'MC', 'Barcelona', NULL, 20, 1.76, NULL, NULL, NULL),
	(122, NULL, 'David García', 'DF', 'Osasuna', NULL, 30, 1.85, 72, NULL, NULL),
	(123, 12, 'Unai López', 'MC', 'Rayo Vallecano', NULL, 28, 1.69, 64, NULL, NULL),
	(124, 1, 'Dani Parejo', 'MC', 'Villarreal', NULL, 34, 1.8, 74, NULL, NULL),
	(125, 14, 'Hamari Traoré', 'DF', 'Real Sociedad', NULL, 32, 1.75, 64, NULL, NULL),
	(126, 18, 'Fran Pérez', 'MC', 'Valencia', NULL, 21, 1.76, NULL, NULL, NULL),
	(127, 9, 'Munir El Haddadi', 'DL', 'Las Palmas', NULL, 28, 1.75, 69, NULL, NULL),
	(128, NULL, 'Abdón Prats', 'DL', 'Mallorca', NULL, 31, 1.81, 79, NULL, NULL),
	(129, NULL, 'Sergi Darder', 'MC', 'Mallorca', NULL, 30, 1.8, 71, NULL, NULL),
	(130, 1, 'David López', 'DF', 'Girona', NULL, 34, 1.85, 81, NULL, NULL),
	(131, 11, 'Antonio Raíllo', 'DF', 'Mallorca', NULL, 32, 1.86, 77, NULL, NULL),
	(132, 12, 'Vicente Guaita', 'PT', 'Celta de Vigo', NULL, 37, 1.9, 81, NULL, NULL),
	(133, 9, 'Óscar De Marcos', 'DF', 'Athletic Club', NULL, 34, 1.8, 78, NULL, NULL),
	(134, 2, 'Aurélien Tchouaméni', 'MC', 'Real Madrid', 1, 24, 1.88, NULL, NULL, NULL),
	(135, 5, ' Raphinha', 'DL', 'Barcelona', NULL, 27, 1.76, 68, NULL, NULL),
	(136, NULL, 'Alex Suárez', 'DF', 'Las Palmas', NULL, 31, 1.79, NULL, NULL, NULL),
	(137, NULL, 'Gerard Gumbau', 'MC', 'Granada', NULL, 29, 1.87, 77, NULL, NULL),
	(138, 4, 'Andriy Lunin', 'PT', 'Real Madrid', NULL, 25, 1.91, 80, NULL, NULL),
	(139, 4, 'Gastón Álvarez', 'DF', 'Getafe', NULL, 24, 1.84, NULL, NULL, NULL),
	(140, NULL, 'Kike García', 'DL', 'Alavés', NULL, 34, 1.86, 79, NULL, NULL),
	(141, NULL, 'Ignasi Miquel', 'DF', 'Granada', NULL, 31, 1.89, 80, NULL, NULL),
	(142, NULL, 'Ter Stegen', 'PT', 'Barcelona', NULL, 31, 1.87, 85, NULL, NULL),
	(143, NULL, 'Rodrigo Riquelme', 'MC', 'Atlético de Madrid', NULL, 23, 1.74, NULL, NULL, NULL),
	(144, NULL, 'Ander Barrenetxea', 'MC', 'Real Sociedad', NULL, 22, 1.74, NULL, NULL, NULL),
	(145, NULL, 'Javier López', 'DF', 'Alavés', NULL, 22, 1.83, NULL, NULL, NULL),
	(146, 12, 'Gonzalo Villar', 'MC', 'Granada', NULL, 26, 1.81, NULL, NULL, NULL),
	(147, 9, 'Adri Embarba', 'MC', 'Almería', NULL, 31, 1.73, 66, NULL, NULL),
	(148, NULL, 'Mario Hermoso', 'DF', 'Atlético de Madrid', NULL, 28, 1.84, 74, NULL, NULL),
	(149, NULL, 'Cyle Larin', 'DL', 'Mallorca', NULL, 28, 1.87, 86, NULL, NULL),
	(150, NULL, 'Pacha Espino', 'DF', 'Rayo Vallecano', NULL, 32, 1.72, 70, NULL, NULL),
	(151, 18, 'Alberto Moleiro', 'MC', 'Las Palmas', NULL, 20, 1.69, NULL, NULL, NULL),
	(152, 9, 'Carl Starfelt', 'DF', 'Celta de Vigo', NULL, 28, 1.85, 80, NULL, NULL),
	(153, 7, 'Fali Giménez', 'DF', 'Cádiz', NULL, 30, 1.86, 72, NULL, NULL),
	(154, 3, 'Luca de la Torre', 'MC', 'Celta de Vigo', NULL, 25, 1.78, 63, NULL, NULL),
	(155, 3, 'Saúl Coco', 'DF', 'Las Palmas', NULL, 25, 1.88, NULL, NULL, NULL),
	(156, NULL, 'Ricard Sánchez', 'DF', 'Granada', NULL, 24, 1.75, NULL, NULL, NULL),
	(157, NULL, 'Marvin Park', 'DL', 'Las Palmas', NULL, 24, 1.77, NULL, NULL, NULL),
	(158, 12, 'Rafa Marín', 'DF', 'Alavés', NULL, 21, 1.9, NULL, NULL, NULL),
	(159, 17, 'Sergio Ruiz', 'MC', 'Granada', NULL, 29, 1.71, NULL, NULL, NULL),
	(160, NULL, 'Jaime Mata', 'DL', 'Getafe', NULL, 35, 1.85, 75, NULL, NULL),
	(161, NULL, 'Álex Sola', 'MC', 'Alavés', NULL, 24, 1.78, NULL, NULL, NULL),
	(162, 8, 'Iván Balliu', 'DF', 'Rayo Vallecano', NULL, 32, 1.75, 68, NULL, NULL),
	(163, 2, 'Guido Rodríguez', 'MC', 'Betis', 1, 29, 1.85, 80, NULL, NULL),
	(164, 17, 'Memphis Depay', 'DL', 'Atlético de Madrid', NULL, 30, 1.76, 78, NULL, NULL),
	(165, NULL, 'Rubén Duarte', 'DF', 'Alavés', NULL, 28, 1.8, 75, NULL, NULL),
	(166, 13, 'Enzo Loiodice', 'MC', 'Las Palmas', NULL, 23, 1.76, NULL, NULL, NULL),
	(167, NULL, 'Pablo Barrios', 'MC', 'Atlético de Madrid', NULL, 20, 1.81, NULL, NULL, NULL),
	(168, NULL, 'Jorge Cuenca', 'DF', 'Villarreal', NULL, 24, 1.9, NULL, NULL, NULL),
	(169, NULL, 'Adrià Pedrosa', 'DF', 'Sevilla', NULL, 25, 1.76, 69, NULL, NULL),
	(170, NULL, 'Giovanni González', 'DF', 'Mallorca', NULL, 29, 1.75, 70, NULL, NULL),
	(171, NULL, 'Saúl Ñíguez', 'MC', 'Atlético de Madrid', NULL, 29, 1.84, 76, NULL, NULL),
	(172, 1, ' Sandro', 'DL', 'Las Palmas', NULL, 28, 1.75, 71, NULL, NULL),
	(173, NULL, 'Rui Silva', 'PT', 'Betis', NULL, 30, 1.89, 85, NULL, NULL),
	(174, 16, 'Antonio Sánchez', 'MC', 'Mallorca', NULL, 26, 1.79, NULL, NULL, NULL),
	(175, NULL, 'Étienne Capoue', 'MC', 'Villarreal', NULL, 35, 1.87, 80, NULL, NULL),
	(176, 4, 'Luis Milla', 'MC', 'Getafe', NULL, 29, 1.75, NULL, NULL, NULL),
	(177, NULL, 'Julián Araujo', 'DF', 'Las Palmas', NULL, 22, 1.75, 70, NULL, NULL),
	(178, 13, 'Santi Comesaña', 'MC', 'Villarreal', NULL, 27, 1.87, NULL, NULL, NULL),
	(179, 1, 'Javi Hernández', 'DF', 'Cádiz', NULL, 25, 1.81, 72, NULL, NULL),
	(180, NULL, 'Manu Sánchez', 'DF', 'Celta de Vigo', NULL, 23, 1.79, NULL, NULL, NULL),
	(181, NULL, 'Pathé Ciss', 'MC', 'Rayo Vallecano', NULL, 30, 1.83, 71, NULL, NULL),
	(182, NULL, 'Édgar González', 'DF', 'Almería', NULL, 26, 1.93, NULL, NULL, NULL),
	(183, 5, 'Antonio Blanco', 'MC', 'Alavés', NULL, 23, 1.76, NULL, NULL, NULL),
	(184, NULL, 'Iza Carcelén', 'DF', 'Cádiz', NULL, 30, 1.74, 70, NULL, NULL),
	(185, 9, 'Matija Nastasić', 'DF', 'Mallorca', NULL, 30, 1.88, 83, NULL, NULL),
	(186, 7, 'Léo Baptistão', 'DL', 'Almería', NULL, 31, 1.81, 72, NULL, NULL),
	(187, NULL, 'Dion Lopy', 'MC', 'Almería', NULL, 22, 1.86, NULL, NULL, NULL),
	(188, NULL, ' Pedri', 'MC', 'Barcelona', NULL, 21, 1.74, 60, NULL, NULL),
	(189, 6, 'Lucas Vázquez', 'DF', 'Real Madrid', NULL, 32, 1.73, 70, NULL, NULL),
	(190, NULL, 'Moi Gómez', 'MC', 'Osasuna', NULL, 29, 1.74, 65, NULL, NULL),
	(191, 12, 'José Luis Morales', 'DL', 'Villarreal', NULL, 36, 1.8, 70, NULL, NULL),
	(192, NULL, 'Ilias Akhomach', 'DL', 'Villarreal', NULL, 19, 1.75, NULL, NULL, NULL),
	(193, 9, 'Sergio Ramos', 'DF', 'Sevilla', NULL, 37, 1.84, 75, NULL, NULL),
	(194, NULL, 'Mikel Vesga', 'MC', 'Athletic Club', NULL, 30, 1.91, 84, NULL, NULL),
	(195, NULL, 'Juanmi Latasa', 'DL', 'Getafe', NULL, 23, 1.91, NULL, NULL, NULL),
	(196, 16, 'Dakonam Djené', 'DF', 'Getafe', NULL, 32, 1.78, 71, NULL, NULL),
	(197, NULL, 'Jon Moncayola', 'MC', 'Osasuna', NULL, 25, 1.82, 73, NULL, NULL),
	(198, 3, 'Beñat Prados', 'MC', 'Athletic Club', NULL, 23, 1.79, NULL, NULL, NULL),
	(199, 16, 'Raúl García de Haro', 'DL', 'Osasuna', NULL, 23, 1.92, 70, NULL, NULL),
	(200, 8, 'Carlos Neva', 'DF', 'Granada', NULL, 27, 1.74, NULL, NULL, NULL),
	(201, 11, 'Rubén García', 'MC', 'Osasuna', NULL, 30, 1.71, 72, NULL, NULL),
	(202, 7, ' Suso', 'MC', 'Sevilla', NULL, 30, 1.76, 70, NULL, NULL),
	(203, NULL, 'Nahuel Molina', 'DF', 'Atlético de Madrid', NULL, 25, 1.74, 69, NULL, NULL),
	(204, 13, 'Iker Muñoz', 'MC', 'Osasuna', NULL, 21, 1.79, NULL, NULL, NULL),
	(205, 3, 'Dimitri Foulquier', 'DF', 'Valencia', NULL, 31, 1.83, 79, NULL, NULL),
	(206, NULL, 'Sergio Camello', 'DL', 'Rayo Vallecano', NULL, 23, 1.77, NULL, NULL, NULL),
	(207, 5, 'Máximo Perrone', 'MC', 'Las Palmas', NULL, 21, 1.78, NULL, NULL, NULL),
	(208, NULL, 'Lucas Torró', 'MC', 'Osasuna', NULL, 29, 1.9, 77, NULL, NULL),
	(209, 7, 'Fran Beltrán', 'MC', 'Celta de Vigo', NULL, 25, 1.7, 66, NULL, NULL),
	(210, 6, 'Martin Valjent', 'DF', 'Mallorca', NULL, 28, 1.87, 70, NULL, NULL),
	(211, NULL, 'Umar Sadiq', 'DL', 'Real Sociedad', NULL, 27, 1.92, 75, NULL, NULL),
	(212, 11, 'Manu Morlanes', 'MC', 'Mallorca', NULL, 25, 1.78, NULL, NULL, NULL),
	(213, NULL, ' Gavi', 'MC', 'Barcelona', NULL, 19, 1.73, NULL, NULL, NULL),
	(214, 1, 'Ørjan Nyland', 'PT', 'Sevilla', NULL, 33, 1.92, 78, NULL, NULL),
	(215, NULL, 'Abdelkabir Abqar', 'DF', 'Alavés', NULL, 25, 1.88, NULL, NULL, NULL),
	(216, NULL, 'Thierry Correia', 'DF', 'Valencia', 1, 25, 1.76, NULL, NULL, NULL),
	(217, 5, 'Óscar Trejo', 'MC', 'Rayo Vallecano', NULL, 35, 1.77, 79, NULL, NULL),
	(218, NULL, 'Jorge de Frutos', 'MC', 'Rayo Vallecano', NULL, 27, 1.73, NULL, NULL, NULL),
	(219, NULL, 'Jonathan Viera', 'MC', 'Almería', NULL, 34, 1.71, 65, NULL, NULL),
	(220, NULL, 'Sergi Canós', 'MC', 'Valencia', NULL, 27, 1.73, 75, NULL, NULL),
	(221, NULL, 'Johan Mojica', 'DF', 'Osasuna', NULL, 31, 1.85, 73, NULL, NULL),
	(222, NULL, 'Raúl Albiol', 'DF', 'Villarreal', NULL, 38, 1.9, 82, NULL, NULL),
	(223, 11, 'Anastasios Douvikas', 'DL', 'Celta de Vigo', NULL, 24, 1.84, 78, NULL, NULL),
	(224, NULL, 'Íñigo Lekue', 'DF', 'Athletic Club', NULL, 30, 1.8, 73, NULL, NULL),
	(225, 2, 'Unai Gómez', 'MC', 'Athletic Club', NULL, 20, 1.83, NULL, NULL, NULL),
	(226, NULL, 'Gabriel Paulista', 'DF', 'Atlético de Madrid', NULL, 33, 1.87, 72, NULL, NULL),
	(227, NULL, 'Juan Iglesias', 'DF', 'Getafe', NULL, 25, 1.85, NULL, NULL, NULL),
	(228, 11, 'Lucas Pires', 'DF', 'Cádiz', NULL, 23, 1.82, NULL, NULL, NULL),
	(229, NULL, 'Aitor Ruibal', 'DF', 'Betis', NULL, 28, 1.76, NULL, NULL, NULL),
	(230, NULL, 'Ander Herrera', 'MC', 'Athletic Club', NULL, 34, 1.82, 70, NULL, NULL),
	(231, 3, 'Chadi Riad', 'DF', 'Betis', NULL, 20, 1.86, NULL, NULL, NULL),
	(232, NULL, 'Loïc Badé', 'DF', 'Sevilla', NULL, 23, 1.91, NULL, NULL, NULL),
	(233, NULL, 'Rubén Peña', 'DF', 'Osasuna', NULL, 32, 1.7, 65, NULL, NULL),
	(234, NULL, 'Andreas Christensen', 'DF', 'Barcelona', NULL, 27, 1.88, 78, NULL, NULL),
	(235, NULL, 'Abde Ezzalzouli', 'DL', 'Betis', NULL, 22, 1.77, NULL, NULL, NULL),
	(236, NULL, 'Roger Martí', 'DL', 'Cádiz', NULL, 33, 1.78, 74, NULL, NULL),
	(237, 3, 'Robert Navarro', 'MC', 'Cádiz', NULL, 21, 1.78, NULL, NULL, NULL),
	(238, 3, 'Hugo Guillamón', 'MC', 'Valencia', NULL, 24, 1.78, NULL, NULL, NULL),
	(239, 7, 'Rodrigo Sanchez', 'MC', 'Betis', NULL, 23, 1.75, NULL, NULL, NULL),
	(240, NULL, 'Aihen Muñoz', 'DF', 'Real Sociedad', NULL, 26, 1.75, 72, NULL, NULL),
	(241, NULL, 'Omar Alderete', 'DF', 'Getafe', NULL, 27, 1.87, 77, NULL, NULL),
	(242, 4, 'Alejandro Catena', 'DF', 'Osasuna', NULL, 29, 1.94, NULL, NULL, NULL),
	(243, 6, 'Óliver Torres', 'MC', 'Sevilla', NULL, 29, 1.78, 70, NULL, NULL),
	(244, NULL, 'Pablo Ibáñez', 'MC', 'Osasuna', NULL, 26, 1.79, NULL, NULL, NULL),
	(245, 6, 'Beñat Turrientes', 'MC', 'Real Sociedad', NULL, 22, 1.79, NULL, NULL, NULL),
	(246, 18, 'Marc Cardona', 'DL', 'Las Palmas', NULL, 28, 1.82, 68, NULL, NULL),
	(247, 18, 'Toni Lato', 'DF', 'Mallorca', NULL, 26, 1.73, 64, NULL, NULL),
	(248, NULL, 'Djibril Sow', 'MC', 'Sevilla', NULL, 27, 1.84, 77, NULL, NULL),
	(249, 14, 'Dodi Lukébakio', 'DL', 'Sevilla', NULL, 26, 1.87, 77, NULL, NULL),
	(250, NULL, 'Assane Diao', 'MC', 'Betis', NULL, 18, 1.85, NULL, NULL, NULL),
	(251, NULL, 'Fran García', 'DF', 'Real Madrid', NULL, 24, 1.7, NULL, NULL, NULL),
	(252, 14, 'Boubakary Soumaré', 'MC', 'Sevilla', NULL, 25, 1.88, NULL, NULL, NULL),
	(253, 3, 'Pau Cubarsi', 'DF', 'Barcelona', NULL, 17, 1.84, 76, NULL, NULL),
	(254, NULL, 'Kike Salas', 'DF', 'Sevilla', NULL, 22, 1.86, NULL, NULL, NULL),
	(255, 1, 'Renato Tapia', 'MC', 'Celta de Vigo', NULL, 28, 1.85, 78, NULL, NULL),
	(256, 16, 'Aridane Hernández', 'DF', 'Rayo Vallecano', NULL, 35, 1.86, 77, NULL, NULL),
	(257, NULL, 'Juanlu Sánchez', 'DF', 'Sevilla', NULL, 20, 1.86, NULL, NULL, NULL),
	(258, NULL, 'Valery Fernández', 'MC', 'Girona', NULL, 24, 1.79, NULL, NULL, NULL),
	(259, NULL, 'Iván Alejo', 'MC', 'Cádiz', NULL, 29, 1.84, 77, NULL, NULL),
	(260, NULL, 'Alberto Moreno', 'DF', 'Villarreal', NULL, 31, 1.71, 65, NULL, NULL),
	(261, 6, 'Darwin Machís', 'DL', 'Cádiz', NULL, 31, 1.74, 70, NULL, NULL),
	(262, 8, 'Kike Pérez', 'MC', 'Rayo Vallecano', NULL, 27, 1.84, NULL, NULL, NULL),
	(263, NULL, 'Carles Aleñá', 'MC', 'Getafe', NULL, 26, 1.8, 73, NULL, NULL),
	(264, NULL, 'Iddrisu Baba', 'MC', 'Almería', NULL, 28, 1.82, NULL, NULL, NULL),
	(265, 9, 'Marc Pubill', 'DF', 'Almería', NULL, 20, 1.9, NULL, NULL, NULL),
	(266, 10, 'Alejandro Balde', 'DF', 'Barcelona', NULL, 20, 1.75, NULL, NULL, NULL),
	(267, NULL, 'Abde Rebbach', 'MC', 'Alavés', NULL, 25, 1.76, NULL, NULL, NULL),
	(268, NULL, 'Arsen Zakharyan', 'MC', 'Real Sociedad', 1, 20, 1.83, NULL, NULL, NULL),
	(269, 13, 'Lucas Boyé', 'DL', 'Granada', NULL, 28, 1.83, 81, NULL, NULL),
	(270, 16, 'Rubén Sobrino', 'MC', 'Cádiz', NULL, 32, 1.85, 73, NULL, NULL),
	(271, 18, 'Isaac Romero', 'DL', 'Sevilla', NULL, 23, 1.84, NULL, NULL, NULL),
	(272, NULL, 'Mouctar Diakhaby', 'DF', 'Valencia', NULL, 27, 1.92, 74, NULL, NULL),
	(273, NULL, 'Carlos Benavídez', 'MC', 'Alavés', NULL, 25, 1.85, 76, NULL, NULL),
	(274, NULL, 'Maxi Gómez', 'DL', 'Cádiz', NULL, 27, 1.86, 70, NULL, NULL),
	(275, NULL, 'Nemanja Gudelj', 'DF', 'Sevilla', NULL, 32, 1.87, 73, NULL, NULL),
	(276, 11, 'Raúl de Tomás', 'DL', 'Rayo Vallecano', NULL, 29, 1.81, 74, NULL, NULL),
	(277, 12, 'Juan Foyth', 'DF', 'Villarreal', NULL, 26, 1.87, 77, NULL, NULL),
	(278, 14, 'Juan Cruz', 'DF', 'Osasuna', NULL, 31, 1.8, NULL, NULL, NULL),
	(279, NULL, 'Omar Mascarell', 'MC', 'Mallorca', NULL, 31, 1.81, 74, NULL, NULL),
	(280, NULL, 'Jaume Costa', 'DF', 'Mallorca', NULL, 36, 1.71, 62, NULL, NULL),
	(281, NULL, 'Juan Miranda', 'DF', 'Betis', NULL, 24, 1.85, 79, NULL, NULL),
	(282, 5, 'Jesús Navas', 'DF', 'Sevilla', NULL, 38, 1.7, 60, NULL, NULL),
	(283, 10, 'Ezequiel Ávila', 'DL', 'Betis', NULL, 30, 1.71, 81, NULL, NULL),
	(284, NULL, 'Oriol Romeu', 'MC', 'Barcelona', NULL, 32, 1.82, 83, NULL, NULL),
	(285, NULL, 'Gonzalo Melero', 'MC', 'Almería', NULL, 30, 1.83, 77, NULL, NULL),
	(286, 18, 'Johnny Cardoso', 'MC', 'Betis', NULL, 22, 1.82, NULL, NULL, NULL),
	(287, NULL, 'Kieran Tierney', 'DF', 'Real Sociedad', NULL, 26, 1.78, 70, NULL, NULL),
	(288, 10, 'Ferland Mendy', 'DF', 'Real Madrid', NULL, 28, 1.78, 73, NULL, NULL),
	(289, NULL, 'Íñigo Martínez', 'DF', 'Barcelona', NULL, 32, 1.81, 77, NULL, NULL),
	(290, NULL, 'Ianis Hagi', 'MC', 'Alavés', NULL, 25, 1.8, 60, NULL, NULL),
	(291, NULL, 'José Arnaiz', 'DL', 'Osasuna', NULL, 28, 1.75, 70, NULL, NULL),
	(292, NULL, 'William Carvalho', 'MC', 'Betis', NULL, 31, 1.87, 83, NULL, NULL),
	(293, 7, 'José Giménez', 'DF', 'Atlético de Madrid', NULL, 29, 1.85, 77, NULL, NULL),
	(294, 2, 'César Azpilicueta', 'DF', 'Atlético de Madrid', NULL, 34, 1.78, 78, NULL, NULL),
	(295, 10, 'Stefan Savić', 'DF', 'Atlético de Madrid', NULL, 33, 1.86, 80, NULL, NULL),
	(296, NULL, 'Roman Yaremchuk', 'DL', 'Valencia', NULL, 28, 1.91, 74, NULL, NULL),
	(297, NULL, 'Pablo Torre', 'MC', 'Girona', NULL, 20, 1.7, NULL, NULL, NULL),
	(298, 10, 'Jon Pacheco', 'DF', 'Real Sociedad', NULL, 23, 1.84, NULL, NULL, NULL),
	(299, NULL, 'Luis Suárez', 'DL', 'Almería', NULL, 26, 1.85, NULL, NULL, NULL),
	(300, NULL, 'Kepa Arrizabalaga', 'PT', 'Real Madrid', NULL, 29, 1.88, 84, NULL, NULL),
	(301, NULL, 'Kiko Femenía', 'DF', 'Villarreal', NULL, 33, 1.8, 61, NULL, NULL),
	(302, 2, 'Yeray Álvarez', 'DF', 'Athletic Club', NULL, 29, 1.83, 78, NULL, NULL),
	(303, 7, ' Chumi', 'DF', 'Almería', NULL, 25, 1.86, NULL, NULL, NULL),
	(304, NULL, 'Óscar Rodríguez', 'MC', 'Getafe', NULL, 25, 1.74, 68, NULL, NULL),
	(305, 4, 'José Ángel Carmona', 'DF', 'Getafe', NULL, 22, 1.83, NULL, NULL, NULL),
	(306, 11, 'Óscar Melendo', 'MC', 'Granada', NULL, 26, 1.67, 63, NULL, NULL),
	(307, 3, 'Augusto Batalla', 'PT', 'Granada', NULL, 27, 1.86, 80, NULL, NULL),
	(308, NULL, 'Abdul Mumin', 'DF', 'Rayo Vallecano', NULL, 25, 1.88, NULL, NULL, NULL),
	(309, 18, 'David Alaba', 'DF', 'Real Madrid', NULL, 31, 1.8, 76, NULL, NULL),
	(310, NULL, 'Carlos Dominguez', 'DF', 'Celta de Vigo', NULL, 23, 1.87, NULL, NULL, NULL),
	(311, NULL, ' Pejiño', 'MC', 'Las Palmas', NULL, 27, 1.77, NULL, NULL, NULL),
	(312, NULL, 'Arnau Martínez', 'DF', 'Girona', NULL, 20, 1.81, NULL, NULL, NULL),
	(313, NULL, 'Álex Fernández', 'MC', 'Cádiz', NULL, 31, 1.83, 74, NULL, NULL),
	(314, 9, 'Sergi Roberto', 'DF', 'Barcelona', NULL, 32, 1.78, 68, NULL, NULL),
	(315, 6, 'José Copete', 'DF', 'Mallorca', NULL, 24, 1.9, NULL, NULL, NULL),
	(316, NULL, 'Alfonso Pedraza', 'DF', 'Villarreal', NULL, 27, 1.84, 73, NULL, NULL),
	(317, NULL, 'Nahuel Tenaglia', 'DF', 'Alavés', NULL, 28, 1.82, 71, NULL, NULL),
	(318, NULL, 'Abner Vinícius', 'DF', 'Betis', NULL, 23, 1.81, NULL, NULL, NULL),
	(319, NULL, 'Aleksandar Sedlar', 'DF', 'Alavés', NULL, 32, 1.8, 79, NULL, NULL),
	(320, NULL, 'Javi Galán', 'DF', 'Real Sociedad', NULL, 29, 1.72, 70, NULL, NULL),
	(321, NULL, 'Victor Chust', 'DF', 'Cádiz', NULL, 24, 1.82, NULL, NULL, NULL),
	(322, 17, 'Pablo Maffeo', 'DF', 'Mallorca', NULL, 26, 1.73, 68, NULL, NULL),
	(323, NULL, 'José Callejón', 'MC', 'Granada', NULL, 37, 1.78, 73, NULL, NULL),
	(324, NULL, 'Williot Swedberg', 'MC', 'Celta de Vigo', NULL, 20, 1.85, NULL, NULL, NULL),
	(325, NULL, 'Marko Dmitrović', 'PT', 'Sevilla', NULL, 32, 1.94, 94, NULL, NULL),
	(326, 18, 'Marcos Acuña', 'DF', 'Sevilla', NULL, 32, 1.72, 72, NULL, NULL),
	(327, NULL, 'Rominigue Kouamé', 'MC', 'Cádiz', NULL, 27, 1.77, 68, NULL, NULL),
	(328, 17, ' Bebé', 'DL', 'Rayo Vallecano', NULL, 33, 1.9, 78, NULL, NULL),
	(329, NULL, 'Héctor Bellerín', 'DF', 'Betis', NULL, 29, 1.78, 74, NULL, NULL),
	(330, 5, 'Radamel Falcao', 'DL', 'Rayo Vallecano', NULL, 38, 1.77, 72, NULL, NULL),
	(331, NULL, 'Antonio Puertas', 'MC', 'Granada', NULL, 32, 1.83, 72, NULL, NULL),
	(332, NULL, 'Gonçalo Guedes', 'DL', 'Villarreal', NULL, 27, 1.79, 68, NULL, NULL),
	(333, NULL, 'Iñaki Peña', 'PT', 'Barcelona', NULL, 25, 1.85, NULL, NULL, NULL),
	(334, NULL, 'Nabil Fekir', 'MC', 'Betis', NULL, 30, 1.73, 72, NULL, NULL),
	(335, 17, 'Aïssa Mandi', 'DF', 'Villarreal', NULL, 32, 1.86, 78, NULL, NULL),
	(336, NULL, 'Gonzalo Escalante', 'MC', 'Cádiz', NULL, 31, 1.82, 76, NULL, NULL),
	(337, 8, 'Nacho Fernández', 'DF', 'Real Madrid', NULL, 34, 1.8, 75, NULL, NULL),
	(338, 1, 'Pablo Fornals', 'MC', 'Betis', NULL, 28, 1.78, 67, NULL, NULL),
	(339, 2, 'Reinildo Mandava', 'DF', 'Atlético de Madrid', NULL, 30, 1.8, 74, NULL, NULL),
	(340, NULL, 'Miguel Rubio', 'DF', 'Granada', NULL, 26, 1.91, 86, NULL, NULL),
	(341, 17, 'Mihailo Ristić', 'DF', 'Celta de Vigo', NULL, 28, 1.8, 73, NULL, NULL),
	(342, 9, 'Juanmi Jiménez', 'DL', 'Cádiz', NULL, 30, 1.69, 63, NULL, NULL),
	(343, NULL, 'Carlos Vicente', 'DL', 'Alavés', NULL, 24, 1.79, NULL, NULL, NULL),
	(344, 14, 'Erik Lamela', 'MC', 'Sevilla', NULL, 32, 1.83, 80, NULL, NULL),
	(345, NULL, 'Carlos Fernández', 'DL', 'Real Sociedad', NULL, 27, 1.86, 82, NULL, NULL),
	(346, NULL, 'Jesús Vázquez', 'DF', 'Valencia', NULL, 21, 1.82, NULL, NULL, NULL),
	(347, NULL, 'Luis Hernández', 'DF', 'Cádiz', NULL, 34, 1.82, 75, NULL, NULL),
	(348, 13, 'Hugo Sotelo', 'MC', 'Celta de Vigo', NULL, 20, 1.8, NULL, NULL, NULL),
	(349, NULL, 'Iker Muniain', 'MC', 'Athletic Club', NULL, 31, 1.69, 64, NULL, NULL),
	(350, NULL, 'Sokratis Papastathopoulos', 'DF', 'Betis', NULL, 35, 1.85, 85, NULL, NULL),
	(351, NULL, 'Francis Coquelin', 'MC', 'Villarreal', NULL, 32, 1.78, 74, NULL, NULL),
	(352, NULL, 'Dani García', 'MC', 'Athletic Club', NULL, 33, 1.8, 75, NULL, NULL),
	(353, NULL, 'Carlos Dotor', 'MC', 'Celta de Vigo', NULL, 23, 1.8, 68, NULL, NULL),
	(354, NULL, 'Ramón Terrats', 'MC', 'Villarreal', NULL, 23, 1.79, NULL, NULL, NULL),
	(355, NULL, 'Cenk Özkacar', 'DF', 'Valencia', NULL, 23, 1.9, NULL, NULL, NULL),
	(356, 14, ' Juanpe', 'DF', 'Girona', NULL, 32, 1.89, 85, NULL, NULL),
	(357, NULL, 'César Montes', 'DF', 'Almería', NULL, 27, 1.95, 70, NULL, NULL),
	(358, NULL, 'Jorge Herrando', 'DF', 'Osasuna', NULL, 23, 1.92, NULL, NULL, NULL),
	(359, NULL, 'Javi Llabrés', 'DL', 'Mallorca', NULL, 21, 1.74, NULL, NULL, NULL),
	(360, 11, 'Sory Kaba', 'DL', 'Las Palmas', NULL, 28, 1.91, NULL, NULL, NULL),
	(361, NULL, 'Selim Amallah', 'MC', 'Valencia', NULL, 27, 1.87, NULL, NULL, NULL),
	(362, NULL, 'Sergi Guardiola', 'DL', 'Cádiz', NULL, 32, 1.85, 77, NULL, NULL),
	(363, NULL, 'Aritz Elustondo', 'DF', 'Real Sociedad', NULL, 29, 1.78, 72, NULL, NULL),
	(364, NULL, 'Nacho Vidal', 'DF', 'Mallorca', NULL, 29, 1.8, NULL, NULL, NULL),
	(365, NULL, 'André Silva', 'DL', 'Real Sociedad', NULL, 28, 1.85, 79, NULL, NULL),
	(366, NULL, 'Pep Chavarría', 'DF', 'Rayo Vallecano', NULL, 25, 1.74, NULL, NULL, NULL),
	(367, 10, 'Kike Barja', 'MC', 'Osasuna', NULL, 26, 1.78, 69, NULL, NULL),
	(368, NULL, 'Álex Pozo', 'DF', 'Almería', NULL, 25, 1.74, NULL, NULL, NULL),
	(369, NULL, 'Sergi Altimira', 'MC', 'Betis', NULL, 22, 1.88, NULL, NULL, NULL),
	(370, NULL, 'Randy Nteka', 'DL', 'Rayo Vallecano', NULL, 26, 1.9, NULL, NULL, NULL),
	(371, 18, 'Bruno Méndez', 'DF', 'Granada', NULL, 24, 1.84, NULL, NULL, NULL),
	(372, NULL, 'Vitor Roque', 'DL', 'Barcelona', NULL, 19, 1.72, 76, NULL, NULL),
	(373, NULL, 'Carles Pérez', 'MC', 'Celta de Vigo', NULL, 26, 1.72, NULL, NULL, NULL),
	(374, 8, 'Iván Villar', 'PT', 'Celta de Vigo', NULL, 26, 1.83, 76, NULL, NULL),
	(375, NULL, 'Rafa Mir', 'DL', 'Sevilla', NULL, 26, 1.89, 87, NULL, NULL),
	(376, 13, 'Asier Villalibre', 'DL', 'Athletic Club', NULL, 26, 1.83, 80, NULL, NULL),
	(377, 3, 'Facundo Pellistri', 'DL', 'Granada', NULL, 22, 1.74, NULL, NULL, NULL),
	(378, NULL, 'Franco Cervi', 'MC', 'Celta de Vigo', NULL, 29, 1.65, 62, NULL, NULL),
	(379, NULL, 'Raúl Torrente', 'DF', 'Granada', NULL, 22, 1.93, NULL, NULL, NULL),
	(380, 5, 'Claudio Bravo', 'PT', 'Betis', NULL, 40, 1.85, 80, NULL, NULL),
	(381, 18, 'Jon Ander Olasagasti', 'MC', 'Real Sociedad', NULL, 23, 1.69, NULL, NULL, NULL),
	(382, NULL, 'Luka Romero', 'MC', 'Almería', NULL, 19, 1.65, NULL, NULL, NULL),
	(383, 1, 'Aleksandar Radovanovic', 'DF', 'Almería', NULL, 30, 1.89, NULL, NULL, NULL),
	(384, NULL, 'André Almeida', 'MC', 'Valencia', NULL, 23, 1.76, 62, NULL, NULL),
	(385, 4, 'Jordi Martín', 'MC', 'Getafe', NULL, 23, 1.74, NULL, NULL, NULL),
	(386, 12, 'Yéremi Pino', 'DL', 'Villarreal', NULL, 21, 1.72, NULL, NULL, NULL),
	(387, NULL, 'Jorge Meré', 'DF', 'Cádiz', NULL, 26, 1.82, 78, NULL, NULL),
	(388, NULL, 'Kevin Vázquez', 'DF', 'Celta de Vigo', NULL, 31, 1.73, NULL, NULL, NULL),
	(389, 16, 'Raúl García', 'DL', 'Athletic Club', NULL, 37, 1.84, 84, NULL, NULL),
	(390, NULL, 'Miguel Crespo', 'MC', 'Rayo Vallecano', NULL, 27, 1.87, 73, NULL, NULL),
	(391, NULL, 'Eric Bailly', 'DF', 'Villarreal', NULL, 29, 1.87, 77, NULL, NULL),
	(392, NULL, 'Alex Centelles', 'DF', 'Almería', NULL, 24, 1.85, NULL, NULL, NULL),
	(393, NULL, 'Manu Trigueros', 'MC', 'Villarreal', NULL, 32, 1.78, 71, NULL, NULL),
	(394, 3, 'Youssouf Sabaly', 'DF', 'Betis', NULL, 31, 1.74, 70, NULL, NULL),
	(395, NULL, 'Jon Aramburu', 'DF', 'Real Sociedad', NULL, 21, 1.74, 71, NULL, NULL),
	(396, NULL, 'Yerson Mosquera', 'DF', 'Villarreal', NULL, 22, 1.88, NULL, NULL, NULL),
	(397, NULL, 'Mauro Arambarri', 'MC', 'Getafe', NULL, 28, 1.75, 76, NULL, NULL),
	(398, NULL, 'Malcom Adu Ares', 'DL', 'Athletic Club', NULL, 22, 1.83, 183, NULL, NULL),
	(399, NULL, 'Dani Ceballos', 'MC', 'Real Madrid', NULL, 27, 1.79, 65, NULL, NULL),
	(400, NULL, 'Jhon Solís', 'MC', 'Girona', NULL, 19, 1.86, NULL, NULL, NULL),
	(401, NULL, 'Choco Lozano', 'DL', 'Almería', NULL, 30, 1.83, 79, NULL, NULL),
	(402, 6, 'Juanma Herzog', 'DF', 'Las Palmas', NULL, 19, 1.86, NULL, NULL, NULL),
	(403, 18, 'Sheraldo Becker', 'DL', 'Real Sociedad', NULL, 29, 1.8, 75, NULL, NULL),
	(404, NULL, 'Javier Manquillo', 'DF', 'Celta de Vigo', NULL, 29, 1.8, 62, NULL, NULL),
	(405, NULL, 'Marko Milovanovic', 'DL', 'Almería', NULL, 20, 1.96, NULL, NULL, NULL),
	(406, NULL, 'Domingos Duarte', 'DF', 'Getafe', NULL, 29, 1.91, 83, NULL, NULL),
	(407, 1, 'Bertrand Traoré', 'DL', 'Villarreal', NULL, 28, 1.8, 72, NULL, NULL),
	(408, 3, 'Tadeo Allende', 'DL', 'Celta de Vigo', NULL, 25, 1.85, NULL, NULL, NULL),
	(409, NULL, 'Andrei Rațiu', 'DF', 'Rayo Vallecano', NULL, 25, 1.83, NULL, NULL, NULL),
	(410, NULL, ' Jailson', 'MC', 'Celta de Vigo', NULL, 28, 1.87, 74, NULL, NULL),
	(411, NULL, 'Adrià Altimira', 'DF', 'Villarreal', NULL, 22, 1.7, NULL, NULL, NULL),
	(412, 6, 'Yellu Santiago', 'MC', 'Getafe', NULL, 19, 1.92, NULL, NULL, NULL),
	(413, 14, 'Joseph Aidoo', 'DF', 'Celta de Vigo', NULL, 28, 1.84, 80, NULL, NULL),
	(414, NULL, 'Martin Hongla', 'MC', 'Granada', NULL, 26, 1.83, NULL, NULL, NULL),
	(415, NULL, 'Matías Arezo', 'DL', 'Granada', NULL, 21, 1.78, 76, NULL, NULL),
	(416, NULL, 'Brian Ocampo', 'MC', 'Cádiz', NULL, 24, 1.73, 70, NULL, NULL),
	(417, NULL, 'Arda Güler', 'MC', 'Real Madrid', NULL, 19, 1.76, NULL, NULL, NULL),
	(418, NULL, 'Carlos Romero', 'DF', 'Villarreal', NULL, 22, 0, NULL, NULL, NULL),
	(419, NULL, 'Cristian Herrera', 'DL', 'Las Palmas', NULL, 33, 1.89, 85, NULL, NULL),
	(420, NULL, 'Unai García', 'DF', 'Osasuna', NULL, 31, 1.82, 81, NULL, NULL),
	(421, NULL, 'Xeber Alkain', 'MC', 'Alavés', NULL, 26, 1.74, NULL, NULL, NULL),
	(422, NULL, 'Yarek Gasiorowski', 'DF', 'Valencia', NULL, 19, 1.9, NULL, NULL, NULL),
	(423, NULL, 'Imanol García', 'DF', 'Athletic Club', NULL, 23, 1.77, NULL, NULL, NULL),
	(424, NULL, 'Fran Vieites', 'PT', 'Betis', NULL, 24, 1.96, NULL, NULL, NULL),
	(425, 16, 'Ilaix Moriba', 'MC', 'Getafe', NULL, 21, 1.83, NULL, NULL, NULL),
	(426, NULL, 'Peter Federico', 'DL', 'Valencia', NULL, 21, 1.78, NULL, NULL, NULL),
	(427, NULL, 'Aitor Fernández', 'PT', 'Osasuna', NULL, 32, 1.82, 78, NULL, NULL),
	(428, NULL, 'Joseba Zaldua', 'DF', 'Cádiz', NULL, 31, 1.76, 70, NULL, NULL),
	(429, 14, 'Miguel Rodríguez', 'DL', 'Celta de Vigo', NULL, 20, 1.79, NULL, NULL, NULL),
	(430, NULL, 'Marc Guiu', 'DL', 'Barcelona', NULL, 18, 1.87, NULL, NULL, NULL),
	(431, NULL, 'Hector Fort', 'DF', 'Barcelona', 1, 17, 1.85, 77, NULL, NULL),
	(432, NULL, 'Nemanja Radonjić', 'DL', 'Mallorca', NULL, 28, 1.85, 76, NULL, NULL),
	(433, 12, 'Momo Mbaye', 'DF', 'Cádiz', NULL, 25, 1.88, NULL, NULL, NULL),
	(434, NULL, 'Raúl Fernández', 'PT', 'Granada', NULL, 36, 1.96, 88, NULL, NULL),
	(435, NULL, 'Jon Magunazelaia', 'DL', 'Real Sociedad', NULL, 22, 1.8, NULL, NULL, NULL),
	(436, NULL, 'Tanguy Nianzou', 'DF', 'Sevilla', NULL, 21, 1.92, 83, NULL, NULL),
	(437, NULL, 'Alberto Marí', 'DL', 'Valencia', NULL, 22, 1.83, NULL, NULL, NULL),
	(438, NULL, 'Ibrahima Koné', 'DL', 'Almería', NULL, 24, 1.9, NULL, NULL, NULL),
	(439, NULL, 'Siebe Van der Heyden', 'DF', 'Mallorca', NULL, 25, 1.85, NULL, NULL, NULL),
	(440, NULL, 'Adnan Januzaj', 'MC', 'Sevilla', NULL, 29, 1.86, 75, NULL, NULL),
	(441, NULL, 'Marcos Alonso', 'DF', 'Barcelona', NULL, 33, 1.88, 84, NULL, NULL),
	(442, 16, 'Joan Jordan', 'MC', 'Sevilla', NULL, 29, 1.84, 74, NULL, NULL),
	(443, NULL, 'Hugo González', 'MC', 'Valencia', NULL, 21, 1.81, NULL, NULL, NULL),
	(444, NULL, 'Hugo Álvarez', 'MC', 'Celta de Vigo', NULL, 20, 1.76, NULL, NULL, NULL),
	(445, NULL, 'Faitout Maouassa', 'DF', 'Granada', NULL, 25, 1.72, 74, NULL, NULL),
	(446, NULL, 'Mariano Díaz', 'DL', 'Sevilla', NULL, 30, 1.8, 79, NULL, NULL),
	(447, NULL, 'Giuliano Simeone', 'DL', 'Alavés', NULL, 21, 1.78, NULL, NULL, NULL),
	(448, 6, ' Marcão', 'DF', 'Sevilla', NULL, 27, 1.85, 75, NULL, NULL),
	(449, NULL, 'Álvaro Lemos', 'DF', 'Las Palmas', NULL, 30, 1.75, NULL, NULL, NULL),
	(450, NULL, 'Denis Suárez', 'MC', 'Villarreal', NULL, 30, 1.76, 69, NULL, NULL),
	(451, 18, 'Pablo Gozálbez', 'MC', 'Valencia', NULL, 22, 1.7, NULL, NULL, NULL),
	(452, NULL, 'Fabrizio Angileri', 'DF', 'Getafe', NULL, 30, 1.85, 84, NULL, NULL),
	(453, NULL, 'Aiham Ousou', 'DF', 'Cádiz', NULL, 24, 1.86, NULL, NULL, NULL),
	(454, NULL, 'Mikel Jauregizar', 'MC', 'Athletic Club', NULL, 20, 1.77, NULL, NULL, NULL),
	(455, 12, 'Urko González', 'MC', 'Real Sociedad', NULL, 23, 1.89, NULL, NULL, NULL),
	(456, NULL, 'Theo Corbeanu', 'DL', 'Granada', NULL, 21, 1.9, NULL, NULL, NULL),
	(457, 12, 'Fede San Emeterio', 'MC', 'Cádiz', NULL, 27, 1.74, 68, NULL, NULL),
	(458, NULL, 'José Campaña', 'MC', 'Las Palmas', NULL, 30, 1.79, 72, NULL, NULL),
	(459, NULL, 'Álvaro Odriozola', 'DF', 'Real Sociedad', NULL, 28, 1.75, 74, NULL, NULL),
	(460, NULL, 'Kamil Jóźwiak', 'MC', 'Granada', NULL, 25, 1.76, 70, NULL, NULL),
	(461, NULL, 'Bruno Langa', 'DF', 'Almería', NULL, 26, 1.78, NULL, NULL, NULL),
	(462, NULL, 'Omenuke Mfulu', 'MC', 'Las Palmas', NULL, 30, 1.82, 70, NULL, NULL),
	(463, NULL, 'Ricardo Visus', 'DF', 'Betis', NULL, 22, 1.92, NULL, NULL, NULL),
	(464, NULL, 'Arthur Vermeeren', 'MC', 'Atlético de Madrid', NULL, 19, 1.8, NULL, NULL, NULL),
	(465, NULL, 'Jesús Vallejo', 'DF', 'Granada', NULL, 27, 1.84, 74, NULL, NULL),
	(466, 11, 'Víctor Díaz', 'DF', 'Granada', NULL, 35, 1.83, 72, NULL, NULL),
	(467, 4, 'Éder Militão', 'DF', 'Real Madrid', NULL, 26, 1.86, 78, NULL, NULL),
	(468, NULL, 'Diadié Samassékou', 'MC', 'Cádiz', NULL, 28, 1.75, 67, NULL, NULL),
	(469, NULL, 'Alejo Véliz', 'DL', 'Sevilla', NULL, 20, 1.87, 77, NULL, NULL),
	(470, NULL, 'Marc Bartra', 'DF', 'Betis', NULL, 33, 1.83, 73, NULL, NULL),
	(471, NULL, 'Hannibal Mejbri', 'MC', 'Sevilla', NULL, 21, 1.82, NULL, NULL, NULL),
	(472, NULL, 'Diego Hormigo', 'DF', 'Sevilla', NULL, 20, 1.82, NULL, NULL, NULL),
	(473, NULL, 'Antal Yaakobishvili', 'DF', 'Girona', NULL, 19, 1.93, NULL, NULL, NULL),
	(474, NULL, 'Marcos Pena', 'MC', 'Almería', NULL, NULL, NULL, NULL, NULL, NULL),
	(475, NULL, 'Unai Marrero', 'PT', 'Real Sociedad', NULL, 22, 1.87, NULL, NULL, NULL),
	(476, NULL, 'Mario Dominguez', 'MC', 'Valencia', NULL, 20, 1.75, NULL, NULL, NULL),
	(477, NULL, 'Diego Mariño', 'PT', 'Almería', NULL, 33, 1.87, 75, NULL, NULL),
	(478, NULL, 'Pepe Reina', 'PT', 'Villarreal', NULL, 41, 1.88, 92, NULL, NULL),
	(479, NULL, 'Pablo Busto', 'DF', 'Betis', NULL, 18, 1.8, NULL, NULL, NULL),
	(480, 11, 'José Mari', 'MC', 'Cádiz', NULL, 36, 1.81, 75, NULL, NULL),
	(481, NULL, 'Fernando Martínez', 'PT', 'Almería', NULL, 33, 1.85, 79, NULL, NULL),
	(482, 6, 'Kamil Piatkowski', 'DF', 'Granada', NULL, 23, 1.91, NULL, NULL, NULL),
	(483, NULL, 'Cédric Bakambu', 'DL', 'Betis', NULL, 32, 1.82, 73, NULL, NULL),
	(484, NULL, 'Damián Rodríguez', 'MC', 'Celta de Vigo', NULL, NULL, NULL, NULL, NULL, NULL),
	(485, 17, 'Eric Curbelo', 'DF', 'Las Palmas', NULL, 30, 1.81, NULL, NULL, NULL),
	(486, 16, 'Diego Mendez', 'MC', 'Rayo Vallecano', NULL, 20, 1.82, NULL, NULL, NULL),
	(487, NULL, 'Etta Eyong', 'MC', 'Cádiz', NULL, 20, 0, NULL, NULL, NULL),
	(488, 16, 'Gonzalo García', 'DL', 'Real Madrid', NULL, 20, 1.82, NULL, NULL, NULL),
	(489, NULL, 'Nico Paz', 'MC', 'Real Madrid', NULL, 19, 1.85, NULL, NULL, NULL),
	(490, NULL, 'Thomas Lemar', 'MC', 'Atlético de Madrid', NULL, 28, 1.7, 58, NULL, NULL),
	(491, NULL, 'Joaquín Panichelli', 'DL', 'Alavés', NULL, 21, 1.86, 82, NULL, NULL),
	(492, NULL, 'Alberto Dadie', 'DL', 'Real Sociedad', NULL, 21, 1.7, NULL, NULL, NULL),
	(493, 17, 'José Ángel Pozo', 'MC', 'Rayo Vallecano', NULL, 28, 1.7, 60, NULL, NULL),
	(494, NULL, 'Silvi Clúa', 'MC', 'Girona', NULL, 19, 0, NULL, NULL, NULL),
	(495, NULL, 'Víctor Parada', 'DF', 'Alavés', NULL, 21, 1.84, NULL, NULL, NULL),
	(496, NULL, 'Fabio González', 'MC', 'Las Palmas', NULL, 27, 1.76, NULL, NULL, NULL),
	(497, 4, 'Thibaut Courtois', 'PT', 'Real Madrid', NULL, 31, 2, 94, NULL, NULL),
	(498, NULL, 'Marc Martínez', 'PT', 'Granada', NULL, 33, 1.85, 74, NULL, NULL),
	(499, NULL, 'Julen Jon Guerrero', 'MC', 'Alavés', NULL, NULL, NULL, NULL, NULL, NULL),
	(500, 14, 'Julen Agirrezabala', 'PT', 'Athletic Club', NULL, 23, 1.87, NULL, NULL, NULL),
	(501, 14, ' Vitolo', 'MC', 'Atlético de Madrid', NULL, 34, 1.85, 80, NULL, NULL),
	(502, NULL, 'Alberto Flores', 'PT', 'Sevilla', NULL, 20, 1.87, NULL, NULL, NULL),
	(503, NULL, 'Cristian Rivero', 'PT', 'Valencia', NULL, 26, 1.88, NULL, NULL, NULL),
	(504, 12, 'Jesús Owono', 'PT', 'Alavés', NULL, 23, 1.81, 67, NULL, NULL),
	(505, 16, 'Pichu Cuéllar', 'PT', 'Mallorca', NULL, 39, 1.87, 76, NULL, NULL),
	(506, NULL, 'Álvaro Rodríguez', 'DL', 'Real Madrid', NULL, 19, 1.93, NULL, NULL, NULL),
	(507, 18, 'Pablo Marín', 'MC', 'Real Sociedad', NULL, 20, 1.78, NULL, NULL, NULL),
	(508, NULL, 'Adri López', 'PT', 'Granada', NULL, 25, 1.85, NULL, NULL, NULL),
	(509, 16, 'Dominik Greif', 'PT', 'Mallorca', NULL, 26, 1.97, 82, NULL, NULL),
	(510, 11, 'Juan Carlos Martín', 'PT', 'Girona', NULL, 36, 1.87, 81, NULL, NULL),
	(511, NULL, 'Adama Boiro', 'DF', 'Athletic Club', NULL, 21, 1.82, NULL, NULL, NULL),
	(512, NULL, 'Borja García', 'MC', 'Girona', NULL, 33, 1.75, 65, NULL, NULL),
	(513, 18, 'Dani Cárdenas', 'PT', 'Rayo Vallecano', NULL, 26, 1.85, NULL, NULL, NULL),
	(514, 13, 'Daniel Fuzato', 'PT', 'Getafe', NULL, 26, 1.9, NULL, NULL, NULL),
	(515, NULL, 'Horațiu Moldovan', 'PT', 'Atlético de Madrid', NULL, 26, 1.82, NULL, NULL, NULL),
	(516, NULL, 'Jastin García', 'DL', 'Girona', NULL, 20, 1.8, NULL, NULL, NULL),
	(517, 17, 'Jaume Doménech', 'PT', 'Valencia', NULL, 33, 1.86, 73, NULL, NULL),
	(518, NULL, 'Martín Merquelanz', 'MC', 'Real Sociedad', NULL, 28, 1.76, NULL, NULL, NULL),
	(519, 13, 'Martín Pascual', 'DF', 'Rayo Vallecano', NULL, 24, 1.9, NULL, NULL, NULL),
	(520, NULL, 'Martín Tejón', 'MC', 'Valencia', NULL, 19, 1.65, NULL, NULL, NULL),
	(521, NULL, 'Toni Fuidias', 'PT', 'Girona', NULL, 22, 1.95, NULL, NULL, NULL),
	(522, 17, 'Toni Villa', 'MC', 'Girona', NULL, 29, 1.71, 63, NULL, NULL),
	(523, NULL, 'Unai Ropero', 'MC', 'Alavés', NULL, 22, 1.88, NULL, NULL, NULL),
	(524, NULL, 'Daley Sinkgraven', 'DF', 'Las Palmas', NULL, 28, 1.79, 65, NULL, NULL),
	(525, NULL, 'David Gil', 'PT', 'Cádiz', NULL, 30, 1.83, 80, NULL, NULL),
	(526, NULL, 'Benito Ramirez', 'MC', 'Las Palmas', NULL, 28, 1.8, NULL, NULL, NULL),
	(527, NULL, 'Lucien Agoumé', 'MC', 'Sevilla', NULL, 22, 1.85, 80, NULL, NULL),
	(528, NULL, 'Aarón Escandell', 'PT', 'Las Palmas', NULL, 28, 1.88, 73, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.notificaciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_puntos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_puntos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.predicciones_valor_mercado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `predicciones_valor_mercado` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `id_team`, `name`, `rol`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 1, 'Borja', 1, 'admin@admin.com', NULL, '12345', NULL, '2024-04-11 10:47:31', '2024-04-11 10:47:31'),
	(3, 1, 'Grupo6', 0, 'm31_grupo6@outlook.com', NULL, '$2y$12$JIINbw0dB8lyaiAe4QSJeOTVIAHRrUnf5qtWSu36QSJl4QZPkTkOO', NULL, '2024-04-11 10:47:31', '2024-04-11 12:00:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
