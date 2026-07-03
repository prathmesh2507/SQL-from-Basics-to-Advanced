create database company;
use company;

-- employee table
create table employee (
employee_id varchar(15) primary key,
first_name varchar(50),
last_name varchar(30),
address varchar(150),
gender varchar(10),
job_id varchar(15),
salary varchar(15),
department_id varchar(15));


-- department table
create table department(
department_id varchar(15) primary key,
department_name varchar(50),
manager_name varchar(50));


-- jobs table
create table jobs(
job_id varchar(15) primary key,
job_title varchar(50),
min_salary varchar(10),
max_salary varchar(10));


-- job history table
create table job_history(
employee_id varchar(15) primary key,
start_date date,
end_date date,
job_id varchar(15),
department_id varchar(15));


-- inserting data in employee table
INSERT INTO employee (employee_id, first_name, last_name, gender, address, job_id, salary, department_id) VALUES 
('EMP000001', 'John', 'Doe', 'M', '123 Elm St, Springfield', 'JOB001', 60000.00, 'DEP001'), 
('EMP000002', 'Jane', 'Smith', 'F', '456 Oak St, Springfield', 'JOB002', 85000.00, 'DEP002'),
('EMP000003', 'Alice', 'Johnson', 'F', '789 Pine St, Springfield', 'JOB003', 75000.00, 'DEP001'),
('EMP000004', 'Bob', 'Brown', 'M', '159 Maple St, Springfield', 'JOB004', 50000.00, 'DEP003'),
('EMP000005', 'Eve', 'Davis', 'F', '951 Cedar St, Springfield', 'JOB005', 90000.00, 'DEP002'),
('EMP000006', 'Charlie', 'Miller', 'M', '357 Birch St, Springfield', 'JOB006', 120000.00, 'DEP002'),
('EMP000007', 'David', 'Wilson', 'M', '753 Spruce St, Springfield', 'JOB007', 45000.00, 'DEP001'),
('EMP000008', 'Grace', 'Lee', 'F', '852 Aspen St, Springfield', 'JOB008', 65000.00, 'DEP003'),
('EMP000009', 'Hannah', 'Martin', 'F', '468 Redwood St, Springfield', 'JOB009', 70000.00, 'DEP001'), 
('EMP000010', 'Jack', 'White', 'M', '123 Willow St, Springfield', 'JOB010', 80000.00, 'DEP002');



-- inserting data in jobs table
INSERT INTO jobs (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES 
('JOB001', 'Manager', 50000.00, 80000.00), 
('JOB002', 'Senior Developer', 70000.00, 120000.00), 
('JOB003', 'Analyst', 50000.00, 75000.00), 
('JOB004', 'Junior Developer', 40000.00, 60000.00), 
('JOB005', 'Data Scientist', 80000.00, 140000.00), 
('JOB006', 'CTO', 100000.00, 200000.00), 
('JOB007', 'HR Specialist', 45000.00, 70000.00), 
('JOB008', 'Marketing Manager', 60000.00, 100000.00), 
('JOB009', 'Sales Executive', 55000.00, 90000.00), 
('JOB010', 'IT Support', 35000.00, 50000.00); 


-- insert data into departments table
INSERT INTO department (department_id, DEPARTMENT_NAME, MANAGER_NAME) VALUES 
('DEP001', 'Sales', 'Alice Johnson'), 
('DEP002', 'IT', 'Eve Davis'), 
('DEP003', 'HR', 'Bob Brown'), 
('DEP004', 'Finance', 'John Doe'), 
('DEP005', 'Marketing', 'Jane Smith'), 
('DEP006', 'Operations', 'David Wilson'), 
('DEP007', 'R&D', 'Charlie Miller'), 
('DEP008', 'Customer Service', 'Grace Lee'), 
('DEP009', 'Legal', 'Hannah Martin'), 
('DEP010', 'Procurement', 'Jack White'); 


-- insert data into job history table
INSERT INTO job_history (employee_id, START_DATE, end_DATE, JOB_ID, DEPARTMENT_ID) VALUES 
('EMP000001', '2015-06-01', '2020-12-31', 'JOB001', 'DEP001'), 
('EMP000002', '2017-03-15', '2022-11-30', 'JOB002', 'DEP002'), 
('EMP000003', '2019-08-22', NULL, 'JOB003', 'DEP001'), 
('EMP000004', '2014-11-05', '2021-04-30', 'JOB004', 'DEP003'), 
('EMP000005', '2016-09-18', '2019-06-15', 'JOB005', 'DEP002'), 
('EMP000006', '2013-07-12', NULL, 'JOB006', 'DEP002'), 
('EMP000007', '2020-01-20', '2023-01-15', 'JOB007', 'DEP001'), 
('EMP000008', '2018-04-09', NULL, 'JOB008', 'DEP003'), 
('EMP000009', '2021-05-30', NULL, 'JOB009', 'DEP001'), 
('EMP000010', '2012-12-25', '2018-10-10', 'JOB010', 'DEP002'); 




select * from employee;
select * from jobs;
select * from department;
select * from job_history;