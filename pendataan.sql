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

 Date: 18/12/2023 09:43:56
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
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan_barang
-- ----------------------------
INSERT INTO `catatan_barang` VALUES (40, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq43', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-03 19:53:29', '1', '64cba349cc057.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (41, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq437', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:03:29', '1', '64cba349cc057.png', 'data di ubah');
INSERT INTO `catatan_barang` VALUES (42, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:03:39', '1', '64cba349cc057.png', 'data di ubah');
INSERT INTO `catatan_barang` VALUES (43, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:13:49', '1', '64cd079db7070.png', 'data di ubah');
INSERT INTO `catatan_barang` VALUES (44, 'f2d360394ca790b62f0dc82afda64a84', '3cefa4e09e2da3492031813c1bbccf2e', '33e3435ab6ba42817be38c7ba3aada6b', 'qqq45', 'Normal', 'e9f1bed1aed86869c4ab441cbccf10f6', 'BARU', '12345', 'retwww', '2023-08-03 19:53:29', '2023-08-04 21:13:49', '1', '64cd079db7070.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (45, 'faa2dcc81d69a5eb8121a3a7762d1adc', 'fd4aad2ef8b909431845713fa865c603', 'ca4806a86c5bea680622d96fb2952c6b', 'qqq43', 'Normal', '23', '55555', '1111111111111111111111111111111111111111111111111111111', 'BARU', '2023-12-12 20:44:45', '2023-12-12 20:44:45', '1', '657863cd73547.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (46, 'faa2dcc81d69a5eb8121a3a7762d1adc', 'fd4aad2ef8b909431845713fa865c603', 'ca4806a86c5bea680622d96fb2952c6b', 'qqq43', 'Normal', '23', '55555', '1111111111111111111111111111111111111111111111111111111', 'BARU', '2023-12-12 20:44:45', '2023-12-12 20:44:45', '1', '657863cd73547.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (47, '5988353de814fbadbe47fb2000a309be', '70f53086a867c94f7884af94d090265f', '43cf0048c8306744b530c44fdb16d7e9', 'GB16520A11880', 'Normal', '3', 'Ruang Pelayanan', '-7.256513737808075, 112.73755107652619', '-', '2023-12-13 20:24:03', '2023-12-13 20:24:03', '1', '6579b0734366f.jpg', 'data masuk');
INSERT INTO `catatan_barang` VALUES (48, '5b9d80f5d9b180602615deeeb8c2833f', 'fd4aad2ef8b909431845713fa865c603', 'bec7787bb4de67dfa1a6e6c1a81adcfb', 'qqq43', 'Normal', '23', 'dda', 'rgrere', 'satu', '2023-12-14 20:12:18', '2023-12-14 20:12:18', '4cadbe46ea31f6f1b1d3bd8332ea0335', '657aff320eafb.jpg', 'data masuk');
INSERT INTO `catatan_barang` VALUES (49, '5b9d80f5d9b180602615deeeb8c2833f', 'fd4aad2ef8b909431845713fa865c603', 'bec7787bb4de67dfa1a6e6c1a81adcfb', 'qqq43', 'Normal', '23', 'dda', 'rgrere', 'satu', '2023-12-14 20:12:18', '2023-12-14 20:12:18', '4cadbe46ea31f6f1b1d3bd8332ea0335', '657aff320eafb.jpg', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (50, '5988353de814fbadbe47fb2000a309be', '70f53086a867c94f7884af94d090265f', '43cf0048c8306744b530c44fdb16d7e9', 'GB16520A11880', 'Normal', '3', 'Ruang Pelayanan', '-7.256513737808075, 112.73755107652619', '-', '2023-12-13 20:24:03', '2023-12-13 20:24:03', '1', '6579b0734366f.jpg', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (51, '1f85bafaba77f85541bd8e2090a14068', 'fd4aad2ef8b909431845713fa865c603', 'bec7787bb4de67dfa1a6e6c1a81adcfb', 's', 'Normal', '23', 'BARU', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-12-14 20:22:18', '2023-12-14 20:22:18', 'b19b27036c95843810c2534b9f8849a4', '657b018ac8083.jpg', 'data masuk');
INSERT INTO `catatan_barang` VALUES (52, '61cf4b8c84edaff18692387c7252b1d8', '9fe305eba05b50db84743272d27008a6', '7bbb8904e92b1e1f81ac48023c1bae5c', 's', 'Rusak', '23', 's', '1111111111111111111111111111111111111111111111111111111', 'satuw', '2023-12-14 20:24:31', '2023-12-14 20:24:31', '2', '657b020f125bc.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (53, 'ace0f4f25e1c1fc4c661cf6614046058', 'fd4aad2ef8b909431845713fa865c603', 'ff7e9010b8e824c9bd2ccec8d280cce5', 'BARU', 'Rusak', '6', 'BARU', '1111111111111111111111111111111111111111111111111111111', 'retwww', '2023-12-14 20:27:41', '2023-12-14 20:27:41', '1aef252c056b52e4150cafddd47eb856', '657b02cd27e0f.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (54, '1f85bafaba77f85541bd8e2090a14068', 'fd4aad2ef8b909431845713fa865c603', 'bec7787bb4de67dfa1a6e6c1a81adcfb', 's', 'Normal', '23', 'BARU', '1111111111111111111111111111111111111111111111111111111', 'satu', '2023-12-14 20:22:18', '2023-12-14 20:22:18', 'b19b27036c95843810c2534b9f8849a4', '657b018ac8083.jpg', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (55, '61cf4b8c84edaff18692387c7252b1d8', '9fe305eba05b50db84743272d27008a6', '7bbb8904e92b1e1f81ac48023c1bae5c', 's', 'Rusak', '23', 's', '1111111111111111111111111111111111111111111111111111111', 'satuw', '2023-12-14 20:24:31', '2023-12-14 20:24:31', '2', '657b020f125bc.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (56, 'ace0f4f25e1c1fc4c661cf6614046058', 'fd4aad2ef8b909431845713fa865c603', 'ff7e9010b8e824c9bd2ccec8d280cce5', 'BARU', 'Rusak', '6', 'BARU', '1111111111111111111111111111111111111111111111111111111', 'retwww', '2023-12-14 20:27:41', '2023-12-14 20:27:41', '1aef252c056b52e4150cafddd47eb856', '657b02cd27e0f.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (57, '069c77b45bee5a9f4832c1d9bec56195', 'fd4aad2ef8b909431845713fa865c603', '3e51e3dc854f7d2ca94e7ea4e955cf05', '1', 'Rusak', '20', 'dda', '1111111111111111111111111111111111111111111111111111111', 'satuw', '2023-12-14 20:42:31', '2023-12-14 20:42:31', '23da7b47cb1ed0a4fb416ede90856dfa', '657b06477cf3b.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (58, '973c8b384880d564638a4b866d09c657', '9fe305eba05b50db84743272d27008a6', 'dcae47c56398efea11a3e88d18826939', 'qqq43', 'Rusak', '18', '55555', '12345', ' sau', '2023-12-16 21:02:39', '2023-12-16 21:02:39', '1', '657dadff6d332.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (59, '069c77b45bee5a9f4832c1d9bec56195', 'fd4aad2ef8b909431845713fa865c603', '3e51e3dc854f7d2ca94e7ea4e955cf05', '1', 'Rusak', '20', 'dda', '1111111111111111111111111111111111111111111111111111111', 'satuw', '2023-12-14 20:42:31', '2023-12-14 20:42:31', '23da7b47cb1ed0a4fb416ede90856dfa', '657b06477cf3b.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (60, '973c8b384880d564638a4b866d09c657', '9fe305eba05b50db84743272d27008a6', 'dcae47c56398efea11a3e88d18826939', 'qqq43', 'Rusak', '18', '55555', '12345', ' sau', '2023-12-16 21:02:39', '2023-12-16 21:02:39', '1', '657dadff6d332.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (61, '24592c1299850e5dd2505d92e6f72c95', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '', '', '3', '', '', '', '1970-01-01 07:00:00', '1970-01-01 07:00:00', '1', '', 'data masuk');
INSERT INTO `catatan_barang` VALUES (62, '2e1bbe25bb322d21c1245264b54bf7b2', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', '', '3', '', '', '', '1970-01-01 07:00:00', '1970-01-01 07:00:00', '1', '', 'data masuk');
INSERT INTO `catatan_barang` VALUES (63, '24592c1299850e5dd2505d92e6f72c95', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '', '', '3', '', '', '', '1970-01-01 07:00:00', '1970-01-01 07:00:00', '1', '', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (64, '2e1bbe25bb322d21c1245264b54bf7b2', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', '', '3', '', '', '', '1970-01-01 07:00:00', '1970-01-01 07:00:00', '1', '', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (65, '120be1a6388fc42717c10c8cd7bd5730', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (66, '120be1a6388fc42717c10c8cd7bd5730', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (67, '4cd0986294ecbda7336c2b97fe31799e', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (68, '4cd0986294ecbda7336c2b97fe31799e', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (69, '126cad4162e1a6770052bbc2d3b1674c', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (70, 'e33e4b4993e8b77038a9db8cfd48e0ce', '670b8fa33e7e5b7b11d4f84d5986427f', '3e51e3dc854f7d2ca94e7ea4e955cf05', '_sementara', 'Normal', '7', '_sementara', '_sementara', '_sementara1', '2023-12-17 20:49:43', '2023-12-17 20:49:43', '3d73677809ff941b9a067f18a71ccd9a', '657efc7717e57.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (71, 'de34a87282f66b6f5f469c2dd4d85d1a', 'ca93a1b61b11066c832342aea584d7cd', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '34', '_sementara', '_sementara', '_sementara1', '2023-12-17 20:52:51', '2023-12-17 20:52:51', '1', '657efd3332ee1.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (72, '7dc0e6064045f5f886883605f306bdc0', '4b20b4d66fb81f66834c007192e0a2c7', 'f7d79f3c153851b546375a1fc0bf83bf', '_sementara', 'Rusak', '4', '_sementara', '_sementara', '_sementaram', '2023-12-17 21:00:28', '2023-12-17 21:00:28', '1', '657efefc11a9c.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (73, '126cad4162e1a6770052bbc2d3b1674c', '9fe305eba05b50db84743272d27008a6', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '3', '_sementara', '_sementara', '_sementaram', '2023-12-16 21:49:16', '2023-12-16 21:49:16', '1', '657db8ec56f9a.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (74, '7dc0e6064045f5f886883605f306bdc0', '4b20b4d66fb81f66834c007192e0a2c7', 'f7d79f3c153851b546375a1fc0bf83bf', '_sementara', 'Rusak', '4', '_sementara', '_sementara', '_sementaram', '2023-12-17 21:00:28', '2023-12-17 21:00:28', '1', '657efefc11a9c.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (75, 'de34a87282f66b6f5f469c2dd4d85d1a', 'ca93a1b61b11066c832342aea584d7cd', 'ca4806a86c5bea680622d96fb2952c6b', '_sementara', 'Rusak', '34', '_sementara', '_sementara', '_sementara1', '2023-12-17 20:52:51', '2023-12-17 20:52:51', '1', '657efd3332ee1.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (76, 'e33e4b4993e8b77038a9db8cfd48e0ce', '670b8fa33e7e5b7b11d4f84d5986427f', '3e51e3dc854f7d2ca94e7ea4e955cf05', '_sementara', 'Normal', '7', '_sementara', '_sementara', '_sementara1', '2023-12-17 20:49:43', '2023-12-17 20:49:43', '3d73677809ff941b9a067f18a71ccd9a', '657efc7717e57.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (77, '045b636e6561d340f87d7d5353d83c2e', 'da89d4b057e5840ccbf1a91fd86a83f8', 'ff7e9010b8e824c9bd2ccec8d280cce5', 'qqq43', 'Normal', '59', '55555', '1111111111111111111111111111111111111111111111111111111', 'retwww', '2023-12-17 21:09:32', '2023-12-17 21:09:32', '1', '657f011c79033.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (78, 'b1f9f0fda4193ecd7f410c4bf2d14ec7', 'ca93a1b61b11066c832342aea584d7cd', 'dcae47c56398efea11a3e88d18826939', '_sementaragcxsdyu', 'Rusak', '59', '_sementara', '_sementara', '_sementara1', '2023-12-17 21:13:38', '2023-12-17 21:13:38', '1', '657f02122eb21.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (79, 'b4b7676a5f7d3c0e0b6faea3575174f6', '0e6fed4f7249e0c66335761f1e34f321', 'f7d79f3c153851b546375a1fc0bf83bf', '_sementaragcxsdyu', 'Normal', '3', '_sementara', '_sementara', '_sementara', '2023-12-17 21:19:21', '2023-12-17 21:19:21', '1', '657f03696ea0c.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (80, '045b636e6561d340f87d7d5353d83c2e', 'da89d4b057e5840ccbf1a91fd86a83f8', 'ff7e9010b8e824c9bd2ccec8d280cce5', 'qqq43', 'Normal', '59', '55555', '1111111111111111111111111111111111111111111111111111111', 'retwww', '2023-12-17 21:09:32', '2023-12-17 21:09:32', '1', '657f011c79033.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (81, 'b1f9f0fda4193ecd7f410c4bf2d14ec7', 'ca93a1b61b11066c832342aea584d7cd', 'dcae47c56398efea11a3e88d18826939', '_sementaragcxsdyu', 'Rusak', '59', '_sementara', '_sementara', '_sementara1', '2023-12-17 21:13:38', '2023-12-17 21:13:38', '1', '657f02122eb21.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (82, 'b4b7676a5f7d3c0e0b6faea3575174f6', '0e6fed4f7249e0c66335761f1e34f321', 'f7d79f3c153851b546375a1fc0bf83bf', '_sementaragcxsdyu', 'Normal', '3', '_sementara', '_sementara', '_sementara', '2023-12-17 21:19:21', '2023-12-17 21:19:21', '1', '657f03696ea0c.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (83, 'e8adb2bb06ce8b80bf970718a8e6d832', '9fe305eba05b50db84743272d27008a6', 'ff7e9010b8e824c9bd2ccec8d280cce5', 's', 'Rusak', '20', '55555', '1111111111111111111111111111111111111111111111111111111', ' sau', '2023-12-17 21:35:18', '2023-12-17 21:35:18', '1', '657f0726af67e.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (84, 'e8adb2bb06ce8b80bf970718a8e6d832', '9fe305eba05b50db84743272d27008a6', 'ff7e9010b8e824c9bd2ccec8d280cce5', 's', 'Rusak', '20', '55555', '1111111111111111111111111111111111111111111111111111111', ' sau', '2023-12-17 21:35:18', '2023-12-17 21:35:18', '1', '657f0726af67e.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (85, '7dbf7d9fc7d1049645839add77c6a969', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (86, '3d83ae40b13a562732e0f60b2bc05801', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (87, '3d83ae40b13a562732e0f60b2bc05801', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (88, '7dbf7d9fc7d1049645839add77c6a969', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (89, 'a295ff0d5d6d2de92814dee9607234fc', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (90, '25ab5387c197bd819a79ed506154cf17', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (91, '25ab5387c197bd819a79ed506154cf17', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (92, 'a295ff0d5d6d2de92814dee9607234fc', '639fa767fdc126fdb07554d4f5e4b4de', 'ff7e9010b8e824c9bd2ccec8d280cce5', '_sementara', 'Rusak', '2', '_sementara', '_sementara', '_sementara', '2023-12-18 09:03:53', '2023-12-18 09:09:24', '1', '657fa8898f7c8.png', 'data di hapus');
INSERT INTO `catatan_barang` VALUES (93, 'fe1ae4d852906d543e20c08f56d0be65', '9fe305eba05b50db84743272d27008a6', '3e51e3dc854f7d2ca94e7ea4e955cf05', '_sementaragcxsdyu', 'Rusak', '50', '_sementara', '_sementara', '_sementara', '2023-12-18 09:37:01', '2023-12-18 09:37:01', '1', '657fb04d5c6a9.png', 'data masuk');
INSERT INTO `catatan_barang` VALUES (94, 'fe1ae4d852906d543e20c08f56d0be65', '9fe305eba05b50db84743272d27008a6', '3e51e3dc854f7d2ca94e7ea4e955cf05', '_sementaragcxsdyu', 'Rusak', '50', '_sementara', '_sementara', '_sementara', '2023-12-18 09:37:01', '2023-12-18 09:37:01', '1', '657fb04d5c6a9.png', 'data di hapus');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catatan_pengguna
-- ----------------------------
INSERT INTO `catatan_pengguna` VALUES (3, 'b059a0f9d1f2863caf33540b6fd2c24c', 'fafafa', '$2y$10$lq3JlM3Vt7xA39e0Xgv0N.XcZ1zLu5nl1EAtAxpYvQxNhAqjv4cTG', 'uwu', 'tiga', 'data masuk');
INSERT INTO `catatan_pengguna` VALUES (4, 'b059a0f9d1f2863caf33540b6fd2c24c', 'fafafa', '$2y$10$lq3JlM3Vt7xA39e0Xgv0N.XcZ1zLu5nl1EAtAxpYvQxNhAqjv4cTG', 'uwu', 'tiga', 'data di hapus');
INSERT INTO `catatan_pengguna` VALUES (5, '4cadbe46ea31f6f1b1d3bd8332ea0335', 'gagaga', '$2y$10$E2jfRMlbdBZWMtr2G9ufvOF1FubQN.o5KXrTe6uNOrJgliAwgzT9y', 'uwuwuku', 'tiga', 'data masuk');
INSERT INTO `catatan_pengguna` VALUES (6, '4cadbe46ea31f6f1b1d3bd8332ea0335', 'gagaga', '$2y$10$E2jfRMlbdBZWMtr2G9ufvOF1FubQN.o5KXrTe6uNOrJgliAwgzT9y', 'uwuwuku', 'tiga', 'data di hapus');
INSERT INTO `catatan_pengguna` VALUES (7, 'b19b27036c95843810c2534b9f8849a4', 'saasfsaf', '$2y$10$3zGLYVYXVoOjHEQGX/ikaeyT6XR0dTjd3u76.hcRSRa1egBqDlxvS', 'hvvsdab', 'tiga', 'data masuk');
INSERT INTO `catatan_pengguna` VALUES (8, 'b19b27036c95843810c2534b9f8849a4', 'saasfsaf', '$2y$10$3zGLYVYXVoOjHEQGX/ikaeyT6XR0dTjd3u76.hcRSRa1egBqDlxvS', 'hvvsdab', 'tiga', 'data di hapus');
INSERT INTO `catatan_pengguna` VALUES (9, '1aef252c056b52e4150cafddd47eb856', 'saasfsaf', '$2y$10$2v16p4QwvVA3zWorbZR0WOgKAy1Ezur0M5I5YUMmwTp0rODlt9Tbi', 'uwu', 'tiga', 'data masuk');
INSERT INTO `catatan_pengguna` VALUES (10, '1aef252c056b52e4150cafddd47eb856', 'saasfsaf', '$2y$10$2v16p4QwvVA3zWorbZR0WOgKAy1Ezur0M5I5YUMmwTp0rODlt9Tbi', 'uwu', 'tiga', 'data di hapus');
INSERT INTO `catatan_pengguna` VALUES (11, '2', 'administrator', '$2y$10$nnD5XpR4eTWu98nHcOAOlefEFMYR0oh7DBF4ryo.SsVVOvibRD0va', 'admin', 'satu', 'data di hapus');
INSERT INTO `catatan_pengguna` VALUES (12, '6aa17264c3a09090550602a3fb6a5624', 'administrator', '$2y$10$xh7Ptt/IcOQ5dGVdPOty7.tu2osO4vOFBN1DY/WTlzqfy8.CMuZoy', 'Admin', 'satu', 'data masuk');
INSERT INTO `catatan_pengguna` VALUES (13, '23da7b47cb1ed0a4fb416ede90856dfa', 'saasfsaf', '$2y$10$Zt7AxxLJze8rcPUGzJHnLO0uaI232XbNfn4Shvsoap3xJZEMhTRTm', 'uwuwuku', 'tiga', 'data masuk');

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
INSERT INTO `jenis_barang` VALUES ('bec7787bb4de67dfa1a6e6c1a81adcfb', 'Adaptor');
INSERT INTO `jenis_barang` VALUES ('3e51e3dc854f7d2ca94e7ea4e955cf05', 'Box Panel');
INSERT INTO `jenis_barang` VALUES ('ff7e9010b8e824c9bd2ccec8d280cce5', 'CCTV');
INSERT INTO `jenis_barang` VALUES ('ca4806a86c5bea680622d96fb2952c6b', 'Closure');
INSERT INTO `jenis_barang` VALUES ('7bbb8904e92b1e1f81ac48023c1bae5c', 'Converter Fiber Optic');
INSERT INTO `jenis_barang` VALUES ('623b8bf9848d8fcf95657a9317ca6b58', 'Ethernet Repeater');
INSERT INTO `jenis_barang` VALUES ('5da993b55ee1d26a4dcfc95121ed3dcd', 'Fiber Optic Connector');
INSERT INTO `jenis_barang` VALUES ('1c0d639fb4f0940477a5c0b116e06628', 'Harddisk ');
INSERT INTO `jenis_barang` VALUES ('b3e64722247598b74546b6490eb8ce1e', 'Kabel');
INSERT INTO `jenis_barang` VALUES ('b512299ba94561fdcb40bbdc9e81ae56', 'OTB');
INSERT INTO `jenis_barang` VALUES ('888ad90ea46591814972920c3c499f4d', 'Patch Cord ');
INSERT INTO `jenis_barang` VALUES ('bc6cd0e1da09ef5c5e5f9bbff12ca7ae', 'Patch Cord');
INSERT INTO `jenis_barang` VALUES ('4295e2e427bbcdbdaed7297e26e0e50e', 'Pigtail Fiber Optic Single Mode');
INSERT INTO `jenis_barang` VALUES ('14c8a9ebf21fc8aefbf7fd0ab485fe84', 'POE Injector/Adapter ');
INSERT INTO `jenis_barang` VALUES ('c8d920b1e5e4c1830ac5a7337f8128f4', 'Power Supply');
INSERT INTO `jenis_barang` VALUES ('aa138e58b376fb3f68473457bcce5df9', 'QSFP');
INSERT INTO `jenis_barang` VALUES ('44e1dc3d565cf0ec23beeb495206c10a', 'Rak Wallmount');
INSERT INTO `jenis_barang` VALUES ('43cf0048c8306744b530c44fdb16d7e9', 'SFP');
INSERT INTO `jenis_barang` VALUES ('f7d79f3c153851b546375a1fc0bf83bf', 'Switch');
INSERT INTO `jenis_barang` VALUES ('dcae47c56398efea11a3e88d18826939', 'Switch Poe');
INSERT INTO `jenis_barang` VALUES ('19332e510202d470b5e95550458902e1', 'Wireless Access Point');

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
INSERT INTO `merek_barang` VALUES ('fd4aad2ef8b909431845713fa865c603', '3M');
INSERT INTO `merek_barang` VALUES ('9fe305eba05b50db84743272d27008a6', 'Allied Telesis');
INSERT INTO `merek_barang` VALUES ('670b8fa33e7e5b7b11d4f84d5986427f', 'AMG');
INSERT INTO `merek_barang` VALUES ('ca93a1b61b11066c832342aea584d7cd', 'Aruba');
INSERT INTO `merek_barang` VALUES ('f8d4b348643d65d61d8da0d5f9f7dbd0', 'Atop Technologies');
INSERT INTO `merek_barang` VALUES ('b52adc2c544d34cabbbf96a284782a21', 'Belden');
INSERT INTO `merek_barang` VALUES ('45fd61a1a1fea710e86192f54f2e17db', 'BOSCH');
INSERT INTO `merek_barang` VALUES ('b3f19b1ff84cd4f2fecf595f95a5f4f1', 'Cisco');
INSERT INTO `merek_barang` VALUES ('c2bed73fc7b4dc8dae286eb3feb51472', 'Cloth Tape');
INSERT INTO `merek_barang` VALUES ('f32ca20f91bb7209f0555aa2b89c23c7', 'Commscope');
INSERT INTO `merek_barang` VALUES ('d8a89ca11dc2078ee0848cac17e77b55', 'Custom');
INSERT INTO `merek_barang` VALUES ('dba0f338cea0b4f96d4a36a123d5fa8e', 'D-Link');
INSERT INTO `merek_barang` VALUES ('48e5497deafe50a2b9f6020df5148e5e', 'DTC');
INSERT INTO `merek_barang` VALUES ('042be9e8a66d819580ebd8ab17ddde42', 'Edge Core');
INSERT INTO `merek_barang` VALUES ('02689eaae2ad9547faebbae411e4deeb', 'Ericon');
INSERT INTO `merek_barang` VALUES ('ea58cc5efff3f14ca60b80962abdc46b', 'Exfo');
INSERT INTO `merek_barang` VALUES ('70f53086a867c94f7884af94d090265f', 'Finisar');
INSERT INTO `merek_barang` VALUES ('639fa767fdc126fdb07554d4f5e4b4de', 'Fluke');
INSERT INTO `merek_barang` VALUES ('0e6fed4f7249e0c66335761f1e34f321', 'Fort');
INSERT INTO `merek_barang` VALUES ('4b20b4d66fb81f66834c007192e0a2c7', 'Fujikura ');
INSERT INTO `merek_barang` VALUES ('617709695e160bd2a8cca1bb7192fd4d', 'General');
INSERT INTO `merek_barang` VALUES ('da89d4b057e5840ccbf1a91fd86a83f8', 'Goliath');
INSERT INTO `merek_barang` VALUES ('25299fff87a81f755552e5952ba82dd0', 'Hikvision');
INSERT INTO `merek_barang` VALUES ('f216c918927af73a2a62b9514de616f8', 'Honda');
INSERT INTO `merek_barang` VALUES ('61b310e192e16ddaec64f6f77e81c392', 'Hotcom');
INSERT INTO `merek_barang` VALUES ('6d4386b210425ed485d5e7efcc55c669', 'HP');
INSERT INTO `merek_barang` VALUES ('eb94a634ab7beaa7ca71ce96faa7e3de', 'Huawei');
INSERT INTO `merek_barang` VALUES ('f2d40bc28604259f570a7b3614715380', 'imundex');
INSERT INTO `merek_barang` VALUES ('8887d267ae23f5904d2dc1fd741420dd', 'INDO RACK');
INSERT INTO `merek_barang` VALUES ('741488b5abba2b1f9c6664fef421f802', 'Inno');
INSERT INTO `merek_barang` VALUES ('9ba2ef76aa80c6d7cf0f563fcfeab88c', 'Inovasion Rack');
INSERT INTO `merek_barang` VALUES ('6598f134cdf6622858ce170a0f3b90a0', 'IPC Tester');
INSERT INTO `merek_barang` VALUES ('9d476c993dea66900bff725a8ab9a21d', 'Jaguarlift');
INSERT INTO `merek_barang` VALUES ('686a93e157986f6c591361e584eb5691', 'JOINWIT');
INSERT INTO `merek_barang` VALUES ('83e6bb784c99f566c57946c0af6e2e17', 'Krisbow');
INSERT INTO `merek_barang` VALUES ('2662c8044244288927dcd4466f7f3af9', 'Level One');
INSERT INTO `merek_barang` VALUES ('5b197fc3a6073bea3beb612fd3abeeca', 'Litech');
INSERT INTO `merek_barang` VALUES ('98cbc353d4dd126a19b47e55153655cf', 'Magic Vision');
INSERT INTO `merek_barang` VALUES ('2247c3bd4fad62fca850781eed1bb681', 'Makita');
INSERT INTO `merek_barang` VALUES ('c25892d9823b17176c0e4a74b7e98bd1', 'Mikrobits');
INSERT INTO `merek_barang` VALUES ('fe5e5d314f9f101975d29fbbd1ececf9', 'Mikrotik');
INSERT INTO `merek_barang` VALUES ('cda98bb1f27df6abf0672b92915a1a57', 'Netgear');
INSERT INTO `merek_barang` VALUES ('85f0ba68ca76108d2d2998606271a5aa', 'Netviel');
INSERT INTO `merek_barang` VALUES ('e69d0aa90b0f6e97511ce7c0701eb89e', 'Nilfisk');
INSERT INTO `merek_barang` VALUES ('2744b935252589216adad38e17594369', 'Panduit');
INSERT INTO `merek_barang` VALUES ('7e67e7d6575c10145824238d848f6ce2', 'PAZ');
INSERT INTO `merek_barang` VALUES ('8fd12ca82897646ad14b040baea7579f', 'Ruckus');
INSERT INTO `merek_barang` VALUES ('108f41f5242f07d9b92e5d84e6aa8176', 'RXS');
INSERT INTO `merek_barang` VALUES ('0ac270d380a46b0c64a4343139af5da7', 'Seagate');
INSERT INTO `merek_barang` VALUES ('effe3019b543312b0664ee123bfb3158', 'SMC');
INSERT INTO `merek_barang` VALUES ('9cb228a08706abe188e68abaa181dbb5', 'TeraFiber');
INSERT INTO `merek_barang` VALUES ('8652de3c9804a22e39a4e85722af4a84', 'TP-Link');
INSERT INTO `merek_barang` VALUES ('717bdc32183de8e235eacbb71786736a', 'Transceiver Asia');
INSERT INTO `merek_barang` VALUES ('0644c6a0656738e100a66771f58e8977', 'Triple-S');
INSERT INTO `merek_barang` VALUES ('db7e3d36099554785cc81d3dae79ae4e', 'Ubiquiti');
INSERT INTO `merek_barang` VALUES ('e36022063452efa390ed146b4c3373b9', 'Vertiv');
INSERT INTO `merek_barang` VALUES ('27352887bc64f8126db41adc0fadeda3', 'viewmagic');
INSERT INTO `merek_barang` VALUES ('23c079cc374d8423928bb04ac16d737e', 'Volktek');
INSERT INTO `merek_barang` VALUES ('4310bd6c664a9c74d7631c6403eb725b', 'Yofci');

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
INSERT INTO `opd` VALUES ('19', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia ', 'Jimerto No.25-27 Lantai 3');
INSERT INTO `opd` VALUES ('20', 'Badan Kesatuan Bangsa dan Politik', 'Jaksa Agung Suprapto No.2-4 ');
INSERT INTO `opd` VALUES ('23', 'Badan Penanggulangan Bencana Daerah', 'Jemursari Timur Gang 2 No.2');
INSERT INTO `opd` VALUES ('21', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Jimerto No.25-27 Lantai 2 / Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('22', 'Badan Perencanaan Pembangunan Daerah Penelitian dan Pengembangan', 'Pacar No. 8');
INSERT INTO `opd` VALUES ('24', 'Bagian Hukum dan Kerjasama', 'Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('32', 'Bagian Organisasi', 'Jimerto No.25-27 Lantai 3');
INSERT INTO `opd` VALUES ('30', 'Bagian Pemerintahan dan Kesejahteraan Rakyat   ', 'Jimerto No.25-27 Lantai 4');
INSERT INTO `opd` VALUES ('29', 'Bagian Pengadaan Barang/Jasa dan Administrasi Pembangunan', 'Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('31', 'Bagian Perekonomian dan Sumber Daya Alam    ', 'Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('33', 'Bagian Umum, Protokol dan Komunikasi Pimpinan      ', 'Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('2', 'Dinas Kebudayaan, Kepemudaan dan Olah Raga serta Pariwisata   ', 'Tunjungan No.1-3 (ex Gedung Siola)');
INSERT INTO `opd` VALUES ('3', 'Dinas Kependudukan dan Pencatatan Sipil ', 'Tunjungan No.1-3 (ex Gedung Siola)');
INSERT INTO `opd` VALUES ('4', 'Dinas Kesehatan                                                                  ', 'Jemursari No.197 ');
INSERT INTO `opd` VALUES ('5', 'Dinas Ketahanan Pangan dan Pertanian                                    ', 'Pagesangan Gang 2 No.56 ');
INSERT INTO `opd` VALUES ('6', 'Dinas Komunikasi dan lnformatika                                           ', 'Jimerto No.25-27 Lantai 5');
INSERT INTO `opd` VALUES ('13', 'Dinas Koperasi Usaha Kecil dan Menengah dan Perdagangan', 'Tunjungan No.1-3 (ex Gedung Siola)');
INSERT INTO `opd` VALUES ('7', 'Dinas Lingkungan Hidup                                                         ', 'Menur No.31 ');
INSERT INTO `opd` VALUES ('9', 'Dinas Pemadam Kebakaran dan Penyelamatan', 'Pasar Turi No.21 ');
INSERT INTO `opd` VALUES ('12', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak serta', 'Kedungsari No.18 ');
INSERT INTO `opd` VALUES ('10', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Tunjungan No.1-3 (ex Gedung Siola)');
INSERT INTO `opd` VALUES ('11', 'Dinas Pendidikan', 'Jagir Wonokromo No.356 ');
INSERT INTO `opd` VALUES ('14', 'Dinas Perhubungan', 'Dukuh Menanggal No.1 ');
INSERT INTO `opd` VALUES ('18', 'Dinas Perindustrian dan Tenaga Kerja ', 'Penjaringan Asri Gang 9 No.36');
INSERT INTO `opd` VALUES ('15', 'Dinas Perpustakaan dan Kearsipan', 'Tunjungan No.1-3 lt.3 (ex Gedung Siola)');
INSERT INTO `opd` VALUES ('16', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Serta Pertanahan', 'Taman Surya No.1 ');
INSERT INTO `opd` VALUES ('17', 'Dinas Sosial', 'Arief Rahman Hakim No.131-133 ');
INSERT INTO `opd` VALUES ('8', 'Dinas Sumber Daya Air dan Bina Marga', 'Jimerto No.6-8 ');
INSERT INTO `opd` VALUES ('60', 'Kecamatan Asemrowo', 'Asem Raya No.2-A ');
INSERT INTO `opd` VALUES ('35', 'Kecamatan Bubutan', 'Pasar Turi No.1');
INSERT INTO `opd` VALUES ('62', 'Kecamatan Bulak', 'Kyai Tambak Deres No.252 ');
INSERT INTO `opd` VALUES ('59', 'Kecamatan Dukuh Pakis', 'Mayjen HR. Mohammad No.167');
INSERT INTO `opd` VALUES ('57', 'Kecamatan Gayungan', 'Masjid Agung Timur No.2 ');
INSERT INTO `opd` VALUES ('34', 'Kecamatan Genteng', 'BKR Pelajar No.43 ');
INSERT INTO `opd` VALUES ('39', 'Kecamatan Gubeng', 'Gubeng Airlangga Gang 1 No.2 ');
INSERT INTO `opd` VALUES ('55', 'Kecamatan Gunung Anyar', 'Gunung Anyar Timur No.62 ');
INSERT INTO `opd` VALUES ('46', 'Kecamatan Karang Pilang', 'Kebraon Gang 5 Praja ');
INSERT INTO `opd` VALUES ('50', 'Kecamatan Kenjeran', 'Kedung Cowek No.350 ');
INSERT INTO `opd` VALUES ('40', 'Kecamatan Krembangan', 'Gresik No.49 ');
INSERT INTO `opd` VALUES ('52', 'Kecamatan Lakarsantri', 'Raya Lakarsantri No.74-76 ');
INSERT INTO `opd` VALUES ('53', 'Kecamatan Mulyorejo', 'Mulyorejo Utara No.201 ');
INSERT INTO `opd` VALUES ('42', 'Kecamatan Pabean Cantian', 'Teluk Sampit No.2-A ');
INSERT INTO `opd` VALUES ('63', 'Kecamatan Pakal', 'Raya Babat Jerawat No.1A ');
INSERT INTO `opd` VALUES ('48', 'Kecamatan Rungkut', 'Rungkut Asri Utara No.1 ');
INSERT INTO `opd` VALUES ('64', 'Kecamatan Sambikerep', 'Raya Sambikerep No.2 ');
INSERT INTO `opd` VALUES ('44', 'Kecamatan Sawahan', 'Raya Dukuh Kupang No.83-A ');
INSERT INTO `opd` VALUES ('41', 'Kecamatan Semampir', 'Sultan Iskandar Muda No.16 ');
INSERT INTO `opd` VALUES ('37', 'Kecamatan Simokerto', 'Tambakrejo Gang 6 No.2 ');
INSERT INTO `opd` VALUES ('49', 'Kecamatan Sukolilo', 'Nginden Semolo No.89 ');
INSERT INTO `opd` VALUES ('61', 'Kecamatan Sukomanunggal', 'Simomulyo Gang 1 No.31');
INSERT INTO `opd` VALUES ('38', 'Kecamatan Tambaksari', 'Mendut No.7 ');
INSERT INTO `opd` VALUES ('45', 'Kecamatan Tandes', 'Kompleks Perumnas Balongsari Tandes  / Raya Tandes');
INSERT INTO `opd` VALUES ('36', 'Kecamatan Tegalsari', 'Tanggulangin No.12 ');
INSERT INTO `opd` VALUES ('54', 'Kecamatan Tenggilis Mejoyo', 'Prapen Indah Gang 1 ');
INSERT INTO `opd` VALUES ('58', 'Kecamatan Wiyung', 'Raya Menganti Wiyung ');
INSERT INTO `opd` VALUES ('47', 'Kecamatan Wonocolo', 'Jemursari Gang 2 No.33 ');
INSERT INTO `opd` VALUES ('43', 'Kecamatan Wonokromo', 'Cisedane No.51 ');
INSERT INTO `opd` VALUES ('51', 'Kecamatan Benowo', 'Raya Kedung');
INSERT INTO `opd` VALUES ('56', 'Kecamatan Jambangan', 'Jambangan Sawah No.2 ');
INSERT INTO `opd` VALUES ('144', 'Kelurahan Airlangga', 'Gubeng Kertajaya Gang 9C No.42');
INSERT INTO `opd` VALUES ('65', 'Kelurahan Alun-Alun Contong ', 'Bubutan Gang 5 No.19');
INSERT INTO `opd` VALUES ('102', 'Kelurahan Ampel', 'Pegirian No.242-244');
INSERT INTO `opd` VALUES ('185', 'Kelurahan Asemrowo', 'Asem Raya No.2A');
INSERT INTO `opd` VALUES ('198', 'Kelurahan Babat Jerawat', 'Babatan Jerawat');
INSERT INTO `opd` VALUES ('129', 'Kelurahan Babatan', 'Menganti Babatan No.2');
INSERT INTO `opd` VALUES ('130', 'Kelurahan Balas Klumprik', 'Balasklumprik No.99');
INSERT INTO `opd` VALUES ('212', 'Kelurahan Balongsari', 'Komplek Perumnas Balongsari Tandes');
INSERT INTO `opd` VALUES ('192', 'Kelurahan Bangkingan', 'Bangkingan Gang Asap');
INSERT INTO `opd` VALUES ('213', 'Kelurahan Banjar Sugihan', 'Raya Banjarsugihan N.8');
INSERT INTO `opd` VALUES ('123', 'Kelurahan Banyu Urip', 'Banyu Urip Kidul Gang 4 No.39');
INSERT INTO `opd` VALUES ('145', 'Kelurahan Baratajaya', 'Manyar No.80');
INSERT INTO `opd` VALUES ('133', 'Kelurahan Bendul Merisi', 'Bendul Merisi Permai No.23A');
INSERT INTO `opd` VALUES ('199', 'Kelurahan Benowo', 'Benowo No.88');
INSERT INTO `opd` VALUES ('98', 'Kelurahan Bongkaran', 'Coklat No.5');
INSERT INTO `opd` VALUES ('202', 'Kelurahan Bringin', 'Raya Sambikerep No. 2');
INSERT INTO `opd` VALUES ('66', 'Kelurahan Bubutan', 'Koblen Tengah No.22');
INSERT INTO `opd` VALUES ('85', 'Kelurahan Bulak', 'Kyai Tambak Deres No.4');
INSERT INTO `opd` VALUES ('89', 'Kelurahan Bulak Banteng', 'Bulak Banteng Lor No.127');
INSERT INTO `opd` VALUES ('138', 'Kelurahan Darmo', 'Kampar No.10');
INSERT INTO `opd` VALUES ('80', 'Kelurahan Dr.Soetomo', 'Pandegiling No.225');
INSERT INTO `opd` VALUES ('107', 'Kelurahan Dukuh Kupang', 'Dukuh Kupang Barat Gang 24 No.17');
INSERT INTO `opd` VALUES ('111', 'Kelurahan Dukuh Menanggal', 'Dukuh Menanggal Gang 8 No.6');
INSERT INTO `opd` VALUES ('108', 'Kelurahan Dukuh Pakis', 'Dukuh Pakis Gang 1 No.21');
INSERT INTO `opd` VALUES ('174', 'Kelurahan Dukuh Setro', 'Lebak Arum Gang 5 No.44');
INSERT INTO `opd` VALUES ('154', 'Kelurahan Dukuh Sutorejo', 'Labansari No.1');
INSERT INTO `opd` VALUES ('93', 'Kelurahan Dupak', 'Dupak Bandarejo Gang 1 No.11');
INSERT INTO `opd` VALUES ('70', 'Kelurahan Embong Kaliasin', 'Embong Sawo No.10');
INSERT INTO `opd` VALUES ('173', 'Kelurahan Gading', 'Kenjeran No.424');
INSERT INTO `opd` VALUES ('112', 'Kelurahan Gayungan', 'Gayungan Pasar');
INSERT INTO `opd` VALUES ('166', 'Kelurahan Gebang Putih', 'Gebang Putih');
INSERT INTO `opd` VALUES ('71', 'Kelurahan Genteng', 'Genteng Muhammadiyah No.19');
INSERT INTO `opd` VALUES ('186', 'Kelurahan Genting Kalianak', 'Kalianak Barat 51 Blok 35');
INSERT INTO `opd` VALUES ('146', 'Kelurahan Gubeng', 'Nias No.24');
INSERT INTO `opd` VALUES ('67', 'Kelurahan Gundih', 'Gundih Gang 5 No.12');
INSERT INTO `opd` VALUES ('150', 'Kelurahan Gunung Anyar', 'Gunung Anyar Timur No.64');
INSERT INTO `opd` VALUES ('151', 'Kelurahan Gunung Anyar Tambak', 'Wisma Gunung Anyar Timur No.66A');
INSERT INTO `opd` VALUES ('109', 'Kelurahan Gunung Sari', 'Kencanasari Timur Gang 11 No.101');
INSERT INTO `opd` VALUES ('139', 'Kelurahan Jagir', 'Bendul Merisi No.25');
INSERT INTO `opd` VALUES ('131', 'Kelurahan Jajar Tunggal', 'Menganti Kramat / Wiyung Indah');
INSERT INTO `opd` VALUES ('115', 'Kelurahan Jambangan', 'Jambangan Sawah No.3');
INSERT INTO `opd` VALUES ('134', 'Kelurahan Jemur Wonosari', 'Jemursari Gang 7 No.49');
INSERT INTO `opd` VALUES ('68', 'Kelurahan Jepara', 'Alamat : Jalan Demak No.276');
INSERT INTO `opd` VALUES ('193', 'Kelurahan Jeruk', 'Menganti Jeruk No.125');
INSERT INTO `opd` VALUES ('155', 'Kelurahan Kalijudan', 'Kalijudan No.123');
INSERT INTO `opd` VALUES ('160', 'Kelurahan Kalirungkut', 'Rungkut Asri Utara No.1');
INSERT INTO `opd` VALUES ('156', 'Kelurahan Kalisari', 'Mulyosari Tengah Gang 7 No.76');
INSERT INTO `opd` VALUES ('188', 'Kelurahan Kandangan', 'Raya Kandangan No.18');
INSERT INTO `opd` VALUES ('175', 'Kelurahan Kapas Madya', 'Kapas Madya Gang 2 No.54');
INSERT INTO `opd` VALUES ('75', 'Kelurahan Kapasan', 'Taman Kapasan Dalam Gang 3 No.4');
INSERT INTO `opd` VALUES ('72', 'Kelurahan Kapasari', 'Kapasari Gang 3 No.27');
INSERT INTO `opd` VALUES ('116', 'Kelurahan Karah', 'Bibis Karah No.1');
INSERT INTO `opd` VALUES ('119', 'Kelurahan Karangpilang', 'Ksatrian 10 ');
INSERT INTO `opd` VALUES ('214', 'Kelurahan Karangpoh', 'Darmo Indah Asri No.2');
INSERT INTO `opd` VALUES ('117', 'Kelurahan Kebonsari', 'Kebonsari Manunggal No.22');
INSERT INTO `opd` VALUES ('120', 'Kelurahan Kebraon', 'Kebraon Gang 5 Praja');
INSERT INTO `opd` VALUES ('161', 'Kelurahan Kedung Baruk', 'Raya Kedung Asem  No.59');
INSERT INTO `opd` VALUES ('86', 'Kelurahan Kedung Cowek', 'Nambangan No.1');
INSERT INTO `opd` VALUES ('81', 'Kelurahan Kedungdoro', 'Plemahan Gang 6 No.1-3');
INSERT INTO `opd` VALUES ('121', 'Kelurahan Kedurus', 'Mastrip Kedurus No.34');
INSERT INTO `opd` VALUES ('157', 'Kelurahan Kejawan Putih Tambak', 'Kejawan Putih Tambak No.48');
INSERT INTO `opd` VALUES ('94', 'Kelurahan Kemayoran', 'Krembangan Baru No.49');
INSERT INTO `opd` VALUES ('181', 'Kelurahan Kendangsari', 'Kendangsari No.7');
INSERT INTO `opd` VALUES ('87', 'Kelurahan Kenjeran', 'Tambak Deres No.1');
INSERT INTO `opd` VALUES ('167', 'Kelurahan Keputih', 'Keputih Tegal No.25');
INSERT INTO `opd` VALUES ('82', 'Kelurahan Keputran', 'Doho No.20');
INSERT INTO `opd` VALUES ('147', 'Kelurahan Kertajaya', 'Pucang Adi No.116');
INSERT INTO `opd` VALUES ('73', 'Kelurahan Ketabang', 'Ambengan No.36');
INSERT INTO `opd` VALUES ('113', 'Kelurahan Ketintang', 'Ketintang Madya No.1');
INSERT INTO `opd` VALUES ('168', 'Kelurahan Klampis Ngasem', 'Arif Rahman Hakim No.103 C');
INSERT INTO `opd` VALUES ('95', 'Kelurahan Krembangan Selatan', 'Pesapen Selatan No.4');
INSERT INTO `opd` VALUES ('99', 'Kelurahan Krembangan Utara', 'Kalisosok No.27');
INSERT INTO `opd` VALUES ('124', 'Kelurahan Kupang Krajan', 'Petemon Barat No.187');
INSERT INTO `opd` VALUES ('182', 'Kelurahan Kutisari', 'Kutisari Utara No.69');
INSERT INTO `opd` VALUES ('194', 'Kelurahan Lakarsantri', 'Lakarsantri No.36');
INSERT INTO `opd` VALUES ('195', 'Kelurahan Lidah Kulon', 'Lidah Kulon No.5');
INSERT INTO `opd` VALUES ('196', 'Kelurahan Lidah Wetan', 'Lidah Wetan No.27');
INSERT INTO `opd` VALUES ('203', 'Kelurahan Lontar', 'Raya Lontar No.5');
INSERT INTO `opd` VALUES ('204', 'Kelurahan Made', 'Made');
INSERT INTO `opd` VALUES ('215', 'Kelurahan Manukan Kulon', 'Manukan Kulon I');
INSERT INTO `opd` VALUES ('216', 'Kelurahan Manukan Wetan', 'Sikatan Gang 2 No.71');
INSERT INTO `opd` VALUES ('158', 'Kelurahan Manyar Sabrangan', 'Manyar Kertoadi No.14');
INSERT INTO `opd` VALUES ('135', 'Kelurahan Margorejo', 'Margorejo Masjid No.32');
INSERT INTO `opd` VALUES ('162', 'Kelurahan Medoan Ayu', 'Medokan Ayu Utara Gang 4 No.35E');
INSERT INTO `opd` VALUES ('169', 'Kelurahan Medokan Semampir', 'Semampir Tengah No.63');
INSERT INTO `opd` VALUES ('114', 'Kelurahan Menanggal', 'Cipta Menanggal Gang 1 No.11');
INSERT INTO `opd` VALUES ('170', 'Kelurahan Menur Pumpungan', 'Manyar Jaya Gang 8');
INSERT INTO `opd` VALUES ('148', 'Kelurahan Mojo', 'Kalidami No.41');
INSERT INTO `opd` VALUES ('96', 'Kelurahan Morokrembangan', 'Sedayu Gang 4 No.30');
INSERT INTO `opd` VALUES ('159', 'Kelurahan Mulyorejo', 'Mulyorejo Utara No.201');
INSERT INTO `opd` VALUES ('140', 'Kelurahan Ngagel', 'Ngagel No.11');
INSERT INTO `opd` VALUES ('141', 'Kelurahan Ngagel Rejo', 'Ngagel Tirtosari No.1');
INSERT INTO `opd` VALUES ('171', 'Kelurahan Nginden Jangkungan', 'Nginden Permata No.1');
INSERT INTO `opd` VALUES ('100', 'Kelurahan Nyamplungan', 'KH. Mas Mansyur Gang 1 No.73');
INSERT INTO `opd` VALUES ('176', 'Kelurahan Pacarkeling', 'Jolotundo Baru Gang 3 No.14');
INSERT INTO `opd` VALUES ('177', 'Kelurahan Pacarkembang', 'Bronggalan Sawah Gang 2 No.24');
INSERT INTO `opd` VALUES ('118', 'Kelurahan Pagesangan', 'Pagesangan Gang 3 No.6');
INSERT INTO `opd` VALUES ('200', 'Kelurahan Pakal', 'Pakal AMD');
INSERT INTO `opd` VALUES ('125', 'Kelurahan Pakis', 'Dukuh Kupang Timur Gang 20 No.791');
INSERT INTO `opd` VALUES ('183', 'Kelurahan Panjang Jiwo', 'Saronojiwo No.45');
INSERT INTO `opd` VALUES ('103', 'Kelurahan Pegirian', 'Wonokusumo Kidul No.42');
INSERT INTO `opd` VALUES ('74', 'Kelurahan Peneleh', 'Mas Soendjoto No.4');
INSERT INTO `opd` VALUES ('163', 'Kelurahan Penjaringansari', 'Kendalsari Selatan No.28');
INSERT INTO `opd` VALUES ('97', 'Kelurahan Perak Barat', 'Ikan Dorang No.17-19');
INSERT INTO `opd` VALUES ('126', 'Kelurahan Petemon', 'Jalan Petemon Barat No.132');
INSERT INTO `opd` VALUES ('178', 'Kelurahan Ploso', 'Ploso Bogen No.43');
INSERT INTO `opd` VALUES ('110', 'Kelurahan Pradah Kali Kendal', 'Mayjen HR. Mohammad No.167');
INSERT INTO `opd` VALUES ('149', 'Kelurahan Pucang Sewu', 'Pucang Sewu No.8');
INSERT INTO `opd` VALUES ('206', 'Kelurahan Putat Gede', 'Mayjen HR. Mohammad No.30');
INSERT INTO `opd` VALUES ('127', 'Kelurahan Putat Jaya', 'Dukuh Kupang  No.5');
INSERT INTO `opd` VALUES ('179', 'Kelurahan Rangkah', 'Alun-alun Rangkah No.25');
INSERT INTO `opd` VALUES ('189', 'Kelurahan Romokalisari', 'Raya Romokalisari');
INSERT INTO `opd` VALUES ('164', 'Kelurahan Rungkut Kidul', 'Rungkut Asri No.3-B');
INSERT INTO `opd` VALUES ('152', 'Kelurahan Rungkut Menanggal', 'Rungkut Menanggal No.8');
INSERT INTO `opd` VALUES ('153', 'Kelurahan Rungkut Tengah', 'Rungkut Permai Gang 2 No.1');
INSERT INTO `opd` VALUES ('205', 'Kelurahan Sambikerep', 'Sambikerep No.121');
INSERT INTO `opd` VALUES ('128', 'Kelurahan Sawahan', 'Arjuna No.121');
INSERT INTO `opd` VALUES ('142', 'Kelurahan Sawunggaling', 'Wonoboyo No.20');
INSERT INTO `opd` VALUES ('190', 'Kelurahan Sememi', 'Kendung');
INSERT INTO `opd` VALUES ('172', 'Kelurahan Semolowaru', 'Semolowaru No.160');
INSERT INTO `opd` VALUES ('76', 'Kelurahan Sidodadi', 'Sidodadi Gang 9 No.6');
INSERT INTO `opd` VALUES ('136', 'Kelurahan Sidosermo', 'Sidosermo Gang 4 No.7');
INSERT INTO `opd` VALUES ('104', 'Kelurahan Sidotopo', 'Pegirian No.242-244');
INSERT INTO `opd` VALUES ('90', 'Kelurahan Sidotopo Wetan', 'Sidotopo Wetan Gang 2 No.1');
INSERT INTO `opd` VALUES ('77', 'Kelurahan Simokerto', 'Simokerto No.77');
INSERT INTO `opd` VALUES ('78', 'Kelurahan Simolawang', 'Sidodadi Gang 4 No.20');
INSERT INTO `opd` VALUES ('207', 'Kelurahan Simomulyo', 'Simomulyo Gang 1 No.59');
INSERT INTO `opd` VALUES ('208', 'Kelurahan Simomulyo Baru', 'Simo Gunung Barat Tol Gang 1 No.65 / Simo Pomahan VIII');
INSERT INTO `opd` VALUES ('137', 'Kelurahan Siwalankerto', 'Siwalankerto No.22');
INSERT INTO `opd` VALUES ('209', 'Kelurahan Sonokwijenan', 'Kupang Jaya Gang 1 No.1');
INSERT INTO `opd` VALUES ('88', 'Kelurahan Sukolilo Baru', 'Sukolilo Larangan No.7-8');
INSERT INTO `opd` VALUES ('210', 'Kelurahan Sukomanunggal', 'Donowati Gang 1 No.8');
INSERT INTO `opd` VALUES ('201', 'Kelurahan Sumber Rejo', 'Sumber Rejo');
INSERT INTO `opd` VALUES ('197', 'Kelurahan Sumur Welut', 'Sumur Welut');
INSERT INTO `opd` VALUES ('191', 'Kelurahan Tambak Oso Wilangun', 'Tambak Osowilangun');
INSERT INTO `opd` VALUES ('79', 'Kelurahan Tambak Rejo', 'Ngaglik No.87');
INSERT INTO `opd` VALUES ('187', 'Kelurahan Tambak Sarioso', 'Tambak Osowilangun No.45');
INSERT INTO `opd` VALUES ('91', 'Kelurahan Tambak Wedi', 'Tambak Wedi Baru No.135');
INSERT INTO `opd` VALUES ('180', 'Kelurahan Tambaksari', 'Tambaksari No.35');
INSERT INTO `opd` VALUES ('92', 'Kelurahan Tanah Kali Kedinding', 'Kedung Cowek No.348');
INSERT INTO `opd` VALUES ('217', 'Kelurahan Tandes', 'Darmo Indah Blok K No.10');
INSERT INTO `opd` VALUES ('101', 'Kelurahan Tanjung Perak', 'Johar No.1-A');
INSERT INTO `opd` VALUES ('211', 'Kelurahan Tanjungsari', 'Tanjungsari No.72');
INSERT INTO `opd` VALUES ('83', 'Kelurahan Tegalsari', 'Kampung Malang Tengah Gang 1 No.9');
INSERT INTO `opd` VALUES ('69', 'Kelurahan Tembok Dukuh', 'Demak Selatan Gang 5 No.2');
INSERT INTO `opd` VALUES ('184', 'Kelurahan Tenggilis Mejoyo', 'Tenggilis Mejoyo BB No.1');
INSERT INTO `opd` VALUES ('105', 'Kelurahan Ujung', 'Sawahpulo SR No.2');
INSERT INTO `opd` VALUES ('122', 'Kelurahan Waru Gunung', 'Mastrip Warugunung');
INSERT INTO `opd` VALUES ('132', 'Kelurahan Wiyung', 'Raya Menganti Wiyung Surabaya');
INSERT INTO `opd` VALUES ('143', 'Kelurahan Wonokromo', 'Pulo Wonokromo No.253 B');
INSERT INTO `opd` VALUES ('106', 'Kelurahan Wonokusumo', 'Bulaksari Gang 5 No.14');
INSERT INTO `opd` VALUES ('165', 'Kelurahan Wonorejo', 'Wonorejo Rungkut No.1');
INSERT INTO `opd` VALUES ('84', 'Kelurahan Wonorejo', 'Wonorejo Gang 4 No.48');
INSERT INTO `opd` VALUES ('1', 'lnspektorat', 'Sedap Malam No.5-7');
INSERT INTO `opd` VALUES ('273', 'Poskesmas Tambakwedi', 'Tambak Wedi Lama');
INSERT INTO `opd` VALUES ('218', 'Puskesmas Asemrowo ', 'Asem Raya No.8');
INSERT INTO `opd` VALUES ('219', 'Puskesmas Balasklumprik', 'Raya Balas Klumprik');
INSERT INTO `opd` VALUES ('220', 'Puskesmas Balongsari', 'Balongsari Tama No.2');
INSERT INTO `opd` VALUES ('221', 'Puskesmas Bangkingan', 'Bangkingan Pesarean No.3-4');
INSERT INTO `opd` VALUES ('222', 'Puskesmas Banyuurip', 'Banyu Urip Kidul Gang 6 No.8');
INSERT INTO `opd` VALUES ('223', 'Puskesmas Benowo ', 'Raya Benowo No.48');
INSERT INTO `opd` VALUES ('224', 'Puskesmas Bulakbanteng', 'Dukuh Bulak Banteng Perintis Utama Lebar No.35');
INSERT INTO `opd` VALUES ('225', 'Puskesmas Drsoetomo', 'Pandegiling No.223-A');
INSERT INTO `opd` VALUES ('226', 'Puskesmas Dukuhkupang', 'Dukuh Kupang Gang 25 No.48');
INSERT INTO `opd` VALUES ('227', 'Puskesmas Dupak', 'Dupak Bangunrejo Gang Poliklinik No.6');
INSERT INTO `opd` VALUES ('228', 'Puskesmas Gading', 'Kapas Lor Gang 1 No.1');
INSERT INTO `opd` VALUES ('229', 'Puskesmas Gayungan', 'Gayungsari Barat No.124');
INSERT INTO `opd` VALUES ('230', 'Puskesmas Gundih', 'Margodadi No.36 - 38');
INSERT INTO `opd` VALUES ('231', 'Puskesmas Gununganyar                                            ', 'Gunung Anyar Lor No.70');
INSERT INTO `opd` VALUES ('232', 'Puskesmas Jagir                                                         ', 'Bendul Merisi No.1');
INSERT INTO `opd` VALUES ('233', 'Puskesmas Jemursari', 'Jemursari Selatan Gang 4 No.5');
INSERT INTO `opd` VALUES ('234', 'Puskesmas Jeruk', 'Raya Menganti Jeruk No.277A');
INSERT INTO `opd` VALUES ('236', 'Puskesmas Kalirungkut', 'Rungkut Puskesmas No.1');
INSERT INTO `opd` VALUES ('235', 'Puskesmas Kaljudan', 'Kalijudan No.123');
INSERT INTO `opd` VALUES ('237', 'Puskesmas Kebonsari', 'Kebonsari Manunggal No.30 - 31');
INSERT INTO `opd` VALUES ('238', 'Puskesmas Kedungdoro', 'Kaliasin Pompa No.79-81');
INSERT INTO `opd` VALUES ('239', 'Puskesmas Kedurus', 'Raya Kedurus No.46');
INSERT INTO `opd` VALUES ('240', 'Puskesmas Kenjeran', 'Tambak Deres No.2');
INSERT INTO `opd` VALUES ('241', 'Puskesmas Keputih', 'Keputih Tegal No.19');
INSERT INTO `opd` VALUES ('242', 'Puskesmas Ketabang', 'Jaksa Agung Suprapto No.10');
INSERT INTO `opd` VALUES ('243', 'Puskesmas Klampisngasem', 'Arif Rahman Hakim No.99B');
INSERT INTO `opd` VALUES ('244', 'Puskesmas Krembanganselatan', 'Pesapen Selatan No. 70');
INSERT INTO `opd` VALUES ('245', 'Puskesmas Lidahkulon', 'Menganti No.1111A');
INSERT INTO `opd` VALUES ('246', 'Puskesmas Lontar', 'Lontar No.26');
INSERT INTO `opd` VALUES ('247', 'Puskesmas Made', 'Raya Made No.116');
INSERT INTO `opd` VALUES ('248', 'Puskesmas Manukankulon', 'Manukan Dalam No.12');
INSERT INTO `opd` VALUES ('249', 'Puskesmas Medokanayu', 'Medokan Asri Utara Gang 4 No.31');
INSERT INTO `opd` VALUES ('250', 'Puskesmas Menur', 'Manyar Rejo Gang 1 No.35');
INSERT INTO `opd` VALUES ('251', 'Puskesmas Mojo', 'Mojo Klanggru Wetan Gang 2 No.11');
INSERT INTO `opd` VALUES ('252', 'Puskesmas Morokrembangan', 'Tambakasri Gang 13 No.7');
INSERT INTO `opd` VALUES ('253', 'Puskesmas Mulyorejo', 'Mulyorejo Utara No.201');
INSERT INTO `opd` VALUES ('254', 'Puskesmas Ngagelrejo', 'Ngagel Dadi Gang 3 No.17');
INSERT INTO `opd` VALUES ('255', 'Puskesmas Pacarkeling', 'Jolotundo Baru Gang 3 No.16');
INSERT INTO `opd` VALUES ('256', 'Puskesmas Pakis', 'Kembang Kuning No.2');
INSERT INTO `opd` VALUES ('257', 'Puskesmas Pegirian', 'Karang Tembok No.39');
INSERT INTO `opd` VALUES ('258', 'Puskesmas Peneleh', 'Makam Peneleh No.35');
INSERT INTO `opd` VALUES ('259', 'Puskesmas Peraktimur', 'Jakarta No.9');
INSERT INTO `opd` VALUES ('260', 'Puskesmas Pucangsewu', 'Pucang Anom Timur No.72');
INSERT INTO `opd` VALUES ('261', 'Puskesmas Putatjaya', 'Kupang Gunung Gang 5 No.16');
INSERT INTO `opd` VALUES ('262', 'Puskesmas Rangkah', 'Rangkah Gang 7 No.94');
INSERT INTO `opd` VALUES ('263', 'Puskesmas Sawahan', 'Raya Arjuna No.119');
INSERT INTO `opd` VALUES ('264', 'Puskesmas Sawahpulo', 'Sawah Pulo Lapangan No.2');
INSERT INTO `opd` VALUES ('265', 'Puskesmas Sememi', 'Kendung');
INSERT INTO `opd` VALUES ('266', 'Puskesmas Sidosermo', 'Sidosermo Gang Damri No.51');
INSERT INTO `opd` VALUES ('267', 'Puskesmas Sidotopo', 'Pegirian No.239');
INSERT INTO `opd` VALUES ('268', 'Puskesmas Sidotopowetan', 'Randu No.38');
INSERT INTO `opd` VALUES ('269', 'Puskesmas Simolawang', 'Simolawang Gang 2 Barat No.45A');
INSERT INTO `opd` VALUES ('270', 'Puskesmas Simomulyo', 'Gumuk Bogo No.1');
INSERT INTO `opd` VALUES ('271', 'Puskesmas Siwalankerto', 'Siwalankerto No.134');
INSERT INTO `opd` VALUES ('272', 'Puskesmas Tambakrejo', 'Ngaglik No.87');
INSERT INTO `opd` VALUES ('274', 'Puskesmas Tanahkalikedinding', 'Kedung Cowek No.226');
INSERT INTO `opd` VALUES ('275', 'Puskesmas Tanjungsari', 'Raya Tanjungsari No.116');
INSERT INTO `opd` VALUES ('276', 'Puskesmas Tembokdukuh', 'Kalibutuh No.26');
INSERT INTO `opd` VALUES ('277', 'Puskesmas Tenggilis', 'Rungkut Mejoyo Selatan Gang 4 No.48-P');
INSERT INTO `opd` VALUES ('278', 'Puskesmas Wiyung', 'Menganti Wiyung Pasar No. 1');
INSERT INTO `opd` VALUES ('279', 'Puskesmas Wonokromo', 'Karangrejo Gang 6 No.4');
INSERT INTO `opd` VALUES ('280', 'Puskesmas Wonokusumo', 'Wonokusumo Tengah No.55');
INSERT INTO `opd` VALUES ('25', 'RSUD Bhakti Dharma Husada ', 'Raya Kendung No.115-117');
INSERT INTO `opd` VALUES ('26', 'RSUD dr.Mohamad Soewandhie ', 'Tambakrejo No.45-47');
INSERT INTO `opd` VALUES ('27', 'Satuan Polisi Pamong Praja   ', 'Jaksa Agung Suprapto No.6 ');
INSERT INTO `opd` VALUES ('28', 'Sekretariat DPRD  ', 'Yos Sudarso No.18-22');

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
INSERT INTO `pengguna` VALUES ('23da7b47cb1ed0a4fb416ede90856dfa', 'saasfsaf', '$2y$10$Zt7AxxLJze8rcPUGzJHnLO0uaI232XbNfn4Shvsoap3xJZEMhTRTm', 'uwuwuku', 'tiga');
INSERT INTO `pengguna` VALUES ('3', 'petugas', '$2y$10$dNMvL5ULuWSYhokj4G/J.uhFWGVCYQtbzNAratNe/B841R9gVh/qa', 'wong kantor', 'dua');
INSERT INTO `pengguna` VALUES ('3d73677809ff941b9a067f18a71ccd9a', 'StaffLapangan', '$2y$10$FnOkvBOwoTRTuB/4tVuiRO2vB7kxIGwpIClsJK1xk18EnYIqofY4G', 'wong njobo', 'tiga');
INSERT INTO `pengguna` VALUES ('6aa17264c3a09090550602a3fb6a5624', 'administrator', '$2y$10$xh7Ptt/IcOQ5dGVdPOty7.tu2osO4vOFBN1DY/WTlzqfy8.CMuZoy', 'Admin', 'satu');

-- ----------------------------
-- Table structure for sementara
-- ----------------------------
DROP TABLE IF EXISTS `sementara`;
CREATE TABLE `sementara`  (
  `id_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_merek_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_jenis_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_serial_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_barang_sementara` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `join_opd_sementara` varchar(266) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `detail_lokasi_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `koordinat_barang_sementara` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk_barang_sementara` timestamp NULL DEFAULT current_timestamp,
  `tanggal_update_barang_sementara` timestamp NULL DEFAULT current_timestamp,
  `join_pengguna_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar_barang_sementara` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang_sementara`) USING BTREE,
  INDEX `nama`(`join_pengguna_sementara`) USING BTREE,
  INDEX `jenis_barang`(`join_jenis_barang_sementara`) USING BTREE,
  INDEX `merek_barang`(`join_merek_barang_sementara`) USING BTREE,
  INDEX `opd`(`join_opd_sementara`) USING BTREE,
  INDEX `gambar`(`gambar_barang_sementara`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sementara
-- ----------------------------

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
