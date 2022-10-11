/*
 Navicat Premium Data Transfer

 Source Server         : DATABASE
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : laravel_jwt

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 11/10/2022 15:35:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_12_000000_create_users_api_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for userapi
-- ----------------------------
DROP TABLE IF EXISTS `userapi`;
CREATE TABLE `userapi`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userapi_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userapi
-- ----------------------------
INSERT INTO `userapi` VALUES (1, 'Ciara Wiza', 'hehe@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S3xEcrnJmR', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (2, 'Cordelia Gibson', 'feil.roger@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'quVxxrmpCl', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (3, 'Leonardo O\'Connell', 'xwelch@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rKlFIOr9UQ', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (4, 'Miss Shanie Volkman DVM', 'francis.stracke@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zefL6jEDGh', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (5, 'Mrs. Rebekah Cremin IV', 'chelsea.simonis@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LdwkBR428g', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (6, 'Ms. Sydnee Conroy', 'hilpert.elinore@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TTVdeIhAFE', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (7, 'Beaulah Miller DDS', 'cleora08@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OdJDB2HA21', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (8, 'Dr. Walton Runte', 'jacky29@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g1Or5yzpJ7', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (9, 'Prof. Albert Rutherford', 'carlotta.runte@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KSGjgTd3RP', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (10, 'Ignacio Funk I', 'omann@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LBLioq2kTN', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `userapi` VALUES (11, 'Chester Frami', 'jillian13@example.net', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DSLvOnijjR', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (12, 'Leann Wilkinson', 'conn.dion@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hQmacUipDu', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (13, 'Maurice Conn', 'jairo.christiansen@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '18waumMjWV', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (14, 'Rosario Dibbert II', 'lonny.rath@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v9p2AdBh1S', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (15, 'Dr. Lourdes Gutkowski', 'genevieve71@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iKIeAOpXCh', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (16, 'Gladyce Huel III', 'candace97@example.net', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mKVDuMQq4k', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (17, 'Doris Beatty', 'gislason.cathryn@example.org', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AyXR8OzIHj', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (18, 'Mrs. Ericka Kris II', 'tracey08@example.org', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1SPIkifiPA', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (19, 'Selina Mann', 'louie79@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dScaVYpMMx', '2022-10-11 07:16:54', '2022-10-11 07:16:54');
INSERT INTO `userapi` VALUES (20, 'Ms. Clarissa Haley V', 'kayden11@example.com', '2022-10-11 07:16:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h4A5lTv5hM', '2022-10-11 07:16:54', '2022-10-11 07:16:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ettie Greenholt', 'dalton.konopelski@example.com', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2aPK6k77IR', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (2, 'Cesar Dibbert', 'web@example.net', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xmGRBQOlbl', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (3, 'Mrs. Maureen Legros', 'loma37@example.net', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dng3OfFrau', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (4, 'Mr. Bernardo White', 'ernestina20@example.org', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YGcIrAPZA7', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (5, 'Erika Glover', 'jessyca89@example.net', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2hweALZ1Lg', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (6, 'Mckenzie Casper', 'haley.verna@example.net', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SqpX0lc06L', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (7, 'Prof. Janis Heidenreich', 'conroy.clemens@example.com', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NmCpJue33', '2022-10-11 04:20:19', '2022-10-11 04:20:19');
INSERT INTO `users` VALUES (8, 'Robert Cormier', 'giles05@example.com', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5c8tb16akx', '2022-10-11 04:20:20', '2022-10-11 04:20:20');
INSERT INTO `users` VALUES (9, 'Mr. Nathanael Prohaska', 'herman.swift@example.com', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gA7WaEiYTl', '2022-10-11 04:20:20', '2022-10-11 04:20:20');
INSERT INTO `users` VALUES (10, 'Mariam Mills', 'zwalter@example.org', '2022-10-11 04:20:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8NllfCpFcU', '2022-10-11 04:20:20', '2022-10-11 04:20:20');
INSERT INTO `users` VALUES (11, 'Test User', 'test@example.com', '2022-10-11 04:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GrZBV7AclT', '2022-10-11 04:20:20', '2022-10-11 04:20:20');
INSERT INTO `users` VALUES (12, 'Kali Shields', 'shannon.nader@example.net', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mNyji63U06', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (13, 'Rosa Block', 'blick.irwin@example.net', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tUAMcj7m00', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (14, 'Maia Lynch', 'fannie01@example.com', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gNrnmElMsc', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (15, 'Mrs. Katlynn Erdman', 'wbruen@example.net', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kQGRBUn7s8', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (16, 'William Walter', 'lina.wintheiser@example.net', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xVa2hZH3kX', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (17, 'Ezekiel Fay', 'zhettinger@example.org', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P19zV2meJa', '2022-10-11 07:15:53', '2022-10-11 07:15:53');
INSERT INTO `users` VALUES (18, 'Ilene McGlynn', 'balistreri.jaydon@example.com', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4dGupH0Mkx', '2022-10-11 07:15:54', '2022-10-11 07:15:54');
INSERT INTO `users` VALUES (19, 'Cassidy Barrows III', 'mkub@example.com', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JIapWQMYre', '2022-10-11 07:15:54', '2022-10-11 07:15:54');
INSERT INTO `users` VALUES (20, 'Hiram Littel IV', 'pouros.mikayla@example.org', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '86ILlYDH5V', '2022-10-11 07:15:54', '2022-10-11 07:15:54');
INSERT INTO `users` VALUES (21, 'Danial Boehm', 'wrippin@example.com', '2022-10-11 07:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D4hdQ9VkMI', '2022-10-11 07:15:54', '2022-10-11 07:15:54');
INSERT INTO `users` VALUES (22, 'Ms. Eve Kautzer', 'dstrosin@example.com', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WCoJHp2btg', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (23, 'Constantin Halvorson', 'rodolfo74@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UUeiMH2aKf', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (24, 'Keshawn Gusikowski Jr.', 'hahn.calista@example.net', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WOMIXQNaKc', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (25, 'Dr. Torrance Runolfsson I', 'ovolkman@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eEE8ezgud8', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (26, 'Mrs. Karianne Gusikowski', 'otto.langworth@example.net', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F1fLC8dqHV', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (27, 'Patsy Swift', 'karlie.murazik@example.net', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FGVA9MqYgV', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (28, 'Mikayla Hermann V', 'alfonzo16@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xq3pAePwUl', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (29, 'Patrick Bauch', 'fhammes@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VGUyCxHCsL', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (30, 'Zack Kerluke', 'flatley.jarrett@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DqY5yIlEWR', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (31, 'Clemens Smitham I', 'adella.hirthe@example.org', '2022-10-11 07:16:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ldkpCIFXbH', '2022-10-11 07:16:13', '2022-10-11 07:16:13');
INSERT INTO `users` VALUES (32, 'Leora Wolff IV', 'timmy84@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E7nWWV63Af', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (33, 'Mrs. Paula Senger Sr.', 'nya.reichel@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWAxgmQVSQ', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (34, 'Marcelo Murray', 'fgreenfelder@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SGgWytOKNW', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (35, 'Reece Goldner', 'madyson.pouros@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DYgvl2tCNO', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (36, 'Ozella Thiel', 'michaela.durgan@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YM76BBHSD6', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (37, 'Noble Harris', 'morar.monica@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bqmRoBFW5a', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (38, 'Adelle Schumm', 'friedrich38@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KY3ZII8Y6L', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (39, 'Abel Kozey V', 'jovani16@example.com', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mXUsCm8wTn', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (40, 'Cedrick Gutkowski', 'virginia.ziemann@example.net', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nbl9IKfKCb', '2022-10-11 07:16:28', '2022-10-11 07:16:28');
INSERT INTO `users` VALUES (41, 'Doris Botsford', 'zemlak.keagan@example.org', '2022-10-11 07:16:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rdeCnbBHuc', '2022-10-11 07:16:28', '2022-10-11 07:16:28');

SET FOREIGN_KEY_CHECKS = 1;
