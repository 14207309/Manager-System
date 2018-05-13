/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : firstssm

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2018-05-10 17:48:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `audit`
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `Qid` int(11) NOT NULL AUTO_INCREMENT,
  `QFcompany` int(11) DEFAULT NULL,
  `QFrstyle` int(11) DEFAULT NULL,
  `QFpack` int(11) DEFAULT NULL,
  `QFweight` int(11) DEFAULT NULL,
  `QFboat` int(11) DEFAULT NULL,
  `QFdate` date DEFAULT NULL,
  `QFpeople` char(12) DEFAULT NULL,
  `QScompany` int(11) DEFAULT NULL,
  `QSboat` int(11) DEFAULT NULL,
  `QSrstyle` int(11) DEFAULT NULL,
  `QSpack` int(11) DEFAULT NULL,
  `QSweight` int(11) DEFAULT NULL,
  `QSreveal` int(11) DEFAULT NULL,
  `QSpica` varchar(255) DEFAULT NULL,
  `QSpicb` varchar(255) DEFAULT NULL,
  `QSdate` date DEFAULT NULL,
  `QSpeople` char(11) DEFAULT NULL,
  PRIMARY KEY (`Qid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES ('1', '1', '1', '1', '1', '1', '2018-12-12', 'lisi', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `berth`
-- ----------------------------
DROP TABLE IF EXISTS `berth`;
CREATE TABLE `berth` (
  `Berid` int(8) NOT NULL AUTO_INCREMENT,
  `Bernum` char(255) DEFAULT NULL,
  `Bername` char(255) DEFAULT NULL,
  `Beroccupy` int(2) DEFAULT NULL,
  `Berpeople` char(15) DEFAULT NULL,
  PRIMARY KEY (`Berid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of berth
-- ----------------------------
INSERT INTO `berth` VALUES ('1', 'Num001', '1号泊位', '2', '李世辉');
INSERT INTO `berth` VALUES ('2', 'Num002', '2号泊位', '2', '苏州');
INSERT INTO `berth` VALUES ('3', 'Num003', '3号泊位', '0', '尚淑柳');
INSERT INTO `berth` VALUES ('4', 'Num004', '4号泊位', '1', '贝妮虎');
INSERT INTO `berth` VALUES ('5', 'Num005', '5号泊位', '1', '李虎');
INSERT INTO `berth` VALUES ('6', 'Num006', '6号泊位', '2', '李慧');
INSERT INTO `berth` VALUES ('7', 'Num007', '7号泊位', '2', '胡欢锋');
INSERT INTO `berth` VALUES ('8', 'Num008', '8号泊位', '1', '王伟');
INSERT INTO `berth` VALUES ('9', 'Num009', '9号泊位', '1', '翟华');
INSERT INTO `berth` VALUES ('10', 'Num010', '10号泊位', '2', '刘闪');
INSERT INTO `berth` VALUES ('11', 'Num011', '11号泊位', '1', '阿斯蒂芬');
INSERT INTO `berth` VALUES ('13', 'Num012', '12号泊位', '1', '李四');
INSERT INTO `berth` VALUES ('14', 'Num013', '13号泊位', '2', '王五');

-- ----------------------------
-- Table structure for `boat`
-- ----------------------------
DROP TABLE IF EXISTS `boat`;
CREATE TABLE `boat` (
  `Bid` int(11) NOT NULL,
  `Bname` char(20) DEFAULT NULL,
  `Bnum` char(20) DEFAULT NULL,
  `Bstyle` char(20) DEFAULT NULL,
  `Bsize` int(11) DEFAULT NULL,
  `BinputTime` datetime DEFAULT NULL,
  `Bstopport` char(10) DEFAULT NULL,
  `BproleaTime` datetime DEFAULT NULL,
  `BleaTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of boat
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Cid` int(11) NOT NULL AUTO_INCREMENT,
  `Ccompany` char(255) DEFAULT NULL,
  `Cname` char(20) DEFAULT NULL,
  `Cdate` date DEFAULT NULL,
  `Ccontext` varchar(1024) DEFAULT NULL,
  `Crepname` char(20) DEFAULT NULL,
  `Crepdate` date DEFAULT NULL,
  `Crepcont` varchar(1024) DEFAULT NULL,
  `Cflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'zhenghua', '2018-04-27', 'asdfasdfasfsadfsdafsafsadfsafsdfsafd', '紫薇', '2018-04-28', '内容不合法', '0');
INSERT INTO `comment` VALUES ('2', '富士康', '123', '2017-12-15', '123asdfasd4f56', '李四', '2018-05-10', '感谢你的建议', '1');
INSERT INTO `comment` VALUES ('3', '1', '123', '2018-04-20', 'qwerqwffeq', '李四', '2018-05-18', '感谢你的建议', '1');
INSERT INTO `comment` VALUES ('4', '国泰新点', '刘备', '2018-05-11', '暗室逢灯发送到发算法算法三', '李四', '2018-05-18', '158621', '1');
INSERT INTO `comment` VALUES ('5', '1', '王五', '2018-05-12', '请及时审核', '刘虎', '2018-05-11', '我们会及时处理', '1');

-- ----------------------------
-- Table structure for `district`
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `district_id` decimal(15,0) NOT NULL COMMENT '行政区编号',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `city` varchar(30) DEFAULT NULL COMMENT '市',
  `county` varchar(40) DEFAULT NULL COMMENT '区县',
  PRIMARY KEY (`district_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES ('1000', '楚河省', '楚市', '楚县');
INSERT INTO `district` VALUES ('1001', '汉界省', '汉界市', '汉界县');

-- ----------------------------
-- Table structure for `enterpriseworker`
-- ----------------------------
DROP TABLE IF EXISTS `enterpriseworker`;
CREATE TABLE `enterpriseworker` (
  `Nid` int(11) NOT NULL AUTO_INCREMENT,
  `Nnumber` char(30) DEFAULT NULL,
  `Nname` char(8) DEFAULT NULL,
  `Nsex` char(2) DEFAULT NULL,
  `Ndate` date DEFAULT NULL,
  `Ncall` char(11) DEFAULT NULL,
  `Naddr` char(100) DEFAULT NULL,
  `Nworkemail` char(30) DEFAULT NULL,
  `Nworkstyle` char(20) DEFAULT NULL,
  PRIMARY KEY (`Nid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterpriseworker
-- ----------------------------
INSERT INTO `enterpriseworker` VALUES ('6', 'zs234', 'zs', '女', '2018-04-11', '1234569', '江西南昌', 'asdfasd@163.com', '现场工作人员');
INSERT INTO `enterpriseworker` VALUES ('8', '7', '李琦', '女', '2018-04-13', '117', '江西南昌', '789456123@qq.com', '港口负责人');
INSERT INTO `enterpriseworker` VALUES ('21', '321', '张泽', '女', '2018-04-17', '12342342314', '江西南昌', 'afads@163.com', '运输调度员');
INSERT INTO `enterpriseworker` VALUES ('20', '12344', '1234', '女', '2018-04-24', '12341234', '福建厦门', 'qwer@outlook.com', '现场工作人员');
INSERT INTO `enterpriseworker` VALUES ('13', '132', '梨花', '男', '2018-04-10', '18754628759', '广西', '456@456.com', '运输调度员');
INSERT INTO `enterpriseworker` VALUES ('14', 'sb12', '刘闪', '女', '2018-04-11', '15423657856', '安徽安庆', '456@123.com', '现场工作人员');
INSERT INTO `enterpriseworker` VALUES ('15', 'qwe123', 'wqer', '女', '2018-04-05', '13567547832', '陕西西安', 'asdfas@163.com', '港口负责人');
INSERT INTO `enterpriseworker` VALUES ('16', 'sd456', '阿萨德', '女', '2018-04-20', '15245638752', '上海', 'sadf@123.com', '运输调度员');
INSERT INTO `enterpriseworker` VALUES ('17', 'se345', '刘兰', '女', '2018-04-23', '13865489865', '甘肃庆阳', '456@163.com', '现场工作人员');
INSERT INTO `enterpriseworker` VALUES ('18', 'as123', 'wangwu', '女', '2018-04-11', '1234569123', 'jxnc', 'shsbc@qq.com', '运输调度员');
INSERT INTO `enterpriseworker` VALUES ('22', 'ssdf', '渔鸥', '女', '2018-04-30', '456456', '江西南昌', 'qwfq@126.com', '港口负责人');
INSERT INTO `enterpriseworker` VALUES ('23', '3211', '11123', '男', '2018-03-28', '1234', '1234', '123456@123.com', '现场工作人员');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `NEid` int(11) NOT NULL AUTO_INCREMENT,
  `NEname` char(8) DEFAULT NULL,
  `NEtitle` char(50) DEFAULT NULL,
  `NEdate` date DEFAULT NULL,
  `NEcontext` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`NEid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '朱军', '习大大走访港口', '2018-04-11', '电饭锅佛的没vaodfv');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `NOid` int(11) NOT NULL AUTO_INCREMENT,
  `NOname` char(50) DEFAULT NULL,
  `NOtitle` char(30) DEFAULT NULL,
  `NOdate` date DEFAULT NULL,
  `NOcontext` varchar(2048) DEFAULT NULL,
  `Nflag` int(2) DEFAULT NULL,
  PRIMARY KEY (`NOid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '李玉', null, '2018-04-19', '关于港口危险处理办法', '0');
INSERT INTO `notice` VALUES ('2', '0', '关于港口危险品管理办法', '2018-05-09', '深大深大大四', '1');
INSERT INTO `notice` VALUES ('3', '0', '关于港口企业管理', '2018-05-11', '啊手动阀手动阀手动阀舒服撒地方', '1');

-- ----------------------------
-- Table structure for `portworker`
-- ----------------------------
DROP TABLE IF EXISTS `portworker`;
CREATE TABLE `portworker` (
  `Wid` int(11) NOT NULL AUTO_INCREMENT,
  `Wnumber` char(30) DEFAULT NULL,
  `Wpassword` char(50) DEFAULT NULL,
  `Wname` char(8) DEFAULT NULL,
  `Wsex` char(2) DEFAULT NULL,
  `Wbirth` date DEFAULT NULL,
  `Wcall` char(11) DEFAULT NULL,
  `Waddr` char(100) DEFAULT NULL,
  `Wqq` char(12) DEFAULT NULL,
  `WeChat` char(20) DEFAULT NULL,
  `Wworkemail` char(30) DEFAULT NULL,
  `Wworkstate` char(5) DEFAULT NULL,
  `Wworkstyle` int(10) DEFAULT NULL,
  PRIMARY KEY (`Wid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of portworker
-- ----------------------------
INSERT INTO `portworker` VALUES ('1', '1', '123456', '上官', '女', '2018-06-20', '13845786248', '上海虹桥', '145634534', 'vhr12732', '121@123.com', '正常', '1');
INSERT INTO `portworker` VALUES ('2', '2', '123456', '琉璃', '女', '2018-05-18', '15245632546', '江西南昌', '4567892', 'ch1265', '456@163.com', '正常', '2');
INSERT INTO `portworker` VALUES ('3', '0', '123456', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `portworker` VALUES ('7', 'ASD124', null, '张三', '男', '2018-05-03', '13845786248', '上海虹桥', '45698121', 'ch1265', '456@163.com', '异常', '2');

-- ----------------------------
-- Table structure for `port_enterprise`
-- ----------------------------
DROP TABLE IF EXISTS `port_enterprise`;
CREATE TABLE `port_enterprise` (
  `Eid` int(11) NOT NULL AUTO_INCREMENT,
  `Enumber` char(35) DEFAULT NULL,
  `Epassword` char(50) DEFAULT NULL,
  `Ename` char(30) DEFAULT NULL,
  `Ecode` char(15) DEFAULT NULL,
  `Eaddr` char(100) DEFAULT NULL,
  `Elegpeople` char(20) DEFAULT NULL,
  `Emoney` double(20,3) DEFAULT NULL,
  `Estyle` char(15) DEFAULT NULL,
  `EestDate` date DEFAULT NULL,
  `EendDate` date DEFAULT NULL,
  `Ecertstate` char(10) DEFAULT NULL,
  `Eflag` int(2) NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of port_enterprise
-- ----------------------------
INSERT INTO `port_enterprise` VALUES ('1', '1', '1', '1', '1', '1', '1', '1.000', '1', '2018-04-11', '2018-04-04', '正常', '1');
INSERT INTO `port_enterprise` VALUES ('3', 'SB123', '1', '博威有限责任公司', 'HFG-456_BSD', '江西南昌新建', '刘洪', '205.000', '国企', '2010-07-23', '2020-08-21', '合格', '0');
INSERT INTO `port_enterprise` VALUES ('4', 'SB1234', '123', '富士康', 'HFG-123-SDV', '汉东省汉东市', '刘强栋', '234.450', '民企', '2013-12-06', '2024-12-25', '异常', '0');
INSERT INTO `port_enterprise` VALUES ('5', 'SB3245', '2314', '华为', 'HFG-456-hui', '上海市', '刘希', '25.360', '民企', '2018-04-03', '2018-04-16', '正常', '0');
INSERT INTO `port_enterprise` VALUES ('12', '789', '1', '国泰新点', 'GKWX457862', '江西南昌新建县', '刘思', '10000.000', '私营企业', '2018-05-11', '2018-05-19', null, '0');
INSERT INTO `port_enterprise` VALUES ('7', 'zsy', '23', '3214', '1234', '41234', '1234', '234.000', '国有企业', '2018-04-14', '2018-04-20', '异常', '0');
INSERT INTO `port_enterprise` VALUES ('8', 'z123', '4545', 'qwe', 'qwe', 'eq', 'qwe', '456.000', '国有企业', '2018-04-21', '2018-04-22', '正常', '1');
INSERT INTO `port_enterprise` VALUES ('9', '34', '202cb962ac59075b964b07152d234b70', '43', '3', '423', '4', '423.000', '股份制企业', '2018-07-29', '2018-04-28', '正常', '1');
INSERT INTO `port_enterprise` VALUES ('10', '345', '', '66', '66', '66', '66', '66.000', '集体所有制企业', '2018-12-12', '2017-06-23', '异常', '0');
INSERT INTO `port_enterprise` VALUES ('11', 'QS20180428001', '123456', '珠海格力', 'ZS20160406', '广东珠海', '董明珠', '10000.000', '私营企业', '2018-04-14', '2018-04-12', '正常', '1');
INSERT INTO `port_enterprise` VALUES ('13', 'GKWX12563', '202cb962ac59075b964b07152d234b70', '格力电器', 'SKD123456', '广东珠海', '董明珠', '100000.000', '私营企业', '2018-01-02', '2018-05-27', '正常', '1');

-- ----------------------------
-- Table structure for `risk_goods_pet`
-- ----------------------------
DROP TABLE IF EXISTS `risk_goods_pet`;
CREATE TABLE `risk_goods_pet` (
  `Rid` int(11) NOT NULL AUTO_INCREMENT,
  `Rsave` int(1) DEFAULT NULL,
  `Rurgent` int(2) DEFAULT NULL,
  `Rnum` char(20) DEFAULT NULL,
  `Rcompany` char(30) DEFAULT NULL,
  `Rpeople` char(8) DEFAULT NULL,
  `Rshipper` char(30) DEFAULT NULL,
  `Rconsignee` char(30) DEFAULT NULL,
  `Rcarrier` char(8) DEFAULT NULL,
  `Rshipname` char(20) DEFAULT NULL,
  `Rportloading` char(20) DEFAULT NULL,
  `RloadingTime` date DEFAULT NULL,
  `Rdischarging` char(20) DEFAULT NULL,
  `RpredelTime` date DEFAULT NULL,
  `RpradelTime` date DEFAULT NULL,
  `Rdelived` char(10) DEFAULT NULL,
  `Rgoodsstyle` char(20) DEFAULT NULL,
  `Rweight` double(11,0) DEFAULT NULL,
  `RpetTime` date DEFAULT NULL,
  `Rworkwharf` char(20) DEFAULT NULL,
  `Rport` char(20) DEFAULT NULL,
  `Rportflag` char(5) DEFAULT NULL,
  `Rprin` char(20) DEFAULT NULL,
  `RprinCall` char(12) DEFAULT NULL,
  `Rodour` char(10) DEFAULT NULL,
  `Rignitionpoint` double(11,0) DEFAULT NULL,
  `Rtoxicity` char(10) DEFAULT NULL,
  `QFcompany` int(11) DEFAULT NULL,
  `QFrstyle` int(11) DEFAULT NULL,
  `QFpack` int(11) DEFAULT NULL,
  `QFweight` int(11) DEFAULT NULL,
  `QFboat` int(11) DEFAULT NULL,
  `QFdate` date DEFAULT NULL,
  `QFpeople` char(12) DEFAULT NULL,
  `QFflag` int(11) DEFAULT NULL,
  `QScompany` int(11) DEFAULT NULL,
  `QSboat` int(11) DEFAULT NULL,
  `QSrstyle` int(11) DEFAULT NULL,
  `QSpack` int(11) DEFAULT NULL,
  `QSweight` int(11) DEFAULT NULL,
  `QSreveal` int(11) DEFAULT NULL,
  `QSpica` varchar(255) DEFAULT NULL,
  `QSpicb` varchar(255) DEFAULT NULL,
  `QSdate` date DEFAULT NULL,
  `QSpeople` char(11) DEFAULT NULL,
  `QSflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`Rid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of risk_goods_pet
-- ----------------------------
INSERT INTO `risk_goods_pet` VALUES ('1', '1', '0', 'WXP20180426001', '韦德控股', '李刚', '王素', '吴敏', '苏溪', '泰坦尼克号', '斯柯达港', null, '辽宁港', '2018-05-23', '2018-05-25', '密封包装', '易燃固体', null, '2018-01-25', '1号码头', null, '进口', '波若寺', '15248639854', '无味', '12', '剧毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('2', '1', '1', 'WXP20180426002', '国泰新点', '刘刚', '李青', '关羽', '苏溪', '卡萨帝号', '大连港', '2018-04-18', '巴迪斯港', '2018-04-18', '2018-04-12', '桶装', '易燃液体', '13', '2018-04-20', '13号码头', '13', '出口', '石化四', '15248639854', '刺激性气味', '1', '无毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('3', '1', '1', '1', '1', '张迪', '斯柯达', '朱子全', '张飞', '克拉迪', '斯卡达瓦港', '2018-04-13', '辽宁港', '2018-04-07', '2018-04-18', '桶装', '腐蚀性液体', '1', '2018-04-06', '1号码头', '1', '进口', '王思柳', '15248639854', '芳香味', '1', '剧毒', null, null, null, null, null, null, null, '0', '1', '1', '1', '1', '1', '1', '1', '1', '2018-04-10', '21', '1');
INSERT INTO `risk_goods_pet` VALUES ('6', '1', '1', 'WXP20180426004', '恒生电子', '李三木', '李青', '刘实惠', '张飞', '山姆号', '巴迪斯港', '2018-04-12', '辽宁港', '2018-04-27', '2018-04-18', '散装', '化学品', '3', '2018-04-20', '3号码头', '3', '出口', '波斯度', '15248639854', '刺激性气味', '3', '无毒', '1', '1', '1', '1', '1', '2018-12-12', '123', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2018-04-11', '456', '1');
INSERT INTO `risk_goods_pet` VALUES ('7', '1', '0', 'WXP20180426005', '恒生电子', '李三木', '刘珊', '翠花', '刘备', '山姆号', '里斯蒂港', '2018-04-16', '辽宁港', '2018-04-13', '2018-04-10', '桶装', '易燃液体', '6', '2018-04-06', '6号码头', '6', '进口', '杜思娣', '15248639854', '无味', '6', '剧毒', '1', '1', '1', '1', '1', '2018-04-20', '123', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('8', '1', '0', 'WXP20180426006', '恒生电子', '李三木', '大卫', '张飞', '刘备', '山姆号', '莫罗斯港', '2018-04-27', '巴迪斯港', '2018-04-21', '2018-04-19', '散装', '化学品', '7', '2018-04-29', '7号码头', '7', '出口', '李华思', '15248639854', '刺激性气味', '7', '无毒', '1', '1', '1', '1', '1', '2018-05-17', '脑安', '1', '1', '1', '1', '1', '1', '1', '图片1', '图片2', '2018-05-08', '刘闪', '1');
INSERT INTO `risk_goods_pet` VALUES ('10', '1', '0', 'WXP20180426007', '国泰新点', '刘刚', '戴维', '丹迪', '刘备', '卡斯达', '张家港', '2018-04-05', '巴迪斯港', '2018-04-20', '2018-04-12', '桶装', '易燃液体', '9', '2018-04-13', '9号码头', '9', '进口', '李若思', '15248639854', '无味', '9', '剧毒', '1', '1', '1', '1', '1', '2018-05-10', '123', '1', '1', '1', '1', '1', '1', '1', null, '123', '2018-05-30', '刘闪', '2');
INSERT INTO `risk_goods_pet` VALUES ('11', '1', '0', 'WXP20180426008', '国泰新点', '刘刚', '王思聪', '柏若辉', '刘备', '阿波罗', '辽宁港', '2018-04-13', '苏港', '2018-04-19', '2018-04-23', '集装箱', '火药', '50', '2018-04-25', '6号码头', '3', '出口', '陆拾伍', '15248639854', '芳香味', '123', '无毒', '1', '1', '1', '1', '1', '2018-04-18', '刘闪', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('12', '0', '0', 'WXP20180426009', '富士康', '张三', '司徒家', '王丽', '司武宇', '阿波罗', '辽宁港', '2018-05-17', '巴迪斯港', '2018-05-19', '2018-05-21', '散装', '火药', '24', '2018-05-25', '4号码头', '6', '进口', '斯柯达', '15248639854', '无味', '3', '剧毒', null, null, null, null, null, null, null, '0', '1', '1', '1', '1', '1', '1', null, 'TIM.png,图片2', '2018-05-29', '李辉', '2');
INSERT INTO `risk_goods_pet` VALUES ('13', '1', '0', 'WXP20180426010', '1', '张迪', '诸葛亮', '关羽', '刘备', '山姆号', '维多利亚港', '2018-05-15', '阿卑斯港', '2018-05-17', '2018-05-18', '集装箱', '化学品', '24', '2018-05-14', '4号码头', '维多利亚港', '出口', '吴丽华', '15248639854', '芳香味', '59', '剧毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('14', '1', '0', 'WXP20180426011', '富士康', '胡欢锋', '李慧', '朱子全', '刘闪', '阿波罗', '辽宁港', '2018-05-16', '维多利亚港', '2018-05-24', '2018-05-26', '散装', '火药', '24', '2018-05-12', '3号码头', '古斯巴图港', '出口', '刘实惠', '15248639854', '无味', '59', '无毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('15', '1', '1', 'WXP20180426012', '1', '张迪', '诸葛亮', '关羽', '张飞', '阿波罗', '张家港', '2018-05-24', '维多利亚港', '2018-05-31', '2018-05-31', '集装箱', '火药', '24', '2018-05-17', '3号码头', '阿萨德港口', '出口', '郭智慧', '15248639854', '无味', '59', '无毒', '1', '1', '1', '1', '1', '2018-05-17', '啊啊啊', '1', '1', '1', '1', '1', '1', '1', '图片1', '图片2', '2018-05-22', '李辉', '1');
INSERT INTO `risk_goods_pet` VALUES ('16', '1', '1', 'WXP20180426013', '富士康', '张三', '诸葛亮', '关羽', '刘思', '阿波罗', '辽宁港', '2018-05-08', '维多利亚港', '2018-05-15', '2018-05-17', '集装箱', '化学品', '24', '2018-05-17', '4号码头', '阿萨德港口', '出口', '王思穗', '15248639854', '刺激性气味', '59', '剧毒', '1', '1', '1', '1', '1', '2018-05-15', '王五', '1', '1', '1', '1', '1', '1', '1', '图片1', '图片2', '2018-05-24', '李辉', '1');
INSERT INTO `risk_goods_pet` VALUES ('17', '1', '1', 'WXP20180426014', '1', '张迪', '刘珊', '朱迪', '张三', '波罗地号', '湖口港', '2018-05-17', '维多利亚港', '2018-05-23', '2018-05-24', '散装', '化学品', '24', '2018-05-16', '2号码头', '阿萨德港口', '出口', '巴迪斯', '15236542458', '芳香味', '59', '剧毒', null, null, null, null, null, null, null, '0', '1', '1', '1', '1', '0', '0', '图片1', '图片2', '2018-05-17', '刘闪', '2');
INSERT INTO `risk_goods_pet` VALUES ('18', '1', '0', 'WXP20180507001', '珠海格力', '刘慧', '诸葛亮', '关羽', '张三', '阿波罗', '辽宁港', '2018-05-07', '维多利亚港', '2018-05-17', '2018-05-23', '散装', '火药', '24', '2018-05-11', '11号码头', '阿萨德港口', '出口', '15324568459', '15324568459', '刺激性气味', '59', '无毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('19', '1', '0', 'WXP20180508001', '1', '苏夏', '刘慧', '二栋', '伞文迪', '阿波罗', '张家港', '2018-05-15', '维多利亚港', '2018-05-18', '2018-05-19', '散装', '火药', '24', '2018-05-16', '11号码头', '阿萨德港口', '出口', '13845244569', '13845244569', '无味', '59', '无毒', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `risk_goods_pet` VALUES ('20', '1', '1', 'WXP20180509001', '富士康', 'SANMU', '诸葛亮', '关羽', '张三', '阿波罗', '辽宁港', '2018-05-10', '维多利亚港', '2018-05-10', '2018-05-17', '集装箱', '化学品', '0', '2018-05-08', '6号码头', '阿萨德港口', '出口', '13526457852', '13526457852', '无味', '158', '剧毒', null, null, null, null, null, null, null, '0', '1', '1', '1', '1', '1', '1', '图片1', '图片2', '2018-05-10', '李辉', '1');

-- ----------------------------
-- Table structure for `transdispatch`
-- ----------------------------
DROP TABLE IF EXISTS `transdispatch`;
CREATE TABLE `transdispatch` (
  `Transid` int(11) NOT NULL AUTO_INCREMENT,
  `TransNum` char(255) DEFAULT NULL,
  `Transname` char(255) DEFAULT NULL,
  `Transprin` char(255) DEFAULT NULL,
  `Transprincall` char(255) DEFAULT NULL,
  `Transflag` int(2) DEFAULT NULL,
  PRIMARY KEY (`Transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transdispatch
-- ----------------------------
