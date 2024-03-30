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
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.equipos: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` (`id_equipo`, `nombre`, `updated_at`, `created_at`) VALUES
	(1, 'Admin', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(2, 'M31-G6-AcMilanesa', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(3, 'M31-G7-DraftKings', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(4, 'M32-G5-BabooManager', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(5, 'M31-G3-CactusPanda', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(6, 'M32-G3-GoalAnalitics', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(7, 'M31-G1-FutX', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(8, 'jluzon', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(9, 'M31-G2-UA2CCC', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(10, 'M32-G9-PREDITECH INSIGHTS', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(11, 'M32-G7-KleinGroup', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(12, 'M32-G8 - Los Capys', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(13, 'M32-G2-dreamx1', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(14, 'M31-G4-DLA', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(15, 'M32-G6_Jammin&#039', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(16, 'M32-G2-xGarcii', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(17, 'M31-G5-REALE', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(18, 'Jafeth Suarez', '2024-03-30 10:47:31', '2024-03-30 10:46:30'),
	(25, 'AlbertoFC', '2024-03-30 10:47:31', '2024-03-30 10:46:30');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadisticas_equipos
CREATE TABLE IF NOT EXISTS `estadisticas_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `media_puntos_jornada` float DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `num_jugadores` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.estadisticas_equipos: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `estadisticas_equipos` DISABLE KEYS */;
INSERT INTO `estadisticas_equipos` (`id`, `id_equipo`, `puntos`, `media_puntos_jornada`, `valor`, `num_jugadores`, `created_at`, `updated_at`) VALUES
	(10, 1, 1044, 49.7, 317.9, 25, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(11, 2, 1011, 48.1, 206.3, 18, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(12, 3, 989, 47.1, 180.6, 21, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(13, 4, 841, 40, 124.5, 16, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(14, 5, 797, 38, 100.6, 13, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(15, 6, 790, 37.6, 110.4, 19, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(16, 7, 781, 37.2, 78.9, 12, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(17, 8, 737, 35.1, 85.9, 14, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(18, 9, 705, 33.6, 249.9, 25, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(19, 10, 700, 33.3, 78.5, 11, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(20, 12, 565, 29.7, 40.3, 15, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(21, 14, 515, 24.5, 48.7, 16, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(22, 16, 475, 29.7, 30.9, 15, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(23, 17, 389, 19.5, 50.5, 15, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(24, 18, 215, 26.9, 43.3, 15, '2024-03-30 10:30:33', '2024-03-30 10:30:33'),
	(27, 9, 9, 9, 9, 9, '2024-03-30 10:30:33', '2024-03-30 10:30:33');
/*!40000 ALTER TABLE `estadisticas_equipos` ENABLE KEYS */;

-- Volcando estructura para tabla draftgeniousiq2.estadisticas_jornadas
CREATE TABLE IF NOT EXISTS `estadisticas_jornadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `jornada` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL,
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_player` (`id_player`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_eqipo` int(11) DEFAULT NULL,
  `nombre` text NOT NULL,
  `posicion` text NOT NULL,
  `equipo` text DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_player`) USING BTREE,
  KEY `id_eqipo` (`id_eqipo`)
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla draftgeniousiq2.jugadores: ~528 rows (aproximadamente)
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` (`id_player`, `id_eqipo`, `nombre`, `posicion`, `equipo`, `edad`, `altura`, `peso`) VALUES
	(1, 9, 'Jude Bellingham', 'MC', 'Real Madrid', 20, 1.88, NULL),
	(2, 5, 'Ante Budimir', 'DL', 'Osasuna', 32, 1.9, 75),
	(3, 7, ' Sávio', 'DL', 'Girona', 19, 1.76, NULL),
	(4, 1, ' Isco', 'MC', 'Betis', 31, 1.76, 74),
	(5, 3, 'Iñaki Williams', 'DL', 'Athletic Club', 29, 1.86, 76),
	(6, 3, 'Borja Mayoral', 'DL', 'Getafe', 26, 1.82, 68),
	(7, 7, 'Gorka Guruzeta', 'DL', 'Athletic Club', 27, 1.88, NULL),
	(8, 1, 'Takefusa Kubo', 'MC', 'Real Sociedad', 22, 1.74, 67),
	(9, 1, 'Kirian Rodríguez', 'MC', 'Las Palmas', 28, 1.8, NULL),
	(10, 3, 'Aleix García', 'MC', 'Girona', 26, 1.73, 61),
	(11, 1, ' Pepelu', 'MC', 'Valencia', 25, 1.85, 73),
	(12, 2, 'Antoine Griezmann', 'DL', 'Atlético de Madrid', 33, 1.76, 71),
	(13, 10, 'Álvaro Valles', 'PT', 'Las Palmas', 26, 1.92, NULL),
	(14, 6, 'Artem Dovbyk', 'DL', 'Girona', 26, 1.89, 76),
	(15, 5, 'Lamine Yamal', 'DL', 'Barcelona', 16, 1.8, NULL),
	(16, 9, 'Fede Valverde', 'MC', 'Real Madrid', 25, 1.81, 67),
	(17, 9, 'İlkay Gündoğan', 'MC', 'Barcelona', 33, 1.8, 80),
	(18, 6, 'Jørgen Strand Larsen', 'DL', 'Celta de Vigo', 24, 1.93, 79),
	(19, 10, 'Gerard Moreno', 'DL', 'Villarreal', 31, 1.8, 75),
	(20, 4, 'Brais Méndez', 'MC', 'Real Sociedad', 27, 1.84, 76),
	(21, 4, 'Hugo Duro', 'DL', 'Valencia', 24, 1.8, NULL),
	(22, 3, 'Martín Zubimendi', 'MC', 'Real Sociedad', 25, 1.8, 74),
	(23, 9, 'Toni Kroos', 'MC', 'Real Madrid', 34, 1.83, 78),
	(24, 1, 'Alexander Sørloth', 'DL', 'Villarreal', 28, 1.94, 90),
	(25, 2, 'Giorgi Mamardashvili', 'PT', 'Valencia', 23, 2, NULL),
	(26, NULL, ' Rodrygo', 'DL', 'Real Madrid', 23, 1.74, 62),
	(27, 3, 'Mason Greenwood', 'DL', 'Getafe', 22, 1.81, NULL),
	(28, 17, 'Unai Simón', 'PT', 'Athletic Club', 26, 1.89, 86),
	(29, 2, 'Robert Lewandowski', 'DL', 'Barcelona', 35, 1.84, 79),
	(30, NULL, 'Luis Rioja', 'MC', 'Alavés', 30, 1.73, NULL),
	(31, 9, 'Álvaro Morata', 'DL', 'Atlético de Madrid', 31, 1.89, 85),
	(32, 16, 'Nemanja Maksimović', 'MC', 'Getafe', 29, 1.84, 75),
	(33, 13, 'Florian Lejeune', 'DF', 'Rayo Vallecano', 32, 1.9, 81),
	(34, 1, 'Vinícius Júnior', 'DL', 'Real Madrid', 23, 1.76, 62),
	(35, 13, 'Sergi Cardona', 'DF', 'Las Palmas', 24, 1.86, NULL),
	(36, 9, 'Óscar Mingueza', 'DF', 'Celta de Vigo', 24, 1.84, NULL),
	(37, 1, 'Dani Carvajal', 'DF', 'Real Madrid', 32, 1.73, 73),
	(38, 9, 'Chris Ramos', 'DL', 'Cádiz', 27, 1.93, NULL),
	(39, 2, 'Viktor Tsygankov', 'MC', 'Girona', 26, 1.78, 70),
	(40, 5, 'Miguel Gutiérrez', 'DF', 'Girona', 22, 1.8, NULL),
	(41, 5, 'Sergio Arribas', 'MC', 'Almería', 22, 1.71, NULL),
	(42, 8, 'Samu Omorodion', 'DL', 'Alavés', 19, 1.93, NULL),
	(43, 1, 'Iago Aspas', 'DL', 'Celta de Vigo', 36, 1.76, 67),
	(44, 2, 'Alex Baena', 'MC', 'Villarreal', 22, 1.74, NULL),
	(45, 2, 'Yan Couto', 'DF', 'Girona', 21, 1.69, NULL),
	(46, 1, 'Filip Jörgensen', 'PT', 'Villarreal', 21, 1.9, NULL),
	(47, 2, 'Marcos Llorente', 'MC', 'Atlético de Madrid', 29, 1.84, 71),
	(48, 8, 'David Soria', 'PT', 'Getafe', 30, 1.92, 85),
	(49, 3, 'Predrag Rajković', 'PT', 'Mallorca', 28, 1.92, 70),
	(50, 11, 'Samuel Lino', 'MC', 'Atlético de Madrid', 24, 1.78, NULL),
	(51, 8, 'Isi Palazón', 'MC', 'Rayo Vallecano', 29, 1.69, 71),
	(52, 18, 'Alex Remiro', 'PT', 'Real Sociedad', 29, 1.91, 80),
	(53, 14, 'Antonio Sivera', 'PT', 'Alavés', 27, 1.84, 75),
	(54, 1, 'Nico Williams', 'MC', 'Athletic Club', 21, 1.8, NULL),
	(55, NULL, 'Álvaro García', 'MC', 'Rayo Vallecano', 31, 1.68, 58),
	(56, 11, 'Jan Oblak', 'PT', 'Atlético de Madrid', 31, 1.89, 84),
	(57, 17, 'Mikel Merino', 'MC', 'Real Sociedad', 27, 1.88, 79),
	(58, 1, 'Mikel Oyarzabal', 'DL', 'Real Sociedad', 26, 1.81, 75),
	(59, 1, 'Brahim Díaz', 'MC', 'Real Madrid', 24, 1.7, 68),
	(60, 3, 'Iván Martín', 'MC', 'Girona', 25, 1.78, NULL),
	(61, 1, 'Daniel Vivian', 'DF', 'Athletic Club', 24, 1.83, NULL),
	(62, NULL, 'Jeremías Ledesma', 'PT', 'Cádiz', 31, 1.86, 85),
	(63, 10, 'Lucas Ocampos', 'DL', 'Sevilla', 29, 1.87, 84),
	(64, 6, 'Paulo Gazzaniga', 'PT', 'Girona', 32, 1.96, 90),
	(65, NULL, 'Stole Dimitrievski', 'PT', 'Rayo Vallecano', 30, 1.88, 81),
	(66, 6, 'Germán Pezzella', 'DF', 'Betis', 32, 1.87, 82),
	(67, NULL, 'Rubén Alcaraz', 'MC', 'Cádiz', 32, 1.8, 76),
	(68, 2, 'Myrto Uzuni', 'DL', 'Granada', 28, 1.78, NULL),
	(69, 1, 'Vedat Muriqi', 'DL', 'Mallorca', 29, 1.94, 92),
	(70, 7, 'Rodrigo De Paul', 'MC', 'Atlético de Madrid', 29, 1.8, 67),
	(71, 6, 'Daley Blind', 'DF', 'Girona', 34, 1.8, 72),
	(72, 9, 'Mika Mármol', 'DF', 'Las Palmas', 22, 1.81, NULL),
	(73, 3, 'Jon Guridi', 'MC', 'Alavés', 29, 1.79, 64),
	(74, 8, 'Iñigo Ruiz De Galarreta', 'MC', 'Athletic Club', 30, 1.74, 64),
	(75, 10, 'Luka Modrić', 'MC', 'Real Madrid', 38, 1.73, 65),
	(76, 11, 'Andoni Gorosabel', 'DF', 'Alavés', 27, 1.74, NULL),
	(77, 16, 'Axel Witsel', 'DF', 'Atlético de Madrid', 35, 1.86, 73),
	(78, 2, 'Antonio Rüdiger', 'DF', 'Real Madrid', 31, 1.91, 85),
	(79, 7, 'Sergio Herrera', 'PT', 'Osasuna', 30, 1.92, 82),
	(80, 12, 'Cristhian Mosquera', 'DF', 'Valencia', 19, 1.88, NULL),
	(81, 9, 'Luís Maximiano', 'PT', 'Almería', 25, 1.9, 74),
	(82, 4, 'Igor Zubeldia', 'DF', 'Real Sociedad', 26, 1.8, 75),
	(83, 12, 'Óscar Valentín', 'MC', 'Rayo Vallecano', 29, 1.77, NULL),
	(84, 6, 'Marc Roca', 'MC', 'Betis', 27, 1.84, 74),
	(85, 8, 'Willian José', 'DL', 'Betis', 32, 1.89, 87),
	(86, 4, 'Diego López', 'DL', 'Valencia', 21, 1.72, NULL),
	(87, 14, 'Unai Núñez', 'DF', 'Celta de Vigo', 27, 1.86, 81),
	(88, 17, 'Álex Berenguer', 'MC', 'Athletic Club', 28, 1.75, 70),
	(89, NULL, 'Javi Muñoz', 'MC', 'Las Palmas', 29, 1.79, 75),
	(90, 8, 'Dani Rodríguez', 'MC', 'Mallorca', 35, 1.77, 71),
	(91, NULL, 'Frenkie De Jong', 'MC', 'Barcelona', 26, 1.8, 70),
	(92, NULL, ' Joselu', 'DL', 'Real Madrid', 34, 1.91, 80),
	(93, NULL, 'Ander Guevara', 'MC', 'Alavés', 26, 1.8, NULL),
	(94, 5, 'Ronald Araújo', 'DF', 'Barcelona', 25, 1.91, 79),
	(95, 4, 'Eduardo Camavinga', 'MC', 'Real Madrid', 21, 1.82, NULL),
	(96, 8, 'Javier Guerra', 'MC', 'Valencia', 20, 1.87, NULL),
	(97, 6, 'Aimar Oroz', 'MC', 'Osasuna', 22, 1.77, NULL),
	(98, 14, 'Yangel Herrera', 'MC', 'Girona', 26, 1.84, 75),
	(99, 2, 'José Luis Gayà', 'DF', 'Valencia', 28, 1.72, 64),
	(100, 2, 'Eric García', 'DF', 'Girona', 23, 1.82, 79),
	(101, 13, 'Oihan Sancet', 'MC', 'Athletic Club', 23, 1.88, NULL),
	(102, 4, 'Cristian Portu', 'MC', 'Girona', 31, 1.67, 70),
	(103, 10, 'Samuel Costa', 'MC', 'Mallorca', 23, 1.83, NULL),
	(104, 8, 'Christian Stuani', 'DL', 'Girona', 37, 1.84, 74),
	(105, 9, 'João Félix', 'DL', 'Barcelona', 24, 1.81, 62),
	(106, 9, 'Aitor Paredes', 'DF', 'Athletic Club', 23, 1.86, NULL),
	(107, NULL, 'Ferran Torres', 'DL', 'Barcelona', 24, 1.85, 77),
	(108, 7, 'Diego Rico', 'DF', 'Getafe', 31, 1.81, 76),
	(109, 4, 'Ayoze Pérez', 'DL', 'Betis', 30, 1.8, 66),
	(110, 3, 'João Cancelo', 'DF', 'Barcelona', 29, 1.82, 74),
	(111, 8, 'Robin Le Normand', 'DF', 'Real Sociedad', 27, 1.87, NULL),
	(112, 2, 'Youssef En Nesyri', 'DL', 'Sevilla', 26, 1.9, 73),
	(113, NULL, ' Koke', 'MC', 'Atlético de Madrid', 32, 1.77, 73),
	(114, 1, 'Yuri Berchiche', 'DF', 'Athletic Club', 34, 1.81, 77),
	(115, 14, 'Ángel Correa', 'DL', 'Atlético de Madrid', 29, 1.71, 67),
	(116, 5, 'Lucas Robertone', 'MC', 'Almería', 27, 1.73, NULL),
	(117, 2, 'Jules Koundé', 'DF', 'Barcelona', 25, 1.8, 70),
	(118, 11, 'Largie Ramazani', 'DL', 'Almería', 23, 1.67, NULL),
	(119, NULL, 'Jesus Areso', 'DF', 'Osasuna', 24, 1.83, NULL),
	(120, NULL, 'Jonathan Bamba', 'DL', 'Celta de Vigo', 28, 1.75, 72),
	(121, 9, 'Fermín López', 'MC', 'Barcelona', 20, 1.76, NULL),
	(122, NULL, 'David García', 'DF', 'Osasuna', 30, 1.85, 72),
	(123, 12, 'Unai López', 'MC', 'Rayo Vallecano', 28, 1.69, 64),
	(124, 1, 'Dani Parejo', 'MC', 'Villarreal', 34, 1.8, 74),
	(125, 14, 'Hamari Traoré', 'DF', 'Real Sociedad', 32, 1.75, 64),
	(126, 18, 'Fran Pérez', 'MC', 'Valencia', 21, 1.76, NULL),
	(127, 9, 'Munir El Haddadi', 'DL', 'Las Palmas', 28, 1.75, 69),
	(128, NULL, 'Abdón Prats', 'DL', 'Mallorca', 31, 1.81, 79),
	(129, NULL, 'Sergi Darder', 'MC', 'Mallorca', 30, 1.8, 71),
	(130, 1, 'David López', 'DF', 'Girona', 34, 1.85, 81),
	(131, 11, 'Antonio Raíllo', 'DF', 'Mallorca', 32, 1.86, 77),
	(132, 12, 'Vicente Guaita', 'PT', 'Celta de Vigo', 37, 1.9, 81),
	(133, 9, 'Óscar De Marcos', 'DF', 'Athletic Club', 34, 1.8, 78),
	(134, 2, 'Aurélien Tchouaméni', 'MC', 'Real Madrid', 24, 1.88, NULL),
	(135, 5, ' Raphinha', 'DL', 'Barcelona', 27, 1.76, 68),
	(136, NULL, 'Alex Suárez', 'DF', 'Las Palmas', 31, 1.79, NULL),
	(137, NULL, 'Gerard Gumbau', 'MC', 'Granada', 29, 1.87, 77),
	(138, 4, 'Andriy Lunin', 'PT', 'Real Madrid', 25, 1.91, 80),
	(139, 4, 'Gastón Álvarez', 'DF', 'Getafe', 24, 1.84, NULL),
	(140, NULL, 'Kike García', 'DL', 'Alavés', 34, 1.86, 79),
	(141, NULL, 'Ignasi Miquel', 'DF', 'Granada', 31, 1.89, 80),
	(142, NULL, 'Ter Stegen', 'PT', 'Barcelona', 31, 1.87, 85),
	(143, NULL, 'Rodrigo Riquelme', 'MC', 'Atlético de Madrid', 23, 1.74, NULL),
	(144, NULL, 'Ander Barrenetxea', 'MC', 'Real Sociedad', 22, 1.74, NULL),
	(145, NULL, 'Javier López', 'DF', 'Alavés', 22, 1.83, NULL),
	(146, 12, 'Gonzalo Villar', 'MC', 'Granada', 26, 1.81, NULL),
	(147, 9, 'Adri Embarba', 'MC', 'Almería', 31, 1.73, 66),
	(148, NULL, 'Mario Hermoso', 'DF', 'Atlético de Madrid', 28, 1.84, 74),
	(149, NULL, 'Cyle Larin', 'DL', 'Mallorca', 28, 1.87, 86),
	(150, NULL, 'Pacha Espino', 'DF', 'Rayo Vallecano', 32, 1.72, 70),
	(151, 18, 'Alberto Moleiro', 'MC', 'Las Palmas', 20, 1.69, NULL),
	(152, 9, 'Carl Starfelt', 'DF', 'Celta de Vigo', 28, 1.85, 80),
	(153, 7, 'Fali Giménez', 'DF', 'Cádiz', 30, 1.86, 72),
	(154, 3, 'Luca de la Torre', 'MC', 'Celta de Vigo', 25, 1.78, 63),
	(155, 3, 'Saúl Coco', 'DF', 'Las Palmas', 25, 1.88, NULL),
	(156, NULL, 'Ricard Sánchez', 'DF', 'Granada', 24, 1.75, NULL),
	(157, NULL, 'Marvin Park', 'DL', 'Las Palmas', 24, 1.77, NULL),
	(158, 12, 'Rafa Marín', 'DF', 'Alavés', 21, 1.9, NULL),
	(159, 17, 'Sergio Ruiz', 'MC', 'Granada', 29, 1.71, NULL),
	(160, NULL, 'Jaime Mata', 'DL', 'Getafe', 35, 1.85, 75),
	(161, NULL, 'Álex Sola', 'MC', 'Alavés', 24, 1.78, NULL),
	(162, 8, 'Iván Balliu', 'DF', 'Rayo Vallecano', 32, 1.75, 68),
	(163, 2, 'Guido Rodríguez', 'MC', 'Betis', 29, 1.85, 80),
	(164, 17, 'Memphis Depay', 'DL', 'Atlético de Madrid', 30, 1.76, 78),
	(165, NULL, 'Rubén Duarte', 'DF', 'Alavés', 28, 1.8, 75),
	(166, 13, 'Enzo Loiodice', 'MC', 'Las Palmas', 23, 1.76, NULL),
	(167, NULL, 'Pablo Barrios', 'MC', 'Atlético de Madrid', 20, 1.81, NULL),
	(168, NULL, 'Jorge Cuenca', 'DF', 'Villarreal', 24, 1.9, NULL),
	(169, NULL, 'Adrià Pedrosa', 'DF', 'Sevilla', 25, 1.76, 69),
	(170, NULL, 'Giovanni González', 'DF', 'Mallorca', 29, 1.75, 70),
	(171, NULL, 'Saúl Ñíguez', 'MC', 'Atlético de Madrid', 29, 1.84, 76),
	(172, 1, ' Sandro', 'DL', 'Las Palmas', 28, 1.75, 71),
	(173, NULL, 'Rui Silva', 'PT', 'Betis', 30, 1.89, 85),
	(174, 16, 'Antonio Sánchez', 'MC', 'Mallorca', 26, 1.79, NULL),
	(175, NULL, 'Étienne Capoue', 'MC', 'Villarreal', 35, 1.87, 80),
	(176, 4, 'Luis Milla', 'MC', 'Getafe', 29, 1.75, NULL),
	(177, NULL, 'Julián Araujo', 'DF', 'Las Palmas', 22, 1.75, 70),
	(178, 13, 'Santi Comesaña', 'MC', 'Villarreal', 27, 1.87, NULL),
	(179, 1, 'Javi Hernández', 'DF', 'Cádiz', 25, 1.81, 72),
	(180, NULL, 'Manu Sánchez', 'DF', 'Celta de Vigo', 23, 1.79, NULL),
	(181, NULL, 'Pathé Ciss', 'MC', 'Rayo Vallecano', 30, 1.83, 71),
	(182, NULL, 'Édgar González', 'DF', 'Almería', 26, 1.93, NULL),
	(183, 5, 'Antonio Blanco', 'MC', 'Alavés', 23, 1.76, NULL),
	(184, NULL, 'Iza Carcelén', 'DF', 'Cádiz', 30, 1.74, 70),
	(185, 9, 'Matija Nastasić', 'DF', 'Mallorca', 30, 1.88, 83),
	(186, 7, 'Léo Baptistão', 'DL', 'Almería', 31, 1.81, 72),
	(187, NULL, 'Dion Lopy', 'MC', 'Almería', 22, 1.86, NULL),
	(188, NULL, ' Pedri', 'MC', 'Barcelona', 21, 1.74, 60),
	(189, 6, 'Lucas Vázquez', 'DF', 'Real Madrid', 32, 1.73, 70),
	(190, NULL, 'Moi Gómez', 'MC', 'Osasuna', 29, 1.74, 65),
	(191, 12, 'José Luis Morales', 'DL', 'Villarreal', 36, 1.8, 70),
	(192, NULL, 'Ilias Akhomach', 'DL', 'Villarreal', 19, 1.75, NULL),
	(193, 9, 'Sergio Ramos', 'DF', 'Sevilla', 37, 1.84, 75),
	(194, NULL, 'Mikel Vesga', 'MC', 'Athletic Club', 30, 1.91, 84),
	(195, NULL, 'Juanmi Latasa', 'DL', 'Getafe', 23, 1.91, NULL),
	(196, 16, 'Dakonam Djené', 'DF', 'Getafe', 32, 1.78, 71),
	(197, NULL, 'Jon Moncayola', 'MC', 'Osasuna', 25, 1.82, 73),
	(198, 3, 'Beñat Prados', 'MC', 'Athletic Club', 23, 1.79, NULL),
	(199, 16, 'Raúl García de Haro', 'DL', 'Osasuna', 23, 1.92, 70),
	(200, 8, 'Carlos Neva', 'DF', 'Granada', 27, 1.74, NULL),
	(201, 11, 'Rubén García', 'MC', 'Osasuna', 30, 1.71, 72),
	(202, 7, ' Suso', 'MC', 'Sevilla', 30, 1.76, 70),
	(203, NULL, 'Nahuel Molina', 'DF', 'Atlético de Madrid', 25, 1.74, 69),
	(204, 13, 'Iker Muñoz', 'MC', 'Osasuna', 21, 1.79, NULL),
	(205, 3, 'Dimitri Foulquier', 'DF', 'Valencia', 31, 1.83, 79),
	(206, NULL, 'Sergio Camello', 'DL', 'Rayo Vallecano', 23, 1.77, NULL),
	(207, 5, 'Máximo Perrone', 'MC', 'Las Palmas', 21, 1.78, NULL),
	(208, NULL, 'Lucas Torró', 'MC', 'Osasuna', 29, 1.9, 77),
	(209, 7, 'Fran Beltrán', 'MC', 'Celta de Vigo', 25, 1.7, 66),
	(210, 6, 'Martin Valjent', 'DF', 'Mallorca', 28, 1.87, 70),
	(211, NULL, 'Umar Sadiq', 'DL', 'Real Sociedad', 27, 1.92, 75),
	(212, 11, 'Manu Morlanes', 'MC', 'Mallorca', 25, 1.78, NULL),
	(213, NULL, ' Gavi', 'MC', 'Barcelona', 19, 1.73, NULL),
	(214, 1, 'Ørjan Nyland', 'PT', 'Sevilla', 33, 1.92, 78),
	(215, NULL, 'Abdelkabir Abqar', 'DF', 'Alavés', 25, 1.88, NULL),
	(216, NULL, 'Thierry Correia', 'DF', 'Valencia', 25, 1.76, NULL),
	(217, 5, 'Óscar Trejo', 'MC', 'Rayo Vallecano', 35, 1.77, 79),
	(218, NULL, 'Jorge de Frutos', 'MC', 'Rayo Vallecano', 27, 1.73, NULL),
	(219, NULL, 'Jonathan Viera', 'MC', 'Almería', 34, 1.71, 65),
	(220, NULL, 'Sergi Canós', 'MC', 'Valencia', 27, 1.73, 75),
	(221, NULL, 'Johan Mojica', 'DF', 'Osasuna', 31, 1.85, 73),
	(222, NULL, 'Raúl Albiol', 'DF', 'Villarreal', 38, 1.9, 82),
	(223, 11, 'Anastasios Douvikas', 'DL', 'Celta de Vigo', 24, 1.84, 78),
	(224, NULL, 'Íñigo Lekue', 'DF', 'Athletic Club', 30, 1.8, 73),
	(225, 2, 'Unai Gómez', 'MC', 'Athletic Club', 20, 1.83, NULL),
	(226, NULL, 'Gabriel Paulista', 'DF', 'Atlético de Madrid', 33, 1.87, 72),
	(227, NULL, 'Juan Iglesias', 'DF', 'Getafe', 25, 1.85, NULL),
	(228, 11, 'Lucas Pires', 'DF', 'Cádiz', 23, 1.82, NULL),
	(229, NULL, 'Aitor Ruibal', 'DF', 'Betis', 28, 1.76, NULL),
	(230, NULL, 'Ander Herrera', 'MC', 'Athletic Club', 34, 1.82, 70),
	(231, 3, 'Chadi Riad', 'DF', 'Betis', 20, 1.86, NULL),
	(232, NULL, 'Loïc Badé', 'DF', 'Sevilla', 23, 1.91, NULL),
	(233, NULL, 'Rubén Peña', 'DF', 'Osasuna', 32, 1.7, 65),
	(234, NULL, 'Andreas Christensen', 'DF', 'Barcelona', 27, 1.88, 78),
	(235, NULL, 'Abde Ezzalzouli', 'DL', 'Betis', 22, 1.77, NULL),
	(236, NULL, 'Roger Martí', 'DL', 'Cádiz', 33, 1.78, 74),
	(237, 3, 'Robert Navarro', 'MC', 'Cádiz', 21, 1.78, NULL),
	(238, 3, 'Hugo Guillamón', 'MC', 'Valencia', 24, 1.78, NULL),
	(239, 7, 'Rodrigo Sanchez', 'MC', 'Betis', 23, 1.75, NULL),
	(240, NULL, 'Aihen Muñoz', 'DF', 'Real Sociedad', 26, 1.75, 72),
	(241, NULL, 'Omar Alderete', 'DF', 'Getafe', 27, 1.87, 77),
	(242, 4, 'Alejandro Catena', 'DF', 'Osasuna', 29, 1.94, NULL),
	(243, 6, 'Óliver Torres', 'MC', 'Sevilla', 29, 1.78, 70),
	(244, NULL, 'Pablo Ibáñez', 'MC', 'Osasuna', 26, 1.79, NULL),
	(245, 6, 'Beñat Turrientes', 'MC', 'Real Sociedad', 22, 1.79, NULL),
	(246, 18, 'Marc Cardona', 'DL', 'Las Palmas', 28, 1.82, 68),
	(247, 18, 'Toni Lato', 'DF', 'Mallorca', 26, 1.73, 64),
	(248, NULL, 'Djibril Sow', 'MC', 'Sevilla', 27, 1.84, 77),
	(249, 14, 'Dodi Lukébakio', 'DL', 'Sevilla', 26, 1.87, 77),
	(250, NULL, 'Assane Diao', 'MC', 'Betis', 18, 1.85, NULL),
	(251, NULL, 'Fran García', 'DF', 'Real Madrid', 24, 1.7, NULL),
	(252, 14, 'Boubakary Soumaré', 'MC', 'Sevilla', 25, 1.88, NULL),
	(253, 3, 'Pau Cubarsi', 'DF', 'Barcelona', 17, 1.84, 76),
	(254, NULL, 'Kike Salas', 'DF', 'Sevilla', 22, 1.86, NULL),
	(255, 1, 'Renato Tapia', 'MC', 'Celta de Vigo', 28, 1.85, 78),
	(256, 16, 'Aridane Hernández', 'DF', 'Rayo Vallecano', 35, 1.86, 77),
	(257, NULL, 'Juanlu Sánchez', 'DF', 'Sevilla', 20, 1.86, NULL),
	(258, NULL, 'Valery Fernández', 'MC', 'Girona', 24, 1.79, NULL),
	(259, NULL, 'Iván Alejo', 'MC', 'Cádiz', 29, 1.84, 77),
	(260, NULL, 'Alberto Moreno', 'DF', 'Villarreal', 31, 1.71, 65),
	(261, 6, 'Darwin Machís', 'DL', 'Cádiz', 31, 1.74, 70),
	(262, 8, 'Kike Pérez', 'MC', 'Rayo Vallecano', 27, 1.84, NULL),
	(263, NULL, 'Carles Aleñá', 'MC', 'Getafe', 26, 1.8, 73),
	(264, NULL, 'Iddrisu Baba', 'MC', 'Almería', 28, 1.82, NULL),
	(265, 9, 'Marc Pubill', 'DF', 'Almería', 20, 1.9, NULL),
	(266, 10, 'Alejandro Balde', 'DF', 'Barcelona', 20, 1.75, NULL),
	(267, NULL, 'Abde Rebbach', 'MC', 'Alavés', 25, 1.76, NULL),
	(268, NULL, 'Arsen Zakharyan', 'MC', 'Real Sociedad', 20, 1.83, NULL),
	(269, 13, 'Lucas Boyé', 'DL', 'Granada', 28, 1.83, 81),
	(270, 16, 'Rubén Sobrino', 'MC', 'Cádiz', 32, 1.85, 73),
	(271, 18, 'Isaac Romero', 'DL', 'Sevilla', 23, 1.84, NULL),
	(272, NULL, 'Mouctar Diakhaby', 'DF', 'Valencia', 27, 1.92, 74),
	(273, NULL, 'Carlos Benavídez', 'MC', 'Alavés', 25, 1.85, 76),
	(274, NULL, 'Maxi Gómez', 'DL', 'Cádiz', 27, 1.86, 70),
	(275, NULL, 'Nemanja Gudelj', 'DF', 'Sevilla', 32, 1.87, 73),
	(276, 11, 'Raúl de Tomás', 'DL', 'Rayo Vallecano', 29, 1.81, 74),
	(277, 12, 'Juan Foyth', 'DF', 'Villarreal', 26, 1.87, 77),
	(278, 14, 'Juan Cruz', 'DF', 'Osasuna', 31, 1.8, NULL),
	(279, NULL, 'Omar Mascarell', 'MC', 'Mallorca', 31, 1.81, 74),
	(280, NULL, 'Jaume Costa', 'DF', 'Mallorca', 36, 1.71, 62),
	(281, NULL, 'Juan Miranda', 'DF', 'Betis', 24, 1.85, 79),
	(282, 5, 'Jesús Navas', 'DF', 'Sevilla', 38, 1.7, 60),
	(283, 10, 'Ezequiel Ávila', 'DL', 'Betis', 30, 1.71, 81),
	(284, NULL, 'Oriol Romeu', 'MC', 'Barcelona', 32, 1.82, 83),
	(285, NULL, 'Gonzalo Melero', 'MC', 'Almería', 30, 1.83, 77),
	(286, 18, 'Johnny Cardoso', 'MC', 'Betis', 22, 1.82, NULL),
	(287, NULL, 'Kieran Tierney', 'DF', 'Real Sociedad', 26, 1.78, 70),
	(288, 10, 'Ferland Mendy', 'DF', 'Real Madrid', 28, 1.78, 73),
	(289, NULL, 'Íñigo Martínez', 'DF', 'Barcelona', 32, 1.81, 77),
	(290, NULL, 'Ianis Hagi', 'MC', 'Alavés', 25, 1.8, 60),
	(291, NULL, 'José Arnaiz', 'DL', 'Osasuna', 28, 1.75, 70),
	(292, NULL, 'William Carvalho', 'MC', 'Betis', 31, 1.87, 83),
	(293, 7, 'José Giménez', 'DF', 'Atlético de Madrid', 29, 1.85, 77),
	(294, 2, 'César Azpilicueta', 'DF', 'Atlético de Madrid', 34, 1.78, 78),
	(295, 10, 'Stefan Savić', 'DF', 'Atlético de Madrid', 33, 1.86, 80),
	(296, NULL, 'Roman Yaremchuk', 'DL', 'Valencia', 28, 1.91, 74),
	(297, NULL, 'Pablo Torre', 'MC', 'Girona', 20, 1.7, NULL),
	(298, 10, 'Jon Pacheco', 'DF', 'Real Sociedad', 23, 1.84, NULL),
	(299, NULL, 'Luis Suárez', 'DL', 'Almería', 26, 1.85, NULL),
	(300, NULL, 'Kepa Arrizabalaga', 'PT', 'Real Madrid', 29, 1.88, 84),
	(301, NULL, 'Kiko Femenía', 'DF', 'Villarreal', 33, 1.8, 61),
	(302, 2, 'Yeray Álvarez', 'DF', 'Athletic Club', 29, 1.83, 78),
	(303, 7, ' Chumi', 'DF', 'Almería', 25, 1.86, NULL),
	(304, NULL, 'Óscar Rodríguez', 'MC', 'Getafe', 25, 1.74, 68),
	(305, 4, 'José Ángel Carmona', 'DF', 'Getafe', 22, 1.83, NULL),
	(306, 11, 'Óscar Melendo', 'MC', 'Granada', 26, 1.67, 63),
	(307, 3, 'Augusto Batalla', 'PT', 'Granada', 27, 1.86, 80),
	(308, NULL, 'Abdul Mumin', 'DF', 'Rayo Vallecano', 25, 1.88, NULL),
	(309, 18, 'David Alaba', 'DF', 'Real Madrid', 31, 1.8, 76),
	(310, NULL, 'Carlos Dominguez', 'DF', 'Celta de Vigo', 23, 1.87, NULL),
	(311, NULL, ' Pejiño', 'MC', 'Las Palmas', 27, 1.77, NULL),
	(312, NULL, 'Arnau Martínez', 'DF', 'Girona', 20, 1.81, NULL),
	(313, NULL, 'Álex Fernández', 'MC', 'Cádiz', 31, 1.83, 74),
	(314, 9, 'Sergi Roberto', 'DF', 'Barcelona', 32, 1.78, 68),
	(315, 6, 'José Copete', 'DF', 'Mallorca', 24, 1.9, NULL),
	(316, NULL, 'Alfonso Pedraza', 'DF', 'Villarreal', 27, 1.84, 73),
	(317, NULL, 'Nahuel Tenaglia', 'DF', 'Alavés', 28, 1.82, 71),
	(318, NULL, 'Abner Vinícius', 'DF', 'Betis', 23, 1.81, NULL),
	(319, NULL, 'Aleksandar Sedlar', 'DF', 'Alavés', 32, 1.8, 79),
	(320, NULL, 'Javi Galán', 'DF', 'Real Sociedad', 29, 1.72, 70),
	(321, NULL, 'Victor Chust', 'DF', 'Cádiz', 24, 1.82, NULL),
	(322, 17, 'Pablo Maffeo', 'DF', 'Mallorca', 26, 1.73, 68),
	(323, NULL, 'José Callejón', 'MC', 'Granada', 37, 1.78, 73),
	(324, NULL, 'Williot Swedberg', 'MC', 'Celta de Vigo', 20, 1.85, NULL),
	(325, NULL, 'Marko Dmitrović', 'PT', 'Sevilla', 32, 1.94, 94),
	(326, 18, 'Marcos Acuña', 'DF', 'Sevilla', 32, 1.72, 72),
	(327, NULL, 'Rominigue Kouamé', 'MC', 'Cádiz', 27, 1.77, 68),
	(328, 17, ' Bebé', 'DL', 'Rayo Vallecano', 33, 1.9, 78),
	(329, NULL, 'Héctor Bellerín', 'DF', 'Betis', 29, 1.78, 74),
	(330, 5, 'Radamel Falcao', 'DL', 'Rayo Vallecano', 38, 1.77, 72),
	(331, NULL, 'Antonio Puertas', 'MC', 'Granada', 32, 1.83, 72),
	(332, NULL, 'Gonçalo Guedes', 'DL', 'Villarreal', 27, 1.79, 68),
	(333, NULL, 'Iñaki Peña', 'PT', 'Barcelona', 25, 1.85, NULL),
	(334, NULL, 'Nabil Fekir', 'MC', 'Betis', 30, 1.73, 72),
	(335, 17, 'Aïssa Mandi', 'DF', 'Villarreal', 32, 1.86, 78),
	(336, NULL, 'Gonzalo Escalante', 'MC', 'Cádiz', 31, 1.82, 76),
	(337, 8, 'Nacho Fernández', 'DF', 'Real Madrid', 34, 1.8, 75),
	(338, 1, 'Pablo Fornals', 'MC', 'Betis', 28, 1.78, 67),
	(339, 2, 'Reinildo Mandava', 'DF', 'Atlético de Madrid', 30, 1.8, 74),
	(340, NULL, 'Miguel Rubio', 'DF', 'Granada', 26, 1.91, 86),
	(341, 17, 'Mihailo Ristić', 'DF', 'Celta de Vigo', 28, 1.8, 73),
	(342, 9, 'Juanmi Jiménez', 'DL', 'Cádiz', 30, 1.69, 63),
	(343, NULL, 'Carlos Vicente', 'DL', 'Alavés', 24, 1.79, NULL),
	(344, 14, 'Erik Lamela', 'MC', 'Sevilla', 32, 1.83, 80),
	(345, NULL, 'Carlos Fernández', 'DL', 'Real Sociedad', 27, 1.86, 82),
	(346, NULL, 'Jesús Vázquez', 'DF', 'Valencia', 21, 1.82, NULL),
	(347, NULL, 'Luis Hernández', 'DF', 'Cádiz', 34, 1.82, 75),
	(348, 13, 'Hugo Sotelo', 'MC', 'Celta de Vigo', 20, 1.8, NULL),
	(349, NULL, 'Iker Muniain', 'MC', 'Athletic Club', 31, 1.69, 64),
	(350, NULL, 'Sokratis Papastathopoulos', 'DF', 'Betis', 35, 1.85, 85),
	(351, NULL, 'Francis Coquelin', 'MC', 'Villarreal', 32, 1.78, 74),
	(352, NULL, 'Dani García', 'MC', 'Athletic Club', 33, 1.8, 75),
	(353, NULL, 'Carlos Dotor', 'MC', 'Celta de Vigo', 23, 1.8, 68),
	(354, NULL, 'Ramón Terrats', 'MC', 'Villarreal', 23, 1.79, NULL),
	(355, NULL, 'Cenk Özkacar', 'DF', 'Valencia', 23, 1.9, NULL),
	(356, 14, ' Juanpe', 'DF', 'Girona', 32, 1.89, 85),
	(357, NULL, 'César Montes', 'DF', 'Almería', 27, 1.95, 70),
	(358, NULL, 'Jorge Herrando', 'DF', 'Osasuna', 23, 1.92, NULL),
	(359, NULL, 'Javi Llabrés', 'DL', 'Mallorca', 21, 1.74, NULL),
	(360, 11, 'Sory Kaba', 'DL', 'Las Palmas', 28, 1.91, NULL),
	(361, NULL, 'Selim Amallah', 'MC', 'Valencia', 27, 1.87, NULL),
	(362, NULL, 'Sergi Guardiola', 'DL', 'Cádiz', 32, 1.85, 77),
	(363, NULL, 'Aritz Elustondo', 'DF', 'Real Sociedad', 29, 1.78, 72),
	(364, NULL, 'Nacho Vidal', 'DF', 'Mallorca', 29, 1.8, NULL),
	(365, NULL, 'André Silva', 'DL', 'Real Sociedad', 28, 1.85, 79),
	(366, NULL, 'Pep Chavarría', 'DF', 'Rayo Vallecano', 25, 1.74, NULL),
	(367, 10, 'Kike Barja', 'MC', 'Osasuna', 26, 1.78, 69),
	(368, NULL, 'Álex Pozo', 'DF', 'Almería', 25, 1.74, NULL),
	(369, NULL, 'Sergi Altimira', 'MC', 'Betis', 22, 1.88, NULL),
	(370, NULL, 'Randy Nteka', 'DL', 'Rayo Vallecano', 26, 1.9, NULL),
	(371, 18, 'Bruno Méndez', 'DF', 'Granada', 24, 1.84, NULL),
	(372, NULL, 'Vitor Roque', 'DL', 'Barcelona', 19, 1.72, 76),
	(373, NULL, 'Carles Pérez', 'MC', 'Celta de Vigo', 26, 1.72, NULL),
	(374, 8, 'Iván Villar', 'PT', 'Celta de Vigo', 26, 1.83, 76),
	(375, NULL, 'Rafa Mir', 'DL', 'Sevilla', 26, 1.89, 87),
	(376, 13, 'Asier Villalibre', 'DL', 'Athletic Club', 26, 1.83, 80),
	(377, 3, 'Facundo Pellistri', 'DL', 'Granada', 22, 1.74, NULL),
	(378, NULL, 'Franco Cervi', 'MC', 'Celta de Vigo', 29, 1.65, 62),
	(379, NULL, 'Raúl Torrente', 'DF', 'Granada', 22, 1.93, NULL),
	(380, 5, 'Claudio Bravo', 'PT', 'Betis', 40, 1.85, 80),
	(381, 18, 'Jon Ander Olasagasti', 'MC', 'Real Sociedad', 23, 1.69, NULL),
	(382, NULL, 'Luka Romero', 'MC', 'Almería', 19, 1.65, NULL),
	(383, 1, 'Aleksandar Radovanovic', 'DF', 'Almería', 30, 1.89, NULL),
	(384, NULL, 'André Almeida', 'MC', 'Valencia', 23, 1.76, 62),
	(385, 4, 'Jordi Martín', 'MC', 'Getafe', 23, 1.74, NULL),
	(386, 12, 'Yéremi Pino', 'DL', 'Villarreal', 21, 1.72, NULL),
	(387, NULL, 'Jorge Meré', 'DF', 'Cádiz', 26, 1.82, 78),
	(388, NULL, 'Kevin Vázquez', 'DF', 'Celta de Vigo', 31, 1.73, NULL),
	(389, 16, 'Raúl García', 'DL', 'Athletic Club', 37, 1.84, 84),
	(390, NULL, 'Miguel Crespo', 'MC', 'Rayo Vallecano', 27, 1.87, 73),
	(391, NULL, 'Eric Bailly', 'DF', 'Villarreal', 29, 1.87, 77),
	(392, NULL, 'Alex Centelles', 'DF', 'Almería', 24, 1.85, NULL),
	(393, NULL, 'Manu Trigueros', 'MC', 'Villarreal', 32, 1.78, 71),
	(394, 3, 'Youssouf Sabaly', 'DF', 'Betis', 31, 1.74, 70),
	(395, NULL, 'Jon Aramburu', 'DF', 'Real Sociedad', 21, 1.74, 71),
	(396, NULL, 'Yerson Mosquera', 'DF', 'Villarreal', 22, 1.88, NULL),
	(397, NULL, 'Mauro Arambarri', 'MC', 'Getafe', 28, 1.75, 76),
	(398, NULL, 'Malcom Adu Ares', 'DL', 'Athletic Club', 22, 1.83, 183),
	(399, NULL, 'Dani Ceballos', 'MC', 'Real Madrid', 27, 1.79, 65),
	(400, NULL, 'Jhon Solís', 'MC', 'Girona', 19, 1.86, NULL),
	(401, NULL, 'Choco Lozano', 'DL', 'Almería', 30, 1.83, 79),
	(402, 6, 'Juanma Herzog', 'DF', 'Las Palmas', 19, 1.86, NULL),
	(403, 18, 'Sheraldo Becker', 'DL', 'Real Sociedad', 29, 1.8, 75),
	(404, NULL, 'Javier Manquillo', 'DF', 'Celta de Vigo', 29, 1.8, 62),
	(405, NULL, 'Marko Milovanovic', 'DL', 'Almería', 20, 1.96, NULL),
	(406, NULL, 'Domingos Duarte', 'DF', 'Getafe', 29, 1.91, 83),
	(407, 1, 'Bertrand Traoré', 'DL', 'Villarreal', 28, 1.8, 72),
	(408, 3, 'Tadeo Allende', 'DL', 'Celta de Vigo', 25, 1.85, NULL),
	(409, NULL, 'Andrei Rațiu', 'DF', 'Rayo Vallecano', 25, 1.83, NULL),
	(410, NULL, ' Jailson', 'MC', 'Celta de Vigo', 28, 1.87, 74),
	(411, NULL, 'Adrià Altimira', 'DF', 'Villarreal', 22, 1.7, NULL),
	(412, 6, 'Yellu Santiago', 'MC', 'Getafe', 19, 1.92, NULL),
	(413, 14, 'Joseph Aidoo', 'DF', 'Celta de Vigo', 28, 1.84, 80),
	(414, NULL, 'Martin Hongla', 'MC', 'Granada', 26, 1.83, NULL),
	(415, NULL, 'Matías Arezo', 'DL', 'Granada', 21, 1.78, 76),
	(416, NULL, 'Brian Ocampo', 'MC', 'Cádiz', 24, 1.73, 70),
	(417, NULL, 'Arda Güler', 'MC', 'Real Madrid', 19, 1.76, NULL),
	(418, NULL, 'Carlos Romero', 'DF', 'Villarreal', 22, 0, NULL),
	(419, NULL, 'Cristian Herrera', 'DL', 'Las Palmas', 33, 1.89, 85),
	(420, NULL, 'Unai García', 'DF', 'Osasuna', 31, 1.82, 81),
	(421, NULL, 'Xeber Alkain', 'MC', 'Alavés', 26, 1.74, NULL),
	(422, NULL, 'Yarek Gasiorowski', 'DF', 'Valencia', 19, 1.9, NULL),
	(423, NULL, 'Imanol García', 'DF', 'Athletic Club', 23, 1.77, NULL),
	(424, NULL, 'Fran Vieites', 'PT', 'Betis', 24, 1.96, NULL),
	(425, 16, 'Ilaix Moriba', 'MC', 'Getafe', 21, 1.83, NULL),
	(426, NULL, 'Peter Federico', 'DL', 'Valencia', 21, 1.78, NULL),
	(427, NULL, 'Aitor Fernández', 'PT', 'Osasuna', 32, 1.82, 78),
	(428, NULL, 'Joseba Zaldua', 'DF', 'Cádiz', 31, 1.76, 70),
	(429, 14, 'Miguel Rodríguez', 'DL', 'Celta de Vigo', 20, 1.79, NULL),
	(430, NULL, 'Marc Guiu', 'DL', 'Barcelona', 18, 1.87, NULL),
	(431, NULL, 'Hector Fort', 'DF', 'Barcelona', 17, 1.85, 77),
	(432, NULL, 'Nemanja Radonjić', 'DL', 'Mallorca', 28, 1.85, 76),
	(433, 12, 'Momo Mbaye', 'DF', 'Cádiz', 25, 1.88, NULL),
	(434, NULL, 'Raúl Fernández', 'PT', 'Granada', 36, 1.96, 88),
	(435, NULL, 'Jon Magunazelaia', 'DL', 'Real Sociedad', 22, 1.8, NULL),
	(436, NULL, 'Tanguy Nianzou', 'DF', 'Sevilla', 21, 1.92, 83),
	(437, NULL, 'Alberto Marí', 'DL', 'Valencia', 22, 1.83, NULL),
	(438, NULL, 'Ibrahima Koné', 'DL', 'Almería', 24, 1.9, NULL),
	(439, NULL, 'Siebe Van der Heyden', 'DF', 'Mallorca', 25, 1.85, NULL),
	(440, NULL, 'Adnan Januzaj', 'MC', 'Sevilla', 29, 1.86, 75),
	(441, NULL, 'Marcos Alonso', 'DF', 'Barcelona', 33, 1.88, 84),
	(442, 16, 'Joan Jordan', 'MC', 'Sevilla', 29, 1.84, 74),
	(443, NULL, 'Hugo González', 'MC', 'Valencia', 21, 1.81, NULL),
	(444, NULL, 'Hugo Álvarez', 'MC', 'Celta de Vigo', 20, 1.76, NULL),
	(445, NULL, 'Faitout Maouassa', 'DF', 'Granada', 25, 1.72, 74),
	(446, NULL, 'Mariano Díaz', 'DL', 'Sevilla', 30, 1.8, 79),
	(447, NULL, 'Giuliano Simeone', 'DL', 'Alavés', 21, 1.78, NULL),
	(448, 6, ' Marcão', 'DF', 'Sevilla', 27, 1.85, 75),
	(449, NULL, 'Álvaro Lemos', 'DF', 'Las Palmas', 30, 1.75, NULL),
	(450, NULL, 'Denis Suárez', 'MC', 'Villarreal', 30, 1.76, 69),
	(451, 18, 'Pablo Gozálbez', 'MC', 'Valencia', 22, 1.7, NULL),
	(452, NULL, 'Fabrizio Angileri', 'DF', 'Getafe', 30, 1.85, 84),
	(453, NULL, 'Aiham Ousou', 'DF', 'Cádiz', 24, 1.86, NULL),
	(454, NULL, 'Mikel Jauregizar', 'MC', 'Athletic Club', 20, 1.77, NULL),
	(455, 12, 'Urko González', 'MC', 'Real Sociedad', 23, 1.89, NULL),
	(456, NULL, 'Theo Corbeanu', 'DL', 'Granada', 21, 1.9, NULL),
	(457, 12, 'Fede San Emeterio', 'MC', 'Cádiz', 27, 1.74, 68),
	(458, NULL, 'José Campaña', 'MC', 'Las Palmas', 30, 1.79, 72),
	(459, NULL, 'Álvaro Odriozola', 'DF', 'Real Sociedad', 28, 1.75, 74),
	(460, NULL, 'Kamil Jóźwiak', 'MC', 'Granada', 25, 1.76, 70),
	(461, NULL, 'Bruno Langa', 'DF', 'Almería', 26, 1.78, NULL),
	(462, NULL, 'Omenuke Mfulu', 'MC', 'Las Palmas', 30, 1.82, 70),
	(463, NULL, 'Ricardo Visus', 'DF', 'Betis', 22, 1.92, NULL),
	(464, NULL, 'Arthur Vermeeren', 'MC', 'Atlético de Madrid', 19, 1.8, NULL),
	(465, NULL, 'Jesús Vallejo', 'DF', 'Granada', 27, 1.84, 74),
	(466, 11, 'Víctor Díaz', 'DF', 'Granada', 35, 1.83, 72),
	(467, 4, 'Éder Militão', 'DF', 'Real Madrid', 26, 1.86, 78),
	(468, NULL, 'Diadié Samassékou', 'MC', 'Cádiz', 28, 1.75, 67),
	(469, NULL, 'Alejo Véliz', 'DL', 'Sevilla', 20, 1.87, 77),
	(470, NULL, 'Marc Bartra', 'DF', 'Betis', 33, 1.83, 73),
	(471, NULL, 'Hannibal Mejbri', 'MC', 'Sevilla', 21, 1.82, NULL),
	(472, NULL, 'Diego Hormigo', 'DF', 'Sevilla', 20, 1.82, NULL),
	(473, NULL, 'Antal Yaakobishvili', 'DF', 'Girona', 19, 1.93, NULL),
	(474, NULL, 'Marcos Pena', 'MC', 'Almería', NULL, NULL, NULL),
	(475, NULL, 'Unai Marrero', 'PT', 'Real Sociedad', 22, 1.87, NULL),
	(476, NULL, 'Mario Dominguez', 'MC', 'Valencia', 20, 1.75, NULL),
	(477, NULL, 'Diego Mariño', 'PT', 'Almería', 33, 1.87, 75),
	(478, NULL, 'Pepe Reina', 'PT', 'Villarreal', 41, 1.88, 92),
	(479, NULL, 'Pablo Busto', 'DF', 'Betis', 18, 1.8, NULL),
	(480, 11, 'José Mari', 'MC', 'Cádiz', 36, 1.81, 75),
	(481, NULL, 'Fernando Martínez', 'PT', 'Almería', 33, 1.85, 79),
	(482, 6, 'Kamil Piatkowski', 'DF', 'Granada', 23, 1.91, NULL),
	(483, NULL, 'Cédric Bakambu', 'DL', 'Betis', 32, 1.82, 73),
	(484, NULL, 'Damián Rodríguez', 'MC', 'Celta de Vigo', NULL, NULL, NULL),
	(485, 17, 'Eric Curbelo', 'DF', 'Las Palmas', 30, 1.81, NULL),
	(486, 16, 'Diego Mendez', 'MC', 'Rayo Vallecano', 20, 1.82, NULL),
	(487, NULL, 'Etta Eyong', 'MC', 'Cádiz', 20, 0, NULL),
	(488, 16, 'Gonzalo García', 'DL', 'Real Madrid', 20, 1.82, NULL),
	(489, NULL, 'Nico Paz', 'MC', 'Real Madrid', 19, 1.85, NULL),
	(490, NULL, 'Thomas Lemar', 'MC', 'Atlético de Madrid', 28, 1.7, 58),
	(491, NULL, 'Joaquín Panichelli', 'DL', 'Alavés', 21, 1.86, 82),
	(492, NULL, 'Alberto Dadie', 'DL', 'Real Sociedad', 21, 1.7, NULL),
	(493, 17, 'José Ángel Pozo', 'MC', 'Rayo Vallecano', 28, 1.7, 60),
	(494, NULL, 'Silvi Clúa', 'MC', 'Girona', 19, 0, NULL),
	(495, NULL, 'Víctor Parada', 'DF', 'Alavés', 21, 1.84, NULL),
	(496, NULL, 'Fabio González', 'MC', 'Las Palmas', 27, 1.76, NULL),
	(497, 4, 'Thibaut Courtois', 'PT', 'Real Madrid', 31, 2, 94),
	(498, NULL, 'Marc Martínez', 'PT', 'Granada', 33, 1.85, 74),
	(499, NULL, 'Julen Jon Guerrero', 'MC', 'Alavés', NULL, NULL, NULL),
	(500, 14, 'Julen Agirrezabala', 'PT', 'Athletic Club', 23, 1.87, NULL),
	(501, 14, ' Vitolo', 'MC', 'Atlético de Madrid', 34, 1.85, 80),
	(502, NULL, 'Alberto Flores', 'PT', 'Sevilla', 20, 1.87, NULL),
	(503, NULL, 'Cristian Rivero', 'PT', 'Valencia', 26, 1.88, NULL),
	(504, 12, 'Jesús Owono', 'PT', 'Alavés', 23, 1.81, 67),
	(505, 16, 'Pichu Cuéllar', 'PT', 'Mallorca', 39, 1.87, 76),
	(506, NULL, 'Álvaro Rodríguez', 'DL', 'Real Madrid', 19, 1.93, NULL),
	(507, 18, 'Pablo Marín', 'MC', 'Real Sociedad', 20, 1.78, NULL),
	(508, NULL, 'Adri López', 'PT', 'Granada', 25, 1.85, NULL),
	(509, 16, 'Dominik Greif', 'PT', 'Mallorca', 26, 1.97, 82),
	(510, 11, 'Juan Carlos Martín', 'PT', 'Girona', 36, 1.87, 81),
	(511, NULL, 'Adama Boiro', 'DF', 'Athletic Club', 21, 1.82, NULL),
	(512, NULL, 'Borja García', 'MC', 'Girona', 33, 1.75, 65),
	(513, 18, 'Dani Cárdenas', 'PT', 'Rayo Vallecano', 26, 1.85, NULL),
	(514, 13, 'Daniel Fuzato', 'PT', 'Getafe', 26, 1.9, NULL),
	(515, NULL, 'Horațiu Moldovan', 'PT', 'Atlético de Madrid', 26, 1.82, NULL),
	(516, NULL, 'Jastin García', 'DL', 'Girona', 20, 1.8, NULL),
	(517, 17, 'Jaume Doménech', 'PT', 'Valencia', 33, 1.86, 73),
	(518, NULL, 'Martín Merquelanz', 'MC', 'Real Sociedad', 28, 1.76, NULL),
	(519, 13, 'Martín Pascual', 'DF', 'Rayo Vallecano', 24, 1.9, NULL),
	(520, NULL, 'Martín Tejón', 'MC', 'Valencia', 19, 1.65, NULL),
	(521, NULL, 'Toni Fuidias', 'PT', 'Girona', 22, 1.95, NULL),
	(522, 17, 'Toni Villa', 'MC', 'Girona', 29, 1.71, 63),
	(523, NULL, 'Unai Ropero', 'MC', 'Alavés', 22, 1.88, NULL),
	(524, NULL, 'Daley Sinkgraven', 'DF', 'Las Palmas', 28, 1.79, 65),
	(525, NULL, 'David Gil', 'PT', 'Cádiz', 30, 1.83, 80),
	(526, NULL, 'Benito Ramirez', 'MC', 'Las Palmas', 28, 1.8, NULL),
	(527, NULL, 'Lucien Agoumé', 'MC', 'Sevilla', 22, 1.85, 80),
	(528, NULL, 'Aarón Escandell', 'PT', 'Las Palmas', 28, 1.88, 73);
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
  `rol` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id_team` (`id_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla draftgeniousiq2.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
