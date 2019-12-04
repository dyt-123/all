/*
Navicat MySQL Data Transfer

Source Server         : myLink
Source Server Version : 50539
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2019-11-15 12:18:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `bank` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `img` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `yongt` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('3', 'baoma', 'tttt', '1567059765823.jpg', '2451', '家用,商用');
INSERT INTO `car` VALUES ('6', '宏光', 'x8', '1567057440675.jpg', '600000', '家用,商用');
INSERT INTO `car` VALUES ('7', '大众', 'x6', '1567057450486.jpg', '2500000', '家用,商用');
INSERT INTO `car` VALUES ('13', '丰田', 'x55', '1567057463957.JPG', '600000', '家用,商用');
INSERT INTO `car` VALUES ('16', '武隆', '500', '1567057499415.jpg', '138000', '运动家用商务');
INSERT INTO `car` VALUES ('28', '劳斯莱斯', 'xxx555', '1566978049649.jpg', '1200000', '家用,商用,运动');
INSERT INTO `car` VALUES ('29', '五菱宏光', '面包车', '1566978152708.jpg', '125899', '家用,商用,运动');
INSERT INTO `car` VALUES ('30', '丰田', '55', '1566978286534.jpg', '369852147', '家用,商用,运动');
INSERT INTO `car` VALUES ('31', '宝马', 'www', '1567043099241.jpg', '1212122', '家用,商用');
INSERT INTO `car` VALUES ('35', '丰田', '88888', '1567043121813.jpg', '369852147', '商用,运动');
INSERT INTO `car` VALUES ('36', '丰田', '88888', '1567043121813.jpg', '369852147', '商用,运动');
