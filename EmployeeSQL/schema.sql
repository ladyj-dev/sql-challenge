departments 
------------
dept_no PK varchar
dept_name varchar

dept_emp
------------
emp_no integer PK FK >- employees.emp_no
dept_no varchar FK >- departments.dept_no

dept_manager
------------
dept_no varchar FK >- departments.dept_no
emp_no integer PK FK >- employees.emp_no

employees
------------
emp_no PK integer 
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar 
hire_date date

salaries
------------
emp_no integer PK FK >- employees.emp_no
salary integer

titles
------------
title_id PK varchar 
title varchar
