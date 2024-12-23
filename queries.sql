-- 1. List the employee number, last name, first name, sex, and salary of each employee (2 points) 
SELECT em.emp_no, last_name, first_name, sex, salary
FROM employees em
INNER JOIN salaries s
ON em.emp_no = s.emp_no
ORDER BY em.emp_no

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date asc;

-- SELECT first_name, last_name, hire_date
-- from employees
-- where hire_date between '1986-01-01' and '1986-12-31'
-- order by hire_date asc;

-- 3. List the manager of each department along with their
--department number, department name, employee number, last name, and first name (2 points
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that
-- employee’s employee number, last name, first name, and department name (2 points)
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no;

-- 5. List first name, last name, and sex of each employee whose
-- first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex, birth_date 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
ORDER BY e.emp_no ASC;

-- 7. List each employee in the Sales and Development departments,
-- including their employee number, last name, first name, and department name (4 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no ASC; 

-- 8. List the frequency counts, in descending order, of all the employee
-- last names (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;