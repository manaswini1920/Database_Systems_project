SELECT MAX(delivery_rating),MIN(delivery_rating),AVG(food_rating),
MAX(food_rating),MIN(food_rating),AVG(food_rating)
FROM order_rating
WHERE order_id
IN(SELECT order_id FROM `order` WHERE `order`.restaurant_id = 4);
