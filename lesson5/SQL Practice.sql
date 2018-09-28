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