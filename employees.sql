CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT,
    emp_department VARCHAR(30),
    emp_salary DECIMAL(10,2),
    emp_city VARCHAR(50)
);

INSERT INTO employees
(emp_id, emp_name, emp_age, emp_department, emp_salary, emp_city)
VALUES
(1, 'Aman', 24, 'IT', 45000, 'Lucknow'),
(2, 'Riya', 28, 'HR', 55000, 'Delhi'),
(3, 'Ankit', 30, 'IT', 65000, 'Lucknow'),
(4, 'Priya', 26, 'Finance', 48000, 'Kanpur'),
(5, 'Neha', 32, 'HR', 60000, 'Lucknow'),
(6, 'Arjun', 27, 'IT', 52000, 'Noida'),
(7, 'Pooja', 23, 'Sales', 35000, 'Delhi'),
(8, 'Rahul', 29, 'IT', 70000, 'Kanpur'),
(9, 'Sneha', 25, 'HR', NULL, 'Lucknow'),
(10, 'Vikas', 35, 'Finance', 58000, 'Delhi');

SELECT * FROM employees;

UPDATE employees
SET emp_salary = 50000
WHERE emp_id = 1;

UPDATE employees
SET emp_city = 'Delhi'
WHERE emp_id = 3;

DELETE FROM employees
WHERE emp_id = 7;

SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
ORDER BY average_salary ASC;

SELECT emp_department, MAX(emp_salary) AS maximum_salary
FROM employees
GROUP BY emp_department;

SELECT emp_department, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_department
HAVING COUNT(*) > 5;

SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
HAVING AVG(emp_salary) > 60000;

SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT SUM(emp_salary) AS total_salary
FROM employees;

SELECT AVG(emp_salary) AS average_salary
FROM employees;

SELECT MAX(emp_salary) AS maximum_salary
FROM employees;

SELECT MIN(emp_salary) AS minimum_salary
FROM employees;

SELECT AVG(emp_salary) AS average_IT_salary
FROM employees
WHERE emp_department = 'IT';

SELECT MAX(emp_salary) AS highest_HR_salary
FROM employees
WHERE emp_department = 'HR';

SELECT SUM(emp_salary) AS total_Finance_salary
FROM employees
WHERE emp_department = 'Finance';

SELECT COUNT(*) AS Delhi_employees
FROM employees
WHERE emp_city = 'Delhi';

SELECT AVG(emp_salary) AS average_salary
FROM employees
WHERE emp_salary > 50000;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT,
    emp_department VARCHAR(30),
    emp_salary DECIMAL(10,2),
    emp_city VARCHAR(50)
);