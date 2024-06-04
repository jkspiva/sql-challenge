# sql-challenge
Module 9 - SQL Challenge
---
In this homework challenge we had to create a workplace database and perform data modeling, data engineering, and data analysis from six CSV files. An Entity Relationship Diagram (ERD) was created using https://app.quickdatabasediagrams.com/. A database and tables with corresponding primary and foreign keys were created using PostgreSQL via pgAdmin 4. The data from the CSV files were then imported into the tables created in pgAdmin 4. Then queries were created to pull the requested data: 

1) List the employee number, last name, first name, sex, and salary of each employee.

2) List the first name, last name, and hire date for the employees who were hired in 1986.

3) List the manager of each department along with their department number, department name, employee number, last name, and first name.

4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6) List each employee in the Sales department, including their employee number, last name, and first name.

7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


NOTE: It is important to note that during the database creation process, the tables with primary keys and no foreign keys should be created first, then followed by the tables with foreign keys. This is to ensure that there are no errors when importing the CSV files into the corresponding tables.