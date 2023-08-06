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

 Date: 06/08/2023 20:56:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_jenis_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_serial_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_barang` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_opd` varchar(266) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `detail_lokasi_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `koordinat_barang` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk_barang` timestamp NULL DEFAULT current_timestamp,
  `tanggal_update_barang` timestamp NULL DEFAULT current_timestamp,
  `join_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE,
  INDEX `nama`(`join_pengguna`) USING BTREE,
  INDEX `jenis_barang`(`join_jenis_barang`) USING BTREE,
  INDEX `merek_barang`(`join_merek_barang`) USING BTREE,
  INDEX `opd`(`join_opd`) USING BTREE,
  INDEX `gambar`(`gambar_barang`) USING BTREE,
  CONSTRAINT `jenis_barang` FOREIGN KEY (`join_jenis_barang`) REFERENCES `jenis_barang` (`id_jenis_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `merek_barang` FOREIGN KEY (`join_merek_barang`) REFERENCES `merek_barang` (`id_merek_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `opd` FOREIGN KEY (`join_opd`) REFERENCES `opd` (`id_opd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pengguna` FOREIGN KEY (`join_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES ('f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:13:49', '1', '64cd079db7070.png');

-- ----------------------------
-- Table structure for catatan_barang
-- ----------------------------
DROP TABLE IF EXISTS `catatan_barang`;
CREATE TABLE `catatan_barang`  (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
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
  `join_pengguna_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar_barang_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE,
  INDEX `tanggal_update`(`id_barang_catatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan_barang
-- ----------------------------
INSERT INTO `catatan_barang` VALUES (40, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq43', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-03 19:53:29', '1', '64cba349cc057.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (41, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq437', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:03:29', '1', '64cba349cc057.png', 'data di ubah');
INSERT INTO `catatan_barang` VALUES (42, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:03:39', '1', '64cba349cc057.png', 'data di ubah');
INSERT INTO `catatan_barang` VALUES (43, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:13:49', '1', '64cd079db7070.png', 'data di ubah');

-- ----------------------------
-- Table structure for catatan_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `catatan_pengguna`;
CREATE TABLE `catatan_pengguna`  (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_pengguna_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username_pengguna_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_pengguna_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_pengguna_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level_pengguna_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan_catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan_pengguna
-- ----------------------------

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar`  (
  `id_gambar` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gambar
-- ----------------------------

-- ----------------------------
-- Table structure for jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang`  (
  `id_jenis_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_jenis_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_jenis_barang`) USING BTREE,
  INDEX `nama_jenis_barang`(`nama_jenis_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES ('33e3435ab6ba42817be38c7ba3aada6b', 'satu');

-- ----------------------------
-- Table structure for merek_barang
-- ----------------------------
DROP TABLE IF EXISTS `merek_barang`;
CREATE TABLE `merek_barang`  (
  `id_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_merek_barang`) USING BTREE,
  INDEX `nama_merek_barang`(`nama_merek_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merek_barang
-- ----------------------------
INSERT INTO `merek_barang` VALUES ('3cefa4e09e2da3492031813c1bbccf2e', 'merek2');

-- ----------------------------
-- Table structure for opd
-- ----------------------------
DROP TABLE IF EXISTS `opd`;
CREATE TABLE `opd`  (
  `id_opd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_opd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_opd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_opd`) USING BTREE,
  INDEX `nama_opd`(`nama_opd`) USING BTREE,
  INDEX `nama_opd_2`(`nama_opd`, `id_opd`, `alamat_opd`) USING BTREE,
  INDEX `nama_opd_3`(`nama_opd`, `id_opd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of opd
-- ----------------------------
INSERT INTO `opd` VALUES ('e9f1bed1aed86869c4ab441cbccf10f6', 'smrg', 'hh');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_pengguna` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level_pengguna` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE,
  INDEX `nama_user`(`nama_pengguna`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES ('1', 'DannyC', '$2y$10$q9e7ZYky4hd33.QbGXd7De3mr.RegnBVAhvtYCicN3K96yJO.nvl2', 'Danny Choirul', 'nol');
INSERT INTO `pengguna` VALUES ('2', 'administrator', '$2y$10$nnD5XpR4eTWu98nHcOAOlefEFMYR0oh7DBF4ryo.SsVVOvibRD0va', 'admin', 'satu');
INSERT INTO `pengguna` VALUES ('3', 'petugas', '$2y$10$dNMvL5ULuWSYhokj4G/J.uhFWGVCYQtbzNAratNe/B841R9gVh/qa', 'wong kantor', 'dua');
INSERT INTO `pengguna` VALUES ('3d73677809ff941b9a067f18a71ccd9a', 'StaffLapangan', '$2y$10$FnOkvBOwoTRTuB/4tVuiRO2vB7kxIGwpIClsJK1xk18EnYIqofY4G', 'wong njobo', 'tiga');

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_masuk_barang`;
delimiter ;;
CREATE TRIGGER `catatan_masuk_barang` AFTER INSERT ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
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
join_pengguna_catatan = new.join_pengguna,
gambar_barang_catatan = new.gambar_barang,
keterangan_catatan = 'data masuk'
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_edit_barang`;
delimiter ;;
CREATE TRIGGER `catatan_edit_barang` AFTER UPDATE ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
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
join_pengguna_catatan = new.join_pengguna,
gambar_barang_catatan = new.gambar_barang,
keterangan_catatan = 'data di ubah'
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_hapus_barang`;
delimiter ;;
CREATE TRIGGER `catatan_hapus_barang` AFTER DELETE ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
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
join_pengguna_catatan = old.join_pengguna,
gambar_barang_catatan = old.gambar_barang,
keterangan_catatan = 'data di hapus'
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pengguna
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_masuk_pengguna`;
delimiter ;;
CREATE TRIGGER `catatan_masuk_pengguna` AFTER INSERT ON `pengguna` FOR EACH ROW INSERT INTO catatan_pengguna SET
id_pengguna_catatan = new.id_pengguna,
username_pengguna_catatan = new.username_pengguna,
password_pengguna_catatan = new.password_pengguna,
nama_pengguna_catatan = new.nama_pengguna,
level_pengguna_catatan = new.level_pengguna,

keterangan_catatan = 'data masuk'
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pengguna
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_diubah_pengguna`;
delimiter ;;
CREATE TRIGGER `catatan_diubah_pengguna` AFTER UPDATE ON `pengguna` FOR EACH ROW INSERT INTO catatan_pengguna SET
id_pengguna_catatan = new.id_pengguna,
username_pengguna_catatan = new.username_pengguna,
password_pengguna_catatan = new.password_pengguna,
nama_pengguna_catatan = new.nama_pengguna,
level_pengguna_catatan = new.level_pengguna,

keterangan_catatan = 'data di ubah'
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pengguna
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_dihapus_pengguna`;
delimiter ;;
CREATE TRIGGER `catatan_dihapus_pengguna` AFTER DELETE ON `pengguna` FOR EACH ROW INSERT INTO catatan_pengguna SET
id_pengguna_catatan = old. id_pengguna,
username_pengguna_catatan = old.username_pengguna,
password_pengguna_catatan = old.password_pengguna,
nama_pengguna_catatan = old.nama_pengguna,
level_pengguna_catatan = old.level_pengguna,

keterangan_catatan = 'data di hapus'
;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
