/*
Navicat MySQL Data Transfer

Source Server         : neuq
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_info_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-20 16:54:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `orders_tb`
-- ----------------------------
DROP TABLE IF EXISTS `orders_tb`;
CREATE TABLE `orders_tb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `orderContent` varchar(255) NOT NULL,
  `bill` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `payMent` varchar(255) DEFAULT '未支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_tb
-- ----------------------------
