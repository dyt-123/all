/*
Navicat MySQL Data Transfer

Source Server         : myLink
Source Server Version : 50539
Source Host           : 127.0.0.1:3306
Source Database       : stu

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2019-12-06 12:10:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `classroom_id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` int(5) NOT NULL,
  `location` varchar(10) NOT NULL,
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', '80', '3#101');
INSERT INTO `classroom` VALUES ('2', '160', '3#206');
INSERT INTO `classroom` VALUES ('3', '80', '4#101');
INSERT INTO `classroom` VALUES ('4', '160', '5#206');

-- ----------------------------
-- Table structure for cource
-- ----------------------------
DROP TABLE IF EXISTS `cource`;
CREATE TABLE `cource` (
  `cource_id` int(11) NOT NULL AUTO_INCREMENT,
  `cource_name` varchar(20) NOT NULL,
  `credit` varchar(5) NOT NULL,
  `teacher` int(11) NOT NULL,
  `classroom` int(11) NOT NULL,
  `schooltime` varchar(30) NOT NULL,
  PRIMARY KEY (`cource_id`),
  KEY `cource_teacher` (`teacher`),
  KEY `cource_classroom` (`classroom`),
  CONSTRAINT `cource_classroom` FOREIGN KEY (`classroom`) REFERENCES `classroom` (`classroom_id`),
  CONSTRAINT `cource_teacher` FOREIGN KEY (`teacher`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cource
-- ----------------------------
INSERT INTO `cource` VALUES ('1', '计算机网络', '2', '2', '1', '周三9,10节；周五7,8节;[第14-20周]');
INSERT INTO `cource` VALUES ('2', '佛教文化', '1.5', '3', '2', '周三9,10节；周五9,10节；[第5-10周]');
INSERT INTO `cource` VALUES ('3', '西方艺术鉴赏', '1', '2', '3', '周一3,4节；周二5,6节；[第5-12周]');
INSERT INTO `cource` VALUES ('4', '新能源技术', '1.5', '3', '4', '周二7,8节；周六3,4节；[第8-10周]');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Cid` char(4) NOT NULL DEFAULT '',
  `Cname` varchar(100) NOT NULL,
  `Cintroduction` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `belongcoll` varchar(100) DEFAULT NULL,
  `belongpro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0011', 'java程序设计', '22222', '必修', '所有学院', '所有专业');
INSERT INTO `course` VALUES ('1005', '大学英语5', '大学英语5', '必修', '外国语学院', '外国语所有专业');
INSERT INTO `course` VALUES ('123', '123', '123', '必修', '计算机学院', '网络工程');
INSERT INTO `course` VALUES ('2002', '网络工程', '网络安全、网络路由配置', '必修', '计算机学院', '网络工程');
INSERT INTO `course` VALUES ('2003', 'C语言基础', 'C语言介绍使用', '必修', '计算机学院', '所有');
INSERT INTO `course` VALUES ('2004', '大学英语（1）', '大学英语', '必修', '所有', '所有');
INSERT INTO `course` VALUES ('2005', 'c++基础', 'c++基础', '必修', '计算机学院', '网络工程');
INSERT INTO `course` VALUES ('5', '计算机技术', '111', '必修', '计算机学院', '软件工程');
INSERT INTO `course` VALUES ('5002', 'javaEE', 'java相关框架', '选修', '计算机学院', '软件工程');
INSERT INTO `course` VALUES ('6', '计算机科学', '1111', '必修', '建筑学院', '测绘工程');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` char(12) COLLATE utf8_bin NOT NULL,
  `cid` char(4) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(3) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('3', '201507021225', '5002', '75', '5');
INSERT INTO `grade` VALUES ('5', '201507024129', '5002', '79', '5');
INSERT INTO `grade` VALUES ('6', '201507024125', '5002', '76', '5');
INSERT INTO `grade` VALUES ('7', '201507024126', '5002', '79', '5');
INSERT INTO `grade` VALUES ('8', '201507024128', '5002', '58', null);
INSERT INTO `grade` VALUES ('12', '201507024128', '5002', '60', '5');
INSERT INTO `grade` VALUES ('13', '201507021227', '2002', '22', null);
INSERT INTO `grade` VALUES ('14', '201507021227', '2002', '66', '5');

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `notes_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `start_time` varchar(12) NOT NULL,
  `stop_time` varchar(12) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`notes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('1', '关于全校大一同学的选课通知', '2015-09-16', '2015-09-17', '此次选课将持续一周的时间，共三次机会，请同学们按时限选课，完成应修的学分。注：大一的每学期最多选两门课！');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `cource` int(11) NOT NULL,
  `pingshi_score` varchar(5) NOT NULL,
  `qimo_score` varchar(5) NOT NULL,
  `final_score` varchar(5) NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `score_student` (`student`),
  KEY `score_cource` (`cource`),
  CONSTRAINT `score_cource` FOREIGN KEY (`cource`) REFERENCES `cource` (`cource_id`),
  CONSTRAINT `score_student` FOREIGN KEY (`student`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '4', '1', '90', '99', '95');
INSERT INTO `score` VALUES ('2', '4', '2', '70', '55', '60');
INSERT INTO `score` VALUES ('3', '5', '3', '60', '90', '82');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sid` char(12) NOT NULL DEFAULT '',
  `Sname` varchar(20) NOT NULL,
  `Sidcard` char(18) NOT NULL,
  `Ssex` varchar(18) DEFAULT NULL,
  `Spassword` varchar(50) NOT NULL,
  `Sage` char(2) NOT NULL,
  `Classr` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sid`) USING BTREE,
  KEY `class` (`Classr`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('122357760012', '彭博', '4115241995062644', '男', 'admin', '16', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('122357760013', '彭博', '4115241995062644', '男', 'admin', '16', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507021227', '依凡', '3443778845551214', '女', '000000', '21', '软件B151', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507023225', '苏通', '1405819961012621', '男', '000000', '22', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507023226', '赵玉', '1253333388877788', '女', '000000', '23', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507023228', '张亚', '8885456456498512', '女', '000000', '21', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507023229', '王野', '1525659875656223', '男', '000000', '24', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507023230', '欧阳离镜', '7849656654641545', '男', '000000', '22', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024125', '王泽', '1405819961012621', '男', '', '22', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024126', '高猛', '1253333388877788', '男', '00000', '23', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024128', '李甜', '8885456456498512', '女', '000000', '21', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024129', '宋球', '1525659875656223', '男', '000000', '24', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024130', '张敏', '7849656654641545', '男', '00000', '22', '网络B151', '网络工程', '计算机学院');
INSERT INTO `student` VALUES ('201507024227', '丁晨', '5564778845551214', '女', '000000', '23', '软件B152', '软件工程', '计算机学院');
INSERT INTO `student` VALUES ('2018', 'wang', '123456', '男', '123456', '18', '1', '软件工程', '计科院');
INSERT INTO `student` VALUES ('88888888', 'wu', '123456', '男', '123123', '18', '阿萨大', '阿萨大大', '阿瑟东撒的');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Tid` char(4) NOT NULL DEFAULT '',
  `Tname` varchar(20) NOT NULL,
  `Tpassword` varchar(12) NOT NULL,
  `Tsex` varchar(10) DEFAULT NULL,
  `Introduction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('0002', '李浩', '111111', '男', 'kindly\r\nkindly');
INSERT INTO `teacher` VALUES ('0003', '彭博', 'admin', '男', '凄凄切切');
INSERT INTO `teacher` VALUES ('0004', '彭博', 'admin', '男', '1111');
INSERT INTO `teacher` VALUES ('0005', '王智宏', '123123', '男', '');
INSERT INTO `teacher` VALUES ('0022', '鞠红军', '111111', '男', 'kingdy');
INSERT INTO `teacher` VALUES ('1003', '任雨', '123456', '女', '随和！~');
INSERT INTO `teacher` VALUES ('1010', '苏弥', '000000', '女', '教学有方');
INSERT INTO `teacher` VALUES ('5010', '冬玲', '111111', '女', '和蔼可亲');
INSERT INTO `teacher` VALUES ('9005', '李梅', '654321', '男', '严厉！');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_num` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(120) NOT NULL DEFAULT '123456',
  `adress` varchar(200) DEFAULT NULL,
  `role` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `school_num` (`school_num`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1234567890', 'admin', '', '', '', '', '', '', '', 'admin@qq.com', 'passwd', '', '0');
INSERT INTO `user` VALUES ('2', '1234567', 'teacher1', '女', '', '机械工程学院', '', '', '', '', 'teacher1@qq.com', 'passwd', '', '1');
INSERT INTO `user` VALUES ('3', '2234567', 'teacher2', '男', '', '材料学院', '', '', '', '', 'teacher2@qq.com', 'passwd', '', '1');
INSERT INTO `user` VALUES ('4', '13110581072', 'ttop5', '男', '2013', '计算机科学与技术学院', '计算机科学与技术', '计科1302', '1427154738', '18753377101', 'ttop5@qq.com', 'passwd', '云南省昆明市石林县', '2');
INSERT INTO `user` VALUES ('5', '13110581073', '何艳红', '男', '2015', '音乐学院', '古典音乐', '古典1501', '1427155518', '18753377104', 'heyanhong@qq.com', 'passwd', '山东省青岛市', '2');

-- ----------------------------
-- Table structure for wang
-- ----------------------------
DROP TABLE IF EXISTS `wang`;
CREATE TABLE `wang` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wang
-- ----------------------------
INSERT INTO `wang` VALUES ('123');
