-- Employee_Database_challenge.sql

---- DELIVERABLE 1

-- 1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
select e.emp_no, e.first_name, e.last_name
from employees as e

-- 2. Retrieve the title, from_date, and to_date columns from the Titles table
select ti.title, ti.from_date, ti.to_date
from titles as ti

-- 3 to 5
select e.emp_no, 
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
into retire_title
from employees as e
inner join titles as ti
on e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc

select * from retire_title;

drop table unique_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no,
	r.first_name,
	r.last_name,
	r.title
INTO unique_titles
FROM retire_title as r
WHERE (to_date = '9999-01-01')
ORDER BY r.emp_no ASC, r.to_date DESC;

select * from unique_titles;

-- Number of employees by their most recent job title who are about to retire
select count (emp_no),
	title
into retire_count
from unique_titles as ut
group by title
order by count (emp_no) desc;

select * from retire_count;


---- DELIVERABLE 2

select emp_no, first_name, last_name, birth_date from employees;
select from_date, to_date from dept_emp;
select title from titles;

drop table mentor_elig;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
into mentor_elig
from employees as e
right join dept_emp as de
on e.emp_no = de.emp_no
right join titles as ti
on de.emp_no = ti.emp_no
where (de.to_date = '9999-01-01')
and (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no;

select * from mentor_elig;