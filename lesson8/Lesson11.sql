select * 
from employees
Natural Join jobs;
select employees.first_name
      ,employees.last_name
      ,jobs.job_title
from employees
Natural join jobs;
select first_name
      ,last_name
      ,job_title
      ,job_id
from employees
Natural join jobs;
select t1.first_name as test_1
      ,t1.last_name as test_2
      ,t2.job_title
from employees t1
Natural join jobs t2;
select * 
from employees
where employee_id=100;
select *
from jobs
where lower(job_id) = lower('ad_pres');
select *
from employees
Natural join jobs
where employee_id=100;
select *
from employees
join jobs using(job_id)
join departments using(department_id)
where employee_id=100;
select t1.*
       ,t2.job_title
from employees t1
join jobs t2
on t1.job_id=t2.job_id;
select t1.*
       ,t2.job_title
       ,t2.max_salary
       ,t2.min_salary
from employees t1
join jobs t2
on t1.job_id=t2.job_id
join departments t3
on t1.department_id=t3.department_id
where t1.employee_id=102;
select a.employee_id as manager_id
       ,a.first_name || ' ' || a.last_name as manager_name
       ,a.manager_id
       ,b.employee_id
       ,b.first_name || ' ' || b.last_name as employeee_name
       from employees a
       join employees b
       on b.manager_id = a.employee_id;
Select a.employee_id
      ,Count(a.employee_id)
from employees a
join job_grades b
on a.salary between b.lowest_sal and b.highest_sal
group by a.employee_id
having count(a.employee_id)>1;

Select *
from employees a
join job_grades b
on a.salary between b.lowest_sal and b.highest_sal
where a.employee_id=141;

Select * 
from job_grades;

Select * 
from jobs;

Select min(salary),max(salary)
from employees;

delete from job_grades
where grade_level in('L','N');
 
select department_name, course_name
from ad_departments
NATURAL JOIN ad_course_details;

select department_name, course_name, hod
from ad_departments
JOIN ad_course_details
USING (department_id);

select c.course_name, s.session_name
from ad_course_details c JOIN ad_academic_session s
ON (c.session_id = s.session_id)
WHERE s.session_id=300;

select a.course_id, b.course_name, c.faculty_name
from ad_faculty_course_details a JOIN ad_course_details b
ON (a.course_id = b.course_id)
JOIN ad_faculty_details c
USING (faculty_id);

select a.student_id, a.first_name, b.exam, b.marks
from ad_student_details a JOIN ad_exam_results b
ON (a.student_id = b.student_id)
AND (b.marks BETWEEN 60 AND 70);

select a.first_name, a.last_name, b.department_name
from employees a JOIN departments b
USING (department_id);

select department_id  "Department"
,count(employee_id)  "Employee"
from employees
group by department_id
order by 2 desc;

select a.first_name, a.last_name
, b.department_name
,c.street_address
,c.city
,c.state_province
,d.country_name
,e.region_name
from employees a join departments b
on a.department_id = b.department_id
left join locations c
on b.location_id  = c.location_id
left join countries d
on c.country_id = d.country_id
left join regions e
on d.region_id = e.region_id;

select a.first_name, a.last_name, a.salary
from employees a
join employees b
on b.employee_id = 182
where a.salary > b.salary;

select a.first_name || ' ' || a.last_name as "Nume complet"
        ,a.salary
       ,b.first_name || ' ' || b.last_name as "Nume manager"
       ,abs(b.salary-a.salary)
       from employees a
       left join employees b
on a.manager_id = b.employee_id;

select a.employee_id as manager_id
       ,a.first_name || ' ' || a.last_name as manager_name
       ,a.manager_id
       ,b.employee_id
       ,b.first_name || ' ' || b.last_name as employeee_name
       from employees a
       join employees b
       on b.manager_id = a.employee_id;
/*5.with subselect*/       
select emp.first_name,emp.last_name,dep.department_name
from employees emp 
join departments dep on dep.department_id = emp.department_id 
where emp.department_id in (select department_id from employees where last_name = 'Taylor');

/*5.with self-join*/
select emp.first_name,emp.last_name,dep.department_name
from employees emp 
join employees taylor on (taylor.last_name='Taylor')
join departments dep on dep.department_id = emp.department_id 
where emp.department_id =taylor.department_id;

/*6.*/
select emp.first_name || ' ' || emp.last_name Full_Name
,emp.salary, (j.max_salary-emp.salary)as potentialSalIncrease  from employees emp
join jobs j using(job_id);

--ex.7
select emp.first_name || ' ' || emp.last_name Full_Name,
j.job_title
,dep.department_name
,jh.start_date
from employees emp 
join job_history jh on jh.employee_id = emp.employee_id
join departments dep on dep.department_id = dep.department_id
join jobs j on j.job_id = jh.job_id
where jh.start_date >= to_date('01-01-1993', 'DD-MM-YYYY')
and jh.start_date <= to_date('31-08-1997', 'DD-MM-YYYY');

--ex.8 v.1
select dep.department_name,round(avg(emp.salary)) as Salariu_mediu, 
count(emp.employee_id) as Nr_ang
from departments dep 
join employees emp on  dep.department_id = emp.department_id
where emp.commission_pct is not NULL
GROUP by dep.department_name;
 
select * from job_history;
select * from employees;

--ex.9
select emp.first_name || ' ' || emp.last_name Full_Name,
j.job_title
from employees emp
join jobs j on j.job_id = emp.job_id
where emp.department_id in ('80');
 
 --ex.10
select c.country_name, l.city, d.department_name
from countries c
join locations l on l.country_id = c.country_id
join departments d on d.location_id = l.location_id
where l.street_address is not null;

--ex.11
select * from departments;
 select emp.first_name || ' ' || emp.last_name Full_Name,
 d.department_name
 from employees emp
 right join departments d on  d.department_id = emp.department_id
 where d.manager_id = emp.employee_id;
 
 --ex.12
 select j.job_title, round(avg(emp.salary)) as Salariu_mediu
 from employees emp
 join jobs j on j.job_id = emp.job_id
 group by j.job_title;
 
 --ex.13
select j.job_title
from jobs j
join employees emp on j.job_id = emp.job_id
where emp.salary > 12000;

--ex.14

select emp.first_name || ' ' || emp.last_name Full_Name,
d.department_name, l.city
from employees emp
join departments d on d.department_id = emp.department_id
join locations l on d.location_id = l.location_id
where d.manager_id = emp.employee_id;

select * from locations;

--ex.15
select j.job_title,
emp.first_name || ' ' || emp.last_name Full_Name,
round(sysdate - emp.hire_date) as Nr_de_zile_lucrate
from employees emp
join jobs j on j.job_id = emp.job_id
where emp.department_id = 80;

--ex.16

select d.department_name, l.city,
emp.first_name || ' ' || emp.last_name Full_Name,
 emp.salary
from employees emp
join departments d using(department_id)
join locations l using(location_id)
where l.city LIKE 'London';

--ex.17

select d.department_name,
COUNT(employee_id) as Numar_Angajati
from employees
join departments d using (department_id)
group by department_name;

--Inner Join\Join\where
select b.* 
from employees a
join employees b
on a.manager_id = b.employee_id;

--ex.2
select employee_id, last_name, salary
from employees
where salary > (select AVG(salary)
                from employees)
order by salary;

--ex.3
select employee_id, last_name
from employees
where department_id IN (select department_id
                        from employees
                        where last_name like '%u%');
                        
--ex.4
select last_name,department_id, job_id
from employees
where department_id IN (select department_id
                        from departments
                        where location_id = 1700);
                        
--ex.5
select last_name, salary
from employees
where manager_id = (select employee_id
                    from employees
                    where last_name= 'King');
                    
--ex.6
select department_id, last_name, job_id
from employees
where department_id IN (select department_id 
                        from departments
                        where department_name = 'Executive');
                        
--ex.7
select last_name
from employees
where salary > ANY (select salary
                    from employees
                    where department_id=60);
                    
--ex.8
select employee_id, last_name, salary
from employees
where department_id IN (select department_id
                        from employees
                        where last_name like '%u%')
and salary >  (select AVG(salary)
                from employees);
                
--Exerc. UNION
--Ex.1
select course_id
from ad_course_details
MINUS
select course_id
from ad_student_course_details;

select department_id
from departments
MINUS
select department_id
from employees
where job_id='ST_CLERK';



--Ex.2
select country_id, country_name 
from countries
MINUS
select l.country_id, c.country_name
from locations l join countries c
ON (l.country_id=c.country_id)
join departments d
on d.location_id=l.location_id;

--Ex.3
select employee_id, job_id, department_id
from employees
where department_id=50
UNION ALL
select employee_id, job_id, department_id
from employees
where department_id=80;

--Ex.4
select employee_id
from employees
where job_id='SA_REP'
INTERSECT
select employee_id
from employees
where department_id=80;

--Ex.5
select last_name, department_id, to_char(NULL) dept_name
from employees
UNION
select to_char(NULL),department_id,department_name
from departments;

--Ex.1
create table my_employee
(id NUMBER (4) CONSTRAINT my_employee_id_pk PRIMARY Key,
last_name VARCHAR2(25),
first_name VARCHAR2(25),
userid VARCHAR2(8),
salary number(9,2));

--Ex.2
DESCRIBE my_employee;
select * from my_employee;
--Ex.3
Insert into my_employee
Values (1, 'Patel', 'Ralph', 'rpatel', 895),
--Values (2, 'Dancs', 'Betty', 'bdancs', 860),
--Values (3, 'Biri', 'Ben', 'bbiri', 1100),
--Values (4, 'Newman', 'Chad', 'cnewman', 750),
--Values (5, 'Ropeburn', 'Audrey', 'aropebur', 1550);

--Ex.4
Insert into my_employee (id, last_name, first_name, user_id, salary)
Values (2, 'Dancs', 'Betty', 'bdancs', 860);

--Ex.5
select * 
from my_employee;

--Ex.6,7
Insert into my_employee 
Values (&p_id, '&p_last_name', '&p_first_name', '&p_userid', &p_salary);

--Ex.8
select * 
from my_employee;

--Ex.9
COMMIT;

--Ex.10
UPDATE my_employee
SET last_name='Drexler'
where id=3;

--Ex.11
UPDATE my_employee
SET salary=1000
where salary < 900;

--Ex.12
select * 
from my_employee;

--Ex.13
DELETE
from my_employee
where first_name = 'Betty';

--Ex.14
select * 
from my_employee;

--Ex.15
COMMIT;

--Ex.16
Insert into my_employee 
Values (&p_id, '&p_last_name', '&p_first_name', '&p_userid', &p_salary);










