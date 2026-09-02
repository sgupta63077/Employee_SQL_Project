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

 Display all employees
SELECT * FROM employees;

 Update Aman salary
UPDATE employees
SET emp_salary = 50000
WHERE emp_id = 1;

 Update Ankit city
UPDATE employees
SET emp_city = 'Delhi'
WHERE emp_id = 3;

 Delete Pooja
DELETE FROM employees
WHERE emp_id = 7;

 Sort departments by average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
ORDER BY average_salary ASC;

 Maximum salary per department
SELECT emp_department, MAX(emp_salary) AS maximum_salary
FROM employees
GROUP BY emp_department;

 Departments having more than 5 employees
SELECT emp_department, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_department
HAVING COUNT(*) > 5;

 Departments whose average salary is greater than 60,000
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
HAVING AVG(emp_salary) > 60000;

 Number of employees in every city
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city;

 Total employees
SELECT COUNT(*) AS total_employees
FROM employees;

 Total salary
SELECT SUM(emp_salary) AS total_salary
FROM employees;

 Average salary
SELECT AVG(emp_salary) AS average_salary
FROM employees;

 Maximum salary
SELECT MAX(emp_salary) AS maximum_salary
FROM employees;

 Minimum salary
SELECT MIN(emp_salary) AS minimum_salary
FROM employees;

 Average salary of IT employees
SELECT AVG(emp_salary) AS average_IT_salary
FROM employees
WHERE emp_department = 'IT';

 Highest salary in HR
SELECT MAX(emp_salary) AS highest_HR_salary
FROM employees
WHERE emp_department = 'HR';

 Total salary paid to Finance employees
SELECT SUM(emp_salary) AS total_Finance_salary
FROM employees
WHERE emp_department = 'Finance';

 Number of employees in Delhi
SELECT COUNT(*) AS Delhi_employee_count
FROM employees
WHERE emp_city = 'Delhi';

 Average salary of employees earning more than 50,000
SELECT AVG(emp_salary) AS average_salary
FROM employees
WHERE emp_salary > 50000;

 Department-wise total salary
SELECT emp_department, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_department;

 Department-wise average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department;

 Department with the highest average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
ORDER BY average_salary DESC
LIMIT 1;

 Department with the highest total salary
SELECT emp_department, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_department
ORDER BY total_salary DESC
LIMIT 1;

 City-wise employee count
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city;

 Find employees with salary greater than average salary
SELECT *
FROM employees
WHERE emp_salary > (
    SELECT AVG(emp_salary)
    FROM employees
);

 Find second highest salary
SELECT MAX(emp_salary) AS second_highest_salary
FROM employees
WHERE emp_salary < (
    SELECT MAX(emp_salary)
    FROM employees
);

 Find youngest employee
SELECT *
FROM employees
ORDER BY emp_age ASC
LIMIT 1;

Find oldest employee
SELECT *
FROM employees
ORDER BY emp_age DESC
LIMIT 1;

 Find cities having more than 3 employees
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city
HAVING COUNT(*) > 3;

 GROUP BY QUERIES


 1. Count employees in every department
SELECT emp_department, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_department;


 2. Find average salary per department
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department;


3. Find maximum salary per department
SELECT emp_department, MAX(emp_salary) AS maximum_salary
FROM employees
GROUP BY emp_department;


 4. Find departments having more than 5 employees
SELECT emp_department, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_department
HAVING COUNT(*) > 5;


 5. Find departments whose average salary is greater than 60,000
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
HAVING AVG(emp_salary) > 60000;


 6. Sort departments by average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
ORDER BY average_salary ASC;


 7. Find number of employees in every city
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city;


 8. Find cities having more than 3 employees
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city
HAVING COUNT(*) > 3;


 AGGREGATE FUNCTION QUERIES


 9. Find total employees
SELECT COUNT(*) AS total_employees
FROM employees;


 10. Find total salary
SELECT SUM(emp_salary) AS total_salary
FROM employees;


 11. Find average salary
SELECT AVG(emp_salary) AS average_salary
FROM employees;


12. Find maximum salary
SELECT MAX(emp_salary) AS maximum_salary
FROM employees;


 13. Find minimum salary
SELECT MIN(emp_salary) AS minimum_salary
FROM employees;


 14. Find average salary of IT employees
SELECT AVG(emp_salary) AS average_IT_salary
FROM employees
WHERE emp_department = 'IT';


 15. Find highest salary in HR
SELECT MAX(emp_salary) AS highest_HR_salary
FROM employees
WHERE emp_department = 'HR';


 16. Find total salary paid to Finance employees
SELECT SUM(emp_salary) AS total_Finance_salary
FROM employees
WHERE emp_department = 'Finance';


 17. Find number of employees in Delhi
SELECT COUNT(*) AS Delhi_employee_count
FROM employees
WHERE emp_city = 'Delhi';


 18. Find average salary of employees earning more than 50,000
SELECT AVG(emp_salary) AS average_salary
FROM employees
WHERE emp_salary > 50000;



 DEPARTMENT-WISE QUERIES


 19. Find department-wise total salary
SELECT emp_department, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_department;


 20. Find department-wise average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department;

 21. Find department with the highest average salary
SELECT emp_department, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_department
ORDER BY average_salary DESC
LIMIT 1;


 22. Find department with the highest total salary
SELECT emp_department, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_department
ORDER BY total_salary DESC
LIMIT 1;


 CITY-WISE QUERY


 23. Find city-wise employee count
SELECT emp_city, COUNT(*) AS employee_count
FROM employees
GROUP BY emp_city;