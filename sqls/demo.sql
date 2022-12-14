DROP DATABASE IF EXISTS `demo`;
CREATE DATABASE `demo`;
USE `demo`;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `skill`;

CREATE TABLE `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO skill (name) VALUES ('java');
INSERT INTO skill (name) VALUES ('docker');
INSERT INTO skill (name) VALUES ('k8s');

GRANT ALL PRIVILEGES ON demo.* TO 'admin'@'%';
