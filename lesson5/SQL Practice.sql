DESCRIBE ad_course_details;
SELECT COURSE_ID 
,COURSE_NAME 
,SESSION_ID 
,DEPARTMENT_ID  
FROM ad_course_details;
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
 FROM ad_course_details;
 DESCRIBE ad_student_details;
 SELECT student_id
 ,first_name
 ,parent_id
 ,student_reg_year AS REGISTRATION
 FROM ad_student_details;
 SELECT DISTINCT NAME
 FROM ad_exam_details;
 SELECT student_id "Student #"
 ,first_name AS Student
 ,parent_id "Parent Information"
 ,student_reg_year "Registered On"
 FROM ad_student_details;
 SELECT course_id ||',' || course_name "Course ID and Title"
 FROM ad_course_details;
 SELECT *
 FROM ad_exam_details;
 SELECT exam_id || ','||exam_type||','||start_date||','|| name THE_OUTPUT
 FROM ad_exam_details;
 select student_id
 ,no_of_days_off
 from ad_student_attendance
 where no_of_days_off>15;
 select course_name
 ,department_id
 from ad_course_details
 where course_id=199;
 select student_id, marks
 from ad_exam_results
 where marks not between 65 and 90;
 select sudent_id
 ,first_name
 ,student_reg_year
 from ad_student_details
 where first_name IN ('Robert', 'Nina')
 order by student_reg_year ASC;
 select course_name
 ,department_id
 from ad_course_details
 where (department_id=20
 or department_id=40)
 order by course_name ASC;
 select student_id  "Student #"
 ,marks "Semester Marks"
 from ad_exam_results
 where marks between 65 and 90
 and (course_id=199
 or course_id=189);
 select first_name
 ,student_reg_year
 from ad_student_details
 where student_reg_year >='01-JAN-14'
 and student_reg_year <='01-JAN-2015';
 select first_name
 ,parent_id
 from ad_student_details
 where email_addr is null;
 select first_name
 ,student_reg_year
 ,email_addr
 from ad_student_details
 where email_addr is not null
 order by student_reg_year desc, email_addr desc;
 select student_id
 ,marks
 from ad_exam_results
 where marks > &score;
 select course_id
 ,course_name
 ,session_id
 from ad_course_details
 where department_id = &dept_num
 order by &order_col;
 select first_name
 from ad_student_details
 where first_name like '_O%';
 select first_name
 from ad_student_details
 where first_name like '%A%' 
 and first_name like'%N%';
 select course_id
 ,course_name
 from ad_course_details
 where department_id IN (10,40)
 and session_id NOT IN (200,300);
 select student_id "Student #"
 ,exam_id "Exam Code"
 ,course_id "Course Code"
 ,marks "Score"
 from ad_exam_results
 where marks = 70;
 select *
 from employees
 where employee_id = '&first_var';
 select *
 from employees
 where hire_date = '&date';
 select first_name
 ,last_name
 ,hire_date
 from employees
 where first_name= '&name';
 select first_name
 ,last_name
 ,&hide_date
 from employees
 where hire_date = '&date_var'
 order by &hide_date column;
 select employee_id
 ,last_name
 ,first_name
 ,salary
 ,&&hide_column
 from employees
 order by &hide_column;
 