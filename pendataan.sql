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

 Date: 23/07/2023 21:00:56
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
  `detail_lokasi_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `koordinat_barang` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk_barang` timestamp NULL DEFAULT current_timestamp,
  `tanggal_update_barang` timestamp NULL DEFAULT current_timestamp,
  `join_user` int NOT NULL,
  `gambar_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE,
  INDEX `nama`(`join_user`) USING BTREE,
  INDEX `jenis_barang`(`join_jenis_barang`) USING BTREE,
  INDEX `merek_barang`(`join_merek_barang`) USING BTREE,
  INDEX `opd`(`join_opd`) USING BTREE,
  INDEX `gambar`(`gambar_barang`) USING BTREE,
  CONSTRAINT `jenis_barang` FOREIGN KEY (`join_jenis_barang`) REFERENCES `jenis_barang` (`id_jenis_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `merek_barang` FOREIGN KEY (`join_merek_barang`) REFERENCES `merek_barang` (`id_merek_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `opd` FOREIGN KEY (`join_opd`) REFERENCES `opd` (`id_opd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user` FOREIGN KEY (`join_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of barang
-- ----------------------------

-- ----------------------------
-- Table structure for catatan
-- ----------------------------
DROP TABLE IF EXISTS `catatan`;
CREATE TABLE `catatan`  (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_barang_catatan` int NOT NULL DEFAULT current_timestamp,
  `join_merek_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `join_jenis_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_serial_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `join_opd_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `detail_lokasi_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `koordinat_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_update_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `join_user_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_catatan` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE,
  INDEX `tanggal_update`(`id_barang_catatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan
-- ----------------------------

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar`  (
  `id_gambar` int NOT NULL AUTO_INCREMENT,
  `keterangan_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gambar
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merek_barang
-- ----------------------------
INSERT INTO `merek_barang` VALUES (1, 'merek1');
INSERT INTO `merek_barang` VALUES (4, 'merek2');
INSERT INTO `merek_barang` VALUES (5, 'merek3');
INSERT INTO `merek_barang` VALUES (6, 'merek4');
INSERT INTO `merek_barang` VALUES (7, 'merek5');

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
INSERT INTO `opd` VALUES (7, 'surabaya', 'adoh');

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
