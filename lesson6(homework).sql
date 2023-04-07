-- 1.	Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '


DROP FUNCTION IF EXISTS get_time;
DELIMITER //

CREATE FUNCTION format_time 
(
	input_sec INT,
    format_date_text VARCHAR(100)
)
RETURNS TEXT DETERMINISTIC
BEGIN
	DECLARE rest_sec INT;
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
	DECLARE res VARCHAR(100);
	SET rest_sec = input_sec;
    SET days = rest_sec DIV 86400;
    SET rest_sec = rest_sec - days*86400;
    SET hours = rest_sec - hours*3600;
    SET minutes = rest_sec DIV 60;
    SET seconds = rest_sec - minuts*60;
    SET res = format_date_text;
    SET res = concat(days,hours,minuts,seconds,",");
    RETURN res;
    
END//

SELECT get_time(123456);

-- 2.	Выведите только четные числа от 1 до 10 включительно. (Через функцию / процедуру)
-- Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)






DROP PROCEDURE IF EXISTS even_numbers;
DELIMITER $$
CREATE PROCEDURE even_numbers
(	
	IN input_numbers INT
)
BEGIN
	DECLARE n INT;
    DECLARE result VARCHAR(45) DEFAULT "";
    SET n = input_numbers;
    
    REPEAT 
		SET result = concat(result,n,",");
        SET n = n - 2;
        -- Условия выхода из цикла: n - отриц число или равное 0
        UNTIL n <= 0
	END REPEAT;
    
    SELECT result;
END$$

CALL even_numbers(10);

