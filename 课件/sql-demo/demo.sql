/*
Navicat MySQL Data Transfer

Source Server         : 192.168.8.164-mysql
Source Server Version : 50723
Source Host           : 192.168.8.164:3306
Source Database       : gp3

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-12-09 19:36:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t2`
-- ----------------------------
DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t2
-- ----------------------------
INSERT INTO `t2` VALUES ('1', '1');
INSERT INTO `t2` VALUES ('4', '4');
INSERT INTO `t2` VALUES ('7', '7');
INSERT INTO `t2` VALUES ('10', '10');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'seven11124', '18');
INSERT INTO `teacher` VALUES ('2', 'qingshan', '18');

-- ----------------------------
-- Table structure for `user_account`
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL,
  `lastUpdate` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '3200', '2018-12-06 13:27:57', '1');
INSERT INTO `user_account` VALUES ('2', '50', '2018-12-06 13:28:08', '2');
INSERT INTO `user_account` VALUES ('3', '1000', '2018-12-06 13:28:22', '3');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `phoneNum` varchar(32) NOT NULL,
  `lastUpdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_eq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'seven', '26', '13666666666', '2018-12-07 19:22:51');
INSERT INTO `users` VALUES ('2', 'qingshan', '19', '13777777777', '2018-12-08 21:01:12');
INSERT INTO `users` VALUES ('3', 'james', '20', '13888888888', '2018-12-08 20:59:39');
INSERT INTO `users` VALUES ('4', 'tom', '99', '13444444444', '2018-12-06 20:34:10');
INSERT INTO `users` VALUES ('6', 'jack', '91', '13444444544', '2018-12-06 20:35:07');
INSERT INTO `users` VALUES ('11', 'jack1', '33', '13441444544', '2018-12-06 20:36:19');
INSERT INTO `users` VALUES ('15', 'tom2', '30', '1344444444', '2018-12-08 15:08:24');
INSERT INTO `users` VALUES ('19', 'iiii', '30', '1344444444', '2018-12-08 21:21:47');
