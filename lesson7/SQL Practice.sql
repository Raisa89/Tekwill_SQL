DESCRIBE ad_course_details;
SELECT COURSE_ID ,
COURSE_NAME ,
SESSION_ID ,
DEPARTMENT_ID  FROM ad_course_details;
select student_id
 ,first_name
 ,parent_id
 from ad_student_details;
 select * from EMPLOYEES;
 
 select first_name || ' ,' || last_name "Nume_Prenume"
  ,HIRE_DATE
  ,SALARY
 from EMPLOYEES;
 select *
from employees
where salary >=10000
or job_id like '%MAN%';	
select *
FROM EMPLOYEES
WHERE salary >=10000
and job_id like '%MAN%'
and commission_pct is not null;	
select *
from employees
where first_name LIKE '__e';	
select *
from employees
where first_name LIKE '%r';	
select *
from employees
where first_name LIKE '%R';	
select *
from employees
where first_name LIKE '%A';	
select *
from employees
where first_name LIKE 'S%';	
select *
from employees
where first_name LIKE 'E%';	
select *
from employees
where first_name LIKE 'A%';	
select*
from employees
where hire_date IN('29-01-13','17-10-11');	
select*
from employees
where hire_date IN('12-10-10','29-01-13','17-10-11');	
select*
from employees
where last_name IN('Rajs', 'Davies');	
SELECT *
FROM employees
where manager_id IN(100,124);	
select *
from employees
where hire_date between '17-Jun-2009' and '31-Dec-2016';	
select *
from employees
where salary between 3000 and 7000;	
select *
from employees
where salary !=9000;	
select *
from employees
where salary <>9000;	
select *
from employees
where salary =9000;	
select *
from employees
where salary >=3000;	
select *
from employees
where salary <=3000;
select *
FROM employees
WHERE hire_date='07-06-10';	
select *
FROM employees
WHERE hire_date='10-10-11';	
select *
FROM employees
WHERE hire_date='10-10-11';	
select first_name
,last_name
,salary*12 "Annual Salary"
FROM employees;
select *
from employees;
select first_name
,last_name
,department_id
,phone_number
,salary
from employees
where department_id=50
and job_id ='ST_CLERK'
and phone_number LIKE '%4%';
select *
from employees;
select *
from employees
where department_id='60'
and salary BETWEEN 4000 AND 10000;
select last_name
,department_id
,salary
from employees
where (department_id=60
or department_id=80)
and salary>10000;
select *
from employees
where job_id='SA_REP'
or job_id='SA_MAN'
AND PHONE_NUMBER like '0%';
select *
from employees
where job_id='SA_REP'
or job_id='SA_MAN'
AND PHONE_NUMBER like '0%'
order by salary ASC;
select last_name || first_name as "fullname"
,salary as "Salariu"
from employees
order by "fullname","Salariu";
select *
from employees
order by employee_id
Fetch first 10 rows only;
select * 
from employees
order by employee_id
offset 2 rows Fetch next 8 rows only;
select *
from employees
where employee_id = &employee;