/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.38-MariaDB : Database - dashboard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `company` */

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(200) DEFAULT NULL,
  `org_phone` varchar(200) DEFAULT NULL,
  `org_email` varchar(50) DEFAULT NULL,
  `date_time` int(20) DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  `org_address` varchar(100) DEFAULT NULL,
  `org_description` varchar(200) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`org_name`,`org_phone`,`org_email`,`date_time`,`hash`,`org_address`,`org_description`,`active`) values (1,'abcd','1122','123@gmail.com',1568306918,'86a3ca159d87f64be9156a289c07aecb','Johar','Developer','true'),(2,'Daniyal ','20','daniyal-enterprise@gmail.com',1568625220,'f71456f6c63db02632ff768a124042ed','Saddar','Parrots\r\n','true'),(3,'bhatti','15','dan-enterprise@gmail.com',1568628500,'fc452ad2e447a96edde95f3436571359','karachi','Cloth Work','true'),(4,NULL,NULL,NULL,1568810007,'cadcc520ec8352abe4bb1b8b9ed3374e',NULL,NULL,'true'),(5,NULL,NULL,NULL,1568810668,'f53f598c6ca95d7a0c77b011fb792aed',NULL,NULL,'true'),(6,NULL,NULL,NULL,1568810908,'3f8363c2426b158e790141ac6b30659a',NULL,NULL,'true'),(7,NULL,NULL,NULL,1568811258,'031392cc536566a28e2f4efa2a958dd5',NULL,NULL,'true'),(8,NULL,NULL,NULL,1568811519,'89704390fd23ad37d03293ac654fb680',NULL,NULL,'true'),(9,NULL,NULL,NULL,1568811656,'26db1000a3694d2b7e178b35791db444',NULL,NULL,'true'),(10,NULL,NULL,NULL,1568811840,'1a2b1ef18e5ea1865c4ce29fb1ce8809',NULL,NULL,'true'),(11,NULL,NULL,NULL,1568811922,'46ebbb92326d93ff806da4b54aca6184',NULL,NULL,'true'),(12,NULL,NULL,NULL,1568811945,'6bdfdc9db4e752710ac41db4a4632847',NULL,NULL,'true'),(13,NULL,NULL,NULL,1568812101,'f5d8815c0f9640e19ea967bcde1902fd',NULL,NULL,'true'),(14,NULL,NULL,NULL,1568812118,'33c42e99d584ec4e0bb2dc3212dab871',NULL,NULL,'true'),(15,NULL,NULL,NULL,1568812169,'e08750efa76af193568ba51055ae4d90',NULL,NULL,'true'),(16,NULL,NULL,NULL,1568812199,'391ae81f42ad2899ba04374f97500c89',NULL,NULL,'true'),(17,NULL,NULL,NULL,1568812550,'fdbdb705ef3744f4c00f593ec32cb4d1',NULL,NULL,'true'),(18,NULL,NULL,NULL,1568812691,'1120d2e6d836a273fb20d30dbf26b47a',NULL,NULL,'true'),(19,NULL,NULL,NULL,1568813448,'bff3e037966b6ff21bd0bc0c101c208c',NULL,NULL,'true'),(20,NULL,NULL,NULL,1568813542,'09e5588530f9700221f330f04dc7e92b',NULL,NULL,'true'),(21,NULL,NULL,NULL,1568813662,'5f4b2cfce8b42cb6fa98984b0b64897e',NULL,NULL,'true'),(22,NULL,NULL,NULL,1568813751,'bac76e2b89b39efb07e910a0bc7ac6a7',NULL,NULL,'true'),(23,NULL,NULL,NULL,1568813805,'9181ef710f63b6f962164961f2e4ce52',NULL,NULL,'true');

/*Table structure for table `login` */

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'true',
  `hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`org_id`,`email`,`phone`,`password`,`date_time`,`type`,`active`,`hash`) values (1,'Ghulam Abbass WAleed',1,'ghulamabbass.1995@gmail.com','789','123','1568306918','admin','true','352c8c34aaf07db6daa9bf8b8ba15fe3'),(2,'Daniyal',2,'d@gmail.com','456','123','1568625221','admin','true','61026762b5673e9c34761ee58680b274'),(3,'Zuhair',3,'z@gmail.com','123','456','1568628500','admin','true','12915c54ca189281eae52db181937b2a'),(4,'Usama',4,'usama@gmail.com',NULL,'123456','1568810007','admin','true','5d8e08ed52d3a810a2b55f308d7aee24'),(5,'Daniel',12,'daniel@yahoo.com',NULL,'123','1568811945','admin','true','b6a8622af2b3048d280ee88b9745995c'),(6,'bilal',16,'bilal@gmail.com',NULL,'123','1568812200','admin','true','aa9bb5ce9d9f5c06a5910dbbb4513a0f'),(7,'abc',18,'abc@gmail.com',NULL,'123','1568812691',NULL,'true','0ffcffc6923cac33cba56e466bfba641'),(8,'bhattii',22,'bhatti@gmail.com',NULL,'123','1568813752',NULL,'true','89c8ff624bb3fc221f3d5d86b96bc6c4'),(9,'Ghulam Abbass',23,'ga@gmail.com',NULL,'123','1568813805',NULL,'true','8446cca77fed245890fbbd320c2191be');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
