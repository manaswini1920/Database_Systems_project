DROP FUNCTION IF EXISTS funct_driver_rating;
DELIMITER //
CREATE FUNCTION funct_driver_rating
(
 rating INT
)
RETURNS varchar(30) 
deterministic
BEGIN
    DECLARE rating_comment varchar(30);
    IF rating = 1 THEN
		SET rating_comment = "Worst driver";
	ELSEIF rating = 2 THEN
		SET rating_comment = "Bad driver";
	ELSEIF rating = 3 THEN
		SET rating_comment = "Average driver";
	ELSEIF rating = 4 THEN
		SET rating_comment = "Good driver";
	ELSEIF rating = 5 THEN
		SET rating_comment = "Excellent driver";
	END IF;
    RETURN rating_comment; 
END//
DELIMITER ; 

select driver_id, funct_driver_rating(rating) from driver;