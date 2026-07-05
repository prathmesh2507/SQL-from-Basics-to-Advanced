use company;

select * from employee where salary>70000;

select first_name , salary from employee order by salary desc;

select avg(salary) from employee;

select count(employee_id) ,department_id from employee group by department_id;

select * from employee where first_name like "j%";

select * from job_history order by start_date;

select count(employee_id) ,department_id from employee group by department_id having count(employee_id)>2;