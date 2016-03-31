/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - onlinehelpdesk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinehelpdesk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinehelpdesk`;

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaint_id` varchar(40) NOT NULL,
  `issue_date` varchar(40) default NULL,
  `department` varchar(40) default NULL,
  `subject` varchar(100) default NULL,
  `complaint` varchar(1000) default NULL,
  `solution` varchar(1000) default NULL,
  `status` varchar(40) default NULL,
  `customer_id` varchar(40) default NULL,
  `consultant_id` varchar(40) default NULL,
  PRIMARY KEY  (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaints` */

insert  into `complaints`(`complaint_id`,`issue_date`,`department`,`subject`,`complaint`,`solution`,`status`,`customer_id`,`consultant_id`) values ('299691','Fri Mar 11 20:02:23 PST 2016','Computer Science','sdsf','dgdgdhd',' ','open',' ',' '),('377226','Fri Mar 11 20:19:27 PST 2016','Computer Science','sdfsfs','sdsggsg',' ','open',' ',' '),('566883','Sat Mar 12 00:58:22 PST 2016','Computer Science','er','34t3','sahhjda jashdja zsja jasdhajh','In Progress','shreya@gmail.com','neha@gmail.com'),('624727','Fri Mar 11 20:21:52 PST 2016','Computer Science','dsgsg','dgsdhs',' ','open',' ',' '),('649628','Fri Feb 19 08:36:44 PST 2016','Computer Science','awdwad','asda',' ','open',' ',' '),('724282','Wed Mar 30 22:26:54 PDT 2016','Computer Science','ghadf sdjdjh','hjDSh JHDjheh',' ','open','neha@gmail.com',' '),('829897','Fri Mar 11 20:11:47 PST 2016','Computer Science','sdfsfs','sdfssg',' ','open',' ',' '),('869339','Fri Feb 19 08:24:16 PST 2016','Computer Science','fbfgs','sdfsg',' ','open',' ',' '),('934113','Fri Mar 11 19:44:28 PST 2016','Computer Science','dgdgsd','dgdgdgd',' ','open',' ',' '),('941211','Fri Mar 11 20:30:41 PST 2016','Computer Science','dsgsgsdh','dfhdhdh',' ','open','shreya@gmail.com',' ');

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `dep_id` bigint(40) NOT NULL auto_increment,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `departments`(`dep_id`,`dept_name`) values (1,'Computer Science'),(2,'Electrical'),(3,'Electronics'),(4,'Civil');

/*Table structure for table `designations` */

DROP TABLE IF EXISTS `designations`;

CREATE TABLE `designations` (
  `desig_id` bigint(40) NOT NULL auto_increment,
  `desig_name` varchar(60) default NULL,
  PRIMARY KEY  (`desig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `designations` */

insert  into `designations`(`desig_id`,`desig_name`) values (1,'student'),(2,'faculty'),(3,'Lab-Assistant'),(4,'Discipline Coordinator');

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `branch` varchar(60) default NULL,
  `semester` varchar(60) default NULL,
  `year` varchar(60) default NULL,
  `department_id` bigint(40) default NULL,
  `reg_id` bigint(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profile` */

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `reg_id` varchar(100) NOT NULL,
  `first_name` varchar(60) default NULL,
  `last_name` varchar(60) default NULL,
  `email` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  `mobile` varchar(30) default NULL,
  `usertype` varchar(40) default NULL,
  `Designation` varchar(40) default NULL,
  `Department` varchar(40) default NULL,
  PRIMARY KEY  (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`reg_id`,`first_name`,`last_name`,`email`,`password`,`mobile`,`usertype`,`Designation`,`Department`) values ('27','surbhi','chauhan','admin@gmail.com','admin','8879687906','admin',NULL,NULL),('28','abc','def','abc@gmail.com','abc','8348783577','requestmanager',NULL,NULL),('30','mohit','chauhan','mohit@gmail.com','mohit123','6789058679','other',NULL,NULL),('35','consul','tant','cons@gmail.com','cons','2563517653','consultant',NULL,NULL),('45','shreya','mathur','shreya@gmail.com','shreya','2616476476','student',NULL,NULL),('776777','rohit','sharma','rohit@gmail.com','rohit123','6675896078','student','faculty','Computer Science'),('878471','neha','sharma','neha@gmail.com','neha123','7768957869','consultant','faculty','Computer Science');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `status_id` bigint(40) NOT NULL auto_increment,
  `status_name` varchar(40) NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `status` */

insert  into `status`(`status_id`,`status_name`) values (1,'Pending'),(2,'In Progress'),(3,'Completed');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
