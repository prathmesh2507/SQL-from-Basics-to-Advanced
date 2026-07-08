use company;
select * from employee;
select distinct(department_id), sum(salary) from employee group by department_id;
select department_id, count(employee_id) from employee group by department_id;
select first_name from employee where first_name like "j%" and last_name like "%e";
select department_id, count(employee_id) from employee group by department_id order by department_id desc;
select department_id, avg(salary) from employee group by department_id order by avg(salary) desc;
select department_id, min(salary),max(salary),avg(salary) from employee group by department_id having avg(salary)>50000;
select department_id, max(salary) from employee group by department_id order by department_id;