DROP DATABASE IF EXISTS orderdb;
CREATE DATABASE IF NOT EXISTS orderdb;

USE orderdb;

CREATE TABLE IF NOT EXISTS orders
(	
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(45) UNIQUE NOT NULL,
    amount INT NOT NULL,
    order_status VARCHAR(12)
);

INSERT orders(user_id,amount,order_status)
VALUES
	("qw1",234,"OPEN"),
    ("ds2",450,"OPEN"),
    ("de3",460,"CLOSED"),
    ("fr23",430,"CANCELLED"),
    ("ff2",500,"CANCELLED");
SELECT * FROM orders;

SELECT 
	user_id,
    amount AS "Количество",
    order_status AS "Статус заказа",
CASE
	WHEN order_status = "OPEN" THEN "Order is open state"
    WHEN order_status = "CLOSED" THEN "Order is closed state"
    WHEN order_status = "CANCELLED" THEN "Order is cancelled state"
    ELSE "EROR"
END AS "FULL ORDER STATUS"
FROM orders;
