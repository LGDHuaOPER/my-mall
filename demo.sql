/*
Navicat MySQL Data Transfer

Source Server         : neuq
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_info_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-20 16:54:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `demo`
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) NOT NULL,
  `goodsDescribe` varchar(255) NOT NULL,
  `goodsImg` varchar(255) NOT NULL,
  `goodsPrice` varchar(255) NOT NULL,
  `goodsNumber` int(10) NOT NULL,
  `subTotal` varchar(255) NOT NULL,
  `clearing` varchar(20) DEFAULT '未结算',
  `ordered` varchar(20) DEFAULT '未下单',
  `payMent` varchar(20) DEFAULT '未支付',
  `operation` varchar(10) DEFAULT '删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo
-- ----------------------------
