/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : springbootinit

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 09/07/2020 17:27:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gu
-- ----------------------------
DROP TABLE IF EXISTS `gu`;
CREATE TABLE `gu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `markettype` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xjfh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `allocationplan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gqdjr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nowprice` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 535 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gu
-- ----------------------------
INSERT INTO `gu` VALUES (1, '沪市', '甘李药业', '603087', '5.0', '10送4.00派5.00元(含税)', '', '0.26', '195.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (2, '沪市', '天合光能', '688599', '1.0', '10派1.00元(含税)', '', '0.55', '18.300', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (3, '沪市', '楚天高速', '600035', '1.6', '10派1.60元(含税)', '', '4.88', '3.280', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (4, '沪市', '武汉控股', '600168', '1.06', '10派1.06元(含税)', '', '1.35', '7.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (5, '中小板', '孚日股份', '002083', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (6, '中小板', '丹邦科技', '002618', '0.03', '10派0.03元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (7, '深主板', '河钢资源', '000923', '1.0', '10派1.00元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (8, '沪市', '怡球资源', '601388', '0.16', '10派0.16元(含税)', '', '0.72', '2.210', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (9, '中小板', '万邦德', '002082', '1.5', '10派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (10, '沪市', '保隆科技', '603197', '3.2', '10派3.20元(含税)', '', '0.95', '33.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (11, '深主板', '中鼎股份', '000887', '2.0', '10派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (12, '中小板', '兴民智通', '002355', '0.02', '10派0.02元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (13, '沪市', '晶科科技', '601778', '0.27', '10派0.27元(含税)', '', '0.30', '8.870', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (14, '创业板', '派瑞股份', '300831', '0.35', '10派0.35元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (15, '沪市', '三人行', '605168', '15.0', '10派15.00元(含税,扣税后13.50元)', '2020-07-10', '0.51', '292.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (16, '沪市', '赛伍技术', '603212', '0.5', '10派0.50元(含税)', '', '0.16', '30.820', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (17, '中小板', '世纪华通', '002602', '-', '10转2.00', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (18, '沪市', '中金黄金', '600489', '0.193', '10派0.193元(含税,扣税后0.1737元)', '2020-07-15', '0.17', '11.050', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (19, '中小板', '三力士', '002224', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (20, '创业板', '鼎龙股份', '300054', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (21, '中小板', '意华股份', '002897', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (22, '沪市', '金科环境', '688466', '0.73', '10派0.73元(含税)', '', '0.15', '47.190', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (23, '创业板', '普丽盛', '300442', '0.27', '10派0.27元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (24, '中小板', '凯龙股份', '002783', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (25, '创业板', '天喻信息', '300205', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (26, '深主板', '金浦钛业', '000545', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (27, '沪市', '合锻智能', '603011', '0.2', '10派0.20元(含税)', '', '0.36', '5.610', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (28, '沪市', '鲁信创投', '600783', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-10', '0.81', '18.590', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (29, '沪市', '中衡设计', '603017', '4.35', '10派4.35元(含税,扣税后3.915元)', '2020-07-10', '3.69', '11.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (30, '深主板', '福星股份', '000926', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-10', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (31, '深主板', '中原传媒', '000719', '2.8', '10派2.80元(含税,扣税后2.52元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (32, '中小板', '纳思达', '002180', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (33, '中小板', '杭氧股份', '002430', '1.8', '10派1.80元(含税,扣税后1.62元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (34, '深主板', '华数传媒', '000156', '6.3', '10派6.30元(含税,扣税后5.67元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (35, '深主板', '青岛双星', '000599', '0.10076', '10派0.10076元(含税,扣税后0.090684元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (36, '沪市', '海正药业', '600267', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-14', '0.32', '15.670', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (37, '创业板', '蒙草生态', '300355', '0.04', '10派0.04元(含税,扣税后0.036元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (38, '创业板', '宝利国际', '300135', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (39, '沪市', '瑞贝卡', '600439', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-15', '0.86', '3.480', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (40, '沪市', '华资实业', '600191', '0.15', '10派0.15元(含税,扣税后0.135元)', '2020-07-15', '0.21', '7.160', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (41, '深主板', '冰轮环境', '000811', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-15', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (42, '沪市', '中天科技', '600522', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-15', '0.73', '13.740', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (43, '创业板', '朗源股份', '300175', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (44, '沪市', '重庆建工', '600939', '0.76', '10派0.76元(含税,扣税后0.684元)', '2020-07-15', '1.88', '4.040', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (45, '沪市', '烽火通信', '600498', '3.4', '10派3.40元(含税)', '', '1.00', '33.960', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (46, '沪市', '音飞储存', '603066', '0.52', '10派0.52元(含税)', '', '0.49', '10.580', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (47, '沪市', '人福医药', '600079', '0.5', '10派0.50元(含税)', '', '0.17', '29.520', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (48, '沪市', '森特股份', '603098', '1.5', '10派1.50元(含税)', '', '1.52', '9.900', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (49, '沪市', '浙江广厦', '600052', '0.95', '10派0.95元(含税)', '', '2.49', '3.820', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (50, '沪市', '长江通信', '600345', '1.0', '10派1.00元(含税)', '', '0.43', '23.140', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (51, '沪市', '浙大网新', '600797', '0.3', '10派0.30元(含税)', '', '0.32', '9.420', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (52, '深主板', '我爱我家', '000560', '0.7', '10派0.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (53, '沪市', '歌力思', '603808', '2.5', '10派2.50元(含税)', '', '1.64', '15.230', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (54, '沪市', '正平股份', '603843', '0.2', '10派0.20元(含税)', '', '0.37', '5.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (55, '沪市', '宝钢包装', '601968', '0.77', '10派0.77元(含税)', '', '1.13', '6.810', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (56, '沪市', '重庆百货', '600729', '7.3', '10派7.30元(含税)', '', '2.00', '36.530', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (57, '深主板', '中国长城', '000066', '0.87', '10派0.87元(含税)', '', '0.00', '1748.0904', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (58, '沪市', '海尔智家', '600690', '3.75', '10派3.75元(含税)', '', '2.01', '18.630', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (59, '中小板', '南山控股', '002314', '0.58', '10派0.58元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (60, '中小板', '东华能源', '002221', '2.11', '10派2.11元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (61, '中小板', '大族激光', '002008', '2.0', '10派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (62, '沪市', 'ST金花', '600080', '0.3', '10派0.30元(含税)', '', '0.56', '5.370', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (63, '沪市', '百联股份', '600827', '1.0', '10派1.00元(含税)', '', '0.38', '26.370', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (64, '沪市', '宏发股份', '600885', '2.9', '10派2.90元(含税)', '', '0.69', '41.850', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (65, '沪市', '佳华科技', '688051', '4.62', '10派4.62元(含税)', '', '0.33', '139.990', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (66, '沪市', '南都物业', '603506', '2.55', '10派2.55元(含税)', '', '0.86', '29.690', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (67, '创业板', '思创医惠', '300078', '0.18', '10派0.18元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (68, '沪市', '同济科技', '600846', '3.4', '10派3.40元(含税)', '', '3.62', '9.380', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (69, '中小板', '光迅科技', '002281', '1.7', '10派1.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (70, '沪市', '长江电力', '600900', '6.8', '10派6.80元(含税)', '', '3.57', '19.030', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (71, '沪市', '小商品城', '600415', '0.7', '10派0.70元(含税)', '', '0.95', '7.340', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (72, '沪市', '瑞茂通', '600180', '1.22', '10派1.22元(含税)', '', '1.69', '7.240', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (73, '沪市', '华建集团', '600629', '1.2', '10派1.20元(含税)', '', '1.32', '9.120', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (74, '深主板', '湖北能源', '000883', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (75, '沪市', '大有能源', '600403', '0.097', '10派0.097元(含税)', '', '0.20', '4.770', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (76, '沪市', '东兴证券', '601198', '1.4', '10派1.40元(含税)', '', '0.95', '14.780', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (77, '沪市', '渤海汽车', '600960', '0.1', '10派0.10元(含税)', '', '0.28', '3.570', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (78, '深主板', '黑芝麻', '000716', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (79, '中小板', '洪涛股份', '002325', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (80, '沪市', '万通地产', '600246', '0.6', '10派0.60元(含税)', '', '0.69', '8.640', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (81, '沪市', '东方明珠', '600637', '2.7', '10派2.70元(含税)', '', '2.54', '10.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (82, '深主板', '双林生物', '000403', '1.21', '10送4.00转4.00派1.21元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (83, '沪市', '迪马股份', '600565', '0.6', '10派0.60元(含税)', '', '1.85', '3.240', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (84, '沪市', '健友股份', '603707', '3.0', '10转3.00派3.00元(含税)', '', '0.49', '60.710', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (85, '沪市', '国网信通', '600131', '1.25', '10派1.25元(含税)', '', '0.60', '20.730', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (86, '中小板', '捷荣技术', '002855', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (87, '深主板', '湖北广电', '000665', '0.3', '10派0.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (88, '中小板', '多喜爱', '002761', '2.0', '10派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (89, '沪市', '福达合金', '603045', '1.5', '10派1.50元(含税)', '', '1.02', '14.680', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (90, '沪市', '白银有色', '601212', '0.024', '10派0.024元(含税)', '', '0.07', '3.260', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (91, '沪市', '凤凰传媒', '601928', '3.0', '10派3.00元(含税)', '', '4.00', '7.500', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (92, '沪市', '号百控股', '600640', '0.54', '10派0.54元(含税)', '', '0.25', '22.030', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (93, '沪市', '紫江企业', '600210', '2.0', '10派2.00元(含税)', '', '4.14', '4.830', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (94, '中小板', '游族网络', '002174', '0.88', '10派0.88元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (95, '沪市', '新集能源', '601918', '0.2', '10派0.20元(含税)', '', '0.69', '2.910', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (96, '中小板', '梦洁股份', '002397', '2.0', '10派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (97, '沪市', '华联综超', '600361', '0.7', '10派0.70元(含税,扣税后0.63元)', '2020-07-10', '1.23', '5.710', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (98, '沪市', '成都银行', '601838', '4.2', '10派4.20元(含税,扣税后3.78元)', '2020-07-10', '4.33', '9.690', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (99, '创业板', '立昂技术', '300603', '1.50024', '10转5.0008派1.50024元(含税,扣税后1.350216元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (100, '创业板', '通裕重工', '300185', '0.4', '10派0.40元(含税,扣税后0.36元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (101, '创业板', '银邦股份', '300337', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (102, '沪市', '金证股份', '600446', '0.28', '10派0.28元(含税,扣税后0.252元)', '2020-07-10', '0.12', '23.310', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (103, '创业板', '蓝晓科技', '300487', '2.5', '10派2.50元(含税,扣税后2.25元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (104, '创业板', '特锐德', '300001', '0.2', '10派0.20元(含税,扣税后0.18元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (105, '沪市', '中国核建', '601611', '0.56', '10派0.56元(含税,扣税后0.504元)', '2020-07-13', '0.80', '7.030', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (106, '中小板', '常宝股份', '002478', '1.3', '10派1.30元(含税,扣税后1.17元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (107, '沪市', '兴业银行', '601166', '7.62', '10派7.62元(含税,扣税后6.858元)', '2020-07-14', '4.15', '18.350', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (108, '沪市', '海利生物', '603718', '0.06', '10派0.06元(含税,扣税后0.054元)', '2020-07-14', '0.02', '30.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (109, '中小板', '天奇股份', '002009', '0.32', '10派0.32元(含税,扣税后0.288元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (110, '沪市', '来伊份', '603777', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-14', '0.52', '19.190', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (111, '中小板', '智光电气', '002169', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (112, '沪市', '辰欣药业', '603367', '2.68', '10派2.68元(含税,扣税后2.412元)', '2020-07-14', '1.55', '17.300', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (113, '中小板', '中泰化学', '002092', '0.16', '10派0.16元(含税,扣税后0.144元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (114, '中小板', '德联集团', '002666', '0.4', '10派0.40元(含税,扣税后0.36元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (115, '创业板', '万邦达', '300055', '0.15', '10派0.15元(含税,扣税后0.135元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (116, '沪市', '上海九百', '600838', '0.75', '10派0.75元(含税,扣税后0.675元)', '2020-07-15', '0.82', '9.190', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (117, '沪市', '光大嘉宝', '600622', '0.6', '10派0.60元(含税,扣税后0.54元)', '2020-07-15', '1.28', '4.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (118, '中小板', '东方铁塔', '002545', '0.8', '10派0.80元(含税,扣税后0.72元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (119, '中小板', '赛隆药业', '002898', '0.3', '10转1.00派0.30元(含税,扣税后0.27元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (120, '沪市', '凯盛科技', '600552', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-15', '1.46', '6.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (121, '中小板', '杰赛科技', '002544', '0.33', '10派0.33元(含税,扣税后0.297元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (122, '中小板', '东华软件', '002065', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (123, '沪市', '贵广网络', '600996', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-16', '1.24', '8.040', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (124, '沪市', '金龙汽车', '600686', '0.25', '10派0.25元(含税,扣税后0.225元)', '2020-07-16', '0.40', '6.220', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (125, '沪市', '金自天正', '600560', '0.38', '10派0.38元(含税,扣税后0.342元)', '2020-07-16', '0.35', '10.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (126, '中小板', '卫士通', '002268', '0.19', '10派0.19元(含税,扣税后0.171元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (127, '深主板', '陕西金叶', '000812', '0.15', '10派0.15元(含税,扣税后0.135元)', '2020-07-16', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (128, '中小板', '奇正藏药', '002287', '3.5', '10派3.50元(含税,扣税后3.15元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (129, '沪市', '鲁银投资', '600784', '0.08', '10派0.08元(含税)', '', '0.17', '4.710', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (130, '沪市', '岱美股份', '603730', '5.0', '10转4.50派5.00元(含税)', '', '1.40', '35.830', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (131, '创业板', '高伟达', '300465', '0.45', '10派0.45元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (132, '沪市', '国机汽车', '600335', '0.6', '10派0.60元(含税)', '', '1.12', '5.340', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (133, '创业板', '新元科技', '300472', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (134, '沪市', '拓普集团', '601689', '1.9', '10派1.90元(含税)', '', '0.54', '34.960', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (135, '沪市', '华熙生物', '688363', '3.7', '10派3.70元(含税)', '', '0.25', '147.990', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (136, '沪市', '皖天然气', '603689', '2.1', '10派2.10元(含税)', '', '1.91', '10.980', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (137, '沪市', '中国出版', '601949', '1.16', '10派1.16元(含税)', '', '1.95', '5.950', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (138, '深主板', '韶能股份', '000601', '2.5', '10派2.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (139, '深主板', '冀中能源', '000937', '1.0', '10派1.00元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (140, '深主板', '电广传媒', '000917', '0.15', '10派0.15元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (141, '深主板', '新大陆', '000997', '1.3', '10派1.30元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (142, '中小板', '新宏泽', '002836', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (143, '创业板', '金石亚药', '300434', '0.7', '10派0.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (144, '沪市', '东风汽车', '600006', '0.664', '10派0.664元(含税)', '', '1.49', '4.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (145, '沪市', '际华集团', '601718', '0.3', '10派0.30元(含税)', '', '0.79', '3.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (146, '沪市', '贵绳股份', '600992', '0.36', '10派0.36元(含税)', '', '0.53', '6.810', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (147, '深主板', '深天地A', '000023', '0.1', '10派0.10元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (148, '中小板', '福建金森', '002679', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (149, '沪市', '广西广电', '600936', '0.2', '10派0.20元(含税)', '', '0.47', '4.280', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (150, '沪市', '欧派家居', '603833', '10.9', '10转4.00派10.90元(含税)', '', '0.90', '121.770', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (151, '中小板', '生意宝', '002095', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (152, '深主板', '视觉中国', '000681', '0.32', '10派0.32元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (153, '沪市', '利群股份', '601366', '1.5', '10派1.50元(含税)', '', '2.33', '6.430', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (154, '深主板', '国际实业', '000159', '0.2', '10派0.20元(含税)', '', '0.00', '3588.1233', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (155, '沪市', '南方传媒', '601900', '2.5', '10派2.50元(含税)', '', '2.49', '10.040', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (156, '沪市', '亚盛集团', '600108', '0.045', '10派0.045元(含税)', '', '0.13', '3.490', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (157, '沪市', '中油工程', '600339', '0.44', '10派0.44元(含税)', '', '1.67', '2.640', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (158, '创业板', '左江科技', '300799', '2.0', '10转5.00派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (159, '中小板', '威星智能', '002849', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (160, '沪市', '九华旅游', '603199', '2.2', '10派2.20元(含税)', '', '0.98', '22.510', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (161, '沪市', '中华企业', '600675', '1.38', '10派1.38元(含税)', '', '2.96', '4.660', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (162, '沪市', '大元泵业', '603757', '5.0', '10派5.00元(含税)', '', '2.67', '18.730', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (163, '沪市', '朗博科技', '603655', '0.7', '10派0.70元(含税)', '', '0.25', '28.210', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (164, '中小板', '凯撒文化', '002425', '0.43', '10派0.43元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (165, '深主板', '华联股份', '000882', '0.05', '10派0.05元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (166, '深主板', '泸州老窖', '000568', '15.9', '10派15.90元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (167, '沪市', '中国海防', '600764', '2.73', '10派2.73元(含税)', '', '0.93', '29.200', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (168, '深主板', '中国宝安', '000009', '0.2', '10派0.20元(含税)', '', '0.00', '5881.9189', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (169, '沪市', '内蒙华电', '600863', '1.26', '10派1.26元(含税)', '', '4.65', '2.710', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (170, '沪市', '外高桥', '600648', '2.4', '10派2.40元(含税)', '', '1.40', '17.130', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (171, '沪市', '喜临门', '603008', '0.5', '10派0.50元(含税)', '', '0.43', '11.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (172, '深主板', '泛海控股', '000046', '1.0', '10派1.00元(含税)', '', '0.00', '4351.0101', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (173, '沪市', '常青股份', '603768', '0.37', '10派0.37元(含税)', '', '0.23', '16.150', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (174, '中小板', '凌霄泵业', '002884', '10.0', '10派10.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (175, '沪市', '剑桥科技', '603083', '0.34', '10转3.00派0.34元(含税)', '', '0.08', '41.560', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (176, '沪市', '龙净环保', '600388', '2.0', '10派2.00元(含税)', '', '2.06', '9.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (177, '创业板', '先导智能', '300450', '1.63', '10派1.63元(含税,扣税后1.467元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (178, '沪市', '永鼎股份', '600105', '0.6', '10派0.60元(含税,扣税后0.54元)', '2020-07-10', '1.20', '4.990', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (179, '中小板', '长鹰信质', '002664', '0.8', '10派0.80元(含税,扣税后0.72元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (180, '沪市', '骆驼股份', '601311', '2.1', '10送3.00派2.10元(含税,扣税后1.59元)', '2020-07-10', '2.04', '10.280', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (181, '深主板', '智度股份', '000676', '0.230051', '10派0.230051元(含税,扣税后0.207046元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (182, '中小板', '富煌钢构', '002743', '0.54', '10派0.54元(含税,扣税后0.486元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (183, '创业板', '平治信息', '300571', '4.6', '10派4.60元(含税,扣税后4.14元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (184, '创业板', '和顺电气', '300141', '0.15093', '10派0.15093元(含税,扣税后0.135837元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (185, '中小板', '易明医药', '002826', '0.4', '10派0.40元(含税,扣税后0.36元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (186, '创业板', '雅本化学', '300261', '0.100903', '10派0.100903元(含税,扣税后0.090813元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (187, '创业板', '金通灵', '300091', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (188, '中小板', '奇信股份', '002781', '0.39', '10派0.39元(含税,扣税后0.351元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (189, '创业板', '汇川技术', '300124', '1.8', '10派1.80元(含税,扣税后1.62元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (190, '沪市', '索通发展', '603612', '0.6162', '10派0.6162元(含税,扣税后0.5546元)', '2020-07-14', '0.41', '14.910', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (191, '沪市', '江苏有线', '600959', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', '0.73', '4.110', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (192, '沪市', '益民集团', '600824', '0.25', '10派0.25元(含税,扣税后0.225元)', '2020-07-14', '0.53', '4.750', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (193, '创业板', '科泰电源', '300153', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (194, '沪市', '北京银行', '601169', '3.05', '10派3.05元(含税,扣税后2.745元)', '2020-07-14', '5.53', '5.520', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (195, '沪市', '龙元建设', '600491', '0.72', '10派0.72元(含税,扣税后0.648元)', '2020-07-14', '0.77', '9.390', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (196, '中小板', '大连电瓷', '002606', '0.12', '10派0.12元(含税,扣税后0.108元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (197, '中小板', '利君股份', '002651', '0.6', '10派0.60元(含税,扣税后0.54元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (198, '中小板', '鸿达兴业', '002002', '0.59999', '10派0.59999元(含税,扣税后0.539991元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (199, '沪市', '常熟汽饰', '603035', '2.85', '10派2.85元(含税,扣税后2.565元)', '2020-07-15', '2.04', '13.950', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (200, '创业板', '中潜股份', '300526', '0.331055', '10转2.006395派0.331055元(含税,扣税后0.297949元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (201, '沪市', '江苏新能', '603693', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-15', '1.08', '13.920', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (202, '创业板', '中亚股份', '300512', '0.8', '10派0.80元(含税,扣税后0.72元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (203, '沪市', '中粮糖业', '600737', '1.25', '10派1.25元(含税)', '', '1.46', '8.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (204, '中小板', '新天药业', '002873', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (205, '沪市', '上海天洋', '603330', '0.73', '10转4.00派0.73元(含税)', '', '0.22', '33.400', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (206, '沪市', '山煤国际', '600546', '0.6', '10派0.60元(含税)', '', '0.43', '13.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (207, '沪市', '高能环境', '603588', '0.7', '10派0.70元(含税)', '', '0.54', '12.970', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (208, '沪市', '昊华能源', '601101', '0.7', '10派0.70元(含税)', '', '1.48', '4.730', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (209, '沪市', '步长制药', '603858', '16.14', '10派16.14元(含税)', '', '5.47', '29.530', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (210, '沪市', '宋都股份', '600077', '0.4', '10派0.40元(含税)', '', '1.26', '3.170', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (211, '沪市', '长城军工', '601606', '0.42', '10派0.42元(含税)', '', '0.28', '14.790', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (212, '中小板', '岭南股份', '002717', '0.22', '10派0.22元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (213, '创业板', '嘉寓股份', '300117', '0.03', '10派0.03元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (214, '中小板', '中装建设', '002822', '0.4', '10派0.40元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (215, '沪市', '凌云股份', '600480', '-', '10转4.00', '', '', '12.960', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (216, '创业板', '新美星', '300509', '1.5', '10转3.00派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (217, '中小板', '华夏航空', '002928', '0.76', '10转5.00派0.76元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (218, '沪市', '扬农化工', '600486', '6.5', '10派6.50元(含税)', '', '0.75', '86.370', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (219, '沪市', '福耀玻璃', '600660', '7.5', '10派7.50元(含税)', '', '3.35', '22.400', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (220, '沪市', '老凤祥', '600612', '11.5', '10派11.50元(含税)', '', '1.87', '61.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (221, '沪市', '博汇纸业', '600966', '0.17', '10派0.17元(含税)', '', '0.17', '10.190', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (222, '中小板', '保利联合', '002037', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (223, '沪市', '畅联股份', '603648', '1.8', '10派1.80元(含税)', '', '1.82', '9.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (224, '中小板', '皖通科技', '002331', '0.7', '10派0.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (225, '创业板', '锐科激光', '300747', '1.36', '10送5.00派1.36元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (226, '深主板', '高鸿股份', '000851', '0.2', '10派0.20元(含税)', '', '0.00', '21907.0121', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (227, '沪市', '尖峰集团', '600668', '3.0', '10派3.00元(含税)', '', '1.84', '16.320', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (228, '沪市', '申能股份', '600642', '2.2', '10派2.20元(含税)', '', '3.63', '6.060', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (229, '沪市', '白云机场', '600004', '1.45', '10派1.45元(含税)', '', '0.90', '16.160', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (230, '中小板', '易尚展示', '002751', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (231, '沪市', '哈森股份', '603958', '0.3', '10派0.30元(含税)', '', '0.39', '7.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (232, '创业板', '溢多利', '300381', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (233, '沪市', '大恒科技', '600288', '0.08', '10派0.08元(含税)', '', '0.06', '12.450', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (234, '深主板', '京基智农', '000048', '7.5', '10派7.50元(含税)', '', '0.05', '1559.3019', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (235, '中小板', '惠博普', '002554', '0.08', '10派0.08元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (236, '深主板', '美达股份', '000782', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (237, '沪市', '全筑股份', '603030', '0.4', '10派0.40元(含税)', '', '0.42', '9.440', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (238, '沪市', '海欣股份', '600851', '0.3', '10派0.30元(含税)', '', '0.36', '8.430', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (239, '中小板', '仁东控股', '002647', '-', '10转2.00', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (240, '沪市', '鼎胜新材', '603876', '1.0', '10派1.00元(含税)', '', '0.59', '16.820', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (241, '创业板', '亚光科技', '300123', '0.3', '10派0.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (242, '中小板', '四维图新', '002405', '0.18', '10派0.18元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (243, '沪市', '华谊集团', '600623', '1.0', '10派1.00元(含税)', '', '1.73', '5.790', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (244, '沪市', '万林物流', '603117', '0.4', '10派0.40元(含税)', '', '0.99', '4.050', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (245, '沪市', '优刻得', '688158', '0.5', '10派0.50元(含税)', '', '0.06', '87.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (246, '沪市', '京能电力', '600578', '1.2', '10派1.20元(含税)', '', '3.80', '3.160', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (247, '深主板', '中南建设', '000961', '2.8', '10派2.80元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (248, '中小板', '新乳业', '002946', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (249, '创业板', '永福股份', '300712', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (250, '深主板', '海印股份', '000861', '0.1', '10派0.10元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (251, '沪市', '兴发集团', '600141', '1.0', '10派1.00元(含税)', '', '0.97', '10.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (252, '沪市', '内蒙一机', '600967', '0.34', '10派0.34元(含税)', '', '0.29', '11.910', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (253, '沪市', '小康股份', '601127', '0.4', '10派0.40元(含税)', '', '0.43', '9.410', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (254, '沪市', '老百姓', '603883', '4.2', '10转4.00派4.20元(含税)', '', '0.42', '99.090', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (255, '沪市', '今创集团', '603680', '1.6', '10派1.60元(含税,扣税后1.44元)', '2020-07-10', '1.23', '13.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (256, '中小板', '宇晶股份', '002943', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (257, '中小板', '北京利尔', '002392', '0.35', '10派0.35元(含税,扣税后0.315元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (258, '创业板', '青松股份', '300132', '1.35', '10派1.35元(含税,扣税后1.215元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (259, '创业板', '正丹股份', '300641', '0.2', '10派0.20元(含税,扣税后0.18元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (260, '创业板', '乐凯新材', '300446', '0.25', '10送1.00派0.25元(含税,扣税后0.125元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (261, '创业板', '美尚生态', '300495', '0.53', '10派0.53元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (262, '中小板', '华森制药', '002907', '0.44', '10派0.44元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (263, '深主板', '模塑科技', '000700', '1.3', '10派1.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (264, '沪市', '栖霞建设', '600533', '1.0', '10派1.00元(含税)', '', '2.42', '4.130', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (265, '中小板', '贝肯能源', '002828', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (266, '中小板', '中坚科技', '002779', '0.12', '10派0.12元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (267, '创业板', '因赛集团', '300781', '2.0', '10派2.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (268, '中小板', '新疆交建', '002941', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (269, '深主板', '吉林敖东', '000623', '2.0', '10派2.00元(含税,扣税后1.80元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (270, '中小板', '大博医疗', '002901', '6.0', '10派6.00元(含税,扣税后5.40元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (271, '沪市', '财通证券', '601108', '1.6', '10派1.60元(含税,扣税后1.44元)', '2020-07-10', '1.11', '14.430', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (272, '沪市', '纽威股份', '603699', '4.0', '10派4.00元(含税,扣税后3.60元)', '2020-07-10', '2.29', '17.480', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (273, '中小板', '高争民爆', '002827', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (274, '中小板', '远东传动', '002406', '2.5', '10派2.50元(含税,扣税后2.25元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (275, '创业板', '透景生命', '300642', '4.0', '10派4.00元(含税,扣税后3.60元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (276, '创业板', '数知科技', '300038', '0.25', '10派0.25元(含税,扣税后0.225元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (277, '沪市', '亚宝药业', '600351', '0.2', '10派0.20元(含税,扣税后0.18元)', '2020-07-13', '0.36', '5.500', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (278, '中小板', '江南化工', '002226', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (279, '沪市', '天地源', '600665', '1.48', '10派1.48元(含税,扣税后1.332元)', '2020-07-13', '3.85', '3.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (280, '深主板', '荣丰控股', '000668', '0.6', '10派0.60元(含税,扣税后0.54元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (281, '沪市', '盛屯矿业', '600711', '0.42', '10派0.42元(含税,扣税后0.378元)', '2020-07-13', '0.76', '5.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (282, '中小板', '新野纺织', '002087', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (283, '沪市', '金晶科技', '600586', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', '0.79', '3.820', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (284, '中小板', '上海莱士', '002252', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (285, '创业板', '紫天科技', '300280', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (286, '沪市', '四创电子', '600990', '0.7', '10派0.70元(含税,扣税后0.63元)', '2020-07-14', '0.15', '46.580', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (287, '创业板', '高盟新材', '300200', '4.0', '10转6.00派4.00元(含税,扣税后3.60元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (288, '沪市', '全柴动力', '600218', '0.8', '10派0.80元(含税,扣税后0.72元)', '2020-07-15', '0.79', '10.150', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (289, '创业板', '科蓝软件', '300663', '0.25', '10派0.25元(含税,扣税后0.225元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (290, '沪市', '川投能源', '600674', '3.4', '10派3.40元(含税,扣税后3.06元)', '2020-07-15', '3.48', '9.780', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (291, '中小板', '金洲管道', '002443', '3.0', '10派3.00元(含税,扣税后2.70元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (292, '创业板', '锐奇股份', '300126', '0.1', '10派0.10元(含税,扣税后0.09元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (293, '中小板', '太安堂', '002433', '0.151', '10派0.151元(含税,扣税后0.1359元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (294, '深主板', '中科三环', '000970', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-16', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (295, '沪市', '洛凯股份', '603829', '1.0', '10派1.00元(含税)', '', '0.84', '11.970', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (296, '深主板', '紫光股份', '000938', '1.5', '10转4.00派1.50元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (297, '创业板', '江丰电子', '300666', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (298, '沪市', '兴业证券', '601377', '0.8', '10派0.80元(含税)', '', '0.89', '9.030', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (299, '深主板', '中山公用', '000685', '2.5', '10派2.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (300, '沪市', '莫高股份', '600543', '0.26', '10派0.26元(含税)', '', '0.41', '6.380', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (301, '沪市', '中国电影', '600977', '3.18', '10派3.18元(含税)', '', '2.12', '15.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (302, '沪市', '万业企业', '600641', '-', '10转2.00', '', '', '26.690', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (303, '沪市', '云赛智联', '600602', '0.54', '10派0.54元(含税)', '', '0.67', '8.120', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (304, '沪市', '北京城乡', '600861', '0.2', '10派0.20元(含税)', '', '0.13', '15.020', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (305, '沪市', '尚纬股份', '603333', '0.6', '10派0.60元(含税)', '', '0.83', '7.260', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (306, '沪市', '马应龙', '600993', '2.6', '10派2.60元(含税)', '', '0.99', '26.210', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (307, '沪市', '浦发银行', '600000', '6.0', '10派6.00元(含税)', '', '5.00', '11.990', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (308, '沪市', '首商股份', '600723', '1.9', '10派1.90元(含税)', '', '1.97', '9.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (309, '沪市', '林洋能源', '601222', '0.5', '10派0.50元(含税)', '', '0.80', '6.260', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (310, '沪市', '航天信息', '600271', '2.3', '10派2.30元(含税)', '', '1.17', '19.690', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (311, '中小板', '齐翔腾达', '002408', '0.8', '10派0.80元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (312, '沪市', '三元股份', '600429', '0.27', '10派0.27元(含税)', '', '0.49', '5.500', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (313, '沪市', '宁沪高速', '600377', '4.6', '10派4.60元(含税)', '', '4.50', '10.230', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (314, '沪市', '安阳钢铁', '600569', '0.5', '10派0.50元(含税)', '', '2.13', '2.350', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (315, '沪市', '上海电影', '601595', '1.13', '10转2.00派1.13元(含税)', '', '0.61', '18.590', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (316, '沪市', '出版传媒', '601999', '0.82', '10派0.82元(含税)', '', '1.06', '7.750', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (317, '沪市', '惠泉啤酒', '600573', '0.3', '10派0.30元(含税)', '', '0.41', '7.230', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (318, '沪市', '复旦复华', '600624', '0.27', '10派0.27元(含税)', '', '0.26', '10.480', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (319, '沪市', '华光环能', '600475', '1.0', '10派1.00元(含税)', '', '0.76', '13.150', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (320, '沪市', '银都股份', '603277', '2.2', '10派2.20元(含税)', '', '1.86', '11.830', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (321, '创业板', '九洲电气', '300040', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (322, '创业板', '芒果超媒', '300413', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (323, '沪市', '哈投股份', '600864', '0.36', '10派0.36元(含税)', '', '0.45', '7.930', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (324, '创业板', '恒通科技', '300374', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (325, '创业板', '科恒股份', '300340', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (326, '中小板', '柏堡龙', '002776', '0.38', '10派0.38元(含税,扣税后0.342元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (327, '创业板', '凯利泰', '300326', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (328, '沪市', '泉峰汽车', '603982', '1.4886', '10派1.4886元(含税,扣税后1.33974元)', '2020-07-14', '0.73', '20.390', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (329, '沪市', '中国化学', '601117', '1.87', '10派1.87元(含税,扣税后1.683元)', '2020-07-14', '2.98', '6.270', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (330, '创业板', '华致酒行', '300755', '1.6', '10派1.60元(含税,扣税后1.44元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (331, '创业板', '金银河', '300619', '0.56', '10派0.56元(含税,扣税后0.504元)', '2020-07-16', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (332, '沪市', '中国核电', '601985', '1.22', '10派1.22元(含税)', '', '2.62', '4.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (333, '创业板', '西菱动力', '300733', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (334, '中小板', '完美世界', '002624', '2.4', '10转5.00派2.40元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (335, '中小板', '庄园牧场', '002910', '0.55', '10派0.55元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (336, '沪市', '沧州大化', '600230', '0.18', '10派0.18元(含税)', '', '0.19', '9.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (337, '沪市', '开普云', '688228', '3.5', '10派3.50元(含税)', '', '0.40', '87.170', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (338, '创业板', '巴安水务', '300262', '0.13', '10派0.13元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (339, '创业板', '上海新阳', '300236', '1.2', '10派1.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (340, '沪市', '好当家', '600467', '0.14', '10派0.14元(含税)', '', '0.50', '2.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (341, '沪市', '三一重工', '600031', '4.2', '10派4.20元(含税)', '', '2.00', '20.960', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (342, '沪市', '华电重工', '601226', '0.3', '10派0.30元(含税)', '', '0.73', '4.120', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (343, '沪市', '长飞光纤', '601869', '3.18', '10派3.18元(含税)', '', '0.92', '34.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (344, '中小板', '赣锋锂业', '002460', '3.0', '10派3.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (345, '深主板', '新兴铸管', '000778', '1.5', '10派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (346, '创业板', '天壕环境', '300332', '0.12', '10派0.12元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (347, '创业板', '振东制药', '300158', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (348, '沪市', '再升科技', '603601', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-10', '0.64', '15.530', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (349, '沪市', '安徽建工', '600502', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-10', '3.25', '4.610', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (350, '沪市', '康惠制药', '603139', '0.86', '10派0.86元(含税,扣税后0.774元)', '2020-07-10', '0.42', '20.380', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (351, '中小板', '科瑞技术', '002957', '2.0', '10派2.00元(含税,扣税后1.80元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (352, '沪市', '成都燃气', '603053', '2.445', '10派2.445元(含税,扣税后2.2005元)', '2020-07-13', '1.51', '16.200', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (353, '沪市', '常熟银行', '601128', '2.0', '10派2.00元(含税,扣税后1.80元)', '2020-07-13', '2.38', '8.420', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (354, '中小板', '航天彩虹', '002389', '0.3', '10派0.30元(含税,扣税后0.27元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (355, '沪市', '中国中免', '601888', '7.2', '10派7.20元(含税,扣税后6.48元)', '2020-07-15', '0.37', '193.790', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (356, '深主板', '中国武夷', '000797', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (357, '沪市', '金石资源', '603505', '3.0', '10派3.00元(含税)', '', '1.21', '24.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (358, '创业板', '赛微电子', '300456', '0.3', '10派0.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (359, '沪市', '三角轮胎', '601163', '3.5', '10派3.50元(含税)', '', '2.37', '14.770', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (360, '沪市', '平高电气', '600312', '0.51', '10派0.51元(含税)', '', '0.60', '8.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (361, '中小板', '拓日新能', '002218', '0.25', '10派0.25元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (362, '中小板', '东江环保', '002672', '1.5', '10派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (363, '中小板', '比亚迪', '002594', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (364, '沪市', '交运股份', '600676', '0.4', '10派0.40元(含税)', '', '0.71', '5.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (365, '沪市', '信捷电气', '603416', '1.6', '10派1.60元(含税)', '', '0.33', '48.150', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (366, '中小板', '中工国际', '002051', '1.5', '10派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (367, '深主板', '华茂股份', '000850', '0.5', '10派0.50元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (368, '沪市', '上海建工', '600170', '1.4', '10派1.40元(含税)', '', '4.17', '3.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (369, '沪市', '中船科技', '600072', '0.57', '10派0.57元(含税)', '', '0.40', '14.300', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (370, '创业板', '中金环境', '300145', '0.25', '10派0.25元(含税,扣税后0.225元)', '2020-07-10', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (371, '沪市', '北方股份', '600262', '1.2', '10派1.20元(含税,扣税后1.08元)', '2020-07-10', '0.60', '20.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (372, '创业板', '金太阳', '300606', '0.8', '10派0.80元(含税,扣税后0.72元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (373, '沪市', '强生控股', '600662', '0.4', '10派0.40元(含税,扣税后0.36元)', '2020-07-15', '0.39', '10.160', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (374, '沪市', '赣粤高速', '600269', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-15', '3.87', '3.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (375, '中小板', '通达动力', '002576', '0.5', '10派0.50元(含税,扣税后0.45元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (376, '中小板', '长城证券', '002939', '1.1', '10派1.10元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (377, '创业板', '易华录', '300212', '1.7', '10转2.00派1.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (378, '', '招商蛇口', '001979', '8.3', '10派8.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (379, '中小板', '合力泰', '002217', '0.35', '10派0.35元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (380, '沪市', '首旅酒店', '600258', '0.7', '10派0.70元(含税)', '', '0.39', '18.100', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (381, '创业板', '钢研纳克', '300797', '0.28', '10派0.28元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (382, '创业板', '智飞生物', '300122', '5.0', '10派5.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (383, '沪市', 'S佳通', '600182', '0.79', '10派0.79元(含税)', '', '0.51', '15.610', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (384, '沪市', '氯碱化工', '600618', '1.0', '10派1.00元(含税)', '', '1.23', '8.130', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (385, '沪市', '大西洋', '600558', '0.3', '10派0.30元(含税)', '', '0.95', '3.150', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (386, '沪市', '航发动力', '600893', '1.44', '10派1.44元(含税,扣税后1.296元)', '2020-07-14', '0.44', '32.920', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (387, '沪市', '国投电力', '600886', '2.453', '10派2.453元(含税)', '', '2.88', '8.520', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (388, '', '招商公路', '001965', '2.8', '10派2.80元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (389, '创业板', '朗科科技', '300042', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (390, '沪市', '林海股份', '600099', '0.4', '10派0.40元(含税)', '', '0.58', '6.880', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (391, '沪市', '凤竹纺织', '600493', '0.3', '10派0.30元(含税)', '', '0.56', '5.340', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (392, '沪市', '鲁抗医药', '600789', '0.45', '10派0.45元(含税)', '', '0.43', '10.440', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (393, '沪市', '西藏天路', '600326', '0.8', '10派0.80元(含税)', '', '0.96', '8.320', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (394, '沪市', '精工钢构', '600496', '0.23', '10派0.23元(含税)', '', '0.56', '4.110', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (395, '沪市', '四川长虹', '600839', '0.1', '10派0.10元(含税)', '', '0.30', '3.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (396, '沪市', '中持股份', '603903', '0.77', '10转4.00派0.77元(含税,扣税后0.693元)', '2020-07-10', '0.40', '19.210', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (397, '沪市', '中视传媒', '600088', '0.7', '10派0.70元(含税)', '', '0.45', '15.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (398, '沪市', '人民网', '603000', '1.31', '10派1.31元(含税)', '', '0.57', '23.180', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (399, '沪市', '山东黄金', '600547', '1.0', '10转4.00派1.00元(含税)', '', '0.24', '41.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (400, '中小板', '巨轮智能', '002031', '0.01', '10派0.01元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (401, '深主板', '南京公用', '000421', '0.65', '10派0.65元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (402, '沪市', '新世界', '600628', '0.3', '10派0.30元(含税)', '', '0.23', '13.180', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (403, '沪市', '张江高科', '600895', '1.2', '10派1.20元(含税)', '', '0.55', '22.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (404, '沪市', '合力科技', '603917', '1.1', '10派1.10元(含税)', '', '0.92', '11.920', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (405, '沪市', '京沪高铁', '601816', '0.528', '10派0.528元(含税)', '', '0.77', '6.900', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (406, '', '招商港口', '001872', '4.6', '10派4.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (407, '沪市', '长白山', '603099', '0.43', '10派0.43元(含税)', '', '0.51', '8.400', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (408, '深主板', '广州浪奇', '000523', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (409, '深主板', '浙江震元', '000705', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (410, '', '招商积余', '001914', '1.0', '10派1.00元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (411, '沪市', '第一医药', '600833', '0.75', '10派0.75元(含税)', '', '0.61', '12.270', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (412, '沪市', '盘江股份', '600395', '4.0', '10派4.00元(含税)', '', '6.32', '6.330', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (413, '中小板', '皇氏集团', '002329', '0.1', '10派0.10元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (414, '深主板', '粤桂股份', '000833', '0.15', '10派0.15元(含税,扣税后0.135元)', '2020-07-15', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (415, '沪市', '华域汽车', '600741', '8.5', '10派8.50元(含税)', '', '3.57', '23.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (416, '创业板', '迪安诊断', '300244', '1.28', '10派1.28元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (417, '沪市', '鲁商发展', '600223', '1.1', '10派1.10元(含税,扣税后0.99元)', '2020-07-10', '0.81', '13.570', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (418, '中小板', '环球印务', '002799', '1.0', '10转2.00派1.00元(含税,扣税后0.90元)', '2020-07-13', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (419, '沪市', '博瑞传播', '600880', '0.2', '10派0.20元(含税)', '', '0.38', '5.280', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (420, '沪市', '银座股份', '600858', '0.35', '10派0.35元(含税)', '', '0.50', '7.070', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (421, '沪市', '上柴股份', '600841', '0.41', '10派0.41元(含税)', '', '0.52', '7.920', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (422, '沪市', '上海环境', '601200', '0.85', '10派0.85元(含税)', '', '0.65', '13.070', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (423, '沪市', '北巴传媒', '600386', '0.4', '10派0.40元(含税)', '', '1.04', '3.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (424, '沪市', '韦尔股份', '603501', '0.7', '10派0.70元(含税)', '', '0.03', '240.840', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (425, '沪市', '城投控股', '600649', '0.72', '10派0.72元(含税)', '', '1.12', '6.440', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (426, '沪市', '神马股份', '600810', '2.2', '10派2.20元(含税)', '', '2.80', '7.860', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (427, '沪市', '上港集团', '600018', '1.45', '10派1.45元(含税)', '', '3.00', '4.830', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (428, '沪市', '佳都科技', '600728', '0.4', '10派0.40元(含税)', '', '0.39', '10.170', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (429, '沪市', '耀皮玻璃', '600819', '0.67', '10派0.67元(含税)', '', '1.40', '4.790', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (430, '沪市', '广东骏亚', '603386', '0.503', '10派0.503元(含税)', '', '0.32', '15.740', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (431, '中小板', '荣盛发展', '002146', '4.8', '10派4.80元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (432, '沪市', '亿利洁能', '600277', '1.0', '10派1.00元(含税)', '', '2.72', '3.670', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (433, '深主板', '粤高速A', '000429', '4.22', '10派4.22元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (434, '沪市', '福建高速', '600033', '0.5', '10派0.50元(含税)', '', '1.75', '2.860', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (435, '沪市', '上海机电', '600835', '3.7', '10派3.70元(含税,扣税后3.33元)', '2020-07-13', '2.10', '17.580', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (436, '沪市', '同仁堂', '600085', '2.6', '10派2.60元(含税)', '', '0.91', '28.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (437, '沪市', '天坛生物', '600161', '0.6', '10送2.00派0.60元(含税,扣税后0.34元)', '2020-07-14', '0.13', '45.180', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (438, '沪市', '南京证券', '601990', '0.7', '10派0.70元(含税,扣税后0.63元)', '2020-07-15', '0.40', '17.320', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (439, '沪市', '嘉诚国际', '603535', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-16', '0.46', '21.610', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (440, '沪市', '杭州解百', '600814', '1.0', '10派1.00元(含税)', '', '1.22', '8.200', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (441, '中小板', '紫光国微', '002049', '0.68', '10派0.68元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (442, '沪市', '白云山', '600332', '5.89', '10派5.89元(含税,扣税后5.301元)', '2020-07-10', '1.65', '35.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (443, '沪市', '中国外运', '601598', '1.2', '10派1.20元(含税,扣税后1.08元)', '2020-07-15', '3.16', '3.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (444, '沪市', '中国国航', '601111', '0.4442', '10派0.4442元(含税,扣税后0.39978元)', '2020-07-15', '0.59', '7.550', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (445, '沪市', '振华重工', '600320', '0.5', '10派0.50元(含税)', '', '1.55', '3.220', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (446, '中小板', '金风科技', '002202', '1.6', '10派1.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (447, '沪市', '葛洲坝', '600068', '1.56', '10派1.56元(含税)', '', '2.09', '7.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (448, '沪市', '中国中冶', '601618', '0.72', '10派0.72元(含税)', '', '2.39', '3.010', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (449, '创业板', '中航电测', '300114', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (450, '沪市', '东方航空', '600115', '0.5', '10派0.50元(含税)', '', '1.05', '4.760', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (451, '沪市', '天宸股份', '600620', '0.3', '10派0.30元(含税)', '', '0.43', '6.990', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (452, '沪市', '民生银行', '600016', '3.7', '10派3.70元(含税,扣税后3.33元)', '2020-07-10', '5.75', '6.440', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (453, '沪市', '南京熊猫', '600775', '0.175', '10派0.175元(含税,扣税后0.1575元)', '2020-07-13', '0.19', '9.220', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (454, '沪市', '华泰证券', '601688', '3.0', '10派3.00元(含税,扣税后2.70元)', '2020-07-15', '1.27', '23.700', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (455, '沪市', '江西铜业', '600362', '1.0', '10派1.00元(含税,扣税后0.90元)', '2020-07-15', '0.61', '16.500', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (456, '沪市', '华北制药', '600812', '0.3', '10派0.30元(含税)', '', '0.21', '14.360', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (457, '沪市', '中直股份', '600038', '3.0', '10派3.00元(含税)', '', '0.56', '53.860', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (458, '创业板', '太辰光', '300570', '4.5', '10派4.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (459, '沪市', '大众交通', '600611', '1.25', '10派1.25元(含税)', '', '2.94', '4.250', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (460, '中小板', '中航机电', '002013', '0.6', '10派0.60元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (461, '沪市', '马钢股份', '600808', '0.8', '10派0.80元(含税)', '', '2.69', '2.970', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (462, '沪市', '中国铁建', '601186', '2.1', '10派2.10元(含税)', '', '2.17', '9.680', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (463, '沪市', '复星医药', '600196', '3.9', '10派3.90元(含税)', '', '1.08', '36.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (464, '沪市', '大唐发电', '601991', '0.65', '10派0.65元(含税)', '', '2.63', '2.470', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (465, '沪市', '广深铁路', '601333', '0.6', '10派0.60元(含税)', '', '2.34', '2.560', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (466, '沪市', '中铝国际', '601068', '0.036', '10派0.036元(含税)', '', '0.08', '4.710', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (467, '深主板', '大悦城', '000031', '1.7', '10派1.70元(含税)', '', '0.01', '3102.7254', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (468, '沪市', '五洲交通', '600368', '0.8', '10派0.80元(含税)', '', '2.12', '3.780', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (469, '沪市', '中国中车', '601766', '1.5', '10派1.50元(含税)', '', '2.36', '6.350', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (470, '沪市', '大众公用', '600635', '0.6', '10派0.60元(含税)', '', '1.14', '5.270', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (471, '中小板', '华西证券', '002926', '0.76', '10派0.76元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (472, '深主板', '金陵药业', '000919', '1.7', '10派1.70元(含税)', '', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (473, '沪市', '洪都航空', '600316', '0.15', '10派0.15元(含税)', '', '0.06', '23.420', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (474, '沪市', '中铁工业', '600528', '1.26', '10派1.26元(含税)', '', '1.26', '10.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (475, '沪市', '中国中铁', '601390', '1.69', '10派1.69元(含税)', '', '2.83', '5.970', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (476, '沪市', '中航电子', '600372', '0.6', '10派0.60元(含税)', '', '0.36', '16.780', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (477, '创业板', '康龙化成', '300759', '1.5', '10派1.50元(含税,扣税后1.35元)', '2020-07-14', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (478, '沪市', '长沙银行', '601577', '3.2', '10派3.20元(含税,扣税后2.88元)', '2020-07-14', '3.42', '9.350', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (479, '沪市', '皖通高速', '600012', '2.3', '10派2.30元(含税)', '', '4.07', '5.650', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (480, '沪市', '百达精工', '603331', '2.36', '10转4.00派2.36元(含税)', '', '1.38', '17.080', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (481, '沪市', '新城控股', '601155', '17.0', '10派17.00元(含税,扣税后15.30元)', '2020-07-10', '4.46', '38.090', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (482, '沪市', '交通银行', '601328', '3.15', '10派3.15元(含税,扣税后2.835元)', '2020-07-13', '5.65', '5.580', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (483, '沪市', '中国银行', '601988', '1.91', '10派1.91元(含税,扣税后1.719元)', '2020-07-14', '5.07', '3.770', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (484, '沪市', '中国银河', '601881', '1.6', '10派1.60元(含税,扣税后1.44元)', '2020-07-14', '0.99', '16.100', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (485, '深主板', '中兴通讯', '000063', '2.0', '10派2.00元(含税)', '', '0.01', '3659.8830', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (486, '深主板', '潍柴重机', '000880', '0.2', '10派0.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (487, '沪市', '上海医药', '601607', '4.4', '10派4.40元(含税)', '', '2.22', '19.800', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (488, '沪市', '光大证券', '601788', '0.37', '10派0.37元(含税)', '', '0.12', '30.030', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (489, '沪市', '中远海发', '601866', '0.45', '10派0.45元(含税)', '', '2.00', '2.250', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (490, '沪市', '上海机场', '600009', '7.9', '10派7.90元(含税)', '', '1.04', '75.820', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (491, '中小板', '中远海科', '002401', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (492, '沪市', '中国人保', '601319', '1.16', '10派1.16元(含税)', '', '1.41', '8.250', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (493, '深主板', '晨鸣纸业', '000488', '1.5', '10派1.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (494, '沪市', '开开实业', '600272', '0.28', '10派0.28元(含税)', '', '0.33', '8.530', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (495, '深主板', '申万宏源', '000166', '0.8', '10派0.80元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (496, '沪市', '东方电气', '600875', '2.05', '10派2.05元(含税)', '', '2.00', '10.230', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (497, '深主板', '广发证券', '000776', '3.5', '10派3.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (498, '沪市', '上实发展', '600748', '1.0', '10派1.00元(含税)', '', '1.67', '6.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (499, '沪市', '艾艾精工', '603580', '0.82', '10派0.82元(含税,扣税后0.738元)', '2020-07-14', '0.60', '13.690', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (500, '沪市', '中信银行', '601998', '2.39', '10派2.39元(含税,扣税后2.151元)', '2020-07-14', '4.04', '5.920', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (501, '深主板', '东阿阿胶', '000423', '2.031195', '10派2.031195元(含税,扣税后1.828075元)', '2020-07-15', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (502, '沪市', '青岛港', '601298', '2.003', '10派2.003元(含税)', '', '2.96', '6.770', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (503, '沪市', '通宝能源', '600780', '0.8', '10派0.80元(含税)', '', '2.22', '3.600', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (504, '深主板', '潍柴动力', '000338', '1.36', '10派1.36元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (505, '沪市', '昊海生科', '688366', '7.0', '10派7.00元(含税)', '', '0.65', '107.760', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (506, '沪市', '大连港', '601880', '0.21', '10派0.21元(含税)', '', '1.01', '2.080', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (507, '沪市', '航天电子', '600879', '0.6', '10派0.60元(含税)', '', '0.81', '7.390', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (508, '沪市', '华贸物流', '603128', '0.5', '10转3.00派0.50元(含税)', '', '0.62', '8.080', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (509, '沪市', '锦江投资', '600650', '2.5', '10派2.50元(含税)', '', '2.32', '10.790', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (510, '沪市', '营口港', '600317', '0.48', '10派0.48元(含税)', '', '1.80', '2.670', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (511, '沪市', '世茂股份', '600823', '2.6', '10派2.60元(含税,扣税后2.34元)', '2020-07-15', '5.13', '5.070', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (512, '沪市', '中国人寿', '601628', '7.3', '10派7.30元(含税)', '2020-07-15', '1.66', '44.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (513, '沪市', '新华保险', '601336', '14.1', '10派14.10元(含税)', '', '2.40', '58.670', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (514, '沪市', '晋西车轴', '600495', '0.2', '10派0.20元(含税)', '', '0.46', '4.340', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (515, '深主板', '渝开发', '000514', '0.3', '10派0.30元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (516, '沪市', '上海石化', '600688', '1.2', '10派1.20元(含税)', '', '3.08', '3.900', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (517, '沪市', '中银证券', '601696', '0.3', '10派0.30元(含税)', '', '0.09', '34.470', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (518, '沪市', '华电国际', '600027', '1.46', '10派1.46元(含税)', '', '3.83', '3.810', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (519, '深主板', '江铃汽车', '000550', '0.7', '10派0.70元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (520, '沪市', '国泰君安', '601211', '3.9', '10派3.90元(含税)', '', '1.84', '21.190', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (521, '沪市', '中信重工', '601608', '0.071', '10派0.071元(含税)', '', '0.16', '4.370', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (522, '深主板', '新华制药', '000756', '1.2', '10派1.20元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (523, '沪市', '华润双鹤', '600062', '3.04', '10派3.04元(含税)', '', '2.17', '14.020', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (524, '沪市', '紫金矿业', '601899', '1.0', '10派1.00元(含税)', '', '1.63', '6.140', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (525, '深主板', '华润三九', '000999', '4.3', '10派4.30元(含税,扣税后3.87元)', '2020-07-15', '∞', '0.0000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (526, '沪市', '中信证券', '600030', '5.0', '10派5.00元(含税)', '', '1.51', '33.080', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (527, '沪市', '江淮汽车', '600418', '0.17', '10派0.17元(含税)', '', '0.17', '10.000', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (528, '深主板', '万科A', '000002', '10.16613', '10派10.16613元(含税)', '', '0.03', '3616.8703', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (529, '沪市', '中航高科', '600862', '1.6', '10派1.60元(含税)', '', '0.78', '20.460', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (530, '沪市', '嘉泽新能', '601619', '0.43', '10派0.43元(含税)', '', '1.34', '3.200', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (531, '中小板', '粤传媒', '002181', '0.79', '10派0.79元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (532, '沪市', '哈空调', '600202', '0.4', '10派0.40元(含税)', '', '0.89', '4.500', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (533, '深主板', '万泽股份', '000534', '0.5', '10派0.50元(含税)', '', NULL, '', NULL, NULL, NULL);
INSERT INTO `gu` VALUES (534, '沪市', '上海家化', '600315', '2.5', '10派2.50元(含税)', '', '0.53', '47.400', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentid` bigint(20) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `css` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permissiontype` int(11) NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` bigint(20) NULL DEFAULT NULL,
  `bak1` int(11) NULL DEFAULT NULL,
  `bak2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, NULL, '用户管理', NULL, '/userManager', 1, 'user:manager', NULL, NULL, NULL, NULL);
INSERT INTO `t_permission` VALUES (2, 1, '添加用户', NULL, '/addUser', 2, 'user:add', NULL, NULL, NULL, NULL);
INSERT INTO `t_permission` VALUES (3, 1, '删除用户', NULL, '/deleteuser', 2, 'user:del', NULL, NULL, NULL, NULL);
INSERT INTO `t_permission` VALUES (4, 1, '查询用户', NULL, '/queryUser', 2, 'user:query', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledescription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` bigint(20) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '超级管理员', 'adminManager', NULL, NULL);
INSERT INTO `t_role` VALUES (2, '普通用户', '普通用户', 'userManager', NULL, NULL);

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission`  (
  `roleid` bigint(20) NOT NULL,
  `permissionid` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES (1, 1);
INSERT INTO `t_role_permission` VALUES (1, 2);
INSERT INTO `t_role_permission` VALUES (2, 3);
INSERT INTO `t_role_permission` VALUES (2, 4);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headImgUrl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `cscode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xqcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usertype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `bak1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bak3` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'fb92d7d92f26ea628fdd637bf7d11b10', 'a4e95b7fcd39e36746c482e690bc01f0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (1, 2);

SET FOREIGN_KEY_CHECKS = 1;
