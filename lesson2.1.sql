DROP DATABASE IF EXISTS salesdb;
CREATE DATABASE IF NOT EXISTS salesdb;

USE salesdb;

CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    name_product VARCHAR(45) NOT NULL,
    count_product INT NOT NULL
    
);

INSERT sales(order_date,name_product,count_product)
VALUES
	("2023-01-02","Американо",100),
    ("2023-01-03","Ристретто",156),
    ("2023-01-04","Капучино ",300),
    ("2023-01-05","Кортадо",20),
    ("2023-01-06","Латте", 340);

SELECT * FROM sales;





SELECT 
	id AS "Id Заказа",
	count_product AS "Количество",
	IF(count_product < 100, "Маленький заказ",
		IF(count_product BETWEEN 100 AND 300, "Средний заказ",
			IF(count_product > 300, "Большой заказ"," " )))
	AS "Тип заказа"
FROM sales;


   
   
   
   


    



    

