DROP TABLE IF EXISTS `#__ncompcustomcode`;
 
CREATE TABLE `#__ncompcustomcode` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`mainhtmldata` TEXT NOT NULL,
	`published` tinyint(4) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;
 
INSERT INTO `#__ncompcustomcode` (`mainhtmldata`) VALUES
('Hello World!'),
('Good bye World!');

ALTER TABLE `#__ncompcustomcode` 
CHANGE COLUMN `mainhtmldata` `mainhtmldata` TEXT NULL ,
ADD COLUMN `description` VARCHAR(45) NULL AFTER `id`,
ADD COLUMN `cssdata` TEXT NULL AFTER `mainhtmldata`,
ADD COLUMN `jsdata` TEXT NULL AFTER `cssdata`;

update `#__ncompcustomcode` set description = mainhtmldata;

ALTER TABLE `#__ncompcustomcode` 
CHANGE COLUMN `description` `description` VARCHAR(45) NOT NULL ;