-- Create the 'department' table
CREATE TABLE departments (
	dept_no VARCHAR (4) NOT NULL,
	dept_name VARCHAR (20) NOT NULL
);

-- Create 'dept_emp' table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (4) NOT NULL
);

-- Create 'dept_manager' table
CREATE TABLE dept_manager (
	dept_no VARCHAR (4) NOT NULL,
	emp_no INT NOT NULL
);

-- Create 'employees' table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL
);

-- Create 'salaries' table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

-- Create 'titles' table
CREATE TABLE titles (
	title_id VARCHAR (5) NOT NULL,
	title VARCHAR (20) NOT NULL
);