/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : cainformatization

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2019-06-16 14:47:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `businessid` int(255) NOT NULL AUTO_INCREMENT,
  `businessname` varchar(255) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `businesstype` varchar(255) DEFAULT NULL,
  `businessdemandname` varchar(255) DEFAULT NULL,
  `businessnumber` int(255) DEFAULT NULL,
  `businessphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`businessid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('1', '乐惠超市', '广西桂林市七星区', '水果', '火龙果', '5', '15077313695');
INSERT INTO `business` VALUES ('2', '乐佳超市', '广西桂林市七星区', '水果', '土豆', '8', '15077313695');
INSERT INTO `business` VALUES ('3', '海天超市', '广西桂林市七星区', '水果', '西红柿', '10', '15077313695');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(255) DEFAULT NULL,
  `reporttitle` varchar(255) DEFAULT NULL,
  `reportcomment` varchar(255) DEFAULT NULL,
  `reporttime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'gmli', '桂林电子科技大学              \n            ', '桂林电子科技大学2019校运会              \n			', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('2', 'gmli', '桂林电子科技大学       \n            ', '桂林电子科技大学2019校运会\n                \n			', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('4', 'gmli', '桂林电子科技大学            \n            ', '桂林电子科技大学2019校运会             \n			', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('15', 'gmli', '桂林电子科技大学', '校运会', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('16', 'gmli', '桂林电子科技大学', '桂林电子科技大学2019校运会', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('17', 'gmli', '桂林电子科技大学', '2019年5月20号开始了', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('18', 'gmli', '广西师范大学', '2019年开会了', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('19', 'gmli', '广西桂林市第一届运动会', '会议记录', '2019:05:21::08:03:39');
INSERT INTO `comment` VALUES ('20', 'gmli', '广西招生', '欢迎合作', '2019:05:21::08:04:18');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logid` bigint(100) NOT NULL AUTO_INCREMENT,
  `Namelog` varchar(10) DEFAULT NULL,
  `loginfo` varchar(255) DEFAULT NULL,
  `logtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2', 'gmli', '执行了登录操作', '2019:04:13::04:35:22');
INSERT INTO `log` VALUES ('3', 'gmli', '执行了登录操作', '2019:04:13::04:55:17');
INSERT INTO `log` VALUES ('4', 'lol', '执行了登录操作', '2019:04:13::04:57:59');
INSERT INTO `log` VALUES ('5', 'lol', '执行了登录操作', '2019:04:13::04:59:18');
INSERT INTO `log` VALUES ('6', 'gmli', '执行了登录操作', '2019:04:13::05:05:35');
INSERT INTO `log` VALUES ('7', 'gmli', '执行了登录操作', '2019:04:13::05:08:30');
INSERT INTO `log` VALUES ('8', 'gmli', '执行了登录操作', '2019:04:13::05:10:20');
INSERT INTO `log` VALUES ('9', 'gmli', '执行了登录操作', '2019:04:13::05:15:38');
INSERT INTO `log` VALUES ('10', 'gmli', '执行了登录操作', '2019:04:13::05:20:09');
INSERT INTO `log` VALUES ('11', 'gmli', '执行了登录操作', '2019:04:13::05:22:50');
INSERT INTO `log` VALUES ('12', 'gmli', '执行了退出操作', '2019:04:13::05:22:55');
INSERT INTO `log` VALUES ('13', 'gmli', '执行了登录操作', '2019:04:13::05:23:40');
INSERT INTO `log` VALUES ('14', 'gmli', '执行了登录操作', '2019:04:13::05:24:17');
INSERT INTO `log` VALUES ('15', 'gmli', '执行了退出操作', '2019:04:13::05:24:20');
INSERT INTO `log` VALUES ('16', 'gmli', '执行了登录操作', '2019:04:13::05:26:27');
INSERT INTO `log` VALUES ('17', 'gmli', '执行了退出操作', '2019:04:13::05:26:32');
INSERT INTO `log` VALUES ('18', 'lol', '执行了登录操作', '2019:04:13::05:27:06');
INSERT INTO `log` VALUES ('19', 'gmli', '执行了退出操作', '2019:04:13::05:27:26');
INSERT INTO `log` VALUES ('20', 'lgm', '执行了登录操作', '2019:04:13::05:28:42');
INSERT INTO `log` VALUES ('21', 'lgm', '执行了退出操作', '2019:04:13::05:28:45');
INSERT INTO `log` VALUES ('22', 'lol', '执行了登录操作', '2019:04:13::05:29:12');
INSERT INTO `log` VALUES ('23', 'lol', '执行了退出操作', '2019:04:13::05:29:25');
INSERT INTO `log` VALUES ('24', 'gmli', '执行了登录操作', '2019:04:15::12:50:02');
INSERT INTO `log` VALUES ('25', 'gmli', '执行了登录操作', '2019:04:15::07:57:57');
INSERT INTO `log` VALUES ('26', 'gmli', '执行了登录操作', '2019:04:15::09:28:55');
INSERT INTO `log` VALUES ('27', 'gmli', '执行了登录操作', '2019:04:15::09:31:17');
INSERT INTO `log` VALUES ('28', 'gmli', '执行了登录操作', '2019:04:15::09:34:36');
INSERT INTO `log` VALUES ('29', 'gmli', '执行了登录操作', '2019:04:15::09:37:44');
INSERT INTO `log` VALUES ('30', 'gmli', '执行了登录操作', '2019:04:15::09:38:04');
INSERT INTO `log` VALUES ('31', 'gmli', '执行了登录操作', '2019:04:15::09:39:09');
INSERT INTO `log` VALUES ('32', 'gmli', '执行了登录操作', '2019:04:15::09:41:20');
INSERT INTO `log` VALUES ('33', 'gmli', '执行了登录操作', '2019:04:15::09:43:17');
INSERT INTO `log` VALUES ('34', 'gmli', '执行了退出操作', '2019:04:15::09:43:18');
INSERT INTO `log` VALUES ('35', 'gmli', '执行了登录操作', '2019:04:15::09:43:25');
INSERT INTO `log` VALUES ('36', 'gmli', '执行了退出操作', '2019:04:15::09:43:26');
INSERT INTO `log` VALUES ('37', 'gmli', '执行了登录操作', '2019:04:15::09:43:32');
INSERT INTO `log` VALUES ('38', 'gmli', '执行了登录操作', '2019:04:15::09:45:15');
INSERT INTO `log` VALUES ('39', 'gmli', '执行了退出操作', '2019:04:15::09:46:07');
INSERT INTO `log` VALUES ('40', 'gmli', '执行了登录操作', '2019:04:15::09:48:54');
INSERT INTO `log` VALUES ('41', 'gmli', '执行了登录操作', '2019:04:15::09:50:26');
INSERT INTO `log` VALUES ('42', 'gmli', '执行了登录操作', '2019:04:15::09:52:58');
INSERT INTO `log` VALUES ('43', 'gmli', '执行了登录操作', '2019:04:15::09:54:46');
INSERT INTO `log` VALUES ('44', 'gmli', '执行了登录操作', '2019:04:15::09:54:52');
INSERT INTO `log` VALUES ('45', 'gmli', '执行了登录操作', '2019:04:15::09:57:07');
INSERT INTO `log` VALUES ('46', 'gmli', '执行了登录操作', '2019:04:15::09:57:39');
INSERT INTO `log` VALUES ('47', 'gmli', '执行了登录操作', '2019:04:15::10:00:09');
INSERT INTO `log` VALUES ('48', 'gmli', '执行了退出操作', '2019:04:15::10:01:31');
INSERT INTO `log` VALUES ('49', 'gmli', '执行了登录操作', '2019:04:15::10:01:38');
INSERT INTO `log` VALUES ('50', 'gmli', '执行了登录操作', '2019:04:15::10:03:49');
INSERT INTO `log` VALUES ('51', 'gmli', '执行了退出操作', '2019:04:15::10:04:34');
INSERT INTO `log` VALUES ('52', 'gmli', '执行了登录操作', '2019:04:15::10:04:40');
INSERT INTO `log` VALUES ('53', 'gmli', '执行了登录操作', '2019:04:15::10:06:34');
INSERT INTO `log` VALUES ('54', 'gmli', '执行了登录操作', '2019:04:15::10:07:41');
INSERT INTO `log` VALUES ('55', 'gmli', '执行了登录操作', '2019:04:15::10:11:51');
INSERT INTO `log` VALUES ('56', 'gmli', '执行了登录操作', '2019:04:15::10:12:50');
INSERT INTO `log` VALUES ('57', 'gmli', '执行了登录操作', '2019:04:15::10:15:27');
INSERT INTO `log` VALUES ('58', 'gmli', '执行了登录操作', '2019:04:15::10:17:08');
INSERT INTO `log` VALUES ('59', 'gmli', '执行了退出操作', '2019:04:15::10:18:25');
INSERT INTO `log` VALUES ('60', 'gmli', '执行了登录操作', '2019:04:15::10:18:31');
INSERT INTO `log` VALUES ('61', 'gmli', '执行了登录操作', '2019:04:15::10:20:14');
INSERT INTO `log` VALUES ('62', 'gmli', '执行了退出操作', '2019:04:15::10:22:58');
INSERT INTO `log` VALUES ('63', 'gmli', '执行了登录操作', '2019:04:15::10:23:06');
INSERT INTO `log` VALUES ('64', 'gmli', '执行了登录操作', '2019:04:15::10:27:41');
INSERT INTO `log` VALUES ('65', 'gmli', '执行了登录操作', '2019:04:15::10:30:37');
INSERT INTO `log` VALUES ('66', 'gmli', '执行了登录操作', '2019:04:15::10:40:01');
INSERT INTO `log` VALUES ('67', 'gmli', '执行了登录操作', '2019:04:15::10:50:16');
INSERT INTO `log` VALUES ('68', 'gmli', '执行了登录操作', '2019:04:20::01:48:47');
INSERT INTO `log` VALUES ('69', 'gmli', '执行了登录操作', '2019:04:20::01:50:41');
INSERT INTO `log` VALUES ('70', 'gmli', '执行了登录操作', '2019:04:20::01:53:56');
INSERT INTO `log` VALUES ('71', 'gmli', '执行了退出操作', '2019:04:20::01:54:06');
INSERT INTO `log` VALUES ('72', 'gmli', '执行了登录操作', '2019:04:20::01:58:30');
INSERT INTO `log` VALUES ('73', 'gmli', '执行了登录操作', '2019:04:20::02:02:31');
INSERT INTO `log` VALUES ('74', 'gmli', '执行了登录操作', '2019:04:20::02:15:43');
INSERT INTO `log` VALUES ('75', 'gmli', '执行了登录操作', '2019:04:20::02:17:58');
INSERT INTO `log` VALUES ('76', 'gmli', '执行了登录操作', '2019:04:20::02:19:23');
INSERT INTO `log` VALUES ('77', 'gmli', '执行了登录操作', '2019:04:20::02:27:14');
INSERT INTO `log` VALUES ('78', 'gmli', '执行了登录操作', '2019:04:20::02:28:03');
INSERT INTO `log` VALUES ('79', 'gmli', '执行了登录操作', '2019:04:20::02:31:44');
INSERT INTO `log` VALUES ('80', 'gmli', '执行了退出操作', '2019:04:20::02:34:32');
INSERT INTO `log` VALUES ('81', 'gmli', '执行了登录操作', '2019:04:20::02:34:39');
INSERT INTO `log` VALUES ('82', 'gmli', '执行了登录操作', '2019:04:20::04:12:07');
INSERT INTO `log` VALUES ('83', 'gmli', '执行了登录操作', '2019:04:20::04:12:14');
INSERT INTO `log` VALUES ('84', 'gmli', '执行了登录操作', '2019:04:20::04:12:21');
INSERT INTO `log` VALUES ('85', 'gmli', '执行了登录操作', '2019:04:20::04:15:06');
INSERT INTO `log` VALUES ('86', 'ffs', '执行了登录操作', '2019:04:20::04:15:44');
INSERT INTO `log` VALUES ('87', 'gmli', '执行了登录操作', '2019:04:20::04:16:52');
INSERT INTO `log` VALUES ('88', 'gmli', '执行了登录操作', '2019:04:20::04:17:41');
INSERT INTO `log` VALUES ('89', 'gmli', '执行了登录操作', '2019:04:20::04:18:34');
INSERT INTO `log` VALUES ('90', 'gmli', '执行了登录操作', '2019:04:20::04:20:32');
INSERT INTO `log` VALUES ('91', 'gmli', '执行了登录操作', '2019:04:20::04:21:48');
INSERT INTO `log` VALUES ('92', 'gmli', '执行了登录操作', '2019:04:20::04:29:42');
INSERT INTO `log` VALUES ('93', 'kkk', '执行了登录操作', '2019:04:20::04:31:05');
INSERT INTO `log` VALUES ('94', 'gmli', '执行了登录操作', '2019:04:20::04:34:45');
INSERT INTO `log` VALUES ('95', 'gmli', '执行了登录操作', '2019:04:20::04:44:51');
INSERT INTO `log` VALUES ('96', 'gmli', '执行了登录操作', '2019:04:20::04:45:59');
INSERT INTO `log` VALUES ('97', 'gmli', '执行了登录操作', '2019:04:20::04:49:43');
INSERT INTO `log` VALUES ('98', 'gmli', '执行了登录操作', '2019:04:20::04:55:32');
INSERT INTO `log` VALUES ('99', 'gmli', '执行了登录操作', '2019:04:20::04:55:56');
INSERT INTO `log` VALUES ('100', 'gmli', '执行了登录操作', '2019:04:20::05:01:31');
INSERT INTO `log` VALUES ('101', 'gmli', '执行了登录操作', '2019:04:20::05:04:31');
INSERT INTO `log` VALUES ('102', 'gmli', '执行了退出操作', '2019:04:20::05:05:02');
INSERT INTO `log` VALUES ('103', 'gmli', '执行了登录操作', '2019:04:20::05:05:07');
INSERT INTO `log` VALUES ('104', 'gmli', '执行了登录操作', '2019:04:20::05:10:20');
INSERT INTO `log` VALUES ('105', 'lol', '执行了登录操作', '2019:04:20::05:19:04');
INSERT INTO `log` VALUES ('106', 'lol', '执行了退出操作', '2019:04:20::05:19:07');
INSERT INTO `log` VALUES ('107', 'gmli', '执行了登录操作', '2019:04:20::05:19:13');
INSERT INTO `log` VALUES ('108', 'gmli', '执行了退出操作', '2019:04:20::05:19:29');
INSERT INTO `log` VALUES ('109', 'kx', '执行了登录操作', '2019:04:20::05:21:42');
INSERT INTO `log` VALUES ('110', 'kx', '执行了登录操作', '2019:04:20::05:21:49');
INSERT INTO `log` VALUES ('111', 'gmli', '执行了登录操作', '2019:04:20::05:21:59');
INSERT INTO `log` VALUES ('112', 'gmli', '执行了登录操作', '2019:04:20::05:29:31');
INSERT INTO `log` VALUES ('113', 'gmli', '执行了登录操作', '2019:04:20::10:13:12');
INSERT INTO `log` VALUES ('114', 'gmli', '执行了退出操作', '2019:04:20::10:13:24');
INSERT INTO `log` VALUES ('115', 'gmli', '执行了登录操作', '2019:04:20::10:13:31');
INSERT INTO `log` VALUES ('116', 'gmli', '执行了登录操作', '2019:04:20::10:33:52');
INSERT INTO `log` VALUES ('117', 'gmli', '执行了登录操作', '2019:04:20::10:34:30');
INSERT INTO `log` VALUES ('118', 'gmli', '执行了登录操作', '2019:04:20::10:35:50');
INSERT INTO `log` VALUES ('119', 'gmli', '执行了登录操作', '2019:04:20::10:41:18');
INSERT INTO `log` VALUES ('120', 'gmli', '执行了登录操作', '2019:04:20::10:43:40');
INSERT INTO `log` VALUES ('121', 'gmli', '执行了登录操作', '2019:04:20::10:44:19');
INSERT INTO `log` VALUES ('122', 'gmli', '执行了登录操作', '2019:04:20::10:48:24');
INSERT INTO `log` VALUES ('123', 'gmli', '执行了登录操作', '2019:04:20::10:49:51');
INSERT INTO `log` VALUES ('124', 'gmli', '执行了登录操作', '2019:04:20::10:50:55');
INSERT INTO `log` VALUES ('125', 'gmli', '执行了登录操作', '2019:04:20::10:52:43');
INSERT INTO `log` VALUES ('126', 'gmli', '执行了登录操作', '2019:04:20::10:53:26');
INSERT INTO `log` VALUES ('127', 'gmli', '执行了登录操作', '2019:04:20::10:56:04');
INSERT INTO `log` VALUES ('128', 'gmli', '执行了登录操作', '2019:04:20::11:01:07');
INSERT INTO `log` VALUES ('129', 'gmli', '执行了登录操作', '2019:04:20::11:01:44');
INSERT INTO `log` VALUES ('130', 'gmli', '执行了登录操作', '2019:04:20::11:03:20');
INSERT INTO `log` VALUES ('131', 'gmli', '执行了登录操作', '2019:04:20::11:04:01');
INSERT INTO `log` VALUES ('132', 'gmli', '执行了登录操作', '2019:04:20::11:05:52');
INSERT INTO `log` VALUES ('133', 'gmli', '执行了登录操作', '2019:04:20::11:07:12');
INSERT INTO `log` VALUES ('134', 'gmli', '执行了登录操作', '2019:04:20::11:08:10');
INSERT INTO `log` VALUES ('135', 'gmli', '执行了登录操作', '2019:04:20::11:09:08');
INSERT INTO `log` VALUES ('136', 'gmli', '执行了登录操作', '2019:04:20::11:10:11');
INSERT INTO `log` VALUES ('137', 'gmli', '执行了登录操作', '2019:04:20::11:11:54');
INSERT INTO `log` VALUES ('138', 'gmli', '执行了登录操作', '2019:04:20::11:13:42');
INSERT INTO `log` VALUES ('139', 'gmli', '执行了登录操作', '2019:04:20::11:14:54');
INSERT INTO `log` VALUES ('140', 'gmli', '执行了登录操作', '2019:04:20::11:17:41');
INSERT INTO `log` VALUES ('141', 'gmli', '执行了登录操作', '2019:04:23::08:07:11');
INSERT INTO `log` VALUES ('142', 'gmli', '执行了登录操作', '2019:04:23::08:08:19');
INSERT INTO `log` VALUES ('143', 'gmli', '执行了登录操作', '2019:04:23::08:08:42');
INSERT INTO `log` VALUES ('144', 'gmli', '执行了登录操作', '2019:04:23::08:37:14');
INSERT INTO `log` VALUES ('145', 'gmli', '执行了登录操作', '2019:04:23::08:39:38');
INSERT INTO `log` VALUES ('146', 'gmli', '执行了登录操作', '2019:04:23::08:40:11');
INSERT INTO `log` VALUES ('147', 'gmli', '执行了登录操作', '2019:04:23::08:40:45');
INSERT INTO `log` VALUES ('148', 'gmli', '执行了登录操作', '2019:04:23::08:42:20');
INSERT INTO `log` VALUES ('149', 'gmli', '执行了登录操作', '2019:04:23::08:43:40');
INSERT INTO `log` VALUES ('150', 'gmli', '执行了登录操作', '2019:04:23::08:44:20');
INSERT INTO `log` VALUES ('151', 'gmli', '执行了登录操作', '2019:04:23::08:45:17');
INSERT INTO `log` VALUES ('152', 'gmli', '执行了登录操作', '2019:04:23::08:45:52');
INSERT INTO `log` VALUES ('153', 'gmli', '执行了登录操作', '2019:04:23::08:46:56');
INSERT INTO `log` VALUES ('154', 'gmli', '执行了登录操作', '2019:04:23::08:50:19');
INSERT INTO `log` VALUES ('155', 'gmli', '执行了登录操作', '2019:04:23::08:52:20');
INSERT INTO `log` VALUES ('156', 'gmli', '执行了登录操作', '2019:04:23::08:57:37');
INSERT INTO `log` VALUES ('157', 'gmli', '执行了登录操作', '2019:04:23::08:58:58');
INSERT INTO `log` VALUES ('158', 'gmli', '执行了登录操作', '2019:04:23::09:02:20');
INSERT INTO `log` VALUES ('159', 'gmli', '执行了登录操作', '2019:04:23::09:04:08');
INSERT INTO `log` VALUES ('160', 'gmli', '执行了登录操作', '2019:04:23::09:05:29');
INSERT INTO `log` VALUES ('161', 'gmli', '执行了登录操作', '2019:04:23::09:06:11');
INSERT INTO `log` VALUES ('162', 'gmli', '执行了登录操作', '2019:04:23::09:07:13');
INSERT INTO `log` VALUES ('163', 'gmli', '执行了登录操作', '2019:04:23::09:08:29');
INSERT INTO `log` VALUES ('164', 'gmli', '执行了登录操作', '2019:04:23::09:09:01');
INSERT INTO `log` VALUES ('165', 'gmli', '执行了登录操作', '2019:04:23::09:18:28');
INSERT INTO `log` VALUES ('166', 'gmli', '执行了登录操作', '2019:04:23::09:19:37');
INSERT INTO `log` VALUES ('167', 'gmli', '执行了登录操作', '2019:04:23::09:20:35');
INSERT INTO `log` VALUES ('168', 'gmli', '执行了登录操作', '2019:04:23::09:21:42');
INSERT INTO `log` VALUES ('169', 'gmli', '执行了登录操作', '2019:04:23::09:23:59');
INSERT INTO `log` VALUES ('170', 'gmli', '执行了登录操作', '2019:04:23::09:27:53');
INSERT INTO `log` VALUES ('171', 'gmli', '执行了登录操作', '2019:04:23::09:29:44');
INSERT INTO `log` VALUES ('172', 'gmli', '执行了登录操作', '2019:04:23::09:30:12');
INSERT INTO `log` VALUES ('173', 'gmli', '执行了登录操作', '2019:05:09::11:02:48');
INSERT INTO `log` VALUES ('174', 'gmli', '执行了退出操作', '2019:05:09::11:04:07');
INSERT INTO `log` VALUES ('175', 'gmli', '执行了登录操作', '2019:05:09::11:04:25');
INSERT INTO `log` VALUES ('176', 'gmli', '执行了退出操作', '2019:05:09::11:05:16');
INSERT INTO `log` VALUES ('177', 'gmli', '执行了登录操作', '2019:05:09::11:05:48');
INSERT INTO `log` VALUES ('178', 'gmli', '执行了退出操作', '2019:05:09::11:06:10');
INSERT INTO `log` VALUES ('179', 'gmli', '执行了登录操作', '2019:05:09::11:06:22');
INSERT INTO `log` VALUES ('180', 'gmli', '执行了登录操作', '2019:05:09::11:06:29');
INSERT INTO `log` VALUES ('181', 'gmli', '执行了退出操作', '2019:05:09::11:07:01');
INSERT INTO `log` VALUES ('182', 'gmli', '执行了登录操作', '2019:05:11::07:10:59');
INSERT INTO `log` VALUES ('183', 'gmli', '执行了登录操作', '2019:05:11::07:11:08');
INSERT INTO `log` VALUES ('184', 'gmli', '执行了登录操作', '2019:05:11::07:11:57');
INSERT INTO `log` VALUES ('185', 'gmli', '执行了退出操作', '2019:05:11::07:12:49');
INSERT INTO `log` VALUES ('186', 'gmli', '执行了登录操作', '2019:05:11::07:12:56');
INSERT INTO `log` VALUES ('187', 'gmli', '执行了登录操作', '2019:05:11::07:16:09');
INSERT INTO `log` VALUES ('188', 'gmli', '执行了退出操作', '2019:05:11::07:16:30');
INSERT INTO `log` VALUES ('189', 'gmli', '执行了登录操作', '2019:05:11::07:16:37');
INSERT INTO `log` VALUES ('190', 'gmli', '执行了登录操作', '2019:05:11::07:27:09');
INSERT INTO `log` VALUES ('191', 'gmli', '执行了登录操作', '2019:05:11::07:27:57');
INSERT INTO `log` VALUES ('192', 'gmli', '执行了登录操作', '2019:05:11::07:29:46');
INSERT INTO `log` VALUES ('193', 'gmli', '执行了登录操作', '2019:05:11::07:36:46');
INSERT INTO `log` VALUES ('194', 'gmli', '执行了登录操作', '2019:05:11::07:39:55');
INSERT INTO `log` VALUES ('195', 'gmli', '执行了登录操作', '2019:05:11::07:43:06');
INSERT INTO `log` VALUES ('196', 'gmli', '执行了登录操作', '2019:05:11::07:43:41');
INSERT INTO `log` VALUES ('197', 'gmli', '执行了登录操作', '2019:05:11::07:44:38');
INSERT INTO `log` VALUES ('198', 'gmli', '执行了登录操作', '2019:05:11::07:45:31');
INSERT INTO `log` VALUES ('199', 'gmli', '执行了登录操作', '2019:05:11::10:54:29');
INSERT INTO `log` VALUES ('200', 'gmli', '执行了退出操作', '2019:05:11::10:55:36');
INSERT INTO `log` VALUES ('201', 'gmli', '执行了登录操作', '2019:05:11::10:56:05');
INSERT INTO `log` VALUES ('202', 'gmli', '执行了退出操作', '2019:05:11::10:57:02');
INSERT INTO `log` VALUES ('203', 'gmli', '执行了登录操作', '2019:05:12::09:11:33');
INSERT INTO `log` VALUES ('204', 'gmli', '执行了登录操作', '2019:05:12::09:15:17');
INSERT INTO `log` VALUES ('205', 'gmli', '执行了登录操作', '2019:05:12::09:15:38');
INSERT INTO `log` VALUES ('206', 'gmli', '执行了登录操作', '2019:05:12::09:17:33');
INSERT INTO `log` VALUES ('207', 'gmli', '执行了登录操作', '2019:05:12::09:21:11');
INSERT INTO `log` VALUES ('208', 'gmli', '执行了登录操作', '2019:05:12::09:23:23');
INSERT INTO `log` VALUES ('209', 'gmli', '执行了登录操作', '2019:05:13::10:28:22');
INSERT INTO `log` VALUES ('210', 'lol', '执行了登录操作', '2019:05:13::01:10:38');
INSERT INTO `log` VALUES ('211', 'lol', '执行了退出操作', '2019:05:13::01:10:57');
INSERT INTO `log` VALUES ('212', 'lol', '执行了登录操作', '2019:05:13::01:12:09');
INSERT INTO `log` VALUES ('213', 'lol', '执行了登录操作', '2019:05:13::01:14:20');
INSERT INTO `log` VALUES ('214', 'lol', '执行了登录操作', '2019:05:13::02:42:31');
INSERT INTO `log` VALUES ('215', 'lol', '执行了登录操作', '2019:05:13::02:46:48');
INSERT INTO `log` VALUES ('216', 'lol', '执行了登录操作', '2019:05:13::02:47:39');
INSERT INTO `log` VALUES ('217', 'lol', '执行了登录操作', '2019:05:13::02:49:00');
INSERT INTO `log` VALUES ('218', 'lol', '执行了登录操作', '2019:05:13::02:49:38');
INSERT INTO `log` VALUES ('219', 'lol', '执行了登录操作', '2019:05:13::02:50:24');
INSERT INTO `log` VALUES ('220', 'lol', '执行了登录操作', '2019:05:13::02:51:01');
INSERT INTO `log` VALUES ('221', 'lol', '执行了登录操作', '2019:05:13::03:10:35');
INSERT INTO `log` VALUES ('222', 'lol', '执行了登录操作', '2019:05:13::03:33:08');
INSERT INTO `log` VALUES ('223', 'lol', '执行了登录操作', '2019:05:13::03:35:51');
INSERT INTO `log` VALUES ('224', 'lol', '执行了登录操作', '2019:05:13::03:42:20');
INSERT INTO `log` VALUES ('225', 'lol', '执行了登录操作', '2019:05:13::04:05:26');
INSERT INTO `log` VALUES ('226', 'lol', '执行了登录操作', '2019:05:13::04:17:36');
INSERT INTO `log` VALUES ('227', 'lol', '执行了登录操作', '2019:05:13::04:25:41');
INSERT INTO `log` VALUES ('228', 'lol', '执行了登录操作', '2019:05:13::04:26:39');
INSERT INTO `log` VALUES ('229', 'lol', '执行了登录操作', '2019:05:13::04:27:08');
INSERT INTO `log` VALUES ('230', 'lol', '执行了登录操作', '2019:05:13::04:28:34');
INSERT INTO `log` VALUES ('231', 'lol', '执行了登录操作', '2019:05:13::04:28:58');
INSERT INTO `log` VALUES ('232', 'lol', '执行了登录操作', '2019:05:13::04:29:26');
INSERT INTO `log` VALUES ('233', 'lol', '执行了登录操作', '2019:05:13::04:31:02');
INSERT INTO `log` VALUES ('234', 'lol', '执行了登录操作', '2019:05:13::05:09:41');
INSERT INTO `log` VALUES ('235', 'lol', '执行了登录操作', '2019:05:13::05:10:36');
INSERT INTO `log` VALUES ('236', 'lol', '执行了登录操作', '2019:05:13::05:32:10');
INSERT INTO `log` VALUES ('237', 'lol', '执行了登录操作', '2019:05:13::05:33:07');
INSERT INTO `log` VALUES ('238', 'lol', '执行了登录操作', '2019:05:13::05:35:48');
INSERT INTO `log` VALUES ('239', 'lol', '执行了登录操作', '2019:05:13::06:06:55');
INSERT INTO `log` VALUES ('240', 'lol', '执行了登录操作', '2019:05:13::06:35:47');
INSERT INTO `log` VALUES ('241', 'gmli', '执行了登录操作', '2019:05:13::06:41:38');
INSERT INTO `log` VALUES ('242', 'gmli', '执行了退出操作', '2019:05:13::06:42:06');
INSERT INTO `log` VALUES ('243', 'gmli', '执行了登录操作', '2019:05:13::06:42:12');
INSERT INTO `log` VALUES ('244', 'gmli', '执行了登录操作', '2019:05:13::06:43:08');
INSERT INTO `log` VALUES ('245', 'gmli', '执行了登录操作', '2019:05:13::06:43:29');
INSERT INTO `log` VALUES ('246', 'gmli', '执行了登录操作', '2019:05:13::06:44:16');
INSERT INTO `log` VALUES ('247', 'gmli', '执行了登录操作', '2019:05:13::06:45:47');
INSERT INTO `log` VALUES ('248', 'gmli', '执行了登录操作', '2019:05:13::06:46:30');
INSERT INTO `log` VALUES ('249', 'gmli', '执行了退出操作', '2019:05:13::06:47:29');
INSERT INTO `log` VALUES ('250', 'lol', '执行了登录操作', '2019:05:13::06:47:37');
INSERT INTO `log` VALUES ('251', 'gmli', '执行了登录操作', '2019:05:13::06:54:23');
INSERT INTO `log` VALUES ('252', 'gmli', '执行了登录操作', '2019:05:13::07:02:17');
INSERT INTO `log` VALUES ('253', 'lol', '执行了登录操作', '2019:05:13::09:06:36');
INSERT INTO `log` VALUES ('254', 'gmli', '执行了登录操作', '2019:05:13::09:47:26');
INSERT INTO `log` VALUES ('255', 'gmli', '执行了退出操作', '2019:05:13::09:47:57');
INSERT INTO `log` VALUES ('256', 'lol', '执行了登录操作', '2019:05:13::09:48:08');
INSERT INTO `log` VALUES ('257', 'gmli', '执行了登录操作', '2019:05:13::10:09:21');
INSERT INTO `log` VALUES ('258', 'gmli', '执行了登录操作', '2019:05:14::03:45:10');
INSERT INTO `log` VALUES ('259', 'gmli', '执行了登录操作', '2019:05:14::07:51:53');
INSERT INTO `log` VALUES ('260', 'gmli', '执行了登录操作', '2019:05:14::07:53:25');
INSERT INTO `log` VALUES ('261', 'gmli', '执行了登录操作', '2019:05:14::07:55:40');
INSERT INTO `log` VALUES ('262', 'gmli', '执行了登录操作', '2019:05:14::07:57:23');
INSERT INTO `log` VALUES ('263', 'gmli', '执行了登录操作', '2019:05:14::07:59:20');
INSERT INTO `log` VALUES ('264', 'gmli', '执行了登录操作', '2019:05:14::08:00:23');
INSERT INTO `log` VALUES ('265', 'gmli', '执行了登录操作', '2019:05:14::08:03:27');
INSERT INTO `log` VALUES ('266', 'gmli', '执行了登录操作', '2019:05:14::08:06:37');
INSERT INTO `log` VALUES ('267', 'gmli', '执行了登录操作', '2019:05:14::08:07:25');
INSERT INTO `log` VALUES ('268', 'gmli', '执行了登录操作', '2019:05:14::08:15:21');
INSERT INTO `log` VALUES ('269', 'lgm', '执行了登录操作', '2019:05:14::08:25:29');
INSERT INTO `log` VALUES ('270', 'lgm', '执行了登录操作', '2019:05:14::08:26:18');
INSERT INTO `log` VALUES ('271', 'lgm', '执行了退出操作', '2019:05:14::08:26:45');
INSERT INTO `log` VALUES ('272', 'gmli', '执行了登录操作', '2019:05:14::08:26:52');
INSERT INTO `log` VALUES ('273', 'gmli', '执行了登录操作', '2019:05:14::08:49:24');
INSERT INTO `log` VALUES ('274', 'gmli', '执行了登录操作', '2019:05:14::08:50:23');
INSERT INTO `log` VALUES ('275', 'gmli', '执行了登录操作', '2019:05:14::08:56:10');
INSERT INTO `log` VALUES ('276', 'gmli', '执行了登录操作', '2019:05:14::08:59:30');
INSERT INTO `log` VALUES ('277', 'gmli', '执行了登录操作', '2019:05:14::09:13:22');
INSERT INTO `log` VALUES ('278', 'gmli', '执行了登录操作', '2019:05:14::09:18:42');
INSERT INTO `log` VALUES ('279', 'gmli', '执行了登录操作', '2019:05:14::09:19:58');
INSERT INTO `log` VALUES ('280', 'gmli', '执行了登录操作', '2019:05:14::09:23:03');
INSERT INTO `log` VALUES ('281', 'gmli', '执行了登录操作', '2019:05:14::09:25:01');
INSERT INTO `log` VALUES ('282', 'gmli', '执行了登录操作', '2019:05:14::09:25:30');
INSERT INTO `log` VALUES ('283', 'gmli', '执行了登录操作', '2019:05:14::09:41:24');
INSERT INTO `log` VALUES ('284', 'gmli', '执行了登录操作', '2019:05:14::09:42:10');
INSERT INTO `log` VALUES ('285', 'gmli', '执行了登录操作', '2019:05:14::09:44:14');
INSERT INTO `log` VALUES ('286', 'gmli', '执行了登录操作', '2019:05:14::10:36:00');
INSERT INTO `log` VALUES ('287', 'gmli', '执行了登录操作', '2019:05:14::10:37:03');
INSERT INTO `log` VALUES ('288', 'gmli', '执行了登录操作', '2019:05:14::10:38:00');
INSERT INTO `log` VALUES ('289', 'gmli', '执行了登录操作', '2019:05:14::10:38:46');
INSERT INTO `log` VALUES ('290', 'gmli', '执行了登录操作', '2019:05:14::10:51:10');
INSERT INTO `log` VALUES ('291', 'gmli', '执行了登录操作', '2019:05:14::11:15:11');
INSERT INTO `log` VALUES ('292', 'gmli', '执行了登录操作', '2019:05:14::11:43:17');
INSERT INTO `log` VALUES ('293', 'gmli', '执行了登录操作', '2019:05:14::11:46:52');
INSERT INTO `log` VALUES ('294', 'gmli', '执行了登录操作', '2019:05:15::12:15:38');
INSERT INTO `log` VALUES ('295', 'gmli', '执行了登录操作', '2019:05:15::12:17:38');
INSERT INTO `log` VALUES ('296', 'gmli', '执行了登录操作', '2019:05:15::12:18:35');
INSERT INTO `log` VALUES ('297', 'gmli', '执行了登录操作', '2019:05:15::12:19:55');
INSERT INTO `log` VALUES ('298', 'gmli', '执行了登录操作', '2019:05:15::12:21:57');
INSERT INTO `log` VALUES ('299', 'gmli', '执行了登录操作', '2019:05:15::12:22:34');
INSERT INTO `log` VALUES ('300', 'gmli', '执行了登录操作', '2019:05:15::12:22:46');
INSERT INTO `log` VALUES ('301', 'gmli', '执行了登录操作', '2019:05:15::12:23:41');
INSERT INTO `log` VALUES ('302', 'gmli', '执行了登录操作', '2019:05:15::12:23:54');
INSERT INTO `log` VALUES ('303', 'gmli', '执行了登录操作', '2019:05:15::12:40:12');
INSERT INTO `log` VALUES ('304', 'gmli', '执行了登录操作', '2019:05:15::12:47:09');
INSERT INTO `log` VALUES ('305', 'gmli', '执行了登录操作', '2019:05:15::12:59:55');
INSERT INTO `log` VALUES ('306', 'gmli', '执行了登录操作', '2019:05:15::01:02:47');
INSERT INTO `log` VALUES ('307', 'gmli', '执行了登录操作', '2019:05:15::09:18:51');
INSERT INTO `log` VALUES ('308', 'gmli', '执行了登录操作', '2019:05:15::09:24:30');
INSERT INTO `log` VALUES ('309', 'gmli', '执行了登录操作', '2019:05:15::09:31:19');
INSERT INTO `log` VALUES ('310', 'gmli', '执行了登录操作', '2019:05:15::09:33:48');
INSERT INTO `log` VALUES ('311', 'gmli', '执行了登录操作', '2019:05:15::09:33:56');
INSERT INTO `log` VALUES ('312', 'gmli', '执行了登录操作', '2019:05:15::09:35:43');
INSERT INTO `log` VALUES ('313', 'gmli', '执行了登录操作', '2019:05:15::09:35:48');
INSERT INTO `log` VALUES ('314', 'gmli', '执行了登录操作', '2019:05:15::09:36:25');
INSERT INTO `log` VALUES ('315', 'gmli', '执行了登录操作', '2019:05:15::09:37:29');
INSERT INTO `log` VALUES ('316', 'gmli', '执行了登录操作', '2019:05:15::09:40:56');
INSERT INTO `log` VALUES ('317', 'gmli', '执行了登录操作', '2019:05:15::09:43:31');
INSERT INTO `log` VALUES ('318', 'gmli', '执行了登录操作', '2019:05:15::09:44:35');
INSERT INTO `log` VALUES ('319', 'gmli', '执行了登录操作', '2019:05:15::09:44:56');
INSERT INTO `log` VALUES ('320', 'gmli', '执行了登录操作', '2019:05:15::09:48:20');
INSERT INTO `log` VALUES ('321', 'gmli', '执行了登录操作', '2019:05:15::09:48:59');
INSERT INTO `log` VALUES ('322', 'gmli', '执行了登录操作', '2019:05:15::09:53:24');
INSERT INTO `log` VALUES ('323', 'gmli', '执行了登录操作', '2019:05:15::10:14:08');
INSERT INTO `log` VALUES ('324', 'gmli', '执行了登录操作', '2019:05:15::10:25:06');
INSERT INTO `log` VALUES ('325', 'gmli', '执行了登录操作', '2019:05:15::10:27:39');
INSERT INTO `log` VALUES ('326', 'gmli', '执行了登录操作', '2019:05:15::10:33:46');
INSERT INTO `log` VALUES ('327', 'gmli', '执行了登录操作', '2019:05:15::10:34:22');
INSERT INTO `log` VALUES ('328', 'gmli', '执行了登录操作', '2019:05:15::10:35:03');
INSERT INTO `log` VALUES ('329', 'gmli', '执行了登录操作', '2019:05:15::10:36:00');
INSERT INTO `log` VALUES ('330', 'gmli', '执行了登录操作', '2019:05:15::10:36:30');
INSERT INTO `log` VALUES ('331', 'gmli', '执行了登录操作', '2019:05:15::10:38:01');
INSERT INTO `log` VALUES ('332', 'gmli', '执行了登录操作', '2019:05:15::10:46:38');
INSERT INTO `log` VALUES ('333', 'gmli', '执行了登录操作', '2019:05:15::10:47:38');
INSERT INTO `log` VALUES ('334', 'gmli', '执行了登录操作', '2019:05:15::10:53:25');
INSERT INTO `log` VALUES ('335', 'gmli', '执行了登录操作', '2019:05:15::10:58:45');
INSERT INTO `log` VALUES ('336', 'gmli', '执行了登录操作', '2019:05:15::12:31:00');
INSERT INTO `log` VALUES ('337', 'gmli', '执行了登录操作', '2019:05:15::12:35:30');
INSERT INTO `log` VALUES ('338', 'gmli', '执行了登录操作', '2019:05:15::12:46:59');
INSERT INTO `log` VALUES ('339', 'gmli', '执行了登录操作', '2019:05:15::01:03:53');
INSERT INTO `log` VALUES ('340', 'gmli', '执行了登录操作', '2019:05:15::01:07:04');
INSERT INTO `log` VALUES ('341', 'gmli', '执行了登录操作', '2019:05:15::01:09:56');
INSERT INTO `log` VALUES ('342', 'gmli', '执行了登录操作', '2019:05:15::01:12:50');
INSERT INTO `log` VALUES ('343', 'gmli', '执行了登录操作', '2019:05:15::01:19:05');
INSERT INTO `log` VALUES ('344', 'gmli', '执行了登录操作', '2019:05:15::01:44:21');
INSERT INTO `log` VALUES ('345', 'gmli', '执行了登录操作', '2019:05:15::01:45:07');
INSERT INTO `log` VALUES ('346', 'gmli', '执行了登录操作', '2019:05:15::01:45:57');
INSERT INTO `log` VALUES ('347', 'gmli', '执行了登录操作', '2019:05:15::01:48:58');
INSERT INTO `log` VALUES ('348', 'gmli', '执行了登录操作', '2019:05:15::01:49:49');
INSERT INTO `log` VALUES ('349', 'gmli', '执行了登录操作', '2019:05:15::01:53:29');
INSERT INTO `log` VALUES ('350', 'gmli', '执行了登录操作', '2019:05:15::01:55:50');
INSERT INTO `log` VALUES ('351', 'gmli', '执行了登录操作', '2019:05:15::02:04:26');
INSERT INTO `log` VALUES ('352', 'gmli', '执行了登录操作', '2019:05:15::02:05:49');
INSERT INTO `log` VALUES ('353', 'gmli', '执行了登录操作', '2019:05:15::02:08:42');
INSERT INTO `log` VALUES ('354', 'gmli', '执行了登录操作', '2019:05:15::02:10:50');
INSERT INTO `log` VALUES ('355', 'gmli', '执行了登录操作', '2019:05:15::02:18:43');
INSERT INTO `log` VALUES ('356', 'gmli', '执行了登录操作', '2019:05:15::02:19:29');
INSERT INTO `log` VALUES ('357', 'gmli', '执行了登录操作', '2019:05:15::02:38:27');
INSERT INTO `log` VALUES ('358', 'gmli', '执行了退出操作', '2019:05:15::02:38:31');
INSERT INTO `log` VALUES ('359', 'lol', '执行了登录操作', '2019:05:15::02:38:40');
INSERT INTO `log` VALUES ('360', 'lol', '执行了登录操作', '2019:05:15::02:42:51');
INSERT INTO `log` VALUES ('361', 'lol', '执行了退出操作', '2019:05:15::02:42:53');
INSERT INTO `log` VALUES ('362', 'gmli', '执行了登录操作', '2019:05:15::02:42:58');
INSERT INTO `log` VALUES ('363', 'gmli', '执行了登录操作', '2019:05:15::02:51:58');
INSERT INTO `log` VALUES ('364', 'gmli', '执行了登录操作', '2019:05:15::02:54:09');
INSERT INTO `log` VALUES ('365', 'gmli', '执行了登录操作', '2019:05:15::02:55:18');
INSERT INTO `log` VALUES ('366', 'gmli', '执行了登录操作', '2019:05:15::03:05:55');
INSERT INTO `log` VALUES ('367', 'gmli', '执行了登录操作', '2019:05:15::03:55:24');
INSERT INTO `log` VALUES ('368', 'gmli', '执行了登录操作', '2019:05:15::03:55:50');
INSERT INTO `log` VALUES ('369', 'kx', '执行了登录操作', '2019:05:15::04:20:49');
INSERT INTO `log` VALUES ('370', 'kx', '执行了退出操作', '2019:05:15::04:21:23');
INSERT INTO `log` VALUES ('371', 'gmli', '执行了登录操作', '2019:05:15::04:21:29');
INSERT INTO `log` VALUES ('372', 'gmli', '执行了登录操作', '2019:05:15::05:11:16');
INSERT INTO `log` VALUES ('373', 'gmli', '执行了登录操作', '2019:05:15::05:11:39');
INSERT INTO `log` VALUES ('374', 'gmli', '执行了登录操作', '2019:05:15::05:17:32');
INSERT INTO `log` VALUES ('375', 'lol', '执行了登录操作', '2019:05:15::09:55:33');
INSERT INTO `log` VALUES ('376', 'lol', '执行了退出操作', '2019:05:15::09:56:16');
INSERT INTO `log` VALUES ('377', 'gmli', '执行了登录操作', '2019:05:15::09:56:22');
INSERT INTO `log` VALUES ('378', 'gmli', '执行了登录操作', '2019:05:16::11:30:59');
INSERT INTO `log` VALUES ('379', 'gmli', '执行了登录操作', '2019:05:17::11:31:40');
INSERT INTO `log` VALUES ('380', 'gmli', '执行了登录操作', '2019:05:17::12:20:50');
INSERT INTO `log` VALUES ('381', 'gmli', '执行了登录操作', '2019:05:17::12:23:53');
INSERT INTO `log` VALUES ('382', 'gmli', '执行了登录操作', '2019:05:17::09:50:41');
INSERT INTO `log` VALUES ('383', 'lol', '执行了登录操作', '2019:05:17::09:58:40');
INSERT INTO `log` VALUES ('384', 'lol', '执行了登录操作', '2019:05:17::09:58:48');
INSERT INTO `log` VALUES ('385', 'lol', '执行了退出操作', '2019:05:17::09:58:56');
INSERT INTO `log` VALUES ('386', 'lol', '执行了登录操作', '2019:05:17::09:59:03');
INSERT INTO `log` VALUES ('387', 'lol', '执行了退出操作', '2019:05:17::09:59:38');
INSERT INTO `log` VALUES ('388', 'lol', '执行了登录操作', '2019:05:17::09:59:48');
INSERT INTO `log` VALUES ('389', 'gmli', '执行了登录操作', '2019:05:18::10:16:47');
INSERT INTO `log` VALUES ('390', 'gmli', '执行了登录操作', '2019:05:18::05:36:33');
INSERT INTO `log` VALUES ('391', 'gmli', '执行了登录操作', '2019:05:18::05:38:45');
INSERT INTO `log` VALUES ('392', 'lol', '执行了登录操作', '2019:05:18::08:42:35');
INSERT INTO `log` VALUES ('393', 'lol', '执行了登录操作', '2019:05:18::08:42:42');
INSERT INTO `log` VALUES ('394', 'lol', '执行了退出操作', '2019:05:18::08:48:26');
INSERT INTO `log` VALUES ('395', 'lol', '执行了登录操作', '2019:05:18::08:52:16');
INSERT INTO `log` VALUES ('396', 'gmli', '执行了登录操作', '2019:05:18::10:42:36');
INSERT INTO `log` VALUES ('397', 'lol', '执行了登录操作', '2019:05:19::05:36:10');
INSERT INTO `log` VALUES ('398', 'lol', '执行了登录操作', '2019:05:19::05:38:50');
INSERT INTO `log` VALUES ('399', 'gmli', '执行了登录操作', '2019:05:19::09:33:34');
INSERT INTO `log` VALUES ('400', 'gmli', '执行了登录操作', '2019:05:20::01:28:18');
INSERT INTO `log` VALUES ('401', 'gmli', '执行了登录操作', '2019:05:20::01:29:23');
INSERT INTO `log` VALUES ('402', 'gmli', '执行了登录操作', '2019:05:20::01:30:19');
INSERT INTO `log` VALUES ('403', 'gmli', '执行了登录操作', '2019:05:20::01:36:36');
INSERT INTO `log` VALUES ('404', 'gmli', '执行了登录操作', '2019:05:20::01:39:00');
INSERT INTO `log` VALUES ('405', 'gmli', '执行了登录操作', '2019:05:20::01:41:44');
INSERT INTO `log` VALUES ('406', 'gmli', '执行了登录操作', '2019:05:20::01:45:25');
INSERT INTO `log` VALUES ('407', 'gmli', '执行了登录操作', '2019:05:20::01:46:23');
INSERT INTO `log` VALUES ('408', 'gmli', '执行了登录操作', '2019:05:20::01:47:04');
INSERT INTO `log` VALUES ('409', 'gmli', '执行了登录操作', '2019:05:20::01:52:30');
INSERT INTO `log` VALUES ('410', 'gmli', '执行了登录操作', '2019:05:20::01:56:27');
INSERT INTO `log` VALUES ('411', 'gmli', '执行了登录操作', '2019:05:20::01:57:21');
INSERT INTO `log` VALUES ('412', 'gmli', '执行了登录操作', '2019:05:20::02:01:32');
INSERT INTO `log` VALUES ('413', 'gmli', '执行了登录操作', '2019:05:20::02:03:11');
INSERT INTO `log` VALUES ('414', 'gmli', '执行了登录操作', '2019:05:20::02:03:40');
INSERT INTO `log` VALUES ('415', 'gmli', '执行了登录操作', '2019:05:20::02:04:03');
INSERT INTO `log` VALUES ('416', 'gmli', '执行了登录操作', '2019:05:20::02:04:22');
INSERT INTO `log` VALUES ('417', 'gmli', '执行了登录操作', '2019:05:20::02:04:37');
INSERT INTO `log` VALUES ('418', 'gmli', '执行了登录操作', '2019:05:20::02:12:48');
INSERT INTO `log` VALUES ('419', 'gmli', '执行了登录操作', '2019:05:20::02:17:31');
INSERT INTO `log` VALUES ('420', 'gmli', '执行了登录操作', '2019:05:20::02:17:48');
INSERT INTO `log` VALUES ('421', 'gmli', '执行了登录操作', '2019:05:20::02:22:02');
INSERT INTO `log` VALUES ('422', 'gmli', '执行了登录操作', '2019:05:20::02:22:16');
INSERT INTO `log` VALUES ('423', 'gmli', '执行了登录操作', '2019:05:20::02:22:50');
INSERT INTO `log` VALUES ('424', 'gmli', '执行了登录操作', '2019:05:20::02:23:16');
INSERT INTO `log` VALUES ('425', 'gmli', '执行了登录操作', '2019:05:20::02:23:29');
INSERT INTO `log` VALUES ('426', 'gmli', '执行了登录操作', '2019:05:20::02:23:59');
INSERT INTO `log` VALUES ('427', 'gmli', '执行了登录操作', '2019:05:20::02:24:13');
INSERT INTO `log` VALUES ('428', 'gmli', '执行了登录操作', '2019:05:20::02:24:32');
INSERT INTO `log` VALUES ('429', 'gmli', '执行了登录操作', '2019:05:20::02:27:38');
INSERT INTO `log` VALUES ('430', 'gmli', '执行了登录操作', '2019:05:20::02:28:10');
INSERT INTO `log` VALUES ('431', 'gmli', '执行了登录操作', '2019:05:20::02:29:56');
INSERT INTO `log` VALUES ('432', 'gmli', '执行了登录操作', '2019:05:20::02:30:19');
INSERT INTO `log` VALUES ('433', 'gmli', '执行了登录操作', '2019:05:20::02:30:39');
INSERT INTO `log` VALUES ('434', 'gmli', '执行了登录操作', '2019:05:20::02:32:09');
INSERT INTO `log` VALUES ('435', 'gmli', '执行了登录操作', '2019:05:20::02:33:24');
INSERT INTO `log` VALUES ('436', 'gmli', '执行了登录操作', '2019:05:20::02:33:42');
INSERT INTO `log` VALUES ('437', 'gmli', '执行了登录操作', '2019:05:20::02:33:56');
INSERT INTO `log` VALUES ('438', 'gmli', '执行了登录操作', '2019:05:20::02:34:10');
INSERT INTO `log` VALUES ('439', 'gmli', '执行了登录操作', '2019:05:20::02:34:31');
INSERT INTO `log` VALUES ('440', 'gmli', '执行了登录操作', '2019:05:20::02:34:43');
INSERT INTO `log` VALUES ('441', 'gmli', '执行了登录操作', '2019:05:20::02:36:24');
INSERT INTO `log` VALUES ('442', 'gmli', '执行了登录操作', '2019:05:20::02:40:15');
INSERT INTO `log` VALUES ('443', 'gmli', '执行了登录操作', '2019:05:20::02:40:42');
INSERT INTO `log` VALUES ('444', 'gmli', '执行了登录操作', '2019:05:20::02:40:55');
INSERT INTO `log` VALUES ('445', 'gmli', '执行了登录操作', '2019:05:20::02:42:10');
INSERT INTO `log` VALUES ('446', 'gmli', '执行了登录操作', '2019:05:20::02:42:31');
INSERT INTO `log` VALUES ('447', 'gmli', '执行了登录操作', '2019:05:20::02:45:46');
INSERT INTO `log` VALUES ('448', 'gmli', '执行了登录操作', '2019:05:20::11:22:36');
INSERT INTO `log` VALUES ('449', 'gmli', '执行了登录操作', '2019:05:20::11:23:42');
INSERT INTO `log` VALUES ('450', 'gmli', '执行了登录操作', '2019:05:20::11:27:02');
INSERT INTO `log` VALUES ('451', 'gmli', '执行了登录操作', '2019:05:20::11:27:09');
INSERT INTO `log` VALUES ('452', 'gmli', '执行了登录操作', '2019:05:20::11:28:08');
INSERT INTO `log` VALUES ('453', 'gmli', '执行了登录操作', '2019:05:20::11:28:38');
INSERT INTO `log` VALUES ('454', 'gmli', '执行了登录操作', '2019:05:20::11:29:29');
INSERT INTO `log` VALUES ('455', 'gmli', '执行了登录操作', '2019:05:20::11:30:23');
INSERT INTO `log` VALUES ('456', 'gmli', '执行了登录操作', '2019:05:20::11:32:03');
INSERT INTO `log` VALUES ('457', 'gmli', '执行了登录操作', '2019:05:20::11:32:19');
INSERT INTO `log` VALUES ('458', 'gmli', '执行了登录操作', '2019:05:20::11:34:00');
INSERT INTO `log` VALUES ('459', 'gmli', '执行了登录操作', '2019:05:20::11:49:03');
INSERT INTO `log` VALUES ('460', 'gmli', '执行了登录操作', '2019:05:20::11:49:55');
INSERT INTO `log` VALUES ('461', 'gmli', '执行了登录操作', '2019:05:20::11:51:14');
INSERT INTO `log` VALUES ('462', 'gmli', '执行了登录操作', '2019:05:20::11:58:37');
INSERT INTO `log` VALUES ('463', 'gmli', '执行了登录操作', '2019:05:20::12:02:06');
INSERT INTO `log` VALUES ('464', 'gmli', '执行了登录操作', '2019:05:20::12:03:17');
INSERT INTO `log` VALUES ('465', 'gmli', '执行了登录操作', '2019:05:20::12:03:27');
INSERT INTO `log` VALUES ('466', 'gmli', '执行了登录操作', '2019:05:20::12:03:40');
INSERT INTO `log` VALUES ('467', 'gmli', '执行了登录操作', '2019:05:20::12:05:43');
INSERT INTO `log` VALUES ('468', 'gmli', '执行了登录操作', '2019:05:20::12:09:10');
INSERT INTO `log` VALUES ('469', 'gmli', '执行了登录操作', '2019:05:20::12:09:52');
INSERT INTO `log` VALUES ('470', 'gmli', '执行了登录操作', '2019:05:20::12:11:26');
INSERT INTO `log` VALUES ('471', 'gmli', '执行了登录操作', '2019:05:20::12:12:24');
INSERT INTO `log` VALUES ('472', 'gmli', '执行了登录操作', '2019:05:20::12:12:41');
INSERT INTO `log` VALUES ('473', 'gmli', '执行了登录操作', '2019:05:20::12:12:59');
INSERT INTO `log` VALUES ('474', 'gmli', '执行了登录操作', '2019:05:20::12:13:35');
INSERT INTO `log` VALUES ('475', 'gmli', '执行了登录操作', '2019:05:20::12:13:57');
INSERT INTO `log` VALUES ('476', 'gmli', '执行了登录操作', '2019:05:20::12:17:09');
INSERT INTO `log` VALUES ('477', 'gmli', '执行了登录操作', '2019:05:20::12:19:36');
INSERT INTO `log` VALUES ('478', 'gmli', '执行了登录操作', '2019:05:20::12:20:06');
INSERT INTO `log` VALUES ('479', 'gmli', '执行了登录操作', '2019:05:20::12:20:56');
INSERT INTO `log` VALUES ('480', 'gmli', '执行了登录操作', '2019:05:20::12:22:54');
INSERT INTO `log` VALUES ('481', 'gmli', '执行了登录操作', '2019:05:20::12:33:54');
INSERT INTO `log` VALUES ('482', 'gmli', '执行了登录操作', '2019:05:20::12:34:59');
INSERT INTO `log` VALUES ('483', 'gmli', '执行了登录操作', '2019:05:20::12:40:10');
INSERT INTO `log` VALUES ('484', 'gmli', '执行了登录操作', '2019:05:20::12:43:30');
INSERT INTO `log` VALUES ('485', 'gmli', '执行了登录操作', '2019:05:20::12:43:48');
INSERT INTO `log` VALUES ('486', 'gmli', '执行了登录操作', '2019:05:20::12:45:31');
INSERT INTO `log` VALUES ('487', 'gmli', '执行了登录操作', '2019:05:20::12:46:37');
INSERT INTO `log` VALUES ('488', 'gmli', '执行了登录操作', '2019:05:20::12:48:43');
INSERT INTO `log` VALUES ('489', 'gmli', '执行了登录操作', '2019:05:20::12:50:00');
INSERT INTO `log` VALUES ('490', 'gmli', '执行了登录操作', '2019:05:20::12:51:57');
INSERT INTO `log` VALUES ('491', 'gmli', '执行了登录操作', '2019:05:20::01:04:27');
INSERT INTO `log` VALUES ('492', 'gmli', '执行了登录操作', '2019:05:20::01:05:01');
INSERT INTO `log` VALUES ('493', 'gmli', '执行了登录操作', '2019:05:20::01:08:36');
INSERT INTO `log` VALUES ('494', 'gmli', '执行了登录操作', '2019:05:20::01:10:38');
INSERT INTO `log` VALUES ('495', 'gmli', '执行了登录操作', '2019:05:20::01:11:09');
INSERT INTO `log` VALUES ('496', 'gmli', '执行了登录操作', '2019:05:20::01:13:59');
INSERT INTO `log` VALUES ('497', 'gmli', '执行了登录操作', '2019:05:20::01:17:18');
INSERT INTO `log` VALUES ('498', 'gmli', '执行了登录操作', '2019:05:20::01:18:52');
INSERT INTO `log` VALUES ('499', 'gmli', '执行了登录操作', '2019:05:20::01:27:04');
INSERT INTO `log` VALUES ('500', 'gmli', '执行了登录操作', '2019:05:20::01:35:01');
INSERT INTO `log` VALUES ('501', 'gmli', '执行了登录操作', '2019:05:20::01:36:29');
INSERT INTO `log` VALUES ('502', 'gmli', '执行了登录操作', '2019:05:20::01:49:33');
INSERT INTO `log` VALUES ('503', 'gmli', '执行了登录操作', '2019:05:20::01:50:46');
INSERT INTO `log` VALUES ('504', 'gmli', '执行了登录操作', '2019:05:20::01:54:29');
INSERT INTO `log` VALUES ('505', 'gmli', '执行了登录操作', '2019:05:20::01:55:06');
INSERT INTO `log` VALUES ('506', 'gmli', '执行了登录操作', '2019:05:20::01:57:48');
INSERT INTO `log` VALUES ('507', 'gmli', '执行了登录操作', '2019:05:20::04:25:09');
INSERT INTO `log` VALUES ('508', 'gmli', '执行了登录操作', '2019:05:20::04:31:37');
INSERT INTO `log` VALUES ('509', 'gmli', '执行了登录操作', '2019:05:20::04:45:16');
INSERT INTO `log` VALUES ('510', 'gmli', '执行了登录操作', '2019:05:20::04:46:16');
INSERT INTO `log` VALUES ('511', 'gmli', '执行了登录操作', '2019:05:20::04:47:17');
INSERT INTO `log` VALUES ('512', 'gmli', '执行了登录操作', '2019:05:20::04:48:17');
INSERT INTO `log` VALUES ('513', 'gmli', '执行了登录操作', '2019:05:20::04:50:56');
INSERT INTO `log` VALUES ('514', 'gmli', '执行了登录操作', '2019:05:20::04:54:52');
INSERT INTO `log` VALUES ('515', 'gmli', '执行了登录操作', '2019:05:20::04:57:04');
INSERT INTO `log` VALUES ('516', 'gmli', '执行了登录操作', '2019:05:20::05:04:11');
INSERT INTO `log` VALUES ('517', 'gmli', '执行了登录操作', '2019:05:20::05:06:09');
INSERT INTO `log` VALUES ('518', 'gmli', '执行了登录操作', '2019:05:20::05:13:00');
INSERT INTO `log` VALUES ('519', 'gmli', '执行了登录操作', '2019:05:20::05:17:50');
INSERT INTO `log` VALUES ('520', 'gmli', '执行了登录操作', '2019:05:20::05:20:32');
INSERT INTO `log` VALUES ('521', 'gmli', '执行了登录操作', '2019:05:20::05:21:09');
INSERT INTO `log` VALUES ('522', 'gmli', '执行了登录操作', '2019:05:20::05:21:33');
INSERT INTO `log` VALUES ('523', 'gmli', '执行了登录操作', '2019:05:20::05:27:51');
INSERT INTO `log` VALUES ('524', 'gmli', '执行了登录操作', '2019:05:20::05:31:52');
INSERT INTO `log` VALUES ('525', 'gmli', '执行了登录操作', '2019:05:20::05:32:46');
INSERT INTO `log` VALUES ('526', 'gmli', '执行了登录操作', '2019:05:20::05:49:54');
INSERT INTO `log` VALUES ('527', 'gmli', '执行了登录操作', '2019:05:20::05:50:04');
INSERT INTO `log` VALUES ('528', 'gmli', '执行了登录操作', '2019:05:20::05:51:07');
INSERT INTO `log` VALUES ('529', 'gmli', '执行了登录操作', '2019:05:20::06:10:13');
INSERT INTO `log` VALUES ('530', 'gmli', '执行了登录操作', '2019:05:20::06:12:13');
INSERT INTO `log` VALUES ('531', 'gmli', '执行了登录操作', '2019:05:20::06:12:55');
INSERT INTO `log` VALUES ('532', 'gmli', '执行了登录操作', '2019:05:20::06:23:08');
INSERT INTO `log` VALUES ('533', 'gmli', '执行了退出操作', '2019:05:20::06:23:11');
INSERT INTO `log` VALUES ('534', 'gmli', '执行了登录操作', '2019:05:20::06:23:17');
INSERT INTO `log` VALUES ('535', 'gmli', '执行了登录操作', '2019:05:20::06:41:38');
INSERT INTO `log` VALUES ('536', 'gmli', '执行了登录操作', '2019:05:20::08:21:13');
INSERT INTO `log` VALUES ('537', 'gmli', '执行了登录操作', '2019:05:20::08:37:41');
INSERT INTO `log` VALUES ('538', 'gmli', '执行了登录操作', '2019:05:20::08:38:30');
INSERT INTO `log` VALUES ('539', 'gmli', '执行了登录操作', '2019:05:20::08:39:44');
INSERT INTO `log` VALUES ('540', 'gmli', '执行了登录操作', '2019:05:20::08:40:27');
INSERT INTO `log` VALUES ('541', 'gmli', '执行了登录操作', '2019:05:20::08:41:24');
INSERT INTO `log` VALUES ('542', 'gmli', '执行了登录操作', '2019:05:20::08:42:25');
INSERT INTO `log` VALUES ('543', 'gmli', '执行了登录操作', '2019:05:20::08:43:05');
INSERT INTO `log` VALUES ('544', 'gmli', '执行了登录操作', '2019:05:20::08:47:32');
INSERT INTO `log` VALUES ('545', 'gmli', '执行了登录操作', '2019:05:20::08:54:08');
INSERT INTO `log` VALUES ('546', 'dddd', '执行了登录操作', '2019:05:20::08:58:45');
INSERT INTO `log` VALUES ('547', 'dddd', '执行了退出操作', '2019:05:20::08:59:14');
INSERT INTO `log` VALUES ('548', 'gmli', '执行了登录操作', '2019:05:20::08:59:22');
INSERT INTO `log` VALUES ('549', 'gmli', '执行了登录操作', '2019:05:20::09:18:39');
INSERT INTO `log` VALUES ('550', 'gmli', '执行了登录操作', '2019:05:20::09:20:05');
INSERT INTO `log` VALUES ('551', 'gmli', '执行了登录操作', '2019:05:20::09:20:53');
INSERT INTO `log` VALUES ('552', 'gmli', '执行了登录操作', '2019:05:20::09:30:34');
INSERT INTO `log` VALUES ('553', 'gmli', '执行了退出操作', '2019:05:20::09:30:48');
INSERT INTO `log` VALUES ('554', 'gmli', '执行了登录操作', '2019:05:20::09:30:58');
INSERT INTO `log` VALUES ('555', 'gmli', '执行了登录操作', '2019:05:20::09:45:52');
INSERT INTO `log` VALUES ('556', 'gmli', '执行了退出操作', '2019:05:20::10:49:12');
INSERT INTO `log` VALUES ('557', 'gmli', '执行了登录操作', '2019:05:20::11:42:06');
INSERT INTO `log` VALUES ('558', 'gmli', '执行了登录操作', '2019:05:20::11:43:31');
INSERT INTO `log` VALUES ('559', 'gmli', '执行了登录操作', '2019:05:21::11:41:35');
INSERT INTO `log` VALUES ('560', 'gmli', '执行了登录操作', '2019:05:21::11:43:06');
INSERT INTO `log` VALUES ('561', 'gmli', '执行了登录操作', '2019:05:21::11:44:59');
INSERT INTO `log` VALUES ('562', 'gmli', '执行了登录操作', '2019:05:21::11:45:55');
INSERT INTO `log` VALUES ('563', 'gmli', '执行了登录操作', '2019:05:21::11:47:31');
INSERT INTO `log` VALUES ('564', 'gmli', '执行了登录操作', '2019:05:21::12:05:38');
INSERT INTO `log` VALUES ('565', 'gmli', '执行了登录操作', '2019:05:21::12:11:33');
INSERT INTO `log` VALUES ('566', 'gmli', '执行了登录操作', '2019:05:21::12:11:42');
INSERT INTO `log` VALUES ('567', 'gmli', '执行了登录操作', '2019:05:21::12:11:49');
INSERT INTO `log` VALUES ('568', 'gmli', '执行了登录操作', '2019:05:21::12:12:03');
INSERT INTO `log` VALUES ('569', 'gmli', '执行了登录操作', '2019:05:21::04:52:28');
INSERT INTO `log` VALUES ('570', 'gmli', '执行了登录操作', '2019:05:21::04:57:10');
INSERT INTO `log` VALUES ('571', 'gmli', '执行了退出操作', '2019:05:21::04:57:51');
INSERT INTO `log` VALUES ('572', 'gmli', '执行了登录操作', '2019:05:21::06:36:49');
INSERT INTO `log` VALUES ('573', 'gmli', '执行了登录操作', '2019:05:21::06:39:05');
INSERT INTO `log` VALUES ('574', 'gmli', '执行了登录操作', '2019:05:21::07:38:26');
INSERT INTO `log` VALUES ('575', 'gmli', '执行了登录操作', '2019:05:21::07:52:39');
INSERT INTO `log` VALUES ('576', 'gmli', '执行了登录操作', '2019:05:21::08:01:32');
INSERT INTO `log` VALUES ('577', 'gmli', '执行了登录操作', '2019:05:21::08:59:03');
INSERT INTO `log` VALUES ('578', 'gmli', '执行了登录操作', '2019:05:21::09:24:45');
INSERT INTO `log` VALUES ('579', 'gmli', '执行了登录操作', '2019:05:22::11:02:55');
INSERT INTO `log` VALUES ('580', 'gmli', '执行了登录操作', '2019:05:22::04:02:22');
INSERT INTO `log` VALUES ('581', 'gmli', '执行了退出操作', '2019:05:22::04:03:12');
INSERT INTO `log` VALUES ('582', 'gmli', '执行了登录操作', '2019:05:22::04:14:03');
INSERT INTO `log` VALUES ('583', 'gmli', '执行了退出操作', '2019:05:22::04:15:55');
INSERT INTO `log` VALUES ('584', 'lol', '执行了登录操作', '2019:05:22::04:16:01');
INSERT INTO `log` VALUES ('585', 'lol', '执行了登录操作', '2019:05:22::04:16:09');
INSERT INTO `log` VALUES ('586', 'lol', '执行了登录操作', '2019:05:22::04:16:34');
INSERT INTO `log` VALUES ('587', 'lol', '执行了登录操作', '2019:05:22::04:18:43');
INSERT INTO `log` VALUES ('588', 'lol', '执行了登录操作', '2019:05:22::04:19:24');
INSERT INTO `log` VALUES ('589', 'gmli', '执行了退出操作', '2019:05:22::04:20:57');
INSERT INTO `log` VALUES ('590', 'lol', '执行了登录操作', '2019:05:22::04:21:03');
INSERT INTO `log` VALUES ('591', 'lol', '执行了登录操作', '2019:05:22::04:34:28');
INSERT INTO `log` VALUES ('592', 'lol', '执行了登录操作', '2019:05:22::04:35:38');
INSERT INTO `log` VALUES ('593', 'lol', '执行了登录操作', '2019:05:22::04:37:36');
INSERT INTO `log` VALUES ('594', 'lol', '执行了登录操作', '2019:05:22::04:38:54');
INSERT INTO `log` VALUES ('595', 'lol', '执行了登录操作', '2019:05:22::04:57:00');
INSERT INTO `log` VALUES ('596', 'lol', '执行了退出操作', '2019:05:22::04:59:21');
INSERT INTO `log` VALUES ('597', 'gmli', '执行了登录操作', '2019:05:22::04:59:29');
INSERT INTO `log` VALUES ('598', 'gmli', '执行了退出操作', '2019:05:22::05:00:03');
INSERT INTO `log` VALUES ('599', 'lol', '执行了登录操作', '2019:05:22::05:00:09');
INSERT INTO `log` VALUES ('600', 'lol', '执行了登录操作', '2019:05:22::05:10:00');
INSERT INTO `log` VALUES ('601', 'gmli', '执行了退出操作', '2019:05:22::05:10:31');
INSERT INTO `log` VALUES ('602', 'lgm', '执行了登录操作', '2019:05:22::05:10:47');
INSERT INTO `log` VALUES ('603', 'gmli', '执行了退出操作', '2019:05:22::05:11:22');
INSERT INTO `log` VALUES ('604', 'gmli', '执行了登录操作', '2019:05:22::05:16:31');
INSERT INTO `log` VALUES ('605', 'lol', '执行了登录操作', '2019:05:22::05:42:24');
INSERT INTO `log` VALUES ('606', 'lol', '执行了登录操作', '2019:05:22::05:42:33');
INSERT INTO `log` VALUES ('607', 'lol', '执行了登录操作', '2019:05:22::05:43:49');
INSERT INTO `log` VALUES ('608', 'lol', '执行了登录操作', '2019:05:22::05:45:55');
INSERT INTO `log` VALUES ('609', 'lol', '执行了退出操作', '2019:05:22::05:47:48');
INSERT INTO `log` VALUES ('610', 'lgm', '执行了登录操作', '2019:05:22::05:47:59');
INSERT INTO `log` VALUES ('611', 'lol', '执行了登录操作', '2019:05:22::06:00:29');
INSERT INTO `log` VALUES ('612', 'lol', '执行了登录操作', '2019:05:22::06:01:39');
INSERT INTO `log` VALUES ('613', 'lol', '执行了登录操作', '2019:05:22::06:04:28');
INSERT INTO `log` VALUES ('614', 'lol', '执行了退出操作', '2019:05:22::06:06:18');
INSERT INTO `log` VALUES ('615', 'lol', '执行了登录操作', '2019:05:22::06:06:23');
INSERT INTO `log` VALUES ('616', 'lol', '执行了退出操作', '2019:05:22::06:06:50');
INSERT INTO `log` VALUES ('617', 'lol', '执行了登录操作', '2019:05:22::06:06:59');
INSERT INTO `log` VALUES ('618', 'lol', '执行了登录操作', '2019:05:22::06:08:22');
INSERT INTO `log` VALUES ('619', 'lol', '执行了退出操作', '2019:05:22::06:09:20');
INSERT INTO `log` VALUES ('620', 'lol', '执行了登录操作', '2019:05:22::06:09:26');
INSERT INTO `log` VALUES ('621', 'lol', '执行了退出操作', '2019:05:22::06:23:58');
INSERT INTO `log` VALUES ('622', 'gmli', '执行了登录操作', '2019:05:22::06:24:08');
INSERT INTO `log` VALUES ('623', 'gmli', '执行了登录操作', '2019:05:22::06:33:25');
INSERT INTO `log` VALUES ('624', 'gmli', '执行了退出操作', '2019:05:22::06:36:11');
INSERT INTO `log` VALUES ('625', 'gmli', '执行了登录操作', '2019:05:22::06:36:32');
INSERT INTO `log` VALUES ('626', 'gmli', '执行了登录操作', '2019:05:22::06:38:30');
INSERT INTO `log` VALUES ('627', 'gmli', '执行了登录操作', '2019:05:22::06:39:54');
INSERT INTO `log` VALUES ('628', 'gmli', '执行了登录操作', '2019:05:22::06:41:16');
INSERT INTO `log` VALUES ('629', 'gmli', '执行了登录操作', '2019:05:22::06:41:26');
INSERT INTO `log` VALUES ('630', 'gmli', '执行了退出操作', '2019:05:22::06:41:33');
INSERT INTO `log` VALUES ('631', 'gmli', '执行了登录操作', '2019:05:22::06:43:18');
INSERT INTO `log` VALUES ('632', 'gmli', '执行了登录操作', '2019:05:22::06:44:44');
INSERT INTO `log` VALUES ('633', 'gmli', '执行了登录操作', '2019:05:22::06:45:56');
INSERT INTO `log` VALUES ('634', 'gmli', '执行了登录操作', '2019:05:22::06:49:27');
INSERT INTO `log` VALUES ('635', 'gmli', '执行了登录操作', '2019:05:22::06:50:37');
INSERT INTO `log` VALUES ('636', 'gmli', '执行了登录操作', '2019:05:22::06:52:37');
INSERT INTO `log` VALUES ('637', 'gmli', '执行了登录操作', '2019:05:22::06:54:05');
INSERT INTO `log` VALUES ('638', 'gmli', '执行了退出操作', '2019:05:22::06:57:30');
INSERT INTO `log` VALUES ('639', 'lol', '执行了登录操作', '2019:05:24::10:26:05');
INSERT INTO `log` VALUES ('640', 'lol', '执行了登录操作', '2019:05:24::10:26:13');
INSERT INTO `log` VALUES ('641', 'lol', '执行了登录操作', '2019:05:24::10:26:22');
INSERT INTO `log` VALUES ('642', 'gmli', '执行了登录操作', '2019:05:24::10:36:48');
INSERT INTO `log` VALUES ('643', 'lol', '执行了登录操作', '2019:05:24::10:36:54');
INSERT INTO `log` VALUES ('644', 'lol', '执行了登录操作', '2019:05:24::10:37:53');
INSERT INTO `log` VALUES ('645', 'lol', '执行了登录操作', '2019:05:24::10:42:16');
INSERT INTO `log` VALUES ('646', 'lol', '执行了登录操作', '2019:05:24::11:00:20');
INSERT INTO `log` VALUES ('647', 'lol', '执行了登录操作', '2019:05:24::11:03:54');
INSERT INTO `log` VALUES ('648', 'lol', '执行了退出操作', '2019:05:24::11:04:53');
INSERT INTO `log` VALUES ('649', 'gmli', '执行了登录操作', '2019:05:24::11:05:03');
INSERT INTO `log` VALUES ('650', 'lol', '执行了登录操作', '2019:05:24::01:35:26');
INSERT INTO `log` VALUES ('651', 'lol', '执行了登录操作', '2019:05:24::01:35:47');
INSERT INTO `log` VALUES ('652', 'lol', '执行了退出操作', '2019:05:24::01:36:47');
INSERT INTO `log` VALUES ('653', 'gmli', '执行了登录操作', '2019:05:24::01:36:53');
INSERT INTO `log` VALUES ('654', 'gmli', '执行了退出操作', '2019:05:24::01:37:20');
INSERT INTO `log` VALUES ('655', 'lol', '执行了登录操作', '2019:05:24::01:37:27');
INSERT INTO `log` VALUES ('656', 'lol', '执行了登录操作', '2019:05:24::01:37:35');
INSERT INTO `log` VALUES ('657', 'gmli', '执行了退出操作', '2019:05:24::01:39:09');
INSERT INTO `log` VALUES ('658', 'gmli', '执行了登录操作', '2019:05:24::01:39:14');
INSERT INTO `log` VALUES ('659', 'gmli', '执行了登录操作', '2019:05:24::01:39:21');
INSERT INTO `log` VALUES ('660', 'gmli', '执行了退出操作', '2019:05:24::01:39:40');
INSERT INTO `log` VALUES ('661', 'lol', '执行了登录操作', '2019:05:24::01:39:55');
INSERT INTO `log` VALUES ('662', 'gmli', '执行了退出操作', '2019:05:24::01:45:55');
INSERT INTO `log` VALUES ('663', 'gmli', '执行了登录操作', '2019:05:24::01:45:59');
INSERT INTO `log` VALUES ('664', 'gmli', '执行了退出操作', '2019:05:24::01:46:06');
INSERT INTO `log` VALUES ('665', 'lol', '执行了登录操作', '2019:05:24::01:46:12');
INSERT INTO `log` VALUES ('666', 'gmli', '执行了登录操作', '2019:05:24::03:08:25');
INSERT INTO `log` VALUES ('667', 'gmli', '执行了登录操作', '2019:05:24::03:35:41');
INSERT INTO `log` VALUES ('668', 'gmli', '执行了登录操作', '2019:05:24::03:36:54');
INSERT INTO `log` VALUES ('669', 'gmli', '执行了登录操作', '2019:05:24::03:37:45');
INSERT INTO `log` VALUES ('670', 'gmli', '执行了登录操作', '2019:05:24::03:38:40');
INSERT INTO `log` VALUES ('671', 'gmli', '执行了登录操作', '2019:05:24::03:39:46');
INSERT INTO `log` VALUES ('672', 'gmli', '执行了登录操作', '2019:05:24::03:40:13');
INSERT INTO `log` VALUES ('673', 'gmli', '执行了登录操作', '2019:05:24::03:41:08');
INSERT INTO `log` VALUES ('674', 'gmli', '执行了登录操作', '2019:05:24::03:42:06');
INSERT INTO `log` VALUES ('675', 'gmli', '执行了登录操作', '2019:05:24::03:42:55');
INSERT INTO `log` VALUES ('676', 'gmli', '执行了登录操作', '2019:05:24::03:43:35');
INSERT INTO `log` VALUES ('677', 'gmli', '执行了登录操作', '2019:05:24::03:45:27');
INSERT INTO `log` VALUES ('678', 'gmli', '执行了登录操作', '2019:05:24::03:48:03');
INSERT INTO `log` VALUES ('679', 'gmli', '执行了登录操作', '2019:05:24::03:50:27');
INSERT INTO `log` VALUES ('680', 'gmli', '执行了登录操作', '2019:05:24::03:52:22');
INSERT INTO `log` VALUES ('681', 'gmli', '执行了登录操作', '2019:05:24::03:57:30');
INSERT INTO `log` VALUES ('682', 'lol', '执行了登录操作', '2019-05-24::04:03:32');
INSERT INTO `log` VALUES ('683', 'lol', '执行了退出操作', '2019-05-24::04:03:39');
INSERT INTO `log` VALUES ('684', 'gmli', '执行了登录操作', '2019-05-24::04:03:45');
INSERT INTO `log` VALUES ('685', 'gmli', '执行了登录操作', '2019-05-24::04:07:41');
INSERT INTO `log` VALUES ('686', 'gmli', '执行了登录操作', '2019-05-24::04:09:22');
INSERT INTO `log` VALUES ('687', 'gmli', '执行了登录操作', '2019-05-24::04:11:20');
INSERT INTO `log` VALUES ('688', 'gmli', '执行了登录操作', '2019-05-24::04:13:35');
INSERT INTO `log` VALUES ('689', 'gmli', '执行了登录操作', '2019-05-24::04:15:24');
INSERT INTO `log` VALUES ('690', 'gmli', '执行了登录操作', '2019-05-24::04:15:24');
INSERT INTO `log` VALUES ('691', 'gmli', '执行了登录操作', '2019-05-24::04:15:25');
INSERT INTO `log` VALUES ('692', 'gmli', '执行了登录操作', '2019-05-24::04:17:24');
INSERT INTO `log` VALUES ('693', 'gmli', '执行了登录操作', '2019-05-24::04:17:24');
INSERT INTO `log` VALUES ('694', 'gmli', '执行了登录操作', '2019-05-24::04:17:24');
INSERT INTO `log` VALUES ('695', 'gmli', '执行了登录操作', '2019-05-24::04:17:24');
INSERT INTO `log` VALUES ('696', 'gmli', '执行了登录操作', '2019-05-24::04:17:24');
INSERT INTO `log` VALUES ('697', 'gmli', '执行了登录操作', '2019-05-24::04:17:25');
INSERT INTO `log` VALUES ('698', 'gmli', '执行了登录操作', '2019-05-24::04:17:25');
INSERT INTO `log` VALUES ('699', 'gmli', '执行了登录操作', '2019-05-24::04:19:23');
INSERT INTO `log` VALUES ('700', 'gmli', '执行了登录操作', '2019-05-24::04:26:30');
INSERT INTO `log` VALUES ('701', 'gmli', '执行了登录操作', '2019-05-24::04:28:45');
INSERT INTO `log` VALUES ('702', 'gmli', '执行了登录操作', '2019-05-24::04:30:28');
INSERT INTO `log` VALUES ('703', 'gmli', '执行了登录操作', '2019-05-24::04:32:23');
INSERT INTO `log` VALUES ('704', 'gmli', '执行了登录操作', '2019-05-24::04:33:03');
INSERT INTO `log` VALUES ('705', 'gmli', '执行了登录操作', '2019-05-24::04:34:12');
INSERT INTO `log` VALUES ('706', 'gmli', '执行了登录操作', '2019-05-24::04:37:12');
INSERT INTO `log` VALUES ('707', 'gmli', '执行了登录操作', '2019-05-24::04:47:26');
INSERT INTO `log` VALUES ('708', 'gmli', '执行了登录操作', '2019-05-24::04:47:31');
INSERT INTO `log` VALUES ('709', 'gmli', '执行了登录操作', '2019-05-24::04:48:49');
INSERT INTO `log` VALUES ('710', 'gmli', '执行了登录操作', '2019-05-24::04:52:15');
INSERT INTO `log` VALUES ('711', 'gmli', '执行了退出操作', '2019-05-24::04:53:26');
INSERT INTO `log` VALUES ('712', 'gmli', '执行了登录操作', '2019-05-24::04:53:32');
INSERT INTO `log` VALUES ('713', 'gmli', '执行了登录操作', '2019-05-24::05:00:05');
INSERT INTO `log` VALUES ('714', 'gmli', '执行了登录操作', '2019-05-25::10:01:53');
INSERT INTO `log` VALUES ('715', 'gmli', '执行了退出操作', '2019-05-25::10:02:16');
INSERT INTO `log` VALUES ('716', 'lol', '执行了登录操作', '2019-05-25::10:02:22');
INSERT INTO `log` VALUES ('717', 'gmli', '执行了退出操作', '2019-05-25::10:02:36');
INSERT INTO `log` VALUES ('718', 'gmli', '执行了登录操作', '2019-05-25::10:02:42');
INSERT INTO `log` VALUES ('719', 'gmli', '执行了登录操作', '2019-05-31::05:25:56');
INSERT INTO `log` VALUES ('720', 'gmli', '执行了登录操作', '2019-05-31::05:26:01');
INSERT INTO `log` VALUES ('721', 'gmli', '执行了退出操作', '2019-05-31::05:26:34');
INSERT INTO `log` VALUES ('722', 'gmli', '执行了登录操作', '2019-05-31::05:26:41');
INSERT INTO `log` VALUES ('723', 'gmli', '执行了退出操作', '2019-05-31::05:26:50');
INSERT INTO `log` VALUES ('724', 'lol', '执行了登录操作', '2019-05-31::05:26:55');
INSERT INTO `log` VALUES ('725', 'lol', '执行了登录操作', '2019-05-31::05:27:02');
INSERT INTO `log` VALUES ('726', 'gmli', '执行了登录操作', '2019-06-01::08:57:20');
INSERT INTO `log` VALUES ('727', 'gmli', '执行了登录操作', '2019-06-01::10:04:50');
INSERT INTO `log` VALUES ('728', 'gmli', '执行了登录操作', '2019-06-01::10:32:55');
INSERT INTO `log` VALUES ('729', 'gmli', '执行了登录操作', '2019-06-01::10:33:01');
INSERT INTO `log` VALUES ('730', 'gmli', '执行了登录操作', '2019-06-03::05:43:42');
INSERT INTO `log` VALUES ('731', 'gmli', '执行了登录操作', '2019-06-03::05:43:50');
INSERT INTO `log` VALUES ('732', 'gmli', '执行了退出操作', '2019-06-03::05:45:15');
INSERT INTO `log` VALUES ('733', 'lol', '执行了登录操作', '2019-06-04::11:11:48');
INSERT INTO `log` VALUES ('734', 'lol', '执行了登录操作', '2019-06-04::11:11:55');
INSERT INTO `log` VALUES ('735', 'lol', '执行了登录操作', '2019-06-04::11:12:05');
INSERT INTO `log` VALUES ('736', 'lol', '执行了登录操作', '2019-06-04::11:12:36');
INSERT INTO `log` VALUES ('737', 'lol', '执行了退出操作', '2019-06-04::11:13:38');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `productsID` bigint(255) NOT NULL AUTO_INCREMENT,
  `productsType` varchar(255) DEFAULT NULL,
  `productsPrice` double(255,0) DEFAULT NULL,
  `productsNumber` bigint(255) DEFAULT NULL,
  `productsStatus` int(10) DEFAULT NULL,
  `productsName` varchar(255) DEFAULT NULL,
  `productstime` varchar(255) DEFAULT NULL,
  `productsfamername` varchar(255) DEFAULT NULL,
  `productsphone` varchar(255) DEFAULT NULL,
  `productsaddress` varchar(255) DEFAULT NULL,
  `productsuuid` varchar(255) DEFAULT NULL,
  `orderprice` bigint(255) DEFAULT NULL,
  `operatename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productsID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1', '水果', '20', '5', '0', '菠菜', '2019:05:15::09:19:02', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '100', 'gmli');
INSERT INTO `orderinfo` VALUES ('2', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::09:49:21', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('3', '水果', '20', '1', '0', '菠菜', '2019:05:15::09:50:17', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('4', '水果', '20', '5', '0', '菠菜', '2019:05:15::10:14:26', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '100', 'gmli');
INSERT INTO `orderinfo` VALUES ('5', '水果', '20', '5', '0', '菠菜', '2019:05:15::10:15:01', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '100', 'gmli');
INSERT INTO `orderinfo` VALUES ('6', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::10:25:19', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('7', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::10:27:54', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('8', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::10:33:43', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('9', '水果', '20', '1', '0', '苹果', '2019:05:15::10:35:11', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('10', '水果', '20', '1', '0', '苹果', '2019:05:15::10:38:17', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('11', '水果', '20', '1', '0', '苹果', '2019:05:15::10:46:47', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('12', '水果', '20', '1', '0', '苹果', '2019:05:15::10:47:03', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('13', '水果', '20', '1', '0', '苹果', '2019:05:15::10:47:45', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('14', '蔬菜', '20', '2', '0', '香蕉', '2019:05:15::10:56:12', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '40', 'gmli');
INSERT INTO `orderinfo` VALUES ('15', '水果', '20', '1', '0', '菠菜', '2019:05:15::12:31:11', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('16', '水果', '20', '1', '0', '菠菜', '2019:05:15::12:35:45', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('17', '水果', '20', '1', '0', '菠菜', '2019:05:15::12:47:12', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('18', '水果', '20', '1', '0', '菠菜', '2019:05:15::12:48:14', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('19', '水果', '20', '1', '0', '菠菜', '2019:05:15::01:04:01', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('20', '水果', '20', '1', '0', '菠菜', '2019:05:15::01:07:15', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('21', '水果', '20', '1', '0', '菠菜', '2019:05:15::01:10:03', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('22', '水果', '20', '1', '0', '菠菜', '2019:05:15::01:12:57', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('23', '水果', '20', '1', '0', '菠菜', '2019:05:15::01:19:14', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('24', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::01:19:44', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('25', '蔬菜', '20', '1', '0', '香蕉', '2019:05:15::01:20:01', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '20', 'gmli');
INSERT INTO `orderinfo` VALUES ('26', '其他', '30', '10', '0', '菠萝', '2019:05:15::04:21:57', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '300', 'gmli');
INSERT INTO `orderinfo` VALUES ('27', '其他', '30', '10', '0', '水稻', '2019:05:15::09:56:33', 'lol', '15077307136', '广西桂林市', 'f4e3e7f2-2c9b-4785-8390-d3e352e66a8f', '300', 'gmli');
INSERT INTO `orderinfo` VALUES ('28', '其他', '30', '5', '0', '菠萝', '2019:05:16::11:31:14', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '150', 'gmli');
INSERT INTO `orderinfo` VALUES ('29', '其他', '30', '30', '0', '菠萝', '2019:05:16::11:32:10', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '900', 'gmli');
INSERT INTO `orderinfo` VALUES ('30', '其他', '30', '5', '0', '菠萝', '2019:05:16::11:33:23', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '150', 'gmli');
INSERT INTO `orderinfo` VALUES ('31', '其他', '30', '5', '0', '菠萝', '2019:05:16::11:33:30', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '150', 'gmli');
INSERT INTO `orderinfo` VALUES ('32', '其他', '30', '5', '0', '菠萝', '2019:05:20::05:22:05', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '150', 'gmli');
INSERT INTO `orderinfo` VALUES ('33', '水果', '30', '50', '0', '芒果', '2019:05:20::08:59:55', 'dddd', '15077307136', '广西桂林市', '54fca279-5511-47b0-bfb3-26ee26d675bf', '1500', 'gmli');
INSERT INTO `orderinfo` VALUES ('34', '水果', '20', '5', '0', '苹果', '2019:05:21::12:06:42', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '100', 'gmli');
INSERT INTO `orderinfo` VALUES ('35', 'pingguo', '1', '1', '1', 'dd', '2019:05:21::08:47:16', 'jj', '1223355', 'ddddd', '12155', '155', 'dddd');
INSERT INTO `orderinfo` VALUES ('36', '水果', '20', '10', '0', '菠菜', '2019:05:22::04:59:56', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '200', 'gmli');
INSERT INTO `orderinfo` VALUES ('37', '水果', '20', '10', '0', '黄瓜', '2019-05-24::04:03:58', 'lol', '15077307136', '广西桂林市', 'e23a7cd1-2bac-4608-9fef-cbb6b3ac9175', '200', 'gmli');
INSERT INTO `orderinfo` VALUES ('38', '水果', '20', '10', '0', '红薯', '2019-05-24::04:04:12', 'lol', '15077307136', '广西桂林市', '8daf9dee-07d6-4d46-a5fa-fbbd190766f7', '200', 'gmli');
INSERT INTO `orderinfo` VALUES ('39', '其他', '30', '10', '0', '水稻', '2019-05-24::04:52:57', 'lol', '15077307136', '广西桂林市', 'f4e3e7f2-2c9b-4785-8390-d3e352e66a8f', '300', 'gmli');
INSERT INTO `orderinfo` VALUES ('40', '其他', '30', '10', '0', '菠萝', '2019-05-24::04:54:42', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '300', 'gmli');
INSERT INTO `orderinfo` VALUES ('41', 'pingguo', '1', '1', '1', 'dd', '2019-06-01::09:37:44', 'jj', '1223355', 'ddddd', '12155', '155', 'dddd');
INSERT INTO `orderinfo` VALUES ('42', 'pingguo', '1', '1', '1', 'dd', '2019-06-01::10:05:39', 'jj', '1223355', 'ddddd', '12155', '155', 'dddd');
INSERT INTO `orderinfo` VALUES ('43', 'pingguo', '1', '1', '1', 'dd', '2019-06-01::10:30:22', 'jj', '1223355', 'ddddd', '12155', '155', 'dddd');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `roleid` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '1', 'add');
INSERT INTO `permission` VALUES ('2', '1', 'updater');
INSERT INTO `permission` VALUES ('3', '1', 'select');
INSERT INTO `permission` VALUES ('4', '2', 'save');
INSERT INTO `permission` VALUES ('5', '2', 'delete');
INSERT INTO `permission` VALUES ('6', '2', 'updater');
INSERT INTO `permission` VALUES ('7', '2', 'select');
INSERT INTO `permission` VALUES ('8', '3', 'select');
INSERT INTO `permission` VALUES ('10', '3', 'add');
INSERT INTO `permission` VALUES ('11', '3', 'updater');
INSERT INTO `permission` VALUES ('12', '3', 'delete');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productsID` bigint(255) NOT NULL AUTO_INCREMENT,
  `productsType` varchar(255) DEFAULT NULL,
  `productsPrice` double(255,0) DEFAULT NULL,
  `productsNumber` bigint(255) DEFAULT NULL,
  `productsStatus` int(10) DEFAULT NULL,
  `productsName` varchar(255) DEFAULT NULL,
  `productstime` varchar(255) DEFAULT NULL,
  `productsfamername` varchar(255) DEFAULT NULL,
  `productsphone` varchar(255) DEFAULT NULL,
  `productsaddress` varchar(255) DEFAULT NULL,
  `productsuuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productsID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('6', '水果', '20', '81', '0', '菠菜', '2019:05:13::04:05:40', 'lol', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb');
INSERT INTO `products` VALUES ('7', '蔬菜', '20', '98', '0', '香蕉', '2019:05:13::06:39:51', 'lol', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d');
INSERT INTO `products` VALUES ('8', '水果', '20', '0', '1', '苹果', '2019:05:14::08:26:39', 'lgm', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19');
INSERT INTO `products` VALUES ('9', '其他', '30', '30', '0', '菠萝', '2019:05:15::04:21:16', 'kx', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d');
INSERT INTO `products` VALUES ('10', '其他', '30', '80', '0', '水稻', '2019:05:15::09:56:12', 'lol', '15077307136', '广西桂林市', 'f4e3e7f2-2c9b-4785-8390-d3e352e66a8f');
INSERT INTO `products` VALUES ('11', '水果', '20', '100', '0', '芒果', '2019:05:18::08:44:55', 'lol', '15077307136', '广西桂林市', '6670319f-dbd6-42c7-b490-d8086160fcae');
INSERT INTO `products` VALUES ('12', '水果', '20', '90', '0', '黄瓜', '2019:05:18::08:45:23', 'lol', '15077307136', '广西桂林市', 'e23a7cd1-2bac-4608-9fef-cbb6b3ac9175');
INSERT INTO `products` VALUES ('13', '水果', '20', '100', '0', '南瓜', '2019:05:18::08:45:41', 'lol', '15077307136', '广西桂林市', 'ccdf87f6-6b38-4e55-9f54-8442ac92289b');
INSERT INTO `products` VALUES ('14', '水果', '20', '100', '0', '蜜桃', '2019:05:18::08:46:36', 'lol', '15077307136', '广西桂林市', '2f22201f-4540-42a3-a08b-116e42084fe2');
INSERT INTO `products` VALUES ('15', '水果', '20', '90', '0', '红薯', '2019:05:18::08:47:13', 'lol', '15077307136', '广西桂林市', '8daf9dee-07d6-4d46-a5fa-fbbd190766f7');
INSERT INTO `products` VALUES ('16', '水果', '20', '100', '0', '菠菜', '2019:05:19::05:37:09', 'lol', '15077307136', '广西桂林市', '9beb6aa5-2e3d-4cd9-96c1-a9b7022123ad');
INSERT INTO `products` VALUES ('17', '水果', '30', '50', '0', '芒果', '2019:05:20::08:59:04', 'dddd', '15077307136', '广西桂林市', '54fca279-5511-47b0-bfb3-26ee26d675bf');
INSERT INTO `products` VALUES ('18', '水果', '30', '100', '0', '蜜桃', '2019:05:24::11:00:49', 'lol', '15077307136', '广西桂林市', '2198bdad-8c08-4231-8df5-daf4a1685e16');

-- ----------------------------
-- Table structure for repository
-- ----------------------------
DROP TABLE IF EXISTS `repository`;
CREATE TABLE `repository` (
  `productsID` bigint(255) NOT NULL AUTO_INCREMENT,
  `productsType` varchar(255) DEFAULT NULL,
  `productsPrice` double(255,0) DEFAULT NULL,
  `productsNumber` bigint(255) DEFAULT NULL,
  `productsStatus` int(10) DEFAULT NULL,
  `productsName` varchar(255) DEFAULT NULL,
  `productstime` varchar(255) DEFAULT NULL,
  `productsphone` varchar(255) DEFAULT NULL,
  `productsaddress` varchar(255) DEFAULT NULL,
  `productsuuid` varchar(255) DEFAULT NULL,
  `orderprice` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`productsID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of repository
-- ----------------------------
INSERT INTO `repository` VALUES ('3', '水果', '20', '11', '0', '菠菜', '2019-05-04::04:03:58', '15077307136', '广西桂林市', '9a635aa2-d001-4e61-8b15-588ac8fd7dbb', '220');
INSERT INTO `repository` VALUES ('4', '蔬菜', '20', '2', '0', '香蕉', '2019-05-15::04:03:58', '15077307136', '广西桂林市', '27182bda-c883-4535-97fe-26e84101f89d', '40');
INSERT INTO `repository` VALUES ('5', '其他', '30', '70', '0', '菠萝', '2019-05-14::04:03:58', '15077307136', '广西桂林市', 'f18e5c27-30e5-4349-99c9-077c3bca6b6d', '2100');
INSERT INTO `repository` VALUES ('6', '其他', '30', '20', '0', '水稻', '2019-05-14::04:03:58', '15077307136', '广西桂林市', 'f4e3e7f2-2c9b-4785-8390-d3e352e66a8f', '600');
INSERT INTO `repository` VALUES ('7', '水果', '30', '50', '0', '芒果', '2019-05-24::04:03:58', '15077307136', '广西桂林市', '54fca279-5511-47b0-bfb3-26ee26d675bf', '1500');
INSERT INTO `repository` VALUES ('8', '水果', '20', '5', '0', '苹果', '2019-05-26::04:03:58', '15077307136', '广西桂林市', '3752b834-b8a2-4c4c-96b3-3b18b5361a19', '100');
INSERT INTO `repository` VALUES ('9', 'fff', '10', '10', '1', 'ddd', '2019-05-26::04:03:58', '1125', 'ddfdfff', '9b78a625-fb6b-45f4-a310-95de1fa5a427', '100');
INSERT INTO `repository` VALUES ('10', '水果', '20', '10', '0', '黄瓜', '2019-05-24::04:03:58', '15077307136', '广西桂林市', 'e23a7cd1-2bac-4608-9fef-cbb6b3ac9175', '200');
INSERT INTO `repository` VALUES ('11', '水果', '20', '10', '0', '红薯', '2019-05-24::04:04:12', '15077307136', '广西桂林市', '8daf9dee-07d6-4d46-a5fa-fbbd190766f7', '200');
INSERT INTO `repository` VALUES ('12', 'fff', '10', '10', '1', 'ddd', '2019-06-01::09:37:45', '1125', 'ddfdfff', '3e6db496-09c1-48bd-91cc-9dbbc095d900', '100');
INSERT INTO `repository` VALUES ('13', 'fff', '10', '10', '1', 'ddd', '2019-06-01::10:05:39', '1125', 'ddfdfff', 'd88bf3ab-da3b-4880-8ea7-bfa339a9e622', '100');
INSERT INTO `repository` VALUES ('14', 'fff', '10', '10', '1', 'ddd', '2019-06-01::10:30:22', '1125', 'ddfdfff', '9a6ba30d-ffa8-4a96-81e3-b720f144ae7e', '100');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'user');
INSERT INTO `role` VALUES ('3', 'superuser');

-- ----------------------------
-- Table structure for supermanage
-- ----------------------------
DROP TABLE IF EXISTS `supermanage`;
CREATE TABLE `supermanage` (
  `userID` bigint(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `roleID` int(10) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of supermanage
-- ----------------------------
INSERT INTO `supermanage` VALUES ('1', 'gmli', '12345s', '桂林', '15077307136', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` bigint(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `roleID` int(10) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'gmli', '12345s', '南宁', '15077307136', '1');
INSERT INTO `user` VALUES ('2', 'lol', '123456a', '桂林', '15077307136', '2');
INSERT INTO `user` VALUES ('3', 'lgm', '12345a', '南宁', '15077307136', '2');
INSERT INTO `user` VALUES ('31', 'dddd', '12345a', '桂林', '15077307136', '2');
INSERT INTO `user` VALUES ('32', 'ddgfgfgf', '13444444', '南宁', '15077307136', '2');
INSERT INTO `user` VALUES ('34', '3eeedd', '444444', '南宁', '15077307136', '2');
INSERT INTO `user` VALUES ('37', 'ffs', 'hhhhhhhh', '桂林', '15077307136', '2');
INSERT INTO `user` VALUES ('40', 'sss', '12345a', '南宁', '15077307136', '2');
