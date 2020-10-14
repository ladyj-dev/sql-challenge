--List the following details of each employee: 
--employee number, last name, first name, 
--sex, and saleary.
SELECT 	es.emp_no,
		es.last_name,
		es.first_name,
		es.sex, 
		sal.salary
FROM employees as es
	JOIN salaries as sal
	ON (sal.emp_no = es.emp_no)
ORDER BY (es.last_name, es.first_name);

-- List first name, last name, and hire date for employees who were hired in 1986

-- SELECT 	es.first_name,
-- 		es.last_name,
-- 		es.hire_date 
-- FROM employees as es
-- WHERE 	es.hire_date = 1986
-- ORDER BY (es .last_name, es.first_name);	

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name. 
SELECT 	de.dept_no,
		de.dept_name,
		demg.emp_no,
		es.last_name,
		es.first_name
FROM 	departments as de, dept_manager as demg, employees as es
JOIN 	departments as de
		ON(de.dept_no = demg.dept_no)
JOIN	employees as es
		ON(es.emp_no = demg.emp_no)
	ORDER BY (es.last_name, es.first_name); 
		
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.	

SELECT 	es.emp_no,
		es.last_name,
		es.first_name,
		de.dept_name
FROM 	employees as es, departments as de
ORDER BY (es.last_name, es.first_name);

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- SELECT 	es.first_name,
-- 		es.last_name,
-- 		es.sex
-- FROM	employees as es
-- WHERE es.first_name = "Hercules"
--	WHERE es.last_name = 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT 	es.last_name,
-- 		es.first_name,
-- 		dees._emp_no,
-- 		de.dept_name
-- FROM employees as es, dept_emp as dees, departments as de
-- JOIN employees as es
-- 	ON (es.emp_no = dees.emp_no)
-- JOIN dept_emp as dees
-- 	ON (dees.dept_no = de.dept_no)
-- WHERE dept_name = "Sales"
-- ORDER BY (es.last_name, es.first_name);



-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT 	es.last_name,
-- 		es.first_name,
-- 		dees._emp_no,
-- 		de.dept_name
-- FROM employees as es, dept_emp as dees, departments as de
-- JOIN employees as es
-- 	ON (es.emp_no = dees.emp_no)
-- JOIN dept_emp as dees
-- 	ON (dees.dept_no = de.dept_no)
-- WHERE dept_name IN ('Sales', 'Development') 
-- ORDER BY (es.last_name, es.first_name);

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT * FROM employees;
-- SELECT COUNT(DISTINCT last_name) AS "last name count"
-- FROM employees;
-- SELECT last_name, COUNT(last_name) AS "last name count" 
-- FROM employees
-- GROUP BY last_name
-- WHERE last_name is unique
-- ORDER BY "last name count"DESC;
SELECT last_name, COUNT(*)
	FROM employees
	GROUP BY last_name
	


