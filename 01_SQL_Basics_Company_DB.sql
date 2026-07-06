-- SQL Practice 01
-- Company Database Setup



-- Step 1: Create and Select the Database
CREATE DATABASE company;
USE company;


-- Step 2: Create Employee Table
CREATE TABLE employee (
    employee_id VARCHAR(15) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(30),
    address VARCHAR(150),
    gender VARCHAR(10),
    job_id VARCHAR(15),
    salary VARCHAR(15),
    department_id VARCHAR(15)
);


-- Step 3: Create Department Table
CREATE TABLE department (
    department_id VARCHAR(15) PRIMARY KEY,
    department_name VARCHAR(50),
    manager_name VARCHAR(50)
);


-- Step 4: Create Jobs Table
CREATE TABLE jobs (
    job_id VARCHAR(15) PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary VARCHAR(10),
    max_salary VARCHAR(10)
);


-- Step 5: Create Job History Table
CREATE TABLE job_history (
    employee_id VARCHAR(15) PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(15),
    department_id VARCHAR(15)
);


-- Step 6: Insert Sample Data into Employee Table
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



-- Step 7: Insert Sample Data into Jobs Table
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


-- Step 8: Insert Sample Data into Department Table
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


-- Step 9: Insert Sample Data into Job History Table
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


-- Step 10: Verify the Data
SELECT * FROM employee;
SELECT * FROM jobs;
SELECT * FROM department;
SELECT * FROM job_history;