DROP TABLE IF EXISTS `order_rating`;
CREATE TABLE IF NOT EXISTS `campus_eats_fall2020`.`order_rating` (
  `id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `food_rating` INT NULL,
  `delivery_rating` INT NULL,
  `comments` VARCHAR(200) NULL,
  `picture` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  INDEX `order_id_idx` (`order_id` ASC),
  CONSTRAINT `order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `campus_eats_fall2020`.`order` (`order_id`))
ENGINE = InnoDB