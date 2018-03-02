/*
Navicat MySQL Data Transfer

Source Server         : neuq
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_info_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-20 16:54:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_tb`;
CREATE TABLE `goods_tb` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) DEFAULT '',
  `goodsDescribe` varchar(255) DEFAULT NULL,
  `goodsImg` varchar(255) NOT NULL DEFAULT '',
  `goodsPrice` int(10) DEFAULT NULL,
  `evaluate` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL DEFAULT 'li0',
  `pointTo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'javascript:void(0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_tb
-- ----------------------------
INSERT INTO `goods_tb` VALUES ('0000000001', '安溪铁观音新茶高山茶叶', ' ', 'images/001.jpg', '60', '99 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000002', '纯手工搅搅糖', ' ', 'images/002.jpg', '10', '26 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000003', '法国原装进口洋酒', ' ', 'images/003.jpg', '168', '22 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000004', '红枣夹核桃仁', ' ', 'images/004.jpg', '38', ' 123', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000005', '即食手工姜', ' ', 'images/005.jpg', '30', ' 45', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000006', '江西新茶', ' ', 'images/006.jpg', '99', '67 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000007', '金稻谷棉花糖', ' ', 'images/007.jpg', '18', ' 211', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000008', '美国厨师牌金枪鱼  罐头', ' ', 'images/008.jpg', '78', ' 22', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000009', '魔法球糖', ' ', 'images/009.jpg', '20', ' 87', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000010', '青海玉树冬虫夏草', ' ', 'images/010.jpg', '248', '45 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000011', '圣诞姜饼小人曲奇', ' ', 'images/011.jpg', '58', ' 34', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000012', '台湾进口零食小吃', ' ', 'images/012.jpg', '55', '7 ', 'li0', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000013', '佳能EOS  80D单反套', ' ', 'images/101.jpg', '3499', ' 23', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000014', '佳能EOS 5DMark', ' ', 'images/102.jpg', '4398', ' 21', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000015', '佳能微型单反', ' ', 'images/103.jpg', '1299', '34 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000016', '联想精英版二合一平板', ' ', 'images/104.jpg', '2500', ' 34', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000017', '迷你音响  线控', ' ', 'images/105.jpg', '99', ' 48', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000018', '魔影红头戴式耳机', ' ', 'images/106.jpg', '299', '36 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000019', '尼康D5300 单反双镜', ' ', 'images/107.jpg', '5399', ' 63', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000020', '尼康D7100单反双镜', ' ', 'images/108.jpg', '4399', '23 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000021', '尼康D7200中端数码单反', ' ', 'images/109.jpg', '4899', '34 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000022', '华为MateBook 12英', ' ', 'images/110.jpg', '4599', '67 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000023', '索尼相机', ' ', 'images/111.jpg', '1299', '35 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000024', 'pc二合一  韦卓', ' ', 'images/112.jpg', '2100', '83 ', 'li1', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000025', '奥康凉鞋男', ' ', 'images/201.jpg', '438', '23 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000026', '保罗骑士韩版时尚商务鞋', ' ', 'images/202.jpg', '499', '45 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000027', '豆豆鞋男款夏季透气真皮驾车鞋', ' ', 'images/203.jpg', '399', '3 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000028', '登机箱商务小拉杆箱', ' ', 'images/204.jpg', '210', ' 35', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000029', '韩版头层牛皮复古百搭医生包', ' ', 'images/205.jpg', '199', ' 356', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000030', '流苏信封包', ' ', 'images/206.jpg', '150', '26 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000031', '时尚潮流抽带水桶包', ' ', 'images/207.jpg', '129', '38 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000032', '时尚潮流风牛皮流苏包', ' ', 'images/208.jpg', '178', '53 ', 'li2', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000033', 'kaimeng布艺沙发', ' ', 'images/301.jpg', '1999', '3 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000034', '百草园整理袋', ' ', 'images/302.jpg', '33', ' 57', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000035', '茶花 自动甩干家用墩布', ' ', 'images/303.jpg', '56', '34 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000036', '厨房置物盛宴', ' ', 'images/304.jpg', '299', '5 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000037', '大象凳摆件', ' ', 'images/305.jpg', '300', '47 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000038', '迪士尼书桌，上架，椅子', ' ', 'images/306.jpg', '500', '34 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000039', '飞达垃圾桶', ' ', 'images/307.jpg', '54', '77 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000040', '港龙现代简约地毯', ' ', 'images/308.jpg', '99', '5 ', 'li3', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000041', '巴妮兰卸妆膏', ' ', 'images/401.jpg', '120', '66 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000042', '贝德玛卸妆水', ' ', 'images/402.jpg', '178', '30 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000043', '兰蔻精华眼霜膜', ' ', 'images/403.jpg', '120', '5 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000044', '兰蔻爽肤水', ' ', 'images/404.jpg', '80', '34 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000045', '丽得资面膜', ' ', 'images/405.jpg', '99', '78 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000046', '美即面膜', ' ', 'images/406.jpg', '109', '45 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000047', '欧莱雅抗皱眼霜', ' ', 'images/407.jpg', '210', '44 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000048', '韩束红石榴7件套', ' ', 'images/408.jpg', '300', '4 ', 'li4', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000049', '超轻超薄透气皮肤衣', ' ', 'images/501.jpg', '100', '33 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000050', '多功能双肩背包', ' ', 'images/502.jpg', '122', '9 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000051', '户外春秋薄款冲锋衣', ' ', 'images/503.jpg', '259', '33 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000052', '户外春秋薄款男士冲锋衣', ' ', 'images/504.jpg', '355', '9 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000053', '户外登山包', ' ', 'images/505.jpg', '349', ' 33', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000054', '户外登山服', ' ', 'images/506.jpg', '599', '23 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000055', '户外旅游背包', ' ', 'images/507.jpg', '160', ' 5', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000056', '户外皮肤风衣男', ' ', 'images/508.jpg', '230', '7 ', 'li5', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000057', 'A901 行车记录仪', ' ', 'images/601.jpg', '450', '5 ', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000058', '奥迪A7', ' ', 'images/602.jpg', '100000', ' 3', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000059', '奥迪A8', ' ', 'images/603.jpg', '120000', '5 ', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000060', '奥迪R8', ' ', 'images/604.jpg', '100000', '4 ', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000061', '冰丝汽车坐垫', ' ', 'images/605.jpg', '56', ' 111', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000062', '儿童安全座椅', ' ', 'images/606.jpg', '540', ' 46', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000063', '广汽丰田 汉兰达金', ' ', 'images/607.jpg', '90000', '56 ', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000064', '行车记录仪', ' ', 'images/608.jpg', '499', '48 ', 'li6', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000065', '玻璃奶瓶', ' ', 'images/701.jpg', '99', ' 45', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000066', '不锈钢儿童餐具', ' ', 'images/702.jpg', '379', '45 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000067', '多功能婴儿电炖煲', ' ', 'images/703.jpg', '290', '45 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000068', '多用奶粉盒', ' ', 'images/704.jpg', '56', ' 89', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000069', '辅食料理一体机', ' ', 'images/705.jpg', '349', '66 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000070', '韩国进口儿童餐具', ' ', 'images/706.jpg', '78', '55 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000071', '奶瓶奶嘴尼龙刷', ' ', 'images/707.jpg', '40', '66 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000072', '拼装模型', ' ', 'images/708.jpg', '99', '22 ', 'li7', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000073', '悲惨世界', ' ', 'images/801.jpg', '35', '77 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000074', '慈禧全传', ' ', 'images/802.jpg', '99', '5 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000075', '大卫.贝克汉姆', ' ', 'images/803.jpg', '80', '56 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000076', '范建华集', ' ', 'images/804.jpg', '78', '3 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000077', '孤独百年', ' ', 'images/805.jpg', '67', '8 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000078', '教父 三部曲', ' ', 'images/806.jpg', '89', '5 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000079', '老人与海', ' ', 'images/807.jpg', '52', ' 8', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000080', '流浪地球', ' ', 'images/808.jpg', '88', '8 ', 'li8', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000082', '首页轮播图', ' ', 'images/1.jpg', null, '', 'a', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000083', '首页轮播图', ' ', 'images/2.jpg', null, '', 'a', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000084', '首页轮播图', '  ', 'images/3.jpg', null, '', 'a', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000085', '首页轮播图', '', 'images/4.jpg', null, '', 'a', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000086', '首页轮播图', '  ', 'images/5.jpg', null, '', 'a', 'javascript:void(0)');
INSERT INTO `goods_tb` VALUES ('0000000087', '小米 红米 3G  (GSM/TD-SCDMA) ', '手机 黑色', 'images/b1-1a.jpg', '1999', '0 ', 'b1', 'jsp/b1-1.jsp');
INSERT INTO `goods_tb` VALUES ('0000000088', '全网低价 apple 苹果 ipad mini ', '16G wifi版 ', 'images/b1-2a.jpg', '1999', '0', 'b1', 'jsp/b1-2.jsp');
INSERT INTO `goods_tb` VALUES ('0000000089', '魅族 魅蓝 3G (GSM/TD-SCDMA) ', '手机 黑色 ', 'images/b1-3a.jpg', '2000', '0', 'b1', 'jsp/b1-3.jsp');
INSERT INTO `goods_tb` VALUES ('0000000093', 'erter', 'etrt ', 'images/b1-4a.jpg', '656', '0', 'b1', 'jsp/b1-4.jsp');
