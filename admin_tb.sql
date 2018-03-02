/*
Navicat MySQL Data Transfer

Source Server         : neuq
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_info_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-20 16:54:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_tb`
-- ----------------------------
DROP TABLE IF EXISTS `admin_tb`;
CREATE TABLE `admin_tb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_tb
-- ----------------------------
INSERT INTO `admin_tb` VALUES ('1', 'admin', 'admin');
