use campus_eats_fall2020;
drop procedure if exists average_delivery_charge;
DELIMITER //
create procedure average_delivery_charge(IN id varchar(55),OUT output_str varchar(100))
BEGIN
DECLARE avg_del_chg varchar(20);
        Select Avg(delivery_charge) into avg_del_chg
        from `order` where restaurant_id = id;
        SET output_str = concat('The Average Delivery Charge is ', avg_del_chg);
END //
DELIMITER ;
call average_delivery_charge(@output_str);
select @output_str;