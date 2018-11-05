select sum(salary) as total_salary
,min(salary) as min_salary
,max(salary) as max_salary
,avg(salary) as avg_salary
,count(employee_id) as count_employee_id
,count(nvl(commission_pct,0)) as count_employee_id
,count(*) count_all
from employees;

select count(distinct job_id) as job_id_1
,count(job_id) as job_id_2
,sum (salary) as salary_1
,sum(distinct salary) as salary_2
,min(hire_date) as min_hire_date
,max(hire_date) as max_hire_date
from employees
where job_id= 'SA_REP';
select department_id
,avg(salary)
from employees
group by department_id;
select nvl( department_id,10) as department_id
,round(avg(salary),2)
from employees
group by nvl(department_id,10);
select avg(salary)
from employees
group by department_id;
select department_id
,job_id
,manager_id
,avg(salary) as avg_salary
,min(hire_date) as min_hire_date
,max(salary) as max_salary
from employees
where department_id between 50 and 100
group by department_id, job_id,manager_id
order by 1;
select department_id
,job_id
,manager_id
,avg(salary) as avg_salary
,min(hire_date) as min_hire_date
,max(salary) as max_salary
from employees
where department_id between 50 and 100
having max(salary)>=10000
group by department_id
, job_id
,manager_id
order by 1; 