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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`org_name`,`org_phone`,`org_email`,`date_time`,`hash`,`org_address`,`org_description`,`active`) values (1,'DB360','360','DB360@gmail.com',1569933891,'531eef3f7caaf6405a9aac7340cf058b','Saddar','Birds','true'),(2,'DB1993','1993','db1993@gmail.com',1569933911,'afbf159a24daa656546262a1dfb1eb5f','Karachi','Birds','true'),(3,'Ali & Co.','123456789','ali&co@gmail.com',1569934315,'367290a6da9b4557a808f0aec1412a8d','Sindh','Textile','true'),(4,'Lutolf','78601','lutolf@gmail.com',1569934582,'e25f7d1e18b682b844b1569ce2ef6b0b','Europe','Parrots','true'),(5,'Zed Developers','456789','zed@gmail.com',1570093889,'f9d1295d2cbe5dddffc8a3e734118237','Johar','Software','true');

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
  `last_login` varchar(20) DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`org_id`,`email`,`phone`,`password`,`date_time`,`type`,`active`,`last_login`,`hash`) values (1,'Daniyal',1,'daniyal@gmail.com','1122','123','1569933891','Admin','true','1570710144','7448cd14bb80a09cac4105629ea658d0'),(2,'Daniyal Bhatti',2,'danibhatti1993@gmail.com','3344','123','1569933912','User','true','1570707187','7be44a48b450ad22e1fa7bfb389f43e6'),(3,'Ali',3,'ali@gmaias.com','0000','123','1569934316','User','true','1570093780','23a1fad7bf5d0981cccc059d4d8bbe8a'),(4,'Daniel',4,'daniel@yahoo.com','0900','000','1569934582','Admin','true','1570706906','157e580fc334f34bbcda1f41fb1b3720'),(5,'Ghulam Abbass',5,'ga@gmail.com','1234','123','1570093889','Admin','true','1570093922','a7441e1c6ffc4e9dd90d56b84d5f5d96');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
