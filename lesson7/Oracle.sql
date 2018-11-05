select student_id "Student #"
 ,exam_id "Exam Code"
 ,course_id "Course Code"
 ,marks "Score"
 from ad_exam_results
 where marks = 70;
 select course_id
 ,course_name
 from ad_course_details
 where department_id IN (10,40)
 and session_id NOT IN (200,300);	
 select first_name
 from ad_student_details
 where first_name like '%A%' 
 and first_name like'%N%';	
 select first_name
 from ad_student_details
 where first_name like '_O%';	
 select student_id
 ,marks
 from ad_exam_results
 where marks > &score;	
 select first_name
 ,student_reg_year
 ,email_addr
 from ad_student_details
 where email_addr is not null
 order by student_reg_year desc, email_addr desc;	
 select first_name
 ,parent_id
 from ad_student_details
 where email_addr is null;	
select first_name
 ,student_reg_year
 from ad_student_details
 where student_reg_year >='01-JAN-14'
 and student_reg_year <='01-JAN-2015';	
 select student_id  "Student #"
 ,marks "Semester Marks"
 from ad_exam_results
 where marks between 65 and 90
 and (course_id=199
 or course_id=189);	
 select course_name
 ,department_id
 from ad_course_details
 where (department_id=20
 or department_id=40)
 order by course_name ASC;	
 select sysdate
 from dual;

 
 
 
 