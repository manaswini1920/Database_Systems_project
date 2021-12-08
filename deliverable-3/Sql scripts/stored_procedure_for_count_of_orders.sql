USE campus_eats_fall2020;
DROP PROCEDURE IF EXISTS count_of_orders;
DELIMITER //
CREATE PROCEDURE count_of_orders(IN start_year INT,IN end_year INT, OUT output_str varchar(100))
BEGIN
	  DECLARE order_count Varchar(20);
	  SELECT count(*) into order_count
	  FROM `order`
	  WHERE person_id in (
	  select person_id from student where graduation_year between start_year and end_year
	  );
	  IF order_count < 0 THEN
		SET output_str = CONCAT("The number of orders are 0");
	  ELSE
		SET output_str = CONCAT("The number of orders are ", order_count); 
	  END IF;
END //

DELIMITER ;
-- Gets number of orders from 2010 to 2013
CALL count_of_orders(2009,2013,@output_str);
Select @output_str