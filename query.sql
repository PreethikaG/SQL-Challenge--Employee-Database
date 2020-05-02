--1. List the following details of each employee: 
--employee number, last name, first name, gender, and salary
SELECT e.emp_no,last_name,first_name,gender,s.salary from employees as e
FULL OUTER JOIN salaries as s
on e.emp_no=s.emp_no

--2. List employees who were hired in 1986.
--1986-06-26
SELECT * FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.
SELECT dm.dept_no,dept.dept_name,dm.emp_no,emp.last_name,emp.first_name,dm.from_date,dm.to_date
FROM dept_manager as dm
FULL OUTER JOIN departments as dept 
ON dm.dept_no = dept.dept_no
JOIN employees as emp
ON emp.emp_no = dm.emp_no

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT emp.emp_no,emp.last_name,emp.first_name,dept.dept_name
FROM employees AS emp
FULL OUTER JOIN dept_emp as de
ON emp.emp_no = de.emp_no
JOIN departments as dept
ON de.dept_no = dept.dept_no 
ORDER BY 1 ASC

--5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%' ;

--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

SELECT emp.emp_no,emp.last_name,emp.first_name, dept.dept_name
FROM employees AS emp
JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
JOIN departments AS dept
ON dept.dept_no = de.dept_no
WHERE dept.dept_name='Sales'

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT emp.emp_no,emp.last_name,emp.first_name, dept.dept_name
FROM employees AS emp
JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
JOIN departments AS dept
ON dept.dept_no = de.dept_no
WHERE dept.dept_name IN ('Sales','Development');

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, count(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY 2 DESC;