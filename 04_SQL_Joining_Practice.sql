use company;

select first_name, last_name, salary, department_name from employee e 
join department d on e.department_id=d.department_id;

select first_name,last_name,job_title from employee e 
join jobs j on e.job_id=j.job_id;

select first_name, last_name, department_name, manager_name from employee e 
join department d on e.department_id=d.department_id;


select first_name,last_name,job_title,min_salary,max_salary from employee e 
join jobs j on e.job_id=j.job_id;


select first_name, last_name, start_date,department_name from employee e 
join department d on e.department_id=d.department_id
join job_history jh on e.employee_id = jh.employee_id;


select first_name , last_name ,department_name from employee e
right join department d on e.department_id=d.department_id;


select first_name,last_name,job_title from employee e 
right join jobs j on e.job_id=j.job_id;


select department_name , count(employee_id)  from employee e
right join department d on e.department_id=d.department_id
group by department_name;

select job_title ,min_salary,max_salary,first_name,last_name from employee e
right join  jobs j on e.job_id=j.job_id;


select department_name , manager_name , first_name , last_name from department d
left join employee e on d.department_id = e.department_id;


select first_name, last_name, department_name from employee e 
join department d on e.department_id=d.department_id
where salary>70000;

select first_name,last_name,job_title from employee e 
join jobs j on e.job_id=j.job_id
where gender = "f";

select first_name , last_name from employee e
right join department d on e.department_id=d.department_id
where department_name = "IT";

select first_name,last_name from employee e 
join jobs j on e.job_id=j.job_id
where job_title like "%manager%";

select first_name, last_name from employee e
join job_history jh on e.employee_id = jh.employee_id
where start_date>2020-01-01;