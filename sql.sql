/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 5.7.19 : Database - afi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`afi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `afi`;

/*Table structure for table `bot` */

DROP TABLE IF EXISTS `bot`;

CREATE TABLE `bot` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `rating` int(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `modifytime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114525 DEFAULT CHARSET=utf8;

/*Data for the table `bot` */

insert  into `bot`(`id`,`user_id`,`title`,`description`,`content`,`rating`,`createtime`,`modifytime`) values 
(2,1,'可以使用的TestBot','1','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-26 11:36:01','2022-09-29 20:16:57'),
(3,2,'test1','1','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-27 17:48:29','2022-09-27 17:48:29'),
(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(114514,114514,'AdamBigHammer','要死一万遍','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',54250,NULL,NULL),
(114515,1,'Test2','2','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-29 20:16:41','2022-09-29 20:16:41'),
(114516,1,'Test3','3','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-29 20:16:49','2022-09-29 20:16:49'),
(114517,1,'Test4','4','4',1500,'2022-09-29 20:17:02','2022-09-29 20:17:02'),
(114518,1,'Test5','5','5',1500,'2022-09-29 20:17:07','2022-09-29 20:17:07'),
(114519,1,'Test6','6','6',1500,'2022-09-29 20:17:13','2022-09-29 20:17:13'),
(114520,1,'Test7','7','7',1500,'2022-09-29 20:17:18','2022-09-29 20:17:18'),
(114521,1,'Test8','8','8',1500,'2022-09-29 20:17:24','2022-09-29 20:17:24'),
(114523,1,'Test final','66','66',1500,'2022-09-29 20:17:38','2022-09-29 20:17:38'),
(114524,1,'test','test','public void class ',1500,'2022-09-30 16:17:26','2022-09-30 16:17:26');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `rating` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114515 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`photo`,`rating`) values 
(1,'xuuxxi','$2a$10$7yq2zp2GBTIsE5Oj55D9V.gRYHxTHJCSQa6Q0gwLBRjPXwPaq01Ce','https://pic1.imgdb.cn/item/624bb2b7239250f7c5decf6e.jpg',1350),
(2,'xuuxxi\'s分身','$2a$10$cZI54QO7NqjvqKwpLB0n2O/yAxet/4XzTmU56MSQAVGKMo/HmM0GG','https://himg.bdimg.com/sys/portrait/item/pp.1.481df099.i32p0nCHRR3Oqo2KlSmvmQ?_t=1663067565416',1390),
(3,'Rebecca','1','https://pic1.imgdb.cn/item/6334439516f2c2beb159a7d1.jpg',1600),
(4,'Lucy','1','https://pic1.imgdb.cn/item/6334439516f2c2beb159a7d4.jpg',1650),
(5,'葬爱女王','1','https://img2.baidu.com/it/u=2280976231,3979009505&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200',1300),
(6,'时尚帅哥','1','https://img2.baidu.com/it/u=457644547,3654874748&fm=253&fmt=auto&app=138&f=JPEG?w=320&h=320',1310),
(7,'痴情男孩','1','https://img2.baidu.com/it/u=2229530847,3739411184&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200',1400),
(8,'酷帅女人','1','https://img0.baidu.com/it/u=367078044,422746365&fm=253&fmt=auto&app=138&f=JPEG?w=360&h=360',1410),
(9,'伤感女人','1','https://img0.baidu.com/it/u=3243713131,3249141329&fm=253&fmt=auto?w=200&h=200',1590),
(10,'思乡女人','1','https://img1.baidu.com/it/u=2596589971,4077750839&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200',1610),
(11,'街头霸王','1','https://img1.baidu.com/it/u=2021420268,1441394590&fm=253&fmt=auto&app=138&f=JPEG?w=320&h=320',1100),
(114514,'AdamBigHammer',NULL,'https://pic1.imgdb.cn/item/6334434516f2c2beb1594757.png',54250);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
