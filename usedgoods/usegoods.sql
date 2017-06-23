# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: usegoods
# ------------------------------------------------------
# Server version 5.5.21

DROP DATABASE IF EXISTS `usegoods`;
CREATE DATABASE `usegoods` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `usegoods`;

#
# Source for table admin
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table admin
#

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1','admin','admin','admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table article
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` varchar(2048) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table article
#

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('402881e55abcdbe2015abcdc13700001','好吗好的','<p><span style=\"color:rgb(10, 10, 10); font-family:微软雅黑,宋体; font-size:14px\">从2010年山枫创建之初，就已加入山枫，回想从最初的创业到运营的发展，山枫的每一个阶段都参与了，与山枫已经密不可分。而山枫在短短几年内，成长的越来越好，与我们塔莎的很多文化精神密切相关，我们应该传承下去。</span></p>\r\n\r\n<p><span style=\"color:rgb(10, 10, 10); font-family:微软雅黑,宋体; font-size:14px\">塔莎精神是团队、超越、创新、学习；</span></p>\r\n\r\n<p><span style=\"color:rgb(10, 10, 10); font-family:微软雅黑,宋体; font-size:14px\">塔莎的愿景是成为具有社会责任感的艺术教育行业先锋标杆，帮助员工实现个人价值；而我们始终不能忘记的使命是做真正的艺术素质教育；正是因为这些共同的理念，共同的目标指引着志同道合的团队一起并肩作战；这些文化铸就了山枫的品牌形象，作为校长，将以自身为榜样，与所有山枫的家人共同维护我们的品牌形象。</span></p>\r\n\r\n<p><span style=\"color:rgb(10, 10, 10); font-family:微软雅黑,宋体; font-size:14px\">就山枫未来的发展提出了建设性的观点，并提出六句箴言：</span></p>\r\n\r\n<p><span style=\"color:rgb(10, 10, 10); font-family:微软雅黑,宋体; font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;坚持文化 升级品牌</span></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;维护关系 拓展渠道</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;培养人才 强化队伍</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;严抓教学 成绩说话</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;健全制度 完善服务</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文明校园 创新发展</p>\r\n\r\n<p>杨校长说，从2010年到现在，从青年到中年，时间过得很快，好像曾经那些坚守的岁月还停留在昨天；在最困难的日子，没有山枫家人们的支持不知道怎么坚持下去！除了感谢不知道该说什么，我们因为共同的信仰而坚定的在一起并肩作战。相信我们团队会越来越好！而杨校长将作为山枫董事会董事负责新战略布局及投融资业务板块！</p>\r\n\r\n<p>邓校长对年假期间的工作安排：三、四月份是一年当中的休整期间，一年的忙碌，没有时间陪伴家人，没有时间旅游的都可以趁着假期做了，更重要的是可以充电学习。当然各部门新一学年的工作计划也需落实。</p>\r\n\r\n<p>他说自己很幸福，因为特别忙碌，很少有时间来学校，但每次过来，总能听到家长和学生对学校的赞美和感想，建立起好的口碑是很不容易的，感谢山枫家人们的付出。</p>\r\n\r\n<p>我们为过去的成绩感到欣慰，同时不足之处也将促进我们更加努力，展望未来，我们将牢记校领导的各项指示，树立行业典范。山枫的家人们，让我们携手同行，加油！</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n','2017-03-11 18:13:43','9');
INSERT INTO `article` VALUES ('402881e65acc9aa7015acc9b50500002','qqqq','<p>在此添加内容qqqq</p>\r\n','2017-03-14 19:36:55','3');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table bbs
#

DROP TABLE IF EXISTS `bbs`;
CREATE TABLE `bbs` (
  `bbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `repnum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bbsid`),
  KEY `FK17C331AB1D48D` (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table bbs
#

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES ('402881e45ac70e68015ac70eb6050001','402881e45ac5a624015ac5cf58b90001','234234','在此添加内容234234','2017-03-13','1','1');
INSERT INTO `bbs` VALUES ('40289fc65b95085c015b9511ebe30005','40289fc65b95085c015b9510ee150002','发点留言','哈哈哈','2017-04-22','1','0');
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table cart
#

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`),
  KEY `FK2E7B201AB1D48D` (`usersid`),
  KEY `FK2E7B202F06CBA9` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table cart
#

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table cate
#

DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table cate
#

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES ('40289fc65b94e0f7015b94f1d3760001','女款套装');
INSERT INTO `cate` VALUES ('40289fc65b94e0f7015b94f1e52d0002','男款套装');
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table goods
#

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsid`),
  KEY `FK5DF97561AB1D48D` (`usersid`),
  KEY `FK5DF975696D32A57` (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table goods
#

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('40289fc65b94e0f7015b94f569bc0006','40289fc65b94e0f7015b94f39a670005','汉服女装刺绣绣花褙子交领襦裙','40289fc65b94e0f7015b94f1d3760001','200','upfiles/20170422171833.JPG','upfiles/20170422171919.JPG','','','9','1','2017-04-22','6','上架','<p>非常好看</p>\r\n');
INSERT INTO `goods` VALUES ('40289fc65b94e0f7015b94f8b60a0007','40289fc65b94e0f7015b94f39a670005','白交领襦裙齐腰日常武侠风春夏款','40289fc65b94e0f7015b94f1d3760001','300','upfiles/20170422172235.JPG','','','','8','2','2017-04-22','8','上架','<p>加一下介绍</p>\r\n');
INSERT INTO `goods` VALUES ('40289fc65b94e0f7015b94f9bca20008','40289fc65b94e0f7015b94f39a670005','原创传统汉服女男装绣花刺绣褙子交领','40289fc65b94e0f7015b94f1e52d0002','100','upfiles/20170422172355.JPG','','','','100','0','2017-04-22','3','上架','<p>添加内容</p>\r\n');
INSERT INTO `goods` VALUES ('40289fc65b94e0f7015b94fa820d0001','402881e45ac5a624015ac5cf58b90001','刺绣青龙男女通款传统汉服明制曳撒箭袖1','40289fc65b94e0f7015b94f1e52d0002','300','upfiles/20170422174719.JPG',NULL,NULL,NULL,'100','0','2017-04-22','5','上架','<p>介绍</p>\r\n');
INSERT INTO `goods` VALUES ('40289fc65b94e0f7015b94fa820d0009','40289fc65b94e0f7015b94f39a670005','刺绣青龙男女通款传统汉服明制曳撒箭袖','40289fc65b94e0f7015b94f1e52d0002','300','upfiles/20170422172448.JPG','','','','10','0','2017-04-22','0','上架','<p>介绍</p>\r\n');
INSERT INTO `goods` VALUES ('40289fc65b95085c015b950f2c150001','40289fc65b94e0f7015b94f39a670005','白交领襦裙齐腰日常武侠风春夏款','40289fc65b94e0f7015b94f1d3760001','300','upfiles/20170422174719.JPG','','','','99','1','2017-04-22','2','上架','<p><span style=\"color:rgb(85, 85, 85); font-family:microsoft yahei,msyh,tahoma,simsun; font-size:20px\">白交领襦裙齐腰日常武侠风春夏款</span></p>\r\n');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table orders
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `buyerid` varchar(255) DEFAULT NULL,
  `sellerid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`),
  KEY `FKC3DF62E532190978` (`buyerid`),
  KEY `FKC3DF62E52F06CBA9` (`goodsid`),
  KEY `FKC3DF62E56AE01444` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table orders
#

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('40289fc65b95085c015b9511851b0004','20170422175005','40289fc65b95085c015b9510ee150002','40289fc65b94e0f7015b94f39a670005','40289fc65b94e0f7015b94f8b60a0007','1','300','300.0','未发货','2017-04-22','熊二','成都市青羊区','189081489843');
INSERT INTO `orders` VALUES ('fd59b9625c3d7a69015c3d7c04c50001','20170525104236','402881e45ac5a624015ac5cf58b90001','40289fc65b94e0f7015b94f39a670005','40289fc65b95085c015b950f2c150001','1','300','300.0','未发货','2017-05-25','234234','桂林电子科技大学','132056225');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table rebbs
#

DROP TABLE IF EXISTS `rebbs`;
CREATE TABLE `rebbs` (
  `rebbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `bbsid` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rebbsid`),
  KEY `FK675DD201AB1D48D` (`usersid`),
  KEY `FK675DD20786CC2A3` (`bbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table rebbs
#

LOCK TABLES `rebbs` WRITE;
/*!40000 ALTER TABLE `rebbs` DISABLE KEYS */;
INSERT INTO `rebbs` VALUES ('402881e45ac70e68015ac70f3e510002',NULL,'402881e45ac70e68015ac70eb6050001','在此添加内容手动阀撒旦法撒旦法','2017-03-13');
/*!40000 ALTER TABLE `rebbs` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table topic
#

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`),
  KEY `FK696CD2F1AB1D48D` (`usersid`),
  KEY `FK696CD2F2F06CBA9` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table topic
#

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('40289fc65b95085c015b95122d4c0006','40289fc65b95085c015b9510ee150002','40289fc65b94e0f7015b94f8b60a0007','5','好好看哦','2017-04-22 17:50:48');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table users
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cate` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table users
#

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('402881e45ac5a624015ac5cf58b90001','234234','234234','234234','男','2017-03-13','234234','234234','买家','2017-03-13');
INSERT INTO `users` VALUES ('402881e55abdc4f2015abdc5d68f0001','123123','123123','123123','男','2017-03-11','123123','123123','卖家','2017-03-11');
INSERT INTO `users` VALUES ('402881e65acc9aa7015acc9cd8770004','345345','345345','345345','男','2017-03-14','345345','345345','卖家','2017-03-14');
INSERT INTO `users` VALUES ('40289fc65b94e0f7015b94f39a670005','panda','123','熊大大','男','1993-04-22','18901099232','成都市武侯区','卖家','2017-04-22');
INSERT INTO `users` VALUES ('40289fc65b95085c015b9510ee150002','coco','123','熊二','男','2012-04-12','123898938298','成都市','买家','2017-04-22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table bbs
#

ALTER TABLE `bbs`
ADD CONSTRAINT `FK17C331AB1D48D` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`);

#
#  Foreign keys for table cart
#

ALTER TABLE `cart`
ADD CONSTRAINT `FK2E7B201AB1D48D` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`),
ADD CONSTRAINT `FK2E7B202F06CBA9` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsid`);

#
#  Foreign keys for table goods
#

ALTER TABLE `goods`
ADD CONSTRAINT `FK5DF97561AB1D48D` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`),
ADD CONSTRAINT `FK5DF975696D32A57` FOREIGN KEY (`cateid`) REFERENCES `cate` (`cateid`);

#
#  Foreign keys for table orders
#

ALTER TABLE `orders`
ADD CONSTRAINT `FKC3DF62E52F06CBA9` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsid`),
ADD CONSTRAINT `FKC3DF62E532190978` FOREIGN KEY (`buyerid`) REFERENCES `users` (`usersid`),
ADD CONSTRAINT `FKC3DF62E56AE01444` FOREIGN KEY (`sellerid`) REFERENCES `users` (`usersid`);

#
#  Foreign keys for table rebbs
#

ALTER TABLE `rebbs`
ADD CONSTRAINT `FK675DD201AB1D48D` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`),
ADD CONSTRAINT `FK675DD20786CC2A3` FOREIGN KEY (`bbsid`) REFERENCES `bbs` (`bbsid`);

#
#  Foreign keys for table topic
#

ALTER TABLE `topic`
ADD CONSTRAINT `FK696CD2F1AB1D48D` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`),
ADD CONSTRAINT `FK696CD2F2F06CBA9` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsid`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
