CREATE TABLE IF NOT EXISTS `campus_eats_fall2020`.`menu_items` (
  `item_id` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`item_id`),
  INDEX `restaurant_id_idx` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `campus_eats_fall2020`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB