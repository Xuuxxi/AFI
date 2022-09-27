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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `bot` */

insert  into `bot`(`id`,`user_id`,`title`,`description`,`content`,`rating`,`createtime`,`modifytime`) values 
(2,1,'TestBot','1','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-26 11:36:01','2022-09-27 17:48:20'),
(3,2,'test1','1','package com.kob.botrunningsystem.service.utils;\n\n\nimport java.util.List;\n\n/**\n * @Author: Xuuxxi\n * @Date: 2022/9/25\n */\npublic class Bot implements com.kob.botrunningsystem.service.utils.BotAi {\n\n    @Override\n    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {\n        for(int i = 0;i < ownBoard.size();i ++){\n            if(ownBoard.get(i) == 0) return i;\n        }\n\n        return -1;\n    }\n}\n',1500,'2022-09-27 17:48:29','2022-09-27 17:48:29');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `rating` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`photo`,`rating`) values 
(1,'xuuxxi','$2a$10$7yq2zp2GBTIsE5Oj55D9V.gRYHxTHJCSQa6Q0gwLBRjPXwPaq01Ce','https://himg.bdimg.com/sys/portrait/item/pp.1.481df099.i32p0nCHRR3Oqo2KlSmvmQ?_t=1663067565416',1500),
(2,'1','$2a$10$cZI54QO7NqjvqKwpLB0n2O/yAxet/4XzTmU56MSQAVGKMo/HmM0GG','https://himg.bdimg.com/sys/portrait/item/pp.1.481df099.i32p0nCHRR3Oqo2KlSmvmQ?_t=1663067565416',1500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
