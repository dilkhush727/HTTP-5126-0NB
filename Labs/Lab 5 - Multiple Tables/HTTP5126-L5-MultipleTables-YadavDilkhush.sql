--  LAB 5 MULTIPLE TABLES
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM `sales` WHERE item = 1014;
-- B 
SELECT sales.date, stock_items.item FROM `sales` INNER JOIN stock_items ON sales.item = stock_items.id WHERE stock_items.id = 1014;

--  2
-- A 
SELECT * FROM `sales` WHERE employee = 111;
-- B
SELECT sales.date, sales.item, employees.first_name, employees.last_name FROM `sales` INNER JOIN employees ON sales.employee = employees.id WHERE sales.employee=111;

--  3
-- A
SELECT sales.date, sales.item, employees.first_name FROM `sales` INNER JOIN employees ON sales.employee = employees.id WHERE sales.date BETWEEN '2024-09-12' AND '2024-09-18';
-- B
SELECT CONCAT(employees.first_name, " ", employees.last_name) AS sales_person, COUNT(sales.id) AS total_sales FROM `sales` JOIN employees ON sales.employee = employees.id GROUP BY sales_person ORDER BY total_sales DESC;

--  4
-- A
SELECT s.date, si.item, si.price, si.category, e.first_name FROM sales AS s JOIN stock_items AS si ON s.item = si.id JOIN employees AS e ON s.employee = e.id WHERE s.employee = (SELECT e.id FROM sales s JOIN employees e ON s.employee = e.id GROUP BY e.id ORDER BY COUNT(s.id) DESC LIMIT 1);
-- B
SELECT si.id, si.item, si.price, si.category, COUNT(s.id) AS 'Times Sold' FROM stock_items AS si LEFT JOIN sales AS s ON si.id = s.item GROUP BY si.id ORDER BY si.id;

--  5
-- A
Provide the count of all sales for each sales person (first name and last name) grouped by sales date. The results should show older sales to latest sales.
-- B
SELECT CONCAT(employees.first_name, " ", employees.last_name) AS sales_person, COUNT(sales.id) AS total_sales, sales.date AS sales_date FROM `sales` JOIN employees ON sales.employee = employees.id GROUP BY sales_date ORDER BY sales_date ASC;