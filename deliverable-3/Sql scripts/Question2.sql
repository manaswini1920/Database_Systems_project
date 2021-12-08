SELECT COUNT(order_id) from `order` 
WHERE person_id = 1
and SUBSTRING(timestamp, 1, 10) BETWEEN '2021-09-05' AND '2021-10-02';
