CREATE TABLE IF NOT EXISTS `campus_eats_fall2020`.`payments` (
  `payment_id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `cust_id` INT NOT NULL,
  `amount` FLOAT NOT NULL,
  `delivery_charges` FLOAT NOT NULL,
  PRIMARY KEY (`payment_id`),
  INDEX `_idx` (`order_id` ASC) VISIBLE,
  INDEX `cust_id_idx` (`cust_id` ASC) VISIBLE,
  CONSTRAINT ``
    FOREIGN KEY (`order_id`)
    REFERENCES `campus_eats_fall2020`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cust_id`
    FOREIGN KEY (`cust_id`)
    REFERENCES `campus_eats_fall2020`.`person` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB