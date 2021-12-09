SELECT person_id, SUM(total_price)
FROM `order`
where SUBSTRING(timestamp, 1, 10) BETWEEN '2021-08-05' AND '2021-12-10'
GROUP BY person_id;
