use campus_eats_fall2020;
drop procedure if exists count_degree_college;
DELIMITER ;;
create procedure count_degree_college(IN title varchar(75), OUT output_count varchar(75))
BEGIN
DECLARE output VARCHAR(75);
	SELECT COUNT(degree_college) INTO output
	FROM faculty
	WHERE degree_college LIKE 'UNCC';
    SET output_count = concat('Count degree College : ', output);

END ;;

call count_degree_college('UNCC',@output_count);
select @output_count