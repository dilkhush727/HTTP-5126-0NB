# Files from HTTP-5126
## Database Design and Development
## Course Code: HTTP 5126

### Academic Year: 2025-2026

This course offers strategies and techniques for designing, creating, and interacting with databases. The primary focus is on SQL and MySQL, with an introduction to NoSQL alternatives.


# Links
https://www.w3schools.com/sql/

# Images
![Database Design Overview](sql.png)

***Notice:*** This repository focuses on best practices for database design and development. It's strongly encouraged to familiarize yourself with both SQL and NoSQL concepts to make the most of the resources available.



# Examples of SQL Comands

-- 1 
-- A 
SELECT * FROM `employees` WHERE role IN('Manager','Assistant');
-- B
SELECT * FROM stock_items WHERE category = "Piscine" AND inventory < 24;

-- 2
-- A
SELECT item, inventory FROM stock_items WHERE item LIKE '%cage';
-- B
SELECT first_name FROM employees WHERE first_name LIKE "F%";

-- 3
-- A
SELECT * FROM stock_items WHERE id BETWEEN 1010 AND 1015;
-- B
SELECT * FROM stock_items WHERE category = "Canine" AND price BETWEEN 10 AND 20;
