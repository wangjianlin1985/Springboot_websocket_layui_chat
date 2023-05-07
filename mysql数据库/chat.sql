/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : chat

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-06-25 19:15:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `chatDir` varchar(100) DEFAULT NULL,
  `tGroup` varchar(50) DEFAULT NULL,
  `last_date` varchar(20) DEFAULT NULL,
  `last_text` varchar(200) DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `is_pass` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '1', '3', null, null, '2020-06-25 17:10:14', '好的那就这个周末', '0', '1', '1');
INSERT INTO `friend` VALUES ('2', '3', '1', null, null, '2020-06-25 17:07:50', '我这个周末有时间！', '1', '1', '2');
INSERT INTO `friend` VALUES ('3', '4', '3', null, null, null, null, null, '1', '3');
INSERT INTO `friend` VALUES ('4', '3', '4', null, null, null, null, null, '1', '2');

-- ----------------------------
-- Table structure for `tgroup`
-- ----------------------------
DROP TABLE IF EXISTS `tgroup`;
CREATE TABLE `tgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(200) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tgroup
-- ----------------------------
INSERT INTO `tgroup` VALUES ('1', '新朋友', '1');
INSERT INTO `tgroup` VALUES ('2', '明星朋友', '3');
INSERT INTO `tgroup` VALUES ('3', '新朋友', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `my_desc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '李沫熙', 'e10adc3949ba59abbe56e057f20f883e', 'http://qc9pe1tko.bkt.clouddn.com/1593075143300140', '今天有个小仙女给我准备了惊喜，喜欢', null);
INSERT INTO `user` VALUES ('2', '张爱吉', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'http://pgfgqbd3k.bkt.clouddn.com/20180518090848273.jpg', '今天有个小仙女给我准备了惊喜，喜欢', null);
INSERT INTO `user` VALUES ('3', '刘亦菲', 'e10adc3949ba59abbe56e057f20f883e', 'http://qc9pe1tko.bkt.clouddn.com/1593074780871239', '今天有个小仙女给我准备了惊喜，喜欢', null);
INSERT INTO `user` VALUES ('4', '刘德华', 'e10adc3949ba59abbe56e057f20f883e', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4145689859,1209105028&fm=27&gp=0.jpg', '昨天有个小仙女给我准备了惊喜，喜欢', null);
INSERT INTO `user` VALUES ('5', '杨宁宁', 'b53b3a3d6ab90ce0268229151c9bde11', 'http://phxh0zvpl.bkt.clouddn.com/1541772019279624', '我是最美的小女生杨宁宁童鞋', null);
INSERT INTO `user` VALUES ('6', '李茂展', '6512bd43d9caa6e02c990b0a82652dca', 'http://phxh0zvpl.bkt.clouddn.com/1541915931172711', '这个人很懒，没有留下签名~', 'lmx110522@163.com');
