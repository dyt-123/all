/*
Navicat MySQL Data Transfer

Source Server         : myLink
Source Server Version : 50539
Source Host           : 127.0.0.1:3306
Source Database       : school1

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2019-12-02 14:23:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('14', 'admin', '123456', '28', '123456', '北京');
INSERT INTO `users` VALUES ('18', '李白', '111', '88', '123456', '北京');
INSERT INTO `users` VALUES ('25', '豆永涛', '123456', '25', '13821453698', '南京');
