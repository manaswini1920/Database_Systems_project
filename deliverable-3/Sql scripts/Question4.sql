SELECT o.person_id,food_rating,delivery_rating 
FROM order_rating AS ora,`order` AS o
where ora.order_id IN
(SELECT order_id FROM `order`
WHERE restaurant_id= 3 AND o.person_id = 3)
