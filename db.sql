/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm11719
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm11719` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm11719`;

/*Table structure for table `chuyuanguanli` */

DROP TABLE IF EXISTS `chuyuanguanli`;

CREATE TABLE `chuyuanguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `suoshubingqu` varchar(200) DEFAULT NULL COMMENT '所属病区',
  `chuangweihao` int(11) DEFAULT NULL COMMENT '床位号',
  `xiangqing` longtext COMMENT '详情',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616729032184 DEFAULT CHARSET=utf8 COMMENT='出院管理';

/*Data for the table `chuyuanguanli` */

insert  into `chuyuanguanli`(`id`,`addtime`,`bingrenxingming`,`suoshubingqu`,`chuangweihao`,`xiangqing`,`shenqingshijian`,`sfsh`,`shhf`) values (111,'2021-03-26 11:16:17','病人姓名1','所属病区1',1,'详情1','2021-03-26','是',''),(112,'2021-03-26 11:16:17','病人姓名2','所属病区2',2,'详情2','2021-03-26','是',''),(113,'2021-03-26 11:16:17','病人姓名3','所属病区3',3,'详情3','2021-03-26','是',''),(114,'2021-03-26 11:16:17','病人姓名4','所属病区4',4,'详情4','2021-03-26','是',''),(115,'2021-03-26 11:16:17','病人姓名5','所属病区5',5,'详情5','2021-03-26','是',''),(116,'2021-03-26 11:16:17','病人姓名6','所属病区6',6,'详情6','2021-03-26','是',''),(1616729032183,'2021-03-26 11:23:52','病人姓名1','所属病区1',1,'<p>撒大苏打的</p>','2021-03-27','否','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm11719/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm11719/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm11719/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusshugongxinxi` */

DROP TABLE IF EXISTS `discusshugongxinxi`;

CREATE TABLE `discusshugongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616728944009 DEFAULT CHARSET=utf8 COMMENT='护工信息评论表';

/*Data for the table `discusshugongxinxi` */

insert  into `discusshugongxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-26 11:16:17',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-26 11:16:17',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-26 11:16:17',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-26 11:16:17',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-26 11:16:17',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-26 11:16:17',6,6,'用户名6','评论内容6','回复内容6'),(1616728944008,'2021-03-26 11:22:23',91,1616728915340,'11','很贴心',NULL);

/*Table structure for table `feiyongleixing` */

DROP TABLE IF EXISTS `feiyongleixing`;

CREATE TABLE `feiyongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='费用类型';

/*Data for the table `feiyongleixing` */

insert  into `feiyongleixing`(`id`,`addtime`,`fenlei`) values (71,'2021-03-26 11:16:17','医药费'),(72,'2021-03-26 11:16:17','分类2'),(73,'2021-03-26 11:16:17','分类3'),(74,'2021-03-26 11:16:17','分类4'),(75,'2021-03-26 11:16:17','分类5'),(76,'2021-03-26 11:16:17','分类6');

/*Table structure for table `feiyongxinxi` */

DROP TABLE IF EXISTS `feiyongxinxi`;

CREATE TABLE `feiyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `feiyongmingcheng` varchar(200) DEFAULT NULL COMMENT '费用名称',
  `feiyongleixing` varchar(200) DEFAULT NULL COMMENT '费用类型',
  `feiyongjine` int(11) DEFAULT NULL COMMENT '费用金额',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `feiyongmingxi` longtext COMMENT '费用明细',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='费用信息';

/*Data for the table `feiyongxinxi` */

insert  into `feiyongxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`feiyongmingcheng`,`feiyongleixing`,`feiyongjine`,`shijian`,`feiyongmingxi`,`ispay`,`userid`) values (61,'2021-03-26 11:16:17','11','11','撒大','医药费',100,'2021-03-26','<p>阿松大</p>','已支付',1),(62,'2021-03-26 11:16:17','账号2','姓名2','费用名称2','费用类型2',2,'2021-03-26','费用明细2','未支付',2),(63,'2021-03-26 11:16:17','账号3','姓名3','费用名称3','费用类型3',3,'2021-03-26','费用明细3','未支付',3),(64,'2021-03-26 11:16:17','账号4','姓名4','费用名称4','费用类型4',4,'2021-03-26','费用明细4','未支付',4),(65,'2021-03-26 11:16:17','账号5','姓名5','费用名称5','费用类型5',5,'2021-03-26','费用明细5','未支付',5),(66,'2021-03-26 11:16:17','账号6','姓名6','费用名称6','费用类型6',6,'2021-03-26','费用明细6','未支付',6);

/*Table structure for table `hugong` */

DROP TABLE IF EXISTS `hugong`;

CREATE TABLE `hugong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hugonghao` varchar(200) NOT NULL COMMENT '护工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hugonghao` (`hugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='护工';

/*Data for the table `hugong` */

insert  into `hugong`(`id`,`addtime`,`hugonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`tupian`) values (31,'2021-03-26 11:16:17','护工1','123456','撒阿斯顿','男',40,'13823888881','http://localhost:8080/ssm11719/upload/hugong_tupian1.jpg'),(32,'2021-03-26 11:16:17','护工2','123456','姓名2','男',2,'13823888882','http://localhost:8080/ssm11719/upload/hugong_tupian2.jpg'),(33,'2021-03-26 11:16:17','护工3','123456','姓名3','男',3,'13823888883','http://localhost:8080/ssm11719/upload/hugong_tupian3.jpg'),(34,'2021-03-26 11:16:17','护工4','123456','姓名4','男',4,'13823888884','http://localhost:8080/ssm11719/upload/hugong_tupian4.jpg'),(35,'2021-03-26 11:16:17','护工5','123456','姓名5','男',5,'13823888885','http://localhost:8080/ssm11719/upload/hugong_tupian5.jpg'),(36,'2021-03-26 11:16:17','护工6','123456','姓名6','男',6,'13823888886','http://localhost:8080/ssm11719/upload/hugong_tupian6.jpg');

/*Table structure for table `hugongxinxi` */

DROP TABLE IF EXISTS `hugongxinxi`;

CREATE TABLE `hugongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hugongbianhao` varchar(200) DEFAULT NULL COMMENT '护工编号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `hugongjieshao` longtext COMMENT '护工介绍',
  `fuwujiage` int(11) DEFAULT NULL COMMENT '服务价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='护工信息';

/*Data for the table `hugongxinxi` */

insert  into `hugongxinxi`(`id`,`addtime`,`hugongbianhao`,`hugongxingming`,`nianling`,`xingbie`,`hugongjieshao`,`fuwujiage`,`lianxidianhua`,`zhaopian`,`thumbsupnum`,`crazilynum`) values (91,'2021-03-26 11:16:17','护工编号1','护工姓名1',1,'男','护工介绍1',1,'13823888881','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian1.jpg',2,1),(92,'2021-03-26 11:16:17','护工编号2','护工姓名2',2,'男','护工介绍2',2,'13823888882','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian2.jpg',2,2),(93,'2021-03-26 11:16:17','护工编号3','护工姓名3',3,'男','护工介绍3',3,'13823888883','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian3.jpg',3,3),(94,'2021-03-26 11:16:17','护工编号4','护工姓名4',4,'男','护工介绍4',4,'13823888884','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian4.jpg',4,4),(95,'2021-03-26 11:16:17','护工编号5','护工姓名5',5,'男','护工介绍5',5,'13823888885','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian5.jpg',5,5),(96,'2021-03-26 11:16:17','护工编号6','护工姓名6',6,'男','护工介绍6',6,'13823888886','http://localhost:8080/ssm11719/upload/hugongxinxi_zhaopian6.jpg',6,6);

/*Table structure for table `hugongyuyue` */

DROP TABLE IF EXISTS `hugongyuyue`;

CREATE TABLE `hugongyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `hugongbianhao` varchar(200) DEFAULT NULL COMMENT '护工编号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `fuwujiage` int(11) DEFAULT NULL COMMENT '服务价格',
  `fuwutianshu` int(11) DEFAULT NULL COMMENT '服务天数',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616728957070 DEFAULT CHARSET=utf8 COMMENT='护工预约';

/*Data for the table `hugongyuyue` */

insert  into `hugongyuyue`(`id`,`addtime`,`zhanghao`,`xingming`,`hugongbianhao`,`hugongxingming`,`fuwujiage`,`fuwutianshu`,`zongjine`,`yuyueriqi`,`ispay`) values (101,'2021-03-26 11:16:17','账号1','姓名1','护工编号1','护工姓名1',1,1,'总金额1','2021-03-26','未支付'),(102,'2021-03-26 11:16:17','账号2','姓名2','护工编号2','护工姓名2',2,2,'总金额2','2021-03-26','未支付'),(103,'2021-03-26 11:16:17','账号3','姓名3','护工编号3','护工姓名3',3,3,'总金额3','2021-03-26','未支付'),(104,'2021-03-26 11:16:17','账号4','姓名4','护工编号4','护工姓名4',4,4,'总金额4','2021-03-26','未支付'),(105,'2021-03-26 11:16:17','账号5','姓名5','护工编号5','护工姓名5',5,5,'总金额5','2021-03-26','未支付'),(106,'2021-03-26 11:16:17','账号6','姓名6','护工编号6','护工姓名6',6,6,'总金额6','2021-03-26','未支付'),(1616728955192,'2021-03-26 11:22:35','11','11','护工编号1','护工姓名1',1,5,'5','2021-03-25','已支付'),(1616728957069,'2021-03-26 11:22:36','11','11','护工编号1','护工姓名1',1,5,'5','2021-03-25','未支付');

/*Table structure for table `keshifenlei` */

DROP TABLE IF EXISTS `keshifenlei`;

CREATE TABLE `keshifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='科室分类';

/*Data for the table `keshifenlei` */

insert  into `keshifenlei`(`id`,`addtime`,`fenlei`) values (41,'2021-03-26 11:16:17','呼吸内科'),(42,'2021-03-26 11:16:17','分类2'),(43,'2021-03-26 11:16:17','分类3'),(44,'2021-03-26 11:16:17','分类4'),(45,'2021-03-26 11:16:17','分类5'),(46,'2021-03-26 11:16:17','分类6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ncexgswdjjkoge3iyxgh0d4dks7ce34b','2021-03-26 11:17:50','2021-03-26 12:18:48'),(2,1616728862254,'22','yisheng','医生','786i6uzk88ecoqw6oquiw4aezqylxvl9','2021-03-26 11:21:08','2021-03-26 12:24:04'),(3,1616728915340,'11','yonghu','用户','zbl1yp4br72vhktrk16ieuc6f8yx1qkl','2021-03-26 11:21:59','2021-03-26 12:22:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-26 11:16:17');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616728862255 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`tupian`) values (21,'2021-03-26 11:16:17','003','123456','王五','男',30,'13823888881','http://localhost:8080/ssm11719/upload/yisheng_tupian1.jpg'),(22,'2021-03-26 11:16:17','医生2','123456','姓名2','男',2,'13823888882','http://localhost:8080/ssm11719/upload/yisheng_tupian2.jpg'),(23,'2021-03-26 11:16:17','医生3','123456','姓名3','男',3,'13823888883','http://localhost:8080/ssm11719/upload/yisheng_tupian3.jpg'),(24,'2021-03-26 11:16:17','医生4','123456','姓名4','男',4,'13823888884','http://localhost:8080/ssm11719/upload/yisheng_tupian4.jpg'),(25,'2021-03-26 11:16:17','医生5','123456','姓名5','男',5,'13823888885','http://localhost:8080/ssm11719/upload/yisheng_tupian5.jpg'),(26,'2021-03-26 11:16:17','医生6','123456','姓名6','男',6,'13823888886','http://localhost:8080/ssm11719/upload/yisheng_tupian6.jpg'),(1616728862254,'2021-03-26 11:21:02','22','22','22',NULL,NULL,'',NULL);

/*Table structure for table `yishengxinxi` */

DROP TABLE IF EXISTS `yishengxinxi`;

CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yishengjianjie` longtext COMMENT '医生简介',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医生信息';

/*Data for the table `yishengxinxi` */

insert  into `yishengxinxi`(`id`,`addtime`,`xingming`,`keshi`,`zhicheng`,`xingbie`,`yishengjianjie`,`lianxidianhua`,`tupian`) values (81,'2021-03-26 11:16:17','姓名1','科室1','职称1','男','医生简介1','13823888881','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian1.jpg'),(82,'2021-03-26 11:16:17','姓名2','科室2','职称2','男','医生简介2','13823888882','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian2.jpg'),(83,'2021-03-26 11:16:17','姓名3','科室3','职称3','男','医生简介3','13823888883','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian3.jpg'),(84,'2021-03-26 11:16:17','姓名4','科室4','职称4','男','医生简介4','13823888884','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian4.jpg'),(85,'2021-03-26 11:16:17','姓名5','科室5','职称5','男','医生简介5','13823888885','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian5.jpg'),(86,'2021-03-26 11:16:17','姓名6','科室6','职称6','男','医生简介6','13823888886','http://localhost:8080/ssm11719/upload/yishengxinxi_tupian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616728915341 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`tupian`) values (11,'2021-03-26 11:16:17','222','123456','姓名1','女','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm11719/upload/yonghu_tupian1.jpg'),(12,'2021-03-26 11:16:17','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm11719/upload/yonghu_tupian2.jpg'),(13,'2021-03-26 11:16:17','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm11719/upload/yonghu_tupian3.jpg'),(14,'2021-03-26 11:16:17','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm11719/upload/yonghu_tupian4.jpg'),(15,'2021-03-26 11:16:17','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm11719/upload/yonghu_tupian5.jpg'),(16,'2021-03-26 11:16:17','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm11719/upload/yonghu_tupian6.jpg'),(1616728915340,'2021-03-26 11:21:55','11','11','11',NULL,'','','',NULL);

/*Table structure for table `zhuyuanxinxi` */

DROP TABLE IF EXISTS `zhuyuanxinxi`;

CREATE TABLE `zhuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `suoshubingqu` varchar(200) DEFAULT NULL COMMENT '所属病区',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `chuangweihao` int(11) DEFAULT NULL COMMENT '床位号',
  `zhuzhiyisheng` varchar(200) DEFAULT NULL COMMENT '主治医生',
  `bingli` longtext COMMENT '病历',
  `zhuyuanriqi` date DEFAULT NULL COMMENT '住院日期',
  `zhuyuancaozuoyuan` varchar(200) DEFAULT NULL COMMENT '住院操作员',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='住院信息';

/*Data for the table `zhuyuanxinxi` */

insert  into `zhuyuanxinxi`(`id`,`addtime`,`bingrenxingming`,`suoshubingqu`,`suoshukeshi`,`chuangweihao`,`zhuzhiyisheng`,`bingli`,`zhuyuanriqi`,`zhuyuancaozuoyuan`,`zhanghao`,`xingming`,`userid`) values (51,'2021-03-26 11:16:17','病人姓名1','所属病区1','啊实打实',1,'大苏打a','<p>大苏打</p>','2021-03-26','住院操作员1','11','11',1),(52,'2021-03-26 11:16:17','病人姓名2','所属病区2','所属科室2',2,'主治医生2','病历2','2021-03-26','住院操作员2','账号2','姓名2',2),(53,'2021-03-26 11:16:17','病人姓名3','所属病区3','所属科室3',3,'主治医生3','病历3','2021-03-26','住院操作员3','账号3','姓名3',3),(54,'2021-03-26 11:16:17','病人姓名4','所属病区4','所属科室4',4,'主治医生4','病历4','2021-03-26','住院操作员4','账号4','姓名4',4),(55,'2021-03-26 11:16:17','病人姓名5','所属病区5','所属科室5',5,'主治医生5','病历5','2021-03-26','住院操作员5','账号5','姓名5',5),(56,'2021-03-26 11:16:17','病人姓名6','所属病区6','所属科室6',6,'主治医生6','病历6','2021-03-26','住院操作员6','账号6','姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
