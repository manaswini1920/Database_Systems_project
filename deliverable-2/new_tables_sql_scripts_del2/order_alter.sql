ALTER TABLE `Campus_Eats_Fall2020`.`order`
ADD COLUMN `status_id` INT NOT NULL AFTER `delivery_charge`, 
ADD COLUMN `timestamp` DATETIME NOT NULL AFTER `status_id`,
CHANGE COLUMN `delivery_charge` `delivery_charge` FLOAT NOT NULL , 
ADD INDEX `fk_O_status_id_idx` (`status_id` ASC) VISIBLE;
ALTER TABLE `Campus_Eats_Fall2020`.`order`
ADD CONSTRAINT `fk_O_status_id`
FOREIGN KEY (`status_id`)
REFERENCES `Campus_Eats_Fall2020`.`order_status` (`status_id`);
