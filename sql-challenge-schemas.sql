-- Create 'titles' table
CREATE TABLE titles (
	title_id VARCHAR (5) PRIMARY KEY NOT NULL,
	title VARCHAR (20) NOT NULL
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

-- Create the 'departments' table
CREATE TABLE departments (
	dept_no VARCHAR (4) PRIMARY KEY NOT NULL,
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

-- Create 'salaries' table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

-- Adding table contraints after tables created
ALTER TABLE dept_emp 
	ADD CONSTRAINT fk_dept_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

ALTER TABLE dept_manager
	ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE salaries
	ADD CONSTRAINT fk_salaries FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE employees
	ADD CONSTRAINT fk_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles (title_id);
