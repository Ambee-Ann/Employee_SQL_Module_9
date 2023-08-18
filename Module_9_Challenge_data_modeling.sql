SELECT * FROM department;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries; 
SELECT * FROM employees;
SELECT * FROM titles;

-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.salary = employees.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date LIKE '1986%'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT dept_manager.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_manager
LEFT JOIN employees
ON employees.emp_no = dept_manager.dept_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT dept_manager.dept_no, employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM dept_manager
LEFT JOIN employees
ON employees.emp_no = dept_manager.dept_no
LEFT JOIN department
ON employees.emp_no = department.dept_name

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = LIKE 'Hercules'
AND employees.last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT department.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM department
LEFT JOIN employees
ON employees.emp_no = department.dept_name
WHERE department.dept_name LIKE 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT department.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM department
LEFT JOIN employees
ON employees.emp_no = department.dept_name
WHERE department.dept_name LIKE 'Sales'
AND department.dept_name LIKE 'Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT employees.last_name, COUNT(last_name) AS 'Frequency'
FROM employees
GROUP BY last_name
ORDER BY 'Frequency' DESC;
