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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`org_name`,`org_phone`,`active`) values (1,'Zed Developers',NULL,'true'),(2,'Bhatti',NULL,'true'),(3,'abc',NULL,'true'),(4,'dani',NULL,'true'),(5,'asd',NULL,'true'),(6,'asdf',NULL,'true'),(7,'def',NULL,'true'),(8,'abbass',NULL,'true'),(9,'123',NULL,'true'),(10,'456',NULL,'true'),(11,'789',NULL,'true'),(12,'zxc',NULL,'true'),(13,'daniel',NULL,'true'),(14,'usama',NULL,'true'),(15,'as',NULL,'true'),(16,'asdsadsa',NULL,'true');

/*Table structure for table `login` */

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`org_id`,`email`,`password`,`date_time`,`type`,`active`) values (1,'Daniyal Bhatti',1,'danibhatti1993@gmail.com','123',1567770596,'admin','true'),(2,'Daniyal',2,'daniyal@gmail.com','123',1567839839,'admin','true'),(3,'bhatti',3,'bhatti@gmail.com','123',1567840224,'admin','true'),(4,'dani',4,'dani@gmail.com','123',1567840884,'admin','true'),(5,'asd',5,'asd@gmail.com','123',1567841613,'admin','true'),(6,'asdf',6,'ahsanshaikh978@gmail.com','123',1567842190,'admin','true'),(7,'abc',7,'abc@gmail.com','123',1567842645,'admin','true'),(8,'Ghulam Abbass',8,'ga@gmail.com','123',1567842682,'admin','true'),(9,'123',9,'123@gmai.com','789',1567843089,'admin','true'),(10,'456',10,'456@gmail.com','456',1567843132,'admin','true'),(11,'789',11,'789@gmail.com','789',1567843337,'admin','true'),(12,'zxc',12,'zxc@gmail.com','123',1567844306,'admin','true'),(13,'daniel',13,'daniel@yahoo.com','123',1567846955,'admin','true'),(14,'usama',14,'usama@gmail.com','123',1567847422,'admin','true'),(15,'asdf',15,'fga@agdaf','asd',1567848760,'admin','true'),(16,'asdasd',16,'asdsad@asdsa','abds',1567849174,'admin','true');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
