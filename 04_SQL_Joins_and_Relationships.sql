USE company;


-- INNER JOIN

-- Question : Display the first name, last name,department name, and salary of all employees.
SELECT
    first_name,
    last_name,
    department_name,
    salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id;


-- Question : Display the employee name along with their current job title.
SELECT
    first_name,
    last_name,
    job_title
FROM employee e
INNER JOIN jobs j
ON e.job_id = j.job_id;


-- Question : Display the employee name,department name, and manager name.
SELECT
    first_name,
    last_name,
    department_name,
    manager_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id;


-- Question : Display the employee name,job title, minimum salary, and maximum salary.
SELECT
    first_name,
    last_name,
    job_title,
    min_salary,
    max_salary
FROM employee e
INNER JOIN jobs j
ON e.job_id = j.job_id;


-- Question : Display employee names,joining date, and department name.
SELECT
    first_name,
    last_name,
    start_date,
    department_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
INNER JOIN job_history jh
ON e.employee_id = jh.employee_id;


-- LEFT / RIGHT JOIN

-- Question 6: Display all departments along with the employees working in them.
SELECT
    first_name,
    last_name,
    department_name
FROM employee e
RIGHT JOIN department d
ON e.department_id = d.department_id;


-- Question 7: Display all jobs along with employees assigned to those jobs.
SELECT
    first_name,
    last_name,
    job_title
FROM employee e
RIGHT JOIN jobs j
ON e.job_id = j.job_id;


-- Question 8: Display all departments and the total employees working in each department.
SELECT
    department_name,
    COUNT(employee_id) AS total_employees
FROM employee e
RIGHT JOIN department d
ON e.department_id = d.department_id
GROUP BY department_name;


-- Question 9: Display every job along with its salary range and employee names.
SELECT
    job_title,
    min_salary,
    max_salary,
    first_name,
    last_name
FROM employee e
RIGHT JOIN jobs j
ON e.job_id = j.job_id;


-- Question 10: Display all departments with their managers and employee names.

SELECT
    department_name,
    manager_name,
    first_name,
    last_name
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id;


-- JOIN + WHERE CLAUSE

-- Question 11: Display employee names and department names for employees whose salary is greater than 70,000.
SELECT
    first_name,
    last_name,
    department_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
WHERE salary > 70000;


-- Question 12: Display employee names and job titles of female employees.
SELECT
    first_name,
    last_name,
    job_title
FROM employee e
INNER JOIN jobs j
ON e.job_id = j.job_id
WHERE gender = 'F';


-- Question 13: Display employees from the IT department.
SELECT
    first_name,
    last_name
FROM employee e
RIGHT JOIN department d
ON e.department_id = d.department_id
WHERE department_name = 'IT';


-- Question 14: Display employees whose job title contains the word "Manager".
SELECT
    first_name,
    last_name
FROM employee e
INNER JOIN jobs j
ON e.job_id = j.job_id
WHERE job_title LIKE '%Manager%';


-- Question 15: Display employees whose joining date is after 1 January 2020.
SELECT
    first_name,
    last_name
FROM employee e
INNER JOIN job_history jh
ON e.employee_id = jh.employee_id
WHERE start_date > '2020-01-01';