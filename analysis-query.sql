-- 1. List the employee number, last name, first name, sex, and salary of each employee. 
-- from employees: employee number (emp_no), last name (last_name), first name (first_name), sex
-- from salaries: employee number (emp_no), salary
SELECT s.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
INNER JOIN salaries as s
ON s.emp_no = e.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date 
FROM employees 
WHERE extract(year from hire_date) = 1986;

