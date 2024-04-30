-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.first_name,e.last_name,e.sex,s.salaries
from employees as e
inner join salaries as s
on e.emp_no=s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date between DATE('1986-01-01') AND DATE('1986-12-31');

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, 
       dept_manager.emp_no, 
       departments.dept_name, 
       employees.first_name, 
       employees.last_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_no,d.dept_name 
from employees as e 
inner join dept_emp
on e.emp_no=dept_emp.emp_no
inner join departments as d 
on dept_emp.dept_no=d.dept_no;

-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name,last_name,sex
from employees 
where first_name = 'Hercules' AND last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no,e.last_name,e.first_name,d.dept_name 
from employees as e 
inner join dept_emp
on e.emp_no=dept_emp.emp_no
inner join departments as d 
on dept_emp.dept_no=d.dept_no
where d.dept_name = 'Sales';


--list each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_name 
from employees as e 
inner join dept_emp
on e.emp_no=dept_emp.emp_no
inner join departments as d 
on dept_emp.dept_no=d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

--list the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as frequency_counts
from employees
group by last_name
order by (frequency_counts) desc;