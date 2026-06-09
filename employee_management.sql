CREATE DATABASE employee_management;
USE employee_management;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees VALUES
(101, 'Rahul', 25, 30000, 2),
(102, 'Priya', 28, 35000, 1),
(103, 'Amit', 30, 45000, 3);

-- Display all employees
SELECT * FROM employees;

-- Join Query
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Average salary by department
SELECT dept_id, AVG(salary)
FROM employees
GROUP BY dept_id;