/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
