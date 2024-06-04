-- 1. List the employee number, last name, first name, sex, and salary of each employee. 
-- from employees: employee number (emp_no), last name (last_name), first name (first_name), sex
-- from salaries: employee number (emp_no), salary
SELECT 
	s.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM employees as e
INNER JOIN salaries as s
	ON s.emp_no = e.emp_no;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	emp_no, 
	last_name, 
	first_name, 
	hire_date 
FROM employees 
WHERE extract(year from hire_date) = 1986;


-- 3. List the manager of each department along with their: department number, department name, employee number, last name, and first name. 
SELECT
	d.dept_no,
	d.dept_name,
	e.emp_title_id,
	e.last_name,
	e.first_name
FROM dept_emp as de
LEFT JOIN employees as e
	ON e.emp_no = de.emp_no
LEFT JOIN departments as d
	ON d.dept_no = de.dept_no
WHERE e.emp_title_id LIKE 'm%';


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- Create view for the joined table
CREATE VIEW all_dept_emp AS (
	SELECT
		e.emp_no,
		e.emp_title_id,
		e.birth_date,
		e.last_name,
		e.first_name,
		e.sex,
		e.hire_date,
		d.dept_name,
		d.dept_no

	FROM dept_emp as de
	LEFT JOIN employees as e
		ON e.emp_no = de.emp_no
	LEFT JOIN departments as d
		ON d.dept_no = de.dept_no);

SELECT
	emp_no,
	last_name,
	first_name,
	dept_name
FROM all_dept_emp;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with the letter "B"

SELECT
	e.first_name,
	e.last_name,
	e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%';


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
-- Create another view
CREATE VIEW all_depts AS (
	SELECT 
		emp_no,
		last_name,
		first_name,
		dept_name
	FROM all_dept_emp);

SELECT * FROM all_depts
WHERE dept_name = 'Sales'
;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM all_depts
WHERE dept_name IN ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name) AS frequency
FROM employees AS e
GROUP BY e.last_name
ORDER BY frequency DESC; 