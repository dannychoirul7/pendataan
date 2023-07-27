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

 Date: 27/07/2023 21:33:44
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
  CONSTRAINT `user` FOREIGN KEY (`join_user`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
  `keterangan_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE,
  INDEX `tanggal_update`(`id_barang_catatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan
-- ----------------------------
INSERT INTO `catatan` VALUES (4, 28, '4', '2', 'qqq43', 'Normal', '6', 'dda', 'BARU', ' sau', '2023-07-24 20:38:09', '2023-07-24 20:38:09', '1', '64be7ec1b0781.png', 'data masuk');
INSERT INTO `catatan` VALUES (5, 28, '4', '2', 'qqq43', 'Normal', '6', 'dda', 'BARU', ' sau', '2023-07-24 20:38:09', '2023-07-24 20:38:09', '1', '64be7ec1b0781.png', 'data di hapus');
INSERT INTO `catatan` VALUES (6, 29, '4', '9', 'qqq43', 'Normal', '6', 'erfs', 'BARU', 'BARU', '2023-07-25 19:55:08', '2023-07-25 19:55:09', '1', '64bfc62d23435.png', 'data masuk');
INSERT INTO `catatan` VALUES (7, 29, '4', '9', 'qqq43', 'Normal', '6', 'erfs', 'BARU', 'BARU', '2023-07-25 19:55:08', '2023-07-25 19:55:09', '1', '64bfc62d23435.png', 'data di hapus');
INSERT INTO `catatan` VALUES (8, 30, '5', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:02:15', '1', '64bfc7d731220.png', 'data masuk');
INSERT INTO `catatan` VALUES (9, 30, '5', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:02:22', '1', '64bfc7d731220.png', 'data berubah');
INSERT INTO `catatan` VALUES (10, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:02:38', '1', '64bfc7d731220.png', 'data berubah');
INSERT INTO `catatan` VALUES (11, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:02:58', '1', '64bfc80225616.png', 'data berubah');
INSERT INTO `catatan` VALUES (12, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:31:19', '1', '64bfcea71f038.png', 'data berubah');
INSERT INTO `catatan` VALUES (13, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:31:29', '1', '64bfceb199b07.png', 'data berubah');
INSERT INTO `catatan` VALUES (14, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:32:44', '1', '64bfcefc3bac8.png', 'data berubah');
INSERT INTO `catatan` VALUES (15, 30, '6', '5', 's', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'd', '2023-07-25 20:02:15', '2023-07-25 20:32:44', '1', '64bfcefc3bac8.png', 'data di hapus');

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar`  (
  `id_gambar` int NOT NULL AUTO_INCREMENT,
  `keterangan_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id_pengguna` int NOT NULL AUTO_INCREMENT,
  `username_pengguna` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level_pengguna` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE,
  INDEX `nama_user`(`nama_pengguna`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (3, '', '2', '2', 'satu');
INSERT INTO `pengguna` VALUES (4, '', '6', '7', 'dua');
INSERT INTO `pengguna` VALUES (6, 'uwu', '$2y$10$5aWrjMpc5M4gIXyzc8vNEOXI9hTxIEP/y2nBwuKvX4MxqJShDjWMu', 'uwu', 'tiga');

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_masuk_data`;
delimiter ;;
CREATE TRIGGER `catatan_masuk_data` AFTER INSERT ON `barang` FOR EACH ROW INSERT INTO catatan SET 
id_barang_catatan = new.id_barang, 
join_merek_barang_catatan = new.join_merek_barang, 
join_jenis_barang_catatan = new.join_jenis_barang, 
nomor_serial_barang_catatan = new.nomor_serial_barang, 
status_barang_catatan = new.status_barang, 
join_opd_catatan = new.join_opd, 
detail_lokasi_barang_catatan = new.detail_lokasi_barang, 
koordinat_barang_catatan = new.koordinat_barang, 
keterangan_barang_catatan = new.keterangan_barang, 
tanggal_masuk_barang_catatan = new.tanggal_masuk_barang, 
tanggal_update_barang_catatan = new.tanggal_update_barang, 
join_user_catatan = new.join_user, 
gambar_barang_catatan = new.gambar_barang, 
keterangan_catatan = 'data masuk'
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_ubah_data`;
delimiter ;;
CREATE TRIGGER `catatan_ubah_data` AFTER UPDATE ON `barang` FOR EACH ROW INSERT INTO catatan SET 
id_barang_catatan = new.id_barang, 
join_merek_barang_catatan = new.join_merek_barang, 
join_jenis_barang_catatan = new.join_jenis_barang, 
nomor_serial_barang_catatan = new.nomor_serial_barang, 
status_barang_catatan = new.status_barang, 
join_opd_catatan = new.join_opd, 
detail_lokasi_barang_catatan = new.detail_lokasi_barang, 
koordinat_barang_catatan = new.koordinat_barang, 
keterangan_barang_catatan = new.keterangan_barang, 
tanggal_masuk_barang_catatan = new.tanggal_masuk_barang, 
tanggal_update_barang_catatan = new.tanggal_update_barang, 
join_user_catatan = new.join_user, 
gambar_barang_catatan = new.gambar_barang, 
keterangan_catatan = 'data berubah'
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_hapus_data`;
delimiter ;;
CREATE TRIGGER `catatan_hapus_data` AFTER DELETE ON `barang` FOR EACH ROW INSERT INTO catatan SET 
id_barang_catatan = old.id_barang, 
join_merek_barang_catatan = old.join_merek_barang, 
join_jenis_barang_catatan = old.join_jenis_barang, 
nomor_serial_barang_catatan = old.nomor_serial_barang, 
status_barang_catatan = old.status_barang, 
join_opd_catatan = old.join_opd, 
detail_lokasi_barang_catatan = old.detail_lokasi_barang, 
koordinat_barang_catatan = old.koordinat_barang, 
keterangan_barang_catatan = old.keterangan_barang, 
tanggal_masuk_barang_catatan = old.tanggal_masuk_barang, 
tanggal_update_barang_catatan = old.tanggal_update_barang, 
join_user_catatan = old.join_user, 
gambar_barang_catatan = old.gambar_barang, 
keterangan_catatan = 'data di hapus'
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
