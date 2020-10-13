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
FROM 	departments as de, dept_manager as demg,employees as es
ORDER BY (es.last_name, es.first_name); 
		
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.	

SELECT 	es.emp_no,
		es.last_name,
		es.first_name,
		de.dept_name
FROM 	employees as es, departments as de
ORDER BY (es.last_name, es.first_name);











-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."











-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.











-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.











-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


