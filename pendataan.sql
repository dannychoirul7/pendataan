/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : pendataan

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 19/07/2023 15:22:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `join_merek_barang` int NOT NULL,
  `join_jenis_barang` int NOT NULL,
  `nomor_serial_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_barang` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_opd` int NOT NULL,
  `koordinat_barang` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `detail_lokasi_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_masuk` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `tanggal_update` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `keterangan_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `join_user` int NOT NULL,
  `join_update` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE,
  INDEX `nama`(`join_user`) USING BTREE,
  INDEX `jenis_barang`(`join_jenis_barang`) USING BTREE,
  INDEX `merek_barang`(`join_merek_barang`) USING BTREE,
  INDEX `opd`(`join_opd`) USING BTREE,
  INDEX `update`(`join_update`) USING BTREE,
  CONSTRAINT `jenis_barang` FOREIGN KEY (`join_jenis_barang`) REFERENCES `jenis_barang` (`id_jenis_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `merek_barang` FOREIGN KEY (`join_merek_barang`) REFERENCES `merek_barang` (`id_merek_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `opd` FOREIGN KEY (`join_opd`) REFERENCES `opd` (`id_opd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `update` FOREIGN KEY (`join_update`) REFERENCES `update` (`id_update`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user` FOREIGN KEY (`join_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (6, 1, 1, '1234567890', 'baik', 7, '-0987654,345678', 'ruangan', '2023-07-18 22:56:01.866063', '2023-07-18 22:56:01.866063', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque animi maxime at minima. Totam vero omnis ducimus commodi placeat accusamus, repudiandae nemo, harum magni aperiam esse voluptates. Non, sapiente vero?', 1, NULL);
INSERT INTO `barang` VALUES (9, 1, 5, '0987654321', 'rusak', 6, '-788769,674765', 'lapangan', '2023-07-19 14:35:18.943978', '2023-07-19 14:35:18.943978', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque animi maxime at minima. Totam vero omnis ducimus commodi placeat accusamus, repudiandae nemo, harum magni aperiam esse voluptates. Non, sapiente vero?', 1, NULL);

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar`  (
  `id_gambar` int NOT NULL AUTO_INCREMENT,
  `nama_gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_barang` int NOT NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE,
  INDEX `nama_gambar`(`nama_gambar`) USING BTREE,
  INDEX `barang`(`join_barang`) USING BTREE,
  CONSTRAINT `barang` FOREIGN KEY (`join_barang`) REFERENCES `barang` (`id_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gambar
-- ----------------------------
INSERT INTO `gambar` VALUES (12, 'database.png', 9);
INSERT INTO `gambar` VALUES (16, 'login.png', 6);
INSERT INTO `gambar` VALUES (17, 'pdm.png', 6);

-- ----------------------------
-- Table structure for jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang`  (
  `id_jenis_barang` int NOT NULL AUTO_INCREMENT,
  `nama_jenis_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_jenis_barang`) USING BTREE,
  INDEX `nama_jenis_barang`(`nama_jenis_barang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES (9, 'delapan');
INSERT INTO `jenis_barang` VALUES (2, 'dua');
INSERT INTO `jenis_barang` VALUES (5, 'empat');
INSERT INTO `jenis_barang` VALUES (7, 'enam');
INSERT INTO `jenis_barang` VALUES (6, 'lima');
INSERT INTO `jenis_barang` VALUES (1, 'satu');
INSERT INTO `jenis_barang` VALUES (12, 'sebelas');
INSERT INTO `jenis_barang` VALUES (10, 'sembilan');
INSERT INTO `jenis_barang` VALUES (11, 'sepuluh');
INSERT INTO `jenis_barang` VALUES (3, 'tiga');
INSERT INTO `jenis_barang` VALUES (8, 'tujuh');

-- ----------------------------
-- Table structure for merek_barang
-- ----------------------------
DROP TABLE IF EXISTS `merek_barang`;
CREATE TABLE `merek_barang`  (
  `id_merek_barang` int NOT NULL AUTO_INCREMENT,
  `nama_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_merek_barang`) USING BTREE,
  INDEX `nama_merek_barang`(`nama_merek_barang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merek_barang
-- ----------------------------
INSERT INTO `merek_barang` VALUES (1, 'merek1');

-- ----------------------------
-- Table structure for opd
-- ----------------------------
DROP TABLE IF EXISTS `opd`;
CREATE TABLE `opd`  (
  `id_opd` int NOT NULL AUTO_INCREMENT,
  `nama_opd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_opd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_opd`) USING BTREE,
  INDEX `nama_opd`(`nama_opd`) USING BTREE,
  INDEX `nama_opd_2`(`nama_opd`, `id_opd`, `alamat_opd`) USING BTREE,
  INDEX `nama_opd_3`(`nama_opd`, `id_opd`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of opd
-- ----------------------------
INSERT INTO `opd` VALUES (6, 'mjkt', 'mojokerto');
INSERT INTO `opd` VALUES (5, 'sby', 'surabaya');
INSERT INTO `opd` VALUES (7, 'sby', 'adoh');

-- ----------------------------
-- Table structure for update
-- ----------------------------
DROP TABLE IF EXISTS `update`;
CREATE TABLE `update`  (
  `id_update` int NOT NULL AUTO_INCREMENT,
  `tanggal_update` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id_update`) USING BTREE,
  INDEX `tanggal_update`(`tanggal_update`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of update
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `nama_user`(`nama_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', 'user', 'biasa', '1');

SET FOREIGN_KEY_CHECKS = 1;
