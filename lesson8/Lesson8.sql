select *
from employees
where hire_date = '07-02-15'; to_date('07-02-15', 'DD-MM-YY');
select hire_date
,to_char(hire_date, 'DD-MM-YYYY') as to_char
,to_char(hire_date, 'Dad-Month-YYYY') as to_char_1
,to_char(hire_date, 'Day.Month.YYYY') as to_char_2
,to_char(hire_date, 'DD\MM\YYYY') as to_char_3
,to_char(hire_date, 'DD\MM\YYYY HH24:MI:SS AM') as to_char_4
,to_char(hire_date, 'DD "of" Month') as month_of
,to_char(hire_date, 'DDspth "of" Month, YYYY') as month_of_1
from employees;
select to_char(hire_date, 'DDspth "abc" Month, YYYY') as month_of
,to_char(hire_date, 'Day.Month.YYYY') as to_char_fm
,to_char(hire_date, 'fmDay.Month.YYYY') as to_char_2
,to_char(employee_id, '9999.999') as format_number_model
,to_char(employee_id, '$9999.999') as USD
,to_char(employee_id, 'L9999.999') as USD
,to_char(salary, '99,999.999') as USD
from employees;
select to_number(phone_number, '999,999,9999')
from employees
where employee_id between 100 and 144;
select * 
from employees
where hire_date = to_date('17-06-2011','DD.MM.YYYY');
select round(months_between(sysdate, to_date('17-06-2011','DD-MM-YYYY'))), sysdate) as string_with_date
,sysdate
,to_date('17-06-2011','DD-MM-YYYY')
from employees;
select salary
,commission_pct
,nvl(commission_pct,0) as substitution_commission
,salary * commission_pct as full_salary
,salary * nvl(commission_pct,1) as full_salary
from employees;
select *
from employees
where nvl(commission_pct,0)<=0.2;
select commission_pct
,nvl2(commission_pct,1,0)
,nullif(10,5) return_null
,nullif(10,10) return return_first_param
,commission_pct
,manager_id
,department_id
,employee_id
coalesce(commission_pct, manager_id, department_id, employee_id) as return_first_notnullVal
from employees
where nvl2(commission_pct,1,0) = 0;
select commission_pct
,manager_id
,department_id
,employee_id
coalesce(commission_pct, manager_id, department_id, employee_id) as return_first_notnullVal
from employees;
select first_name || ' ' || last_name as fullname
,job_id
,salary
,CASE job_id when 'ST_CLERK' THEN salary *0.5
             when 'AC_ACCOUNT' THEN salary * 0.75
             when 'ST_MAN' THEN salary *0.4
else salary END as case_only_with_one_column_condition
,CASE WHEN job_id = 'IT_PROG' AND salary >6000 THEN department_id
      WHEN job_id = 'SA_REP' and salary<8000 THEN department_id
      else manager_id
      END as case_with_more_condition
from employees;
select sysdate "Date"
from dual;
select student_id
,course_id
,marks
ROUND(marks*1.155, 0) "New Score"
from ad_exam_results;
select INITCAP (first_name) "Name"
       LENGTH (first_name) "Length"
from ad_student_details
where first_name LIKE 'J%'
OR    first_name LIKE 'R%'
OR    first_name LIKE 'M%'
order by first_name;
select INITCAP (first_name) "Name"
       LENGTH (first_name) "Length"
from ad_student_details
where first_name LIKE UPPER ('&start_letter%')
order by first_name;
select first_name 
,ROUND (Months_Between(sysdate, student_reg_year)) MONTHS_COMPLETED
from ad_student_details
order by MONTHS_COMPLETED;
select exam_name
,LPAD(exam_type,15,'*') Exam_Code
from ad_exam_type;
select student_id
,RPAD(' ', marks\10, '*') STUDENT_AND_THEIR_MARKS
from ad_exam_results
order by marks DESC;
select first_name
,TRUNC((sysdate-student_reg_year)\7) as WEEKS_COMPLETED
from ad_student_details
where email_addr is null
order by WEEKS_COMPLETED DESC;
select faculty_name || 'earns' || to_char (salary, 'fm$99,999.00') 
|| 'monthly but wants'|| to_char (salary*3, 'fm$99,999.00')|| '.' "DREAM SALARY"
from ad_faculty_details;
select first_name
,student_reg_year
to_char(next_day(add_months(student_reg_year,6),'Monday')
,'fmDay, "the" Ddspth "of" Month, YYYY') as REVIEW
from ad_student_details;
select first_name
,NVL (to_char(email_addr), 'No Email Address') Contact_Info
from ad_student_details;
select student_id
,marks
,to_char(marks,'$99') Prize_Amount
from ad_exam_results
where marks >=90;
select exam_type, case exam_type 
       WHEN 'MCE' THEN 'OBJECTIVE'
       WHEN 'TF' THEN 'OBJECTIVE'
       WHEN 'FIB' THEN 'OBJECTIVE'
       WHEN 'ESS' THEN 'SUBJECTIVE'
       WHEN 'SA' THEN 'SUBJECTIVE'
       WHEN 'PS' THEN 'ANALYTICAL'
       WHEN 'LAB' THEN 'PRACTICAL'
       ELSE 'NOT PERMITTED' END "NATURE OF EXAM"
from ad_exam_type;
select student_id, marks CASE
      WHEN marks <60 THEN 'FAIL'
      WHEN marks between 60 and 70 THEN 'Satisfactory'
      WHEN marks between 70 and 80 THEN 'Good'
      WHEN marks between 80 and 90 THEN 'Very Good'
      WHEN marks between 90 and 100 THEN 'Excellent'
      ELSE 'ERROR' END "Grade Remark"
from ad_exam_results;
select exam_type, DECODE(exam_type,
                  'MCE', 'OBJECTIVE',
                  'TF', 'OBJECTIVE',
                  'FIB', 'OBJECTIVE',
                  'ESS', 'SUBJECTIVE',
                  'SA', 'SUBJECTIVE',
                  'PS', 'ANALYTICAL',
                  'LAB', 'PRACTICAL',
                  'NOT PERMITTED') "NATURE OF EXAM"
FROM ad_exam_type;
select  MAX(marks) "Highest"
        MIN(marks) "Lowest"
        AVG(marks) "Average"
from ad_exam_results;
select exam_id,MAX(marks) "Highest",
        MIN(marks) "Lowest",
        AVG(marks) "Average" 
from ad_exam_results
GROUP by exam_id
ORDER by exam_id;
select course_id, count(*)
from ad_student_course_details
GROUP by course_id
ORDER by course_id;
select exam_id, course_id, AVG(marks)
from ad_exam_results
GROUP by exam_id, course_id
HAVING AVG(marks) >85;
select MAX(salary) - MIN(salary) DIFFERENCE
FROM ad_faculty_details;
select MAX(AVG(marks))
from ad_exam_results
GROUP by course_id;
select course_id, MIN(marks)
from ad_exam_results
where course_id in (190,191,192)
GROUP BY course_id
HAVING MIN(marks)> 75
ORDER by MIN(marks);
        
       

