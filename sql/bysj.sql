/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50506
 Source Host           : localhost:3306
 Source Schema         : bysj

 Target Server Type    : MySQL
 Target Server Version : 50506
 File Encoding         : 65001

 Date: 14/03/2019 23:16:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for applyorder
-- ----------------------------
DROP TABLE IF EXISTS `applyorder`;
CREATE TABLE `applyorder`  (
  `operation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作',
  `sid` int(10) NOT NULL COMMENT '状态',
  `createdate` datetime NOT NULL COMMENT '申领日期',
  `num` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '维修单号',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '领用类型',
  `approverid` int(8) NOT NULL COMMENT '审批人id',
  `applicantid` int(8) NOT NULL COMMENT '申领人id',
  `comm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `deptNo` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `deptName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  PRIMARY KEY (`deptNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` int(10) NOT NULL AUTO_INCREMENT,
  `matCode` int(10) NOT NULL COMMENT '物资编号',
  `num` int(10) NOT NULL COMMENT '申领单号',
  `amount` int(10) NOT NULL COMMENT '申领数量',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '使用说明',
  `deptNo` int(10) NOT NULL COMMENT '使用部门编号',
  `cost` bigint(10) NOT NULL COMMENT '项目总额',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `matCode`(`matCode`) USING BTREE,
  INDEX `num`(`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mat_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `mat_warehouse`;
CREATE TABLE `mat_warehouse`  (
  `mwid` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wNumber` int(10) NOT NULL COMMENT '仓库编号',
  `wName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库名称',
  `matCode` int(10) NOT NULL COMMENT '物料编码',
  `mName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料名称',
  `amount` int(10) NOT NULL COMMENT '物料数量',
  PRIMARY KEY (`mwid`) USING BTREE,
  INDEX `fk_matCode`(`matCode`) USING BTREE,
  INDEX `mName`(`mName`) USING BTREE,
  INDEX `wNumber`(`wNumber`) USING BTREE,
  INDEX `wName`(`wName`) USING BTREE,
  CONSTRAINT `fk_matCode` FOREIGN KEY (`matCode`) REFERENCES `material` (`matCode`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_wNumber` FOREIGN KEY (`wNumber`) REFERENCES `warehouse` (`wNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `matCode` int(10) NOT NULL AUTO_INCREMENT,
  `mName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mnemonicCode` bigint(10) NOT NULL,
  `typeCode` bigint(10) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `specifications` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manufacturer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` bigint(10) NOT NULL,
  `unitsOfMeasurement` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `toalAmount` int(10) NOT NULL COMMENT '物料总数',
  PRIMARY KEY (`matCode`) USING BTREE,
  INDEX `matCode`(`matCode`) USING BTREE,
  INDEX `name`(`mName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `sid` int(10) NOT NULL COMMENT '状态编码',
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptNo` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `wNumber` int(10) NOT NULL AUTO_INCREMENT,
  `wName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`wNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
