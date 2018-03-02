/*
Navicat MySQL Data Transfer

Source Server         : neuq
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_info_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-20 16:54:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users_tb`
-- ----------------------------
DROP TABLE IF EXISTS `users_tb`;
CREATE TABLE `users_tb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `choosedNumber` int(10) DEFAULT '0',
  `orders` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_tb
-- ----------------------------
