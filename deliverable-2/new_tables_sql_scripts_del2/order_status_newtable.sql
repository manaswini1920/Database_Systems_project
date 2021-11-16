CREATE TABLE IF NOT EXISTS `campus_eats_fall2020`.`order_status` (
  `status_id` INT NOT NULL,
  `status_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`status_id`))
ENGINE = InnoDB