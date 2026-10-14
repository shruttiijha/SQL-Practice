CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);
INSERT INTO employees
    (employee_id, employee_name, department, salary, manager_id)
VALUES
    (101, 'Aarav', 'Engineering', 95000, 105),
    (102, 'Meera', 'Engineering', 72000, 105),
    (103, 'Kabir', 'Sales',       65000, 106),
    (104, 'Isha',  'Sales',       92000, 106),
    (105, 'Rohan', 'Engineering', 90000, NULL),
    (106, 'Neha',  'Sales',       88000, NULL);

SELECT * FROM employees;

/* Que 1. WAQ to display all Engineering employees ordered by salary
from highest to lowest.*/

SELECT employee_name, salary
FROM employees
WHERE department = 'Engineering'
ORDER BY salary DESC;

-- Que 2. WAQ to find the number of employees in each department.

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Que 3. WAQ to find the second-highest distinct salary.

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- Que 4. WAQ to find employees earning more than the company average salary.

SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Que 5. WAQ to find the highest salary in each department.

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Que 6. WAQ to find employees whose salary is higher than their manager's salary.

SELECT e.employee_name, e.salary,
       m.employee_name AS manager_name,
       m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_name, city)
VALUES
    (1, 'Aditi Sharma', 'Delhi'),
    (2, 'Rahul Verma', 'Mumbai'),
    (3, 'Simran Kaur', 'Chandigarh'),
    (4, 'Arjun Nair', 'Bengaluru');


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    status VARCHAR(30)
);

INSERT INTO orders (order_id, customer_id, amount, status)
VALUES
    (501, 1, 2400, 'Delivered'),
    (502, 1, 3200, 'Delivered'),
    (503, 2, 1800, 'Delivered'),
    (504, 2, 4100, 'Pending'),
    (505, 3, 950, 'Cancelled');

SELECT * FROM customers;

SELECT * FROM orders;

-- Que 8. WAQ to find customers who have never placed an order.

SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Que 9. WAQ to find customers who placed more than one order.

SELECT c.customer_name, COUNT(*) AS order_count
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(*) > 1;

-- Que 10. WAQ to find the highest-spending customer based only on delivered orders.

SELECT c.customer_name, SUM(o.amount) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC
LIMIT 1;

