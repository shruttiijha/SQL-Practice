# SQL Practice | PostgreSQL

A hands-on collection of SQL practice questions and solutions using PostgreSQL. This repository documents my learning journey as I strengthen my SQL fundamentals and problem-solving skills for entry-level Data Analyst roles.

## Tools Used

- **Database:** PostgreSQL
- **SQL Editor:** pgAdmin 4
- **Version Control:** GitHub

## Datasets

### 1. Employees
Contains employee details, including employee ID, name, department, salary, and manager ID. Used to practise salary analysis, department-wise aggregations, and self-joins.

### 2. Customers & Orders
Contains customer information and order details, including order amount and order status. Used to practise joins, customer-level analysis, and spending calculations.

## SQL Concepts Practised

- **Filtering & Sorting:** `WHERE`, `ORDER BY`, `DESC`
- **Aggregation:** `COUNT()`, `SUM()`, `MAX()`, `AVG()`
- **Grouping:** `GROUP BY`, `HAVING`
- **Joins:** `INNER JOIN`, `LEFT JOIN`, self-join
- **Subqueries:** Nested queries and salary comparisons
- **NULL Handling:** Identifying customers without orders
- **Limiting Results:** `LIMIT`

## Practice Questions

| No. | Problem Statement |
|---|---|
| 1 | Display Engineering employees ordered by salary from highest to lowest |
| 2 | Find the number of employees in each department |
| 3 | Find the second-highest distinct salary |
| 4 | Find employees earning more than the company average salary |
| 5 | Find the highest salary in each department |
| 6 | Find employees earning more than their managers |
| 8 | Find customers who have never placed an order |
| 9 | Find customers who placed more than one order |
| 10 | Find the highest-spending customer based on delivered orders |

## How to Run

1. Install PostgreSQL and pgAdmin 4.
2. Open `SQL.Basics.Practice.sql` in the pgAdmin Query Tool.
3. Connect to your practice database.
4. Execute the table creation and data insertion statements before running the corresponding queries.
5. Run the individual practice queries to explore the results.

**Note:** The script creates tables and inserts sample records. If the tables already exist, reset or recreate them before rerunning the setup statements.

## Goal

To build a strong foundation in SQL through consistent practice and gradually develop the analytical querying skills required for real-world data analysis.

---

**Author:** Shruti Jha

**Focus:** SQL | PostgreSQL | Data Analytics
