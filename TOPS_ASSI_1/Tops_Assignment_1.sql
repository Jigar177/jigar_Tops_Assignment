-- Database Name: HR
use hr;
select * from employees;

-- 1. Display all information in the tables EMP and DEPT.

select * from employees inner join departments on employees.department_id = departments.department_id;

-- 2. Display only the hire date and employee name for each employee.

select * from employees;
select hire_date as Hire_Date,concat_ws('  ', first_name,last_name) Employee_Name from employees;

/* 3. Display the ename concatenated with the job ID, separated by a comma and space, and
name the column Employee and Title   */

select * from employees;
select concat(first_name,' ,  ',job_id) Employee_and_title from employees;

-- 4. Display the hire date, name and department number for all clerks.

select * from employees;        -- hire_date,first_name
select * from departments;      -- department_id,department_name

select e.hire_date,e.first_name,e.department_id from employees e
join
departments d on e.department_id = d.department_id where d.department_name = 'clerks';

/* 5. Create a query to display all the data from the EMP table. Separate each column by a
comma. Name the column THE OUTPUT    */

select concat_ws(' , ',employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
 THE_OUTPUT from employees;

-- 6. Display the names and salaries of all employees with a salary greater than 2000.

select * from employees;
select first_name,salary from employees where salary > 2000;

-- 7. Display the names and dates of employees with the column headers "Name" and "Start Date"

select * from employees;
select first_name Name ,hire_date Start_Date from employees;

-- 8. Display the names and hire dates of all employees in the order they were hired.

select first_name Name ,hire_date Start_Date from employees order by hire_date;

-- 9. Display the names and salaries of all employees in reverse salary order.

select first_name , salary from employees order by salary desc;

-- 10. Display 'ename" and "deptno" who are all earned commission and display salary in reverse order.

select * from employees;
select * from departments;

select first_name ename , department_id deptno,salary from employees where commission_pct order by salary desc;

-- 11. Display the last name and job title of all employees who do not have a manager

select last_name , job_id , manager_id from employees where  manager_id is null;

/* 12. Display the last name, job, and salary for all employees whose job is sales representative
or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000 */

select * from employees;
select * from departments;
update departments set department_name = "sales representative" where department_id = 200;
update departments set department_name = "stock clerk" where department_id = 240;

SELECT e.last_name, e.job_id, e.salary, d.department_name
FROM employees e 
JOIN departments d ON e.department_id = d.department_id
WHERE (d.department_name = 'sales representative' OR d.department_name = 'stock clerk') 
AND e.salary <> 2500 or 3500 or 5000;

































