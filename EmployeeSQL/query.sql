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