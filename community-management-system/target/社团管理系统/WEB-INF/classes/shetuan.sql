/*
Navicat MySQL Data Transfer

Source Server         : lzm
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : shetuan

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-08-12 14:38:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_detil
-- ----------------------------
DROP TABLE IF EXISTS `activity_detil`;
CREATE TABLE `activity_detil` (
  `activity_id` int(10) NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT NULL,
  `activity_name` varchar(20) DEFAULT NULL,
  `community_name` varchar(20) DEFAULT NULL,
  `activity_date` varchar(20) DEFAULT NULL,
  `activity_place` varchar(20) DEFAULT NULL,
  `activity_info` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `activity_detil_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_detil
-- ----------------------------
INSERT INTO `activity_detil` VALUES ('1', '1', '冲冲冲', '机车', '2222-01-01', '地球', '冲冲冲');
INSERT INTO `activity_detil` VALUES ('2', '2', '开黑', '电脑', '2222-02-02', '网吧', '干干');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `community_id` int(10) NOT NULL AUTO_INCREMENT,
  `community_name` varchar(20) DEFAULT NULL,
  `community_createrId` varchar(10) DEFAULT NULL,
  `community_createrName` varchar(10) DEFAULT NULL,
  `community_creatDate` varchar(10) DEFAULT NULL,
  `community_num` int(10) DEFAULT NULL,
  `community_range` varchar(10) DEFAULT NULL,
  `community_class` int(10) DEFAULT NULL,
  `community_className` varchar(20) DEFAULT NULL,
  `community_iscreat` int(10) DEFAULT NULL,
  `community_info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`community_id`),
  KEY `community_createrId` (`community_createrId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('0', '无社团', '', null, null, null, null, null, null, null, null);
INSERT INTO `community` VALUES ('1', '机车', 'mane222', '钟总', '1990-01-01', '10', '校级', '1005', '体育竞技', '1', '社团介绍');
INSERT INTO `community` VALUES ('2', '电脑', 'mane111', '刘总', '2016-08-08', '20', '院级', '1005', '体育竞技', '1', '社团介绍');
INSERT INTO `community` VALUES ('5', '天文', 'mane333', 'tom', '2020-04-03', '15', '院级', '1002', null, '1', '社团介绍');
INSERT INTO `community` VALUES ('6', '吉他', 'mane111', '刘总', '2020-04-03', '15', '校级', '1004', null, '1', '社团介绍');
INSERT INTO `community` VALUES ('7', '地理', 'mane444', '孙总', '2020-04-13', '15', '校级', '1002', null, '1', '地理地理');

-- ----------------------------
-- Table structure for communityclass
-- ----------------------------
DROP TABLE IF EXISTS `communityclass`;
CREATE TABLE `communityclass` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `communityclass_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of communityclass
-- ----------------------------
INSERT INTO `communityclass` VALUES ('1001', '1', '科技创新');
INSERT INTO `communityclass` VALUES ('1002', '2', '理论研究');
INSERT INTO `communityclass` VALUES ('1003', null, '社会服务');
INSERT INTO `communityclass` VALUES ('1004', null, '试运行');
INSERT INTO `communityclass` VALUES ('1005', null, '体育竞技');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `login_id` int(10) NOT NULL AUTO_INCREMENT,
  `manager_id` int(10) DEFAULT NULL,
  `login_name` varchar(50) DEFAULT NULL,
  `login_pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  KEY `manager_id` (`manager_id`),
  KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('75', '1', 'mane111', 'mane111');
INSERT INTO `login` VALUES ('76', '0', 'mane222', 'mane222');
INSERT INTO `login` VALUES ('80', '0', 'mane333', 'mane333');
INSERT INTO `login` VALUES ('81', '0', 'mane444', 'mane444');
INSERT INTO `login` VALUES ('82', '0', 'mane555', 'mane555');
INSERT INTO `login` VALUES ('84', '0', 'mane777', 'mane777');
INSERT INTO `login` VALUES ('86', '0', 'mane888', 'mane888');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `manager_id` int(10) DEFAULT NULL,
  `login_name` varchar(20) DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `member_gender` varchar(10) DEFAULT NULL,
  `member_email` varchar(30) DEFAULT NULL,
  `member_phone` bigint(20) DEFAULT NULL,
  `member_grade` varchar(10) DEFAULT NULL,
  `member_institute` varchar(20) DEFAULT NULL,
  `member_add` varchar(20) DEFAULT NULL,
  `creat_community` int(10) DEFAULT NULL,
  `join_communityId` int(10) DEFAULT NULL,
  `join_community` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'mane111', '刘总', '男', '111@qq.com', '13125', '大四', '邮科院', '206栋104', '0', '2', null);
INSERT INTO `member` VALUES ('0', 'mane222', '钟总', '女', '222@qq', '13131313131', '大四', '邮科院', '206栋104', '0', '1', null);
INSERT INTO `member` VALUES ('0', 'mane333', 'tom', '人妖', '333@qq', '133', '大一', '邮科院', '103栋', '0', '0', null);
INSERT INTO `member` VALUES ('0', 'mane444', '孙总', '男', '444@qq', '133', '大三', '邮科院', '102栋', '0', '0', null);
INSERT INTO `member` VALUES ('0', 'mane555', null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `member` VALUES ('0', 'mane777', null, null, '777@qq', '777', null, null, null, null, '0', null);
INSERT INTO `member` VALUES ('0', 'mane888', null, null, '888@qq.com', '131', null, null, null, null, '0', null);
