select * from departments limit 10;
select * from dept_emp limit 10;
select * from dept_manager limit 10;
select * from employees limit 10;
select * from salaries;
select * from titles;

--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,e.last_name,e.first_name,e.sex ,s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
order by e.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name,last_name,hire_date
from employees where date_part('year',hire_date)= 1986
order by hire_date;

--List the manager of each department along with their department number,
--department name, employee number, last name, and first name.

select e.emp_no,e.last_name,e.first_name,dm.dept_no,d.dept_name,t.title
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no=d.dept_no
join titles t on e.emp_title_id = t.title_id
order by e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name,
--first name, and department name.
select de.dept_no,e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
order by de.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B.

select first_name,last_name,sex
from employees
where first_name ilike 'Hercules' and last_name ilike 'b%';

--List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where dept_name like 'Sales'
order by e.last_name;

--List each employee in the Sales and Development departments, including their employee number, last name, 
--first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where dept_name like 'Sales' or dept_name like 'Development';

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name)

select last_name,count(*) as lastname_counts
from employees
group by last_name
order by lastname_counts desc;
















