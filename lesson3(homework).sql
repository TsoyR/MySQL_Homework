USE lesson3;
-- Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания

SELECT *
FROM staff
ORDER BY salary DESC ; -- в порядке убывания

SELECT *
FROM staff
ORDER BY salary; -- в порядке возрастания

-- Выведите 5 максимальных заработных плат (saraly)

SELECT * FROM staff ORDER BY salary DESC LIMIT 5;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT 
	post,
    SUM(salary) AS "Суммарная зп"
FROM staff
GROUP BY post;

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
    
SELECT
	CASE
		WHEN age BETWEEN 24 AND 49 AND post = "Рабочий" THEN "Кол-во рабочих в возрасте от 24 до 49"
        ELSE "остальные"
	END AS name_age,
    COUNT(id)
FROM staff
GROUP BY name_age;

-- Найдите количество специальностей

SELECT 
COUNT(DISTINCT post)
FROM staff;


-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно.
SELECT
	post,
    AVG(age) AS "Средний возраст"
FROM staff
GROUP BY post
HAVING AVG(age) <= 30 ;


SELECT * FROM staff;
        
    
    





