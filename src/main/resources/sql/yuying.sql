/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : yuying

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 07/01/2019 09:44:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chatwithpeople
-- ----------------------------
DROP TABLE IF EXISTS `chatwithpeople`;
CREATE TABLE `chatwithpeople` (
  `SendPhone` varchar(20) NOT NULL,
  `ReceivePhone` varchar(20) NOT NULL,
  `Content` longtext,
  `time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`SendPhone`,`ReceivePhone`,`time`) USING BTREE,
  KEY `ReceivePhone` (`ReceivePhone`) USING BTREE,
  CONSTRAINT `chatwithpeople_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chatwithpeople_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of chatwithpeople
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for historypostingrecord
-- ----------------------------
DROP TABLE IF EXISTS `historypostingrecord`;
CREATE TABLE `historypostingrecord` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(20) DEFAULT NULL,
  `Content` longtext NOT NULL,
  `ContentType` tinyint(4) DEFAULT '0',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`) USING BTREE,
  KEY `Phone` (`Phone`) USING BTREE,
  CONSTRAINT `historypostingrecord_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of historypostingrecord
-- ----------------------------
BEGIN;
INSERT INTO `historypostingrecord` VALUES (10, '15964245544', '鸡蛋怎么吃才更营养？内容鸡蛋中含有丰富的蛋白质、维生素、钙、胆固醇等元素，营养丰富的鸡蛋在孕期食谱中扮演了重要的角色，那么鸡蛋要怎么吃才更健康更营养呢？一天两个鸡蛋足够了，请放其它鸡蛋一条生路。生吃鸡蛋是不是更有营养？草鸡蛋比普通鸡蛋更有营养吗？\n\n草鸡蛋和普通鸡蛋的营养相差无几，草鸡蛋也并不比普通鸡蛋更有营养。只不过是散养的鸡吃的都是杂粮、草籽、小虫，所以草鸡蛋的口感可能要比普通鸡蛋好，但如果散养的鸡所处的环境、土壤是被污染的，那么草鸡蛋可能还不如普通鸡蛋呢。所以大家在选择上不必太过纠结。\n\n很多孕妈妈一定听说过生吃鸡蛋更有营养的说法，而实际上食用生鸡蛋不但容易引起细菌感染，还会影响人体对维生素H吸收。从健康和营养角度考虑，孕妈妈一定要食用彻底煮熟的鸡蛋。从营养吸收的角度来讲，煮蛋为100%，炒蛋为97%，嫩炸为98%，老炸为81.1%，开水、牛奶冲蛋为92.5%，所以白煮蛋是最适合孕妈妈的吃法。\n\n什么东西都是适量才好，有营养并不代表着多多益善。孕妈妈每天吃1~2个鸡蛋就可以了，食用过量的鸡蛋会加重肠胃的负担，过量的蛋白质不但不会被人体吸收反而还会影响人体对铁的吸收和利用。鸡蛋是高蛋白食物，吃多了会加重人体负担，蛋黄中还含有胆固醇，吃得太多易引起高血脂、高血压、动脉硬化等疾病。', 0, '2019-01-07 09:21:07');
INSERT INTO `historypostingrecord` VALUES (11, '15964245544', '想要不生病？多带宝宝做户外活动内容到了这个月龄，大多数宝宝都能够自如地被竖抱和坐得相对稳一些了，家长们可以适当带宝宝进行户外活动，也可以让宝宝和年龄相仿的孩子一起玩。\n\n\n然而，宝宝6个月之后，宝宝从母体带出的抗体不再能够保护宝宝，进入了所谓“生理上的免疫不全期”，很容易患呼吸道疾病，有流涕、咳嗽、发热等症状，而在公共场所被传染的几率也大大增加，那如何能在户外玩得好，又能够不生病？\n\n\n1、选择适宜的时间段出行：春秋上午9:00-10：00，下午14:00-17:00；夏天：上午7:30-9:00，下午13:00-14:00；冬天：上午10:00-12:00，下午：13:00-17:00。这些时间段，日照好，气温相对适宜。当极端天气出现时，如暴雨大雪，要避免带宝宝外出哦！\n\n\n2、雾霾严重，空气质量差的时候，尽量不外出。\n\n\n3、选择有卫生许可、经营资质的游乐场所，注意其中是否清洁、安全。\n\n\n4、避免接触正在患流行病的小孩或大人。当然，宝宝自己正在生病的时候，也要自觉不与其他小伙伴亲密接触哦！\n\n\n5、回家后第一时间洗手，大人先洗干净自己的双手，再仔细为宝宝清洗。涂上洗手液或香皂后，要冲洗干净，无残留。\n\n ', 0, '2019-01-07 09:22:29');
INSERT INTO `historypostingrecord` VALUES (12, '15964245544', '家庭教育内容宝宝为什么爱打人？\n麻麻们会发现，8、9月-2岁的宝宝爱动手，有时候一个巴掌给了奶奶或者姥姥，而且和小朋友相处中，容易动手打其他小朋友。麻麻们意识到问题的时候，也在严厉制止，却因为方法不当，致使宝宝打人。依恋物是妈妈的代替品？\n妈妈们有没有发现宝宝总是喜欢抱着小枕头或是小娃娃？ 不管是吃饭的时候还是睡觉的时候，总是不肯松手？ 宝宝到底是肿么啦？很多麻麻都百思不得其解。 其实，这就是宝宝恋物。宝宝耍脾气时，请温柔以待\n1岁以上的宝宝可以进行适当的家庭教育啦，因为这时候宝宝已经从小婴儿变成了幼儿，向大宝宝迈进啦！这个阶段的宝宝已经可以明白妈妈的意思，跟你“互动”“交流”起来了。也许宝宝说话还不利索，只会叫。培养饭桌好习惯\n很多爸爸妈妈吃饭习惯都不好，边吃边看电视、看手机、挑食，这些习惯都会传染给宝宝。与宝宝同桌吃饭，有些方面要注意，你中招了没？ 8条应该做：1）1岁左右的宝宝最不能容忍的就是妈妈一边将其双手紧束，一边一勺一勺地喂他。这对宝宝生活能力的培养和自尊心的建立有极大的危害，宝宝常常报以反抗或拒食。\n\n\n2）宝宝并不见得一定是想要自己吃饱饭，他的注意力是在“自己吃”这一过程，如果只是为训练他自己吃饭，不妨先喂饱了他，再由着他去满足学习和尝试的乐趣。\n\n\n3）当宝宝自己吃饭时，要及时给予表扬，即使他把饭吃得乱七八糟，还是应当鼓励他。如果妈妈确实担心宝宝把饭吃得满地都是，可以在宝宝坐着的椅下铺几张报纸，这样一来等他吃完饭后，只要收拾一下弄脏了的报纸就行了。\n\n\n4）1岁的宝宝可以吃成人吃的饭菜了。妈妈做饭时，在准备放盐和其他调料之前，应该把宝宝的那份饭菜留出来。\n\n\n5）给宝宝选择一个自己就餐的座位，最好让他坐在安静不受干扰的固定地方，不玩、不看电视以免吃饭时分散注意力。\n\n\n6）餐桌上，成人谈话的内容最好与宝宝吃饭有关，以吸引他的兴趣，需注意不要过分关注宝宝进食，让宝宝感到不自在。严肃中立对待宝宝打人行为\n\"> 宝宝爱打人该怎么办？ 不要发愁，爸爸妈妈你应该要这样做！ 1、首先检讨生活中，是否大人表现出了动手行为，或者所接触到的影音资料有类似的行为，如果有就需要改正。妈妈限制太多，宝宝将“听不见”。不要踩水哦，会弄湿鞋子，也会滑到的……\n\n\n不要动那个杯子……\n\n\n不要在那里玩……\n\n\n不要踩在凳子上……\n\n\n\n一切都是为了宝宝好，怕他有危险，怕他会得病，怕他不舒服……我们总是不断提醒宝宝。这些提醒很常见，很多也是不自觉的就脱口而出。\n\n\n但宝宝们往往不领情，不让做的事情偏去做，把妈妈的话当做耳旁风，于是妈妈难免心里想：这孩子怎么就不理解我一片苦心呢，这不都是为了你好，真是什么都不懂的熊孩子……', 0, '2019-01-07 09:28:40');
INSERT INTO `historypostingrecord` VALUES (13, '15964245544', '亲子阅读应该从什么时候开始？内容0-10个月——妈妈碎碎念时期\n\n该阶段以各种亲子互动为主，不需要刻意给宝宝准备阅读内容。主要照看者要用言语的形式表达与宝宝的任何互动，给宝宝指认生活中常用物品，在带宝宝外出时，向宝宝介绍花草树木各类存在物。\n\n\n\n10-18个月——言语发展关键期\n\n宝宝开始出现有意识的言语，从单词句到双词句，给宝宝准备一些卡片类阅读材料，内容主要是认识物品、植物、动物、水果等。色彩鲜艳，图画内容简单，卡片要求圆角，不会割伤宝宝手。一些宝宝喜欢撕书，可以准备一些布书。\n\n\n19-36个月——言语爆发期\n\n宝宝的词汇丰富，言语表达加强，可以给宝宝准备一些小故事，简单故事情节的绘本、故事书和朗朗上口的儿歌都是可以选择的。和宝宝一起进行阅读，最好选择一天固定的时刻。\n\n\n\n3-4岁——想象力发展时期\n\n故事的内容要生动有趣，有寓意、有常识的讲解，这里要强调的是，此时最好不要选择识字、计算的书，而应着重选择情节简单，却能引发孩子丰富想象的故事、童话、儿歌，目的在于让孩子在家长的帮助下体验读书的乐趣，培养对书籍的兴趣。这时候可以和宝宝进行故事角色扮演，吸引宝宝对故事的兴趣。\n\n该阶段的宝宝处于幼儿园时期，可以了解宝宝幼儿园生活，并将一些生活实例编成小故事，讲给宝宝听，并引导宝宝对故事的结尾做不同的想象。\n\n\n\n4-5岁\n\n现在不到4岁的孩子就已经不断提出“为什么”一类问题，家长可以从《儿童百科全书》、《学前十万个为什么》这类书中找出答案，讲给孩子听。处于这一年龄段的孩子，多对童话着迷，家长可以通过讲述童话启发孩子的想象力。此时，开始注重塑造孩子的人格也是十分必要的，父母可以给孩子们读一些历史上著名人物的事迹，从中接受一些建功立业的道理，对孩子的成长和培养高尚情操不无好处。\n\n\n5-6岁\n\n孩子逐渐开始形成自己的兴趣爱好。这时父母要以一个导师的角度来指导孩子自己选购图书。一方面要注意培养保护孩子可贵的兴趣爱好，另一方面也要启发和引导孩子将兴趣投入更多的领域。\n\n\n当一个孩子迷恋汽车时，家长除了可以帮他购买一些汽车玩具、参观汽车展外，也可建议他阅读一些关于汽车外型设计和内部构造的画报，从而引发他对于美术和机械的兴趣。\n\n\n\n当一个孩子热爱绘画时，父母也不妨和他一起将故事书中的人物动作画出来，并用绘画的形式将之发展、续编下去，从而引发他对绘画和文学的兴趣。并可趁机轻松认字。\n\n\n\n宝宝早教不学技能，不学本事，只是锻炼宝宝感官和思维，切忌走入任何误区！', 0, '2019-01-07 09:30:24');
INSERT INTO `historypostingrecord` VALUES (14, '15964245555', '家庭教育内容宝宝为什么爱打人？\n麻麻们会发现，8、9月-2岁的宝宝爱动手，有时候一个巴掌给了奶奶或者姥姥，而且和小朋友相处中，容易动手打其他小朋友。麻麻们意识到问题的时候，也在严厉制止，却因为方法不当，致使宝宝打人。依恋物是妈妈的代替品？\n妈妈们有没有发现宝宝总是喜欢抱着小枕头或是小娃娃？ 不管是吃饭的时候还是睡觉的时候，总是不肯松手？ 宝宝到底是肿么啦？很多麻麻都百思不得其解。 其实，这就是宝宝恋物。宝宝耍脾气时，请温柔以待\n1岁以上的宝宝可以进行适当的家庭教育啦，因为这时候宝宝已经从小婴儿变成了幼儿，向大宝宝迈进啦！这个阶段的宝宝已经可以明白妈妈的意思，跟你“互动”“交流”起来了。也许宝宝说话还不利索，只会叫。培养饭桌好习惯\n很多爸爸妈妈吃饭习惯都不好，边吃边看电视、看手机、挑食，这些习惯都会传染给宝宝。与宝宝同桌吃饭，有些方面要注意，你中招了没？ 8条应该做：1）1岁左右的宝宝最不能容忍的就是妈妈一边将其双手紧束，一边一勺一勺地喂他。这对宝宝生活能力的培养和自尊心的建立有极大的危害，宝宝常常报以反抗或拒食。\n\n\n2）宝宝并不见得一定是想要自己吃饱饭，他的注意力是在“自己吃”这一过程，如果只是为训练他自己吃饭，不妨先喂饱了他，再由着他去满足学习和尝试的乐趣。\n\n\n3）当宝宝自己吃饭时，要及时给予表扬，即使他把饭吃得乱七八糟，还是应当鼓励他。如果妈妈确实担心宝宝把饭吃得满地都是，可以在宝宝坐着的椅下铺几张报纸，这样一来等他吃完饭后，只要收拾一下弄脏了的报纸就行了。\n\n\n4）1岁的宝宝可以吃成人吃的饭菜了。妈妈做饭时，在准备放盐和其他调料之前，应该把宝宝的那份饭菜留出来。\n\n\n5）给宝宝选择一个自己就餐的座位，最好让他坐在安静不受干扰的固定地方，不玩、不看电视以免吃饭时分散注意力。\n\n\n6）餐桌上，成人谈话的内容最好与宝宝吃饭有关，以吸引他的兴趣，需注意不要过分关注宝宝进食，让宝宝感到不自在。严肃中立对待宝宝打人行为\n\"> 宝宝爱打人该怎么办？ 不要发愁，爸爸妈妈你应该要这样做！ 1、首先检讨生活中，是否大人表现出了动手行为，或者所接触到的影音资料有类似的行为，如果有就需要改正。妈妈限制太多，宝宝将“听不见”。不要踩水哦，会弄湿鞋子，也会滑到的……\n\n\n不要动那个杯子……\n\n\n不要在那里玩……\n\n\n不要踩在凳子上……\n\n\n\n一切都是为了宝宝好，怕他有危险，怕他会得病，怕他不舒服……我们总是不断提醒宝宝。这些提醒很常见，很多也是不自觉的就脱口而出。\n\n\n但宝宝们往往不领情，不让做的事情偏去做，把妈妈的话当做耳旁风，于是妈妈难免心里想：这孩子怎么就不理解我一片苦心呢，这不都是为了你好，真是什么都不懂的熊孩子……', 0, '2019-01-07 09:31:44');
INSERT INTO `historypostingrecord` VALUES (15, '15964245544', '家庭教育内容宝宝为什么爱打人？\n麻麻们会发现，8、9月-2岁的宝宝爱动手，有时候一个巴掌给了奶奶或者姥姥，而且和小朋友相处中，容易动手打其他小朋友。麻麻们意识到问题的时候，也在严厉制止，却因为方法不当，致使宝宝打人。依恋物是妈妈的代替品？\n妈妈们有没有发现宝宝总是喜欢抱着小枕头或是小娃娃？ 不管是吃饭的时候还是睡觉的时候，总是不肯松手？ 宝宝到底是肿么啦？很多麻麻都百思不得其解。 其实，这就是宝宝恋物。宝宝耍脾气时，请温柔以待\n1岁以上的宝宝可以进行适当的家庭教育啦，因为这时候宝宝已经从小婴儿变成了幼儿，向大宝宝迈进啦！这个阶段的宝宝已经可以明白妈妈的意思，跟你“互动”“交流”起来了。也许宝宝说话还不利索，只会叫。培养饭桌好习惯\n很多爸爸妈妈吃饭习惯都不好，边吃边看电视、看手机、挑食，这些习惯都会传染给宝宝。与宝宝同桌吃饭，有些方面要注意，你中招了没？ 8条应该做：1）1岁左右的宝宝最不能容忍的就是妈妈一边将其双手紧束，一边一勺一勺地喂他。这对宝宝生活能力的培养和自尊心的建立有极大的危害，宝宝常常报以反抗或拒食。\n\n\n2）宝宝并不见得一定是想要自己吃饱饭，他的注意力是在“自己吃”这一过程，如果只是为训练他自己吃饭，不妨先喂饱了他，再由着他去满足学习和尝试的乐趣。\n\n\n3）当宝宝自己吃饭时，要及时给予表扬，即使他把饭吃得乱七八糟，还是应当鼓励他。如果妈妈确实担心宝宝把饭吃得满地都是，可以在宝宝坐着的椅下铺几张报纸，这样一来等他吃完饭后，只要收拾一下弄脏了的报纸就行了。\n\n\n4）1岁的宝宝可以吃成人吃的饭菜了。妈妈做饭时，在准备放盐和其他调料之前，应该把宝宝的那份饭菜留出来。\n\n\n5）给宝宝选择一个自己就餐的座位，最好让他坐在安静不受干扰的固定地方，不玩、不看电视以免吃饭时分散注意力。\n\n\n6）餐桌上，成人谈话的内容最好与宝宝吃饭有关，以吸引他的兴趣，需注意不要过分关注宝宝进食，让宝宝感到不自在。严肃中立对待宝宝打人行为\n\"> 宝宝爱打人该怎么办？ 不要发愁，爸爸妈妈你应该要这样做！ 1、首先检讨生活中，是否大人表现出了动手行为，或者所接触到的影音资料有类似的行为，如果有就需要改正。妈妈限制太多，宝宝将“听不见”。不要踩水哦，会弄湿鞋子，也会滑到的……\n\n\n不要动那个杯子……\n\n\n不要在那里玩……\n\n\n不要踩在凳子上……\n\n\n\n一切都是为了宝宝好，怕他有危险，怕他会得病，怕他不舒服……我们总是不断提醒宝宝。这些提醒很常见，很多也是不自觉的就脱口而出。\n\n\n但宝宝们往往不领情，不让做的事情偏去做，把妈妈的话当做耳旁风，于是妈妈难免心里想：这孩子怎么就不理解我一片苦心呢，这不都是为了你好，真是什么都不懂的熊孩子……', 0, '2019-01-07 09:31:45');
INSERT INTO `historypostingrecord` VALUES (16, '15964245544', '亲子阅读应该从什么时候开始？内容0-10个月——妈妈碎碎念时期\n\n该阶段以各种亲子互动为主，不需要刻意给宝宝准备阅读内容。主要照看者要用言语的形式表达与宝宝的任何互动，给宝宝指认生活中常用物品，在带宝宝外出时，向宝宝介绍花草树木各类存在物。\n\n\n\n10-18个月——言语发展关键期\n\n宝宝开始出现有意识的言语，从单词句到双词句，给宝宝准备一些卡片类阅读材料，内容主要是认识物品、植物、动物、水果等。色彩鲜艳，图画内容简单，卡片要求圆角，不会割伤宝宝手。一些宝宝喜欢撕书，可以准备一些布书。\n\n\n19-36个月——言语爆发期\n\n宝宝的词汇丰富，言语表达加强，可以给宝宝准备一些小故事，简单故事情节的绘本、故事书和朗朗上口的儿歌都是可以选择的。和宝宝一起进行阅读，最好选择一天固定的时刻。\n\n\n\n3-4岁——想象力发展时期\n\n故事的内容要生动有趣，有寓意、有常识的讲解，这里要强调的是，此时最好不要选择识字、计算的书，而应着重选择情节简单，却能引发孩子丰富想象的故事、童话、儿歌，目的在于让孩子在家长的帮助下体验读书的乐趣，培养对书籍的兴趣。这时候可以和宝宝进行故事角色扮演，吸引宝宝对故事的兴趣。\n\n该阶段的宝宝处于幼儿园时期，可以了解宝宝幼儿园生活，并将一些生活实例编成小故事，讲给宝宝听，并引导宝宝对故事的结尾做不同的想象。\n\n\n\n4-5岁\n\n现在不到4岁的孩子就已经不断提出“为什么”一类问题，家长可以从《儿童百科全书》、《学前十万个为什么》这类书中找出答案，讲给孩子听。处于这一年龄段的孩子，多对童话着迷，家长可以通过讲述童话启发孩子的想象力。此时，开始注重塑造孩子的人格也是十分必要的，父母可以给孩子们读一些历史上著名人物的事迹，从中接受一些建功立业的道理，对孩子的成长和培养高尚情操不无好处。\n\n\n5-6岁\n\n孩子逐渐开始形成自己的兴趣爱好。这时父母要以一个导师的角度来指导孩子自己选购图书。一方面要注意培养保护孩子可贵的兴趣爱好，另一方面也要启发和引导孩子将兴趣投入更多的领域。\n\n\n当一个孩子迷恋汽车时，家长除了可以帮他购买一些汽车玩具、参观汽车展外，也可建议他阅读一些关于汽车外型设计和内部构造的画报，从而引发他对于美术和机械的兴趣。\n\n\n\n当一个孩子热爱绘画时，父母也不妨和他一起将故事书中的人物动作画出来，并用绘画的形式将之发展、续编下去，从而引发他对绘画和文学的兴趣。并可趁机轻松认字。\n\n\n\n宝宝早教不学技能，不学本事，只是锻炼宝宝感官和思维，切忌走入任何误区！', 0, '2019-01-07 09:31:53');
INSERT INTO `historypostingrecord` VALUES (17, '15964245544', '想要不生病？多带宝宝做户外活动内容到了这个月龄，大多数宝宝都能够自如地被竖抱和坐得相对稳一些了，家长们可以适当带宝宝进行户外活动，也可以让宝宝和年龄相仿的孩子一起玩。\n\n\n然而，宝宝6个月之后，宝宝从母体带出的抗体不再能够保护宝宝，进入了所谓“生理上的免疫不全期”，很容易患呼吸道疾病，有流涕、咳嗽、发热等症状，而在公共场所被传染的几率也大大增加，那如何能在户外玩得好，又能够不生病？\n\n\n1、选择适宜的时间段出行：春秋上午9:00-10：00，下午14:00-17:00；夏天：上午7:30-9:00，下午13:00-14:00；冬天：上午10:00-12:00，下午：13:00-17:00。这些时间段，日照好，气温相对适宜。当极端天气出现时，如暴雨大雪，要避免带宝宝外出哦！\n\n\n2、雾霾严重，空气质量差的时候，尽量不外出。\n\n\n3、选择有卫生许可、经营资质的游乐场所，注意其中是否清洁、安全。\n\n\n4、避免接触正在患流行病的小孩或大人。当然，宝宝自己正在生病的时候，也要自觉不与其他小伙伴亲密接触哦！\n\n\n5、回家后第一时间洗手，大人先洗干净自己的双手，再仔细为宝宝清洗。涂上洗手液或香皂后，要冲洗干净，无残留。\n\n ', 0, '2019-01-07 09:31:57');
INSERT INTO `historypostingrecord` VALUES (18, '15964245544', '鸡蛋怎么吃才更营养？内容鸡蛋中含有丰富的蛋白质、维生素、钙、胆固醇等元素，营养丰富的鸡蛋在孕期食谱中扮演了重要的角色，那么鸡蛋要怎么吃才更健康更营养呢？一天两个鸡蛋足够了，请放其它鸡蛋一条生路。生吃鸡蛋是不是更有营养？草鸡蛋比普通鸡蛋更有营养吗？\n\n草鸡蛋和普通鸡蛋的营养相差无几，草鸡蛋也并不比普通鸡蛋更有营养。只不过是散养的鸡吃的都是杂粮、草籽、小虫，所以草鸡蛋的口感可能要比普通鸡蛋好，但如果散养的鸡所处的环境、土壤是被污染的，那么草鸡蛋可能还不如普通鸡蛋呢。所以大家在选择上不必太过纠结。\n\n很多孕妈妈一定听说过生吃鸡蛋更有营养的说法，而实际上食用生鸡蛋不但容易引起细菌感染，还会影响人体对维生素H吸收。从健康和营养角度考虑，孕妈妈一定要食用彻底煮熟的鸡蛋。从营养吸收的角度来讲，煮蛋为100%，炒蛋为97%，嫩炸为98%，老炸为81.1%，开水、牛奶冲蛋为92.5%，所以白煮蛋是最适合孕妈妈的吃法。\n\n什么东西都是适量才好，有营养并不代表着多多益善。孕妈妈每天吃1~2个鸡蛋就可以了，食用过量的鸡蛋会加重肠胃的负担，过量的蛋白质不但不会被人体吸收反而还会影响人体对铁的吸收和利用。鸡蛋是高蛋白食物，吃多了会加重人体负担，蛋黄中还含有胆固醇，吃得太多易引起高血脂、高血压、动脉硬化等疾病。', 0, '2019-01-07 09:32:01');
COMMIT;

-- ----------------------------
-- Table structure for recordsofhistoricalexchanges
-- ----------------------------
DROP TABLE IF EXISTS `recordsofhistoricalexchanges`;
CREATE TABLE `recordsofhistoricalexchanges` (
  `id` bigint(20) NOT NULL,
  `SendPhone` varchar(20) NOT NULL,
  `ReceivePhone` varchar(20) NOT NULL,
  `Content` longtext,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SendPhone`,`ReceivePhone`,`time`,`id`) USING BTREE,
  KEY `recordsofhistoricalexchanges_ibfk_2` (`ReceivePhone`) USING BTREE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recordsofhistoricalexchanges
-- ----------------------------
BEGIN;
INSERT INTO `recordsofhistoricalexchanges` VALUES (10, '15964245533', '15964245544', '????', '2019-01-07 01:33:02');
INSERT INTO `recordsofhistoricalexchanges` VALUES (10, '15964245533', '15964245544', '????????', '2019-01-07 01:36:53');
INSERT INTO `recordsofhistoricalexchanges` VALUES (11, '15964245533', '15964245544', '?????', '2019-01-07 01:39:35');
INSERT INTO `recordsofhistoricalexchanges` VALUES (11, '15964245533', '15964245544', '??????????????', '2019-01-07 01:40:37');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245588', 'dfhsjhj内容士大夫', '2019-01-08 09:08:45');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245599', '下周出差', '2019-01-05 09:06:44');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245533', '15964245599', '收到罚单', '2019-01-05 09:08:24');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245588', '啊士大夫十大', '2019-01-05 09:09:30');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245599', '发生的', '2019-01-05 09:10:19');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245588', '15964245599', '发生的', '2019-01-05 09:10:35');
INSERT INTO `recordsofhistoricalexchanges` VALUES (16, '15964245599', '15964245588', '发士大夫', '2019-01-05 09:10:02');
COMMIT;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Phone` varchar(60) NOT NULL,
  `UName` varchar(20) DEFAULT '无名氏哦',
  `UPwd` varchar(60) NOT NULL,
  `UGender` varchar(60) DEFAULT '可怕的未知性别',
  `UPhoto` varchar(200) DEFAULT '默认的地址',
  `UAge` tinyint(4) DEFAULT '0',
  `UConnect` varchar(255) DEFAULT NULL,
  `UState` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Phone`) USING BTREE,
  KEY `Phone` (`Phone`) USING BTREE,
  KEY `Phone_2` (`Phone`) USING BTREE,
  KEY `Phone_3` (`Phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
BEGIN;
INSERT INTO `userinfo` VALUES ('15964245533', '王林', 'llVP/Y+N7l1aECOoRPlAZQ==', '女', '默认的地址', 2, 'PAlqucYzYpSDB/HKyorWfA==', 0);
INSERT INTO `userinfo` VALUES ('15964245544', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'dCzhjZejPFxwi9ok4CKIpA==', 0);
INSERT INTO `userinfo` VALUES ('15964245555', 'd\'f\'s\'f', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, '5xqxFXkKshU1VUOhzhNizw==', 2);
INSERT INTO `userinfo` VALUES ('15964245566', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'KAsqnrA+2mH4F1pXronGww==', 2);
INSERT INTO `userinfo` VALUES ('15964245588', '的撒大', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'dGe6dRJfBPIz7qal/ndjtw==', 1);
INSERT INTO `userinfo` VALUES ('15964245599', '水水水水', 'llVP/Y+N7l1aECOoRPlAZQ==', '女', '默认的地址', 0, 'O7Jbku4L42WS8yWrbDKwkA==', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
