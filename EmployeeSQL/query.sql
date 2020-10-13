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
		

