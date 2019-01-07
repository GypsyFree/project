/*
 Navicat Premium Data Transfer

 Source Server         : yuyingluntan
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : yuying

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 07/01/2019 01:34:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chatwithpeople
-- ----------------------------
DROP TABLE IF EXISTS `chatwithpeople`;
CREATE TABLE `chatwithpeople`  (
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(3) NOT NULL,
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`) USING BTREE,
  INDEX `ReceivePhone`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `chatwithpeople_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chatwithpeople_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chatwithpeople
-- ----------------------------
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'rewewewew', '2018-12-29 07:27:53.858');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 're', '2018-12-29 07:27:56.309');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:27:59.095');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:31:04.160');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:31:14.256');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:33:59.157');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.418');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.596');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.743');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.878');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.019');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.172');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.327');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.468');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.646');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.793');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.958');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.120');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.279');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.452');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.620');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.784');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.972');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.166');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.359');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.569');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.789');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.027');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.280');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.543');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.798');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.081');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.396');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.750');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:39:09.100');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:39:10.285');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.018');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.379');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.730');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.119');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.524');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.944');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:20.356');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.141');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.306');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.448');
INSERT INTO `chatwithpeople` VALUES ('15964245544', '15964245555', '你好呀\n', '2019-01-06 14:50:21.436');
INSERT INTO `chatwithpeople` VALUES ('15964245544', '15964245555', '別發啦', '2019-01-06 14:50:38.923');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:07.027');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.618');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.791');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.962');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.112');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.265');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.407');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfg', '2019-01-02 10:21:39.055');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrw', '2019-01-02 10:21:47.686');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerw', '2019-01-02 10:21:48.859');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwwr', '2019-01-02 10:21:49.643');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwwrwerwe', '2019-01-02 10:21:50.468');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:50.953');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.124');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.266');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:45.798');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:45.949');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:46.100');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:46.251');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:46.411');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:46.564');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:47:46.699');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:19.453');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:19.604');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:19.740');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:19.833');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:19.980');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:20.131');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:40.932');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:41.084');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'fdssdfsdfs', '2019-01-06 14:48:41.252');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:02.760');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:02.928');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:03.119');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:03.238');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:03.383');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:30.846');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:30.998');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.245');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.388');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.524');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.660');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.795');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:31.908');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245544', 'csfsdf', '2019-01-06 14:50:32.052');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:21.810');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:22.690');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:22.843');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.001');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.144');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.271');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.409');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.552');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.680');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.833');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:23.977');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'asdads', '2019-01-05 07:03:24.112');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:08:56.833');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:08:57.360');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:08:57.520');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:08:57.679');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:08:57.809');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:49.721');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:50.682');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:50.857');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:51.026');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:51.167');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:51.320');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:51.472');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:09:51.632');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:11:37.953');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:11:38.346');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:11:38.540');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:12:03.570');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:12:03.934');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:12:04.065');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:13:13.353');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:13:13.539');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:13:13.707');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:13:13.865');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:19:52.819');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:19:53.132');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:19:53.290');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:19:53.436');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:19:53.585');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:23:15.506');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:23:15.684');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:23:15.842');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'sa', '2019-01-05 07:23:15.970');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:26.441');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:26.612');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:26.766');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:26.918');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.046');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.188');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.335');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.491');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.628');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.765');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:31:27.907');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:33:28.022');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:33:28.177');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:33:28.324');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'zxcc', '2019-01-05 07:33:28.492');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:16:56.412');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:16:56.850');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:16:57.010');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:16:57.194');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:16:57.301');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:07.152');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:07.306');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:07.464');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:34.937');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:35.120');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:35.279');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:52.439');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:18:52.607');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:19:07.401');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:19:07.568');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:32.439');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:32.608');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:32.777');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:32.920');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:33.079');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:33.241');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:22:33.400');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'vsdfgdsf', '2019-01-05 08:23:14.817');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:31:26.020');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:31:26.491');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:31:26.650');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:32:19.556');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:38:17.771');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:38:18.059');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:38:54.331');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:38:54.503');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'dd', '2019-01-05 08:46:45.428');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'df', '2019-01-05 09:23:34.274');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'df', '2019-01-05 09:24:34.197');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'df', '2019-01-05 09:25:08.737');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'df', '2019-01-05 09:25:42.631');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'df', '2019-01-05 09:25:42.774');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', '幅度萨芬', '2019-01-05 12:31:29.025');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', '幅度萨芬', '2019-01-05 12:33:35.480');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', '幅度萨芬', '2019-01-05 12:33:35.637');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssss', '2019-01-05 12:37:10.253');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssss', '2019-01-05 12:37:10.389');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssss', '2019-01-05 12:37:10.535');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssss', '2019-01-05 12:37:10.701');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ss', '2019-01-05 12:46:55.325');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ss', '2019-01-05 12:47:45.053');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ss', '2019-01-05 12:47:45.381');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ss', '2019-01-05 12:47:45.533');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 12:47:55.644');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:05.701');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:10.439');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:10.614');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:10.765');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:10.917');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:11.062');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:11.205');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:11.350');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:11.517');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:18.119');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:18.280');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:01:18.430');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:00.376');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:00.527');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:00.671');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:00.824');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:00.967');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:01.135');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:21.935');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:22.088');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:22.247');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:22.399');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:22.542');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:22.711');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:28.297');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:12:28.424');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:17:40.465');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:17:40.633');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:17:40.793');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:20:11.811');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:20:11.980');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:20:51.600');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:20:51.762');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'ssdasdas', '2019-01-05 13:20:51.920');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:22:29.198');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:21.659');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:21.802');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:21.953');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:22.112');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:22.256');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:22.417');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:23:22.576');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:29:45.418');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:29:45.577');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:29:45.737');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:29:45.874');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:36:04.139');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:36:04.290');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:36:04.434');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:36:04.601');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:37:45.130');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:37:45.299');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:37:45.458');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:37:45.602');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsda ', '2019-01-05 13:37:45.746');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:49:20.059');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:49:20.218');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:49:20.361');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:49:20.514');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:49:20.649');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:53:24.564');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:53:59.403');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fdsfsd', '2019-01-05 13:53:59.563');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsdfsd', '2019-01-05 13:57:40.682');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fsdfsd', '2019-01-05 13:57:41.382');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:37.373');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:37.549');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:37.709');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:37.860');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:38.013');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:44.837');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:45.005');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:45.148');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:45.285');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:45.422');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'adsffsadsadf', '2019-01-05 14:07:45.573');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxczx', '2019-01-06 05:39:28.655');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxczx', '2019-01-06 05:39:28.821');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.036');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.198');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.349');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.476');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.605');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'czxcvcbvbv', '2019-01-06 05:39:47.741');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fasfasdf', '2019-01-06 07:38:05.650');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fasfasdf', '2019-01-06 07:38:06.339');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245588', 'fasfasdf', '2019-01-06 07:38:06.490');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '[object HTMLTextAreaElement]', '2019-01-05 13:47:40.807');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:48:26.217');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:50:34.482');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:50:43.804');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:10.173');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:11.968');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:14.802');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:16.633');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:21.838');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:25.194');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:51:37.658');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:52:11.581');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:52:27.274');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:52:32.071');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:52:40.169');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:52:53.847');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:53:03.849');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:57:50.346');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '', '2019-01-05 13:59:04.257');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'fsdfds', '2019-01-05 13:59:35.176');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'fsfd', '2019-01-05 14:00:17.407');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'tewt ', '2019-01-05 14:01:18.644');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'dgdfg', '2019-01-05 14:01:21.557');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'gdfgf', '2019-01-05 14:01:25.995');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'dsfddsaf', '2019-01-05 14:02:00.820');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'asdfdasfdsfs', '2019-01-05 14:07:34.510');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'dsfsdfsdf', '2019-01-05 14:07:42.558');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'fsdf', '2019-01-05 14:07:54.663');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '出租车', '2019-01-06 05:39:36.664');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', '发射点发射点', '2019-01-06 05:39:40.725');
INSERT INTO `chatwithpeople` VALUES ('15964245588', '15964245555', 'fsdfd', '2019-01-06 07:38:10.436');

-- ----------------------------
-- Table structure for historypostingrecord
-- ----------------------------
DROP TABLE IF EXISTS `historypostingrecord`;
CREATE TABLE `historypostingrecord`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContentType` tinyint(4) NULL DEFAULT 0,
  `Time` timestamp(0) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  CONSTRAINT `historypostingrecord_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historypostingrecord
-- ----------------------------
INSERT INTO `historypostingrecord` VALUES (12, '15964245544', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊啊啊啊就', 0, '2019-01-04 09:21:14');
INSERT INTO `historypostingrecord` VALUES (13, '15964245544', 'asfjojkoooooooooooo啊就', 0, '2019-01-04 09:21:17');
INSERT INTO `historypostingrecord` VALUES (14, '15964245555', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊啊啊啊就', 0, '2019-01-04 09:21:19');
INSERT INTO `historypostingrecord` VALUES (15, '15964245544', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊啊啊啊就', 0, '2019-01-04 09:21:22');
INSERT INTO `historypostingrecord` VALUES (16, '15964245544', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊内容啊啊啊就', 0, '2019-01-04 09:21:24');
INSERT INTO `historypostingrecord` VALUES (17, '15964245544', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊啊啊啊就', 0, '2019-01-04 09:21:25');
INSERT INTO `historypostingrecord` VALUES (18, '15964245544', '模块v法律是看得见进口的撒娇看到几个安德森可根据卡拉圣诞节噶但是酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷就打开拉萨啊啊啊啊啊啊啊啊啊啊啊啊啊啊就', 0, '2019-01-04 09:21:27');
INSERT INTO `historypostingrecord` VALUES (23, '15964245533', 'f\'s\'d\'f\'s\'d\'f+發士大夫士大夫', 4, '2019-01-06 15:09:47');
INSERT INTO `historypostingrecord` VALUES (24, '15964245533', 'f\'s\'d\'f\'s\'d\'f的撒給+發士大夫士大夫 gadget阿達', 4, '2019-01-06 15:10:10');
INSERT INTO `historypostingrecord` VALUES (25, '15964245533', '幅度薩芬+士大夫大師傅', 3, '2019-01-06 15:10:26');
INSERT INTO `historypostingrecord` VALUES (26, '15964245533', 's+ss', -1, '2019-01-06 17:19:53');
INSERT INTO `historypostingrecord` VALUES (27, '15964245533', 'dsad +as ', -1, '2019-01-06 17:20:42');

-- ----------------------------
-- Table structure for recordsofhistoricalexchanges
-- ----------------------------
DROP TABLE IF EXISTS `recordsofhistoricalexchanges`;
CREATE TABLE `recordsofhistoricalexchanges`  (
  `id` bigint(20) NOT NULL,
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NOT NULL,
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`, `id`) USING BTREE,
  INDEX `recordsofhistoricalexchanges_ibfk_2`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recordsofhistoricalexchanges
-- ----------------------------
INSERT INTO `recordsofhistoricalexchanges` VALUES (20, '15964245533', '15964245533', '各地政府g', '2019-01-06 15:10:36');
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '15964245533', '15964245533', '的觀點', '2019-01-06 15:28:24');
INSERT INTO `recordsofhistoricalexchanges` VALUES (23, '15964245533', '15964245533', 'sdsdssd', '2019-01-06 17:19:31');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245544', 'de', '2019-01-06 17:21:03');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245588', 'dfhsjhj内容士大夫', '2019-01-08 09:08:45');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245599', '下周出差', '2019-01-05 09:06:44');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245599', '收到罚单', '2019-01-05 09:08:24');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '房贷首付哈迪斯法国啥地方蝴蝶飞噶苏好的', '2019-01-06 14:22:57');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '你好我是胡歌', '2019-01-06 14:28:26');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '噶是大公司都的感覺哦卡的貧困看', '2019-01-06 14:31:34');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '古典詩歌撒旦給', '2019-01-06 14:31:42');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '胡歌', '2019-01-06 14:31:55');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245544', '15964245544', '打發打發', '2019-01-06 14:40:47');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245588', '啊士大夫十大', '2019-01-05 09:09:30');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245599', '发生的', '2019-01-05 09:10:19');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245599', '发生的', '2019-01-05 09:10:35');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245599', '15964245588', '发士大夫', '2019-01-05 09:10:02');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `Phone` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无名氏哦',
  `UPwd` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UGender` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '可怕的未知性别',
  `UPhoto` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '默认的地址',
  `UAge` tinyint(4) NULL DEFAULT 0,
  `UConnect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UState` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`Phone`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  INDEX `Phone_2`(`Phone`) USING BTREE,
  INDEX `Phone_3`(`Phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('15964245533', '王林', 'UEOcDKNDh8HqA30pdfO+sg==', '男', '默认的地址', 4, 'PAlqucYzYpSDB/HKyorWfA==', 0);
INSERT INTO `userinfo` VALUES ('15964245544', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'dCzhjZejPFxwi9ok4CKIpA==', 0);
INSERT INTO `userinfo` VALUES ('15964245555', 'd\'f\'s\'f', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, '5xqxFXkKshU1VUOhzhNizw==', 1);
INSERT INTO `userinfo` VALUES ('15964245566', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'KAsqnrA+2mH4F1pXronGww==', 1);
INSERT INTO `userinfo` VALUES ('15964245588', '的撒大', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'dGe6dRJfBPIz7qal/ndjtw==', 1);
INSERT INTO `userinfo` VALUES ('15964245599', '水水水水', 'llVP/Y+N7l1aECOoRPlAZQ==', '女', '默认的地址', 0, 'O7Jbku4L42WS8yWrbDKwkA==', 0);

SET FOREIGN_KEY_CHECKS = 1;
