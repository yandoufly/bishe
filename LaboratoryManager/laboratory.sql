# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: laboratory
# ------------------------------------------------------
# Server version 5.5.21

DROP DATABASE IF EXISTS `laboratory`;
CREATE DATABASE `laboratory` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laboratory`;

#
# Source for table appointment
#

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(20) DEFAULT NULL COMMENT '课程编号',
  `courseName` varchar(20) DEFAULT NULL COMMENT '实验名称',
  `teacher` varchar(20) DEFAULT NULL COMMENT '实验教师',
  `classroomId` varchar(20) DEFAULT NULL COMMENT '实验地点',
  `personcount` int(6) DEFAULT NULL COMMENT '实验人数',
  `startWeek` int(6) DEFAULT NULL COMMENT '开始周 1~20',
  `endWeek` int(6) DEFAULT NULL COMMENT '结束周 1~20',
  `whatday` int(6) DEFAULT NULL COMMENT '星期几 1~7',
  `part` int(6) DEFAULT NULL COMMENT '第几节课 1~6',
  `state` int(4) DEFAULT NULL COMMENT '状态 0-不可用 1-可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Dumping data for table appointment
#

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (23,'1','课程11','teacher','05402',0,13,14,2,2,1);
INSERT INTO `appointment` VALUES (24,'1','课程11','teacher','05403',0,13,13,3,2,1);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table classroom
#

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `classroomId` varchar(20) NOT NULL COMMENT '实验室编号',
  `name` varchar(20) DEFAULT NULL COMMENT '实验室名称',
  `type` varchar(20) DEFAULT NULL COMMENT '实验室类型:电脑室、硬件室',
  `capacity` int(10) DEFAULT NULL COMMENT '容纳人数',
  PRIMARY KEY (`classroomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table classroom
#

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES ('05401','实验室','电脑室',60);
INSERT INTO `classroom` VALUES ('05402','java实验室','电脑室',56);
INSERT INTO `classroom` VALUES ('05403','c/c++实验室','电脑室',63);
INSERT INTO `classroom` VALUES ('05404','多媒体实验室','电脑室',52);
INSERT INTO `classroom` VALUES ('05405','树梅实验室','电脑室',40);
INSERT INTO `classroom` VALUES ('12303','硬件实验室','硬件室',80);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table course
#

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `name` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `teacherId` varchar(20) DEFAULT NULL COMMENT '教师编号',
  `teacherName` varchar(20) DEFAULT NULL COMMENT '教师名字',
  `type` varchar(20) DEFAULT NULL COMMENT '课程类型',
  `number` int(10) DEFAULT NULL COMMENT '选课人数',
  `description` varchar(100) DEFAULT NULL COMMENT '课程描述',
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table course
#

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'课程11','1001001','teacher','1',0,'课程11课程11课程11课程11课程11课程11');
INSERT INTO `course` VALUES (2,'课程22','1001001','teacher','2',1,'课程222222222222222');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table coursedetail
#

DROP TABLE IF EXISTS `coursedetail`;
CREATE TABLE `coursedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `courseId` int(11) DEFAULT NULL COMMENT '课程编号',
  `courseName` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `title` varchar(20) DEFAULT NULL COMMENT '实验题目',
  `content` varchar(1024) DEFAULT NULL COMMENT '实验内容',
  `experimentTime` int(6) DEFAULT NULL,
  `filename` varchar(20) DEFAULT NULL COMMENT '附件名称',
  `filepath` varchar(200) DEFAULT NULL COMMENT '附件路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table coursedetail
#

LOCK TABLES `coursedetail` WRITE;
/*!40000 ALTER TABLE `coursedetail` DISABLE KEYS */;
INSERT INTO `coursedetail` VALUES (5,1,'课程11','实验一：测试测试','测试测试测试',2,'ShiroDbRealm.java','D:\\LaboratoryManager\\course\\课程11');
/*!40000 ALTER TABLE `coursedetail` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table evaluation
#

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `answer1` varchar(6) DEFAULT NULL,
  `answer2` varchar(6) DEFAULT NULL,
  `answer3` varchar(6) DEFAULT NULL,
  `answer4` varchar(6) DEFAULT NULL,
  `answer5` varchar(6) DEFAULT NULL,
  `answer6` varchar(6) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Dumping data for table evaluation
#

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'1','1300310226','B','A','B','B','B','A','xsce');
INSERT INTO `evaluation` VALUES (2,'1','1300310226','B','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (3,'1','1300310226','A','B','C','C','B','B',NULL);
INSERT INTO `evaluation` VALUES (4,'1','1300310226','A','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (5,'1','1300310226','B','B','A','B','C','A',NULL);
INSERT INTO `evaluation` VALUES (6,'1','1300310226','A','B','A','B','B','B',NULL);
INSERT INTO `evaluation` VALUES (7,'1','1300310226','C','B','B','A','B','C',NULL);
INSERT INTO `evaluation` VALUES (8,'1','1300310226','C','C','B','C','B','A',NULL);
INSERT INTO `evaluation` VALUES (9,'1','1300310226','B','C','B','C','A','B',NULL);
INSERT INTO `evaluation` VALUES (10,'1','1300310226','A','A','A','C','A','B',NULL);
INSERT INTO `evaluation` VALUES (11,'1','1300310226','A','A','A','B','A','C',NULL);
INSERT INTO `evaluation` VALUES (12,'1','1300310226','C','A','A','B','B','C',NULL);
INSERT INTO `evaluation` VALUES (13,'1','1300310226','C','A','A','A','B','C',NULL);
INSERT INTO `evaluation` VALUES (14,'1','1300310226','B','A','C','A','C','C',NULL);
INSERT INTO `evaluation` VALUES (15,'1','1300310226','C','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (16,'1','1300310226','C','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (17,'1','1300310226','A','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (18,'1','1300310226','A','A','C','A','C','A',NULL);
INSERT INTO `evaluation` VALUES (19,'1','1300310226','A','B','C','C','B','B',NULL);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table grade
#

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `courseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `studentAccount` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `studentName` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `courseName` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `examGrade` double DEFAULT NULL COMMENT '考试成绩',
  `totalGrade` double DEFAULT NULL COMMENT '总评',
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table grade
#

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table namelist
#

DROP TABLE IF EXISTS `namelist`;
CREATE TABLE `namelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `courseId` int(11) DEFAULT NULL COMMENT '课程编号',
  `courseName` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `studentAccount` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `studentName` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `sex` int(4) DEFAULT NULL COMMENT '学生性别',
  `specialty` varchar(20) DEFAULT NULL COMMENT '学生专业',
  `examGrade` varchar(6) DEFAULT '0' COMMENT '考试成绩',
  `totalGrade` varchar(20) DEFAULT '未录成绩' COMMENT '总评',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Dumping data for table namelist
#

LOCK TABLES `namelist` WRITE;
/*!40000 ALTER TABLE `namelist` DISABLE KEYS */;
INSERT INTO `namelist` VALUES (1,1,'java实验','1300330101','XXX',0,'软件工程','87','90');
INSERT INTO `namelist` VALUES (2,1,'java实验','1300330102','XXX',0,'软件工程','89','90');
INSERT INTO `namelist` VALUES (3,1,'java实验','1300330103','XXX',0,'软件工程','89','90');
INSERT INTO `namelist` VALUES (4,1,'java实验','1300330104','XXX',0,'软件工程','87','90');
INSERT INTO `namelist` VALUES (5,1,'java实验','1300330105','XXX',0,'软件工程','64','90');
INSERT INTO `namelist` VALUES (6,1,'java实验','1300330106','XXX',0,'软件工程','56','90');
INSERT INTO `namelist` VALUES (7,1,'java实验','1300330107','XXX',0,'软件工程','88','90');
INSERT INTO `namelist` VALUES (8,1,'java实验','1300330108','XXX',0,'软件工程','56','62');
INSERT INTO `namelist` VALUES (9,1,'java实验','1300330109','XXX',0,'软件工程','88','90');
INSERT INTO `namelist` VALUES (10,1,'java实验','1300330110','XXX',0,'软件工程','57','90');
INSERT INTO `namelist` VALUES (11,1,'java实验','1300330111','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (12,1,'java实验','1300330112','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (13,1,'java实验','1300330113','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (14,1,'java实验','1300330114','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (15,1,'java实验','1300330115','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (16,1,'java实验','1300330116','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (17,1,'java实验','1300330117','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (18,1,'java实验','1300330118','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (19,1,'java实验','1300330119','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (20,1,'java实验','1300330120','XXX',0,'软件工程','85','90');
INSERT INTO `namelist` VALUES (21,1,'课程11','1300310226','suerfly',1,'计算机科学与技术','90','90');
INSERT INTO `namelist` VALUES (22,2,'课程22','1300310226','suerfly',1,'计算机科学与技术',NULL,'62');
/*!40000 ALTER TABLE `namelist` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table question
#

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(20) DEFAULT NULL COMMENT '题目',
  `content` varchar(200) DEFAULT NULL COMMENT '问题内容',
  `studentId` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `studentName` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table question
#

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'1+1=？','1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？','1300310226','suerfly','2017-04-07 12:42:59');
INSERT INTO `question` VALUES (2,'2+1=？','2+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？','1300310226','suerfly','2017-04-07 12:43:12');
INSERT INTO `question` VALUES (3,'3+1=？','4+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？1+1=？','1300310226','suerfly','2017-04-07 12:43:20');
INSERT INTO `question` VALUES (4,'cdc的cdc的','cdc调查 顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶测温服务范围我','1300310226','suerfly','2017-04-07 13:30:28');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table questionreply
#

DROP TABLE IF EXISTS `questionreply`;
CREATE TABLE `questionreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `questionId` int(11) DEFAULT NULL COMMENT '问题编号',
  `replyContent` varchar(255) DEFAULT NULL,
  `replyId` varchar(20) DEFAULT NULL COMMENT '回复人编号',
  `replyName` varchar(20) DEFAULT NULL COMMENT '回复人姓名',
  `replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table questionreply
#

LOCK TABLES `questionreply` WRITE;
/*!40000 ALTER TABLE `questionreply` DISABLE KEYS */;
INSERT INTO `questionreply` VALUES (1,1,'sssssssssssss','admin','admin','2016-02-20');
INSERT INTO `questionreply` VALUES (2,2,'ssssssssssssssss','admin','admin','2016-03-20');
INSERT INTO `questionreply` VALUES (3,1,'小学数学数学思想上的我','1300310226','suerfly','2017-04-07 14:22:54');
INSERT INTO `questionreply` VALUES (4,1,'显示出市场','1001001','teacher','2017-04-07 14:32:15');
INSERT INTO `questionreply` VALUES (5,4,'测成为废物','1001001','teacher','2017-04-07 14:34:39');
/*!40000 ALTER TABLE `questionreply` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL COMMENT '账号',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `idnumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `sex` int(4) DEFAULT NULL COMMENT '性别',
  `profession` varchar(10) DEFAULT NULL COMMENT '职称',
  `specialty` varchar(20) DEFAULT NULL COMMENT '专业',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `cellphone1` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `cellphone2` varchar(20) DEFAULT NULL COMMENT '第二联系号码',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `email` varchar(20) DEFAULT NULL COMMENT '电子邮箱',
  `address` varchar(50) DEFAULT NULL COMMENT '联系地址',
  `role` int(2) DEFAULT NULL COMMENT '0-管理员，1-教师，2-学生',
  `content` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `questionId` varchar(255) DEFAULT NULL,
  `replyId` varchar(255) DEFAULT NULL,
  `replyName` varchar(255) DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table user
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1001','123','admin','450481199102062077',0,'教授','计算机科学与技术','2017-03-20','13100536560','13059189862','326015540','123@qq.com','桂林电子科技大学',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES (2,'1001001','123','teacher','450481199202055213',1,'教授','计算机科学与技术','1993-02-05','13100536560','13100523262','326015540','123@qq.com','桂林电子科技大学',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES (3,'1300310226','123','suerfly','450481199303022077',1,'学生','计算机科学与技术','1994-05-20','13100536560','13100523262','326015540','123@qq.com','桂林电子科技大学',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES (4,'1300310227','123','aa','450481199202055213',1,'教授','计算机科学与技术','1993-02-05','13100536560','13100523262','326015540','123@qq.com','桂林电子科技大学',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
