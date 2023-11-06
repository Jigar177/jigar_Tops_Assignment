
-- ---------------------------------------------------------------------FIRST TABLE-------------------------------------------------------------------------
create database Tops_Assesments;
use Tops_Assesments;
create table Worker
(
WORKER_ID int,
FIRST_NAME VARCHAR (25),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE varchar(20),
DEPARTMENT 	varchar(25)
);
alter table worker add primary key(WORKER_ID);
describe worker;
select * from worker;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select * from worker order by FIRST_NAME asc , DEPARTMENT desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.

select * from worker where first_name in ("vipul","satish");
select * from worker where first_name = "vipul" or first_name = "satish";

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 

select * from worker where length(first_name) = 6 and first_name like '%h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.
-- Note :- Question IS NOT CLEAR IN PDF FILE 

select * from worker;
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 and 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT * FROM worker;
SELECT *, COUNT(*) FROM Worker GROUP BY WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT
HAVING COUNT(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table. 

select * from worker limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 

select * from worker;
select DEPARTMENT,count(DEPARTMENT) from worker group by DEPARTMENT having count(DEPARTMENT) < 5;


-- 8. Write an SQL query to show all departments along with the number of people in there.

select count(*) ALL_PEOPLE ,DEPARTMENT from worker group by department;


-- 9. Write an SQL query to print the name of employees having the highest salary in each department.

SELECT MAX(SALARY),DEPARTMENT FROM WORKER GROUP BY DEPARTMENT;







-- ---------------------------------------------------------------------SECOND TABLE-------------------------------------------------------------------------

create database School;
use School;
create table Student
(
StdID int,
StdName varchar(25),
Sex Enum('Male','Female'),
Percentage int,
Class int,
Sec varchar(25),
Stream varchar(25),
DOB varchar(20)
);
alter table Student add primary key(StdID);
describe Student;
select * from Student;


-- 1 To display all the records form STUDENT table.

select * from student;

-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM student ;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 

SELECT * FROM student WHERE percentage >= 80; 

-- 4. To display student name, stream and percentage where percentage of student is more than 80 

select stdName, stream , Percentage from student where percentage > 80;


-- 5. To display all records of science students whose percentage is more than 75 form student table. 
	
SELECT * from student where Stream = 'Science' AND percentage > 75;










