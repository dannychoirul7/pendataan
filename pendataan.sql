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

<<<<<<< HEAD
 Date: 01/08/2023 21:17:10
=======
 Date: 31/07/2023 19:44:46
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2
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
<<<<<<< HEAD
  `join_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
=======
  `join_pengguna` int NOT NULL,
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2
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
<<<<<<< HEAD
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Records of barang
-- ----------------------------

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Records of catatan_barang
-- ----------------------------
<<<<<<< HEAD
=======
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
INSERT INTO `catatan` VALUES (16, 35, '1', '9', 'rr', 'e', '5', 'e', 'e', 'e', '2023-07-28 20:31:11', '2023-07-28 20:31:11', '7', 'ee', 'data masuk');
INSERT INTO `catatan` VALUES (17, 35, '5', '9', 'rr', 'Normal', '5', 'e', 'e', 'e', '2023-07-28 20:31:11', '2023-07-28 20:32:29', '7', 'ee', 'data berubah');
INSERT INTO `catatan` VALUES (18, 35, '5', '9', 'rr', 'Normal', '5', 'e', 'e', 'e', '2023-07-28 20:31:11', '2023-07-28 20:32:29', '7', 'ee', 'data di hapus');
INSERT INTO `catatan` VALUES (19, 36, '1', '6', 'q', 'q', '6', 'q', 'q', 'q', '2023-07-28 20:34:30', '2023-07-28 20:34:30', '7', 'q', 'data masuk');
INSERT INTO `catatan` VALUES (20, 36, '1', '6', 'q', 'Normal', '6', 'q', 'q', 'q', '2023-07-28 20:34:30', '2023-07-28 20:34:45', '7', '64c3c3f5977cf.png', 'data berubah');
INSERT INTO `catatan` VALUES (21, 45, '1', '9', 'qqq43', 'Normal', '6', '2121', 'sa', ' sau', '2023-07-28 21:18:23', '2023-07-28 21:18:23', '7', '64c3ce2f95a5e.png', 'data di masuk');
INSERT INTO `catatan` VALUES (22, 46, '1', '9', 's', 'Normal', '6', 's', '12345', 'satuw', '2023-07-28 21:28:01', '2023-07-28 21:28:01', '7', '64c3d0718fba5.png', 'data di masuk');
INSERT INTO `catatan` VALUES (23, 36, '1', '6', 'q', 'Normal', '6', 'q', 'q', 'q', '2023-07-28 20:34:30', '2023-07-28 20:34:45', '7', '64c3c3f5977cf.png', 'data di hapus');
INSERT INTO `catatan` VALUES (24, 47, '4', '2', 'qqq43', 'Normal', '6', 'dda', 's', ' sau', '2023-07-28 23:29:56', '2023-07-28 23:29:56', '7', '64c3ed04cbc75.png', 'data di masuk');
INSERT INTO `catatan` VALUES (25, 44, '1', '2', 'qqq43', 'Normal', '6', 'erfs', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-07-28 21:09:15', '2023-07-28 21:09:29', '7', '64c3cc194e67e.png', 'data di hapus');
INSERT INTO `catatan` VALUES (26, 45, '1', '9', 'qqq43', 'Normal', '6', '2121', 'sa', ' sau', '2023-07-28 21:18:23', '2023-07-28 21:18:23', '7', '64c3ce2f95a5e.png', 'data di hapus');
INSERT INTO `catatan` VALUES (27, 46, '1', '9', 's', 'Normal', '6', 's', '12345', 'satuw', '2023-07-28 21:28:01', '2023-07-28 21:28:01', '7', '64c3d0718fba5.png', 'data di hapus');
INSERT INTO `catatan` VALUES (28, 47, '4', '2', 'qqq43', 'Normal', '6', 'dda', 's', ' sau', '2023-07-28 23:29:56', '2023-07-28 23:32:49', '8', '64c3edb15a99d.png', 'data di ubah');
INSERT INTO `catatan` VALUES (29, 48, '4', '5', 'BARU', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-07-29 21:12:03', '2023-07-29 21:12:03', '7', '64c51e33d77d2.png', 'data di masuk');
INSERT INTO `catatan` VALUES (30, 48, '9', '5', 'BARU', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-07-29 21:12:03', '2023-07-29 21:12:31', '7', '64c51e33d77d2.png', 'data di ubah');
INSERT INTO `catatan` VALUES (31, 47, '4', '2', 'qqq43', 'Normal', '6', 'dda', 's', ' sau', '2023-07-28 23:29:56', '2023-07-29 21:26:14', '7', '64c3edb15a99d.png', 'data di ubah');
INSERT INTO `catatan` VALUES (32, 48, '9', '5', 'BARU', 'Normal', '6', '55555', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-07-29 21:12:03', '2023-07-29 21:12:31', '7', '64c51e33d77d2.png', 'data di hapus');
INSERT INTO `catatan` VALUES (33, 47, '4', '2', 'qqq43', 'Normal', '6', 'dda', 's', ' sau', '2023-07-28 23:29:56', '2023-07-29 21:26:14', '7', '64c3edb15a99d.png', 'data di hapus');
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar`  (
  `id_gambar` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
<<<<<<< HEAD
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------

-- ----------------------------
-- Table structure for merek_barang
-- ----------------------------
DROP TABLE IF EXISTS `merek_barang`;
CREATE TABLE `merek_barang`  (
  `id_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_merek_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_merek_barang`) USING BTREE,
  INDEX `nama_merek_barang`(`nama_merek_barang`) USING BTREE
<<<<<<< HEAD
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Records of merek_barang
-- ----------------------------

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
<<<<<<< HEAD
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Records of pengguna
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `pengguna` VALUES ('1', 'DannyC', '$2y$10$q9e7ZYky4hd33.QbGXd7De3mr.RegnBVAhvtYCicN3K96yJO.nvl2', 'Danny Choirul', 'nol');
INSERT INTO `pengguna` VALUES ('2', 'administrator', '$2y$10$nnD5XpR4eTWu98nHcOAOlefEFMYR0oh7DBF4ryo.SsVVOvibRD0va', 'admin', 'satu');
INSERT INTO `pengguna` VALUES ('3', 'petugas', '$2y$10$dNMvL5ULuWSYhokj4G/J.uhFWGVCYQtbzNAratNe/B841R9gVh/qa', 'wong kantor', 'dua');
=======
INSERT INTO `pengguna` VALUES (1, 'DannyC', '$2y$10$q9e7ZYky4hd33.QbGXd7De3mr.RegnBVAhvtYCicN3K96yJO.nvl2', 'Danny Choirul', 'nol');
INSERT INTO `pengguna` VALUES (2, 'administrator', '$2y$10$nnD5XpR4eTWu98nHcOAOlefEFMYR0oh7DBF4ryo.SsVVOvibRD0va', 'admin', 'satu');
INSERT INTO `pengguna` VALUES (3, 'petugas', '$2y$10$YqSd9tk4nDDr.eIHyaYABespaEB5Gtylzl4OwLkS7oCEEqL55XCNe', 'petugas', 'dua');
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_masuk_barang`;
delimiter ;;
<<<<<<< HEAD
CREATE TRIGGER `catatan_masuk_barang` AFTER INSERT ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
=======
CREATE TRIGGER `catatan_masuk_barang` AFTER INSERT ON `barang` FOR EACH ROW INSERT INTO catatan SET
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2
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
keterangan_catatan = 'data di masuk'
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_edit_barang`;
delimiter ;;
<<<<<<< HEAD
CREATE TRIGGER `catatan_edit_barang` AFTER UPDATE ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
=======
CREATE TRIGGER `catatan_edit_barang` AFTER UPDATE ON `barang` FOR EACH ROW INSERT INTO catatan SET
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2
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
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table barang
-- ----------------------------
DROP TRIGGER IF EXISTS `catatan_hapus_barang`;
delimiter ;;
<<<<<<< HEAD
CREATE TRIGGER `catatan_hapus_barang` AFTER DELETE ON `barang` FOR EACH ROW INSERT INTO catatan_barang SET
=======
CREATE TRIGGER `catatan_hapus_barang` AFTER DELETE ON `barang` FOR EACH ROW INSERT INTO catatan SET
>>>>>>> 3b0f3b552bef42f9b75721008cd33290df2bc2e2
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
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
