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
  `active` varchar(5) DEFAULT 'true',
  `date_time` int(20) DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`org_name`,`org_phone`,`active`,`date_time`,`hash`) values (1,NULL,NULL,'true',1568306918,'86a3ca159d87f64be9156a289c07aecb');

/*Table structure for table `login` */

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_time` int(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'true',
  `hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`org_id`,`email`,`password`,`date_time`,`type`,`active`,`hash`) values (1,'Ghulam Abbass',1,'ghulamabbass.1995@gmail.com','123',1568306918,'admin','true','352c8c34aaf07db6daa9bf8b8ba15fe3');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
