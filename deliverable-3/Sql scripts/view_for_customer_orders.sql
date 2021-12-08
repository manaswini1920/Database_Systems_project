-- view for customer orders
 USE `campus_eats_fall2020`;
CREATE  OR REPLACE VIEW `customer_orders` AS
SELECT DISTINCT person_id as customer_id,
    ROUND(total_price + delivery_charge) AS order_total
    FROM campus_eats_fall2020.order 
    GROUP BY person_id;
select * from customer_orders