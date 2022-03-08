CREATE TABLE IF NOT EXISTS `player_parking_vehicles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizenname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel` int(15) NOT NULL DEFAULT 0,
  `engine` int(15) NOT NULL DEFAULT 0,
  `body` int(15) NOT NULL DEFAULT 0,
  `oil` int(15) NOT NULL DEFAULT 0,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  `cost` int(10) NOT NULL DEFAULT 0,
  `parktime` int(10) NOT NULL DEFAULT 0,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `player_parking_vips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizenname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


/*NOT IN USE YET, YOU DONT HAVE TO ADD THIS*/
CREATE TABLE IF NOT EXISTS `player_parking_reserved` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parktype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `markcoords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
