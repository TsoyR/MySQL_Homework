USE mymobiledb;
-- Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT name,manufacturer,price
FROM mobile
WHERE amount > 2;
--  Выведите весь ассортимент товаров марки “Samsung”
SELECT name,price
FROM mobile
WHERE manufacturer= "SAMSUNG";
-- Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000
 SELECT name,price,manufacturer,amount
 FROM mobile
 WHERE price*amount 
 BETWEEN 100000 and 145000;
 -- C помощью регулярных выражений найти:
 -- товары у которых есть упоминание Iphone
 -- Galaxy
 -- товары в которых есть цифры
 -- товары в которых есть цифра "8"
 SELECT name 
 FROM mobile
 WHERE name REGEXP 'Iphone';
 SELECT name 
 FROM mobile
 WHERE name REGEXP '[[:digit:]]';
 SELECT name 
 FROM mobile
 WHERE name REGEXP '[8]';
 
 