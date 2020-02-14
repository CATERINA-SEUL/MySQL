# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 15.165.136.173 (MySQL 5.7.29-0ubuntu0.18.04.1)
# Database: test
# Generation Time: 2020-02-14 10:41:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table user1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user1`;

CREATE TABLE `user1` (
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `rdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;

INSERT INTO `user1` (`user_id`, `name`, `email`, `age`, `rdate`)
VALUES
	(3,'HYUN','hyun@gmail.com',20,'2019-12-23'),
	(5,'EUN','eun@gmail.com',38,'2020-02-13'),
	(6,'JAE','jae@gmail.com',20,'2019-12-23'),
	(8,'HYUK','hyuk@naver.com',40,'2020-02-13'),
	(9,'HUN','hun@gmail.com',20,'2019-12-23'),
	(10,'HUR','hur@naver.com',20,'2019-12-23');

/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user2`;

CREATE TABLE `user2` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(3) DEFAULT '30',
  `rdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
