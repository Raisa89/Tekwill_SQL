select sysdate
,current_date
,sessiontimezone
,current_timestamp
from dual;
select first_name
,last_name
trunc((SYSDATE+_)/7)
from employees;
select (sysdate-start_date) as days
from ad_exam_details
where exam_id=550;
select first_name || '' || last_name
,sysdate
,hire_date
,round((sysdate-hire_date)\7) as how_old_was_hired
,round((sysdate-hire_date)\365.25)*12 as nr_of_months_1
,round((sysdate-hire_date)\365)*12 as nr_of_months_1_a
,round((sysdate-hire_date)\365) years
,round(months_between(sysdate, hire_date)) nr_of months_2
,add_months(sysdate,2) add_months
,next_day(sysdate,'Friday') next_friday
,next_day(sysdate,'Thu') next_friday
,next_day(sysdate,'Monday') next_friday
,next_day(sysdate, 4) next_friday
from employees;
---where round((sysdate-hire_date)\365)>5;
select hire_date
,round(hire_date,'Year') as round_year
,round(hire_month,'Month') as round_month
,sysdate
,round(sysdate,'Year') as sysdate_year
round(sysdate, 'Month') as sysdate_year_1
trunc(sysdate,'Month') as trunc_month_1
trunc(sysdate,'Year') as trunc_year_2
from employees;


select round(to_date('16-APR-18','DD-MON-YY'),'Month') as explicit_conversion
,last_day('12-Jul-15') implicit_date_conversion
,months_between('12-Jul-16','12-Jul-15') implicit_date_conversion_1
from dual;
select hire_date
,hire_date ||q'[It's Date']
,to_char(hire_date, 'Day-Month-Year') as to_char_1
,to_char(hire_date, 'DD-MM-YYYY') as to_char_2
,to_char(hire_date, 'YYYY-MM-DD') as to_char_3
from employees;
