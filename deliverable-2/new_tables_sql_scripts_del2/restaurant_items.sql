create table restaurant_items(item_id int not null primary key, restaurant_id int not null, item_name varchar(80) not null,
item_desc varchar(160) not null,price decimal(10,2) not null, FOREIGN KEY (`restaurant_id`)
 REFERENCES `restaurant`(`restaurant_id`))