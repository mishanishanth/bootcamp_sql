Title
SQL Week 9 Homework
Description
In this homework we are designing  the tables to hold the data from the CSV files, importing the CSV files into a SQL database, and then answering questions about the data through data modeling, data engineering, and data analysis.
Prerequisites
We are writing the queries in PostgreSQL using pgAdmin. The data required for the queries is provided in the resources folder within the starter code folder.
Queries
Here is an example of a query that was used.
List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,e.last_name,e.first_name,e.sex ,s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
order by e.emp_no;
