USE company;


-- Question : Display all employee records.
SELECT *
FROM employee;


-- Question : Find the total salary paid to each department.
SELECT
    department_id,
    SUM(salary) AS total_salary
FROM employee
GROUP BY department_id;


-- Question : Find the number of employees in each department.
SELECT
    department_id,
    COUNT(employee_id) AS total_employees
FROM employee
GROUP BY department_id;


-- Question : Retrieve employees whose first name starts
-- with 'J' and last name ends with 'e'.
SELECT
    first_name,
    last_name
FROM employee
WHERE first_name LIKE 'J%'
AND last_name LIKE '%e';


-- Question : Find the total number of employees in each
-- department and sort the results by department ID.
SELECT
    department_id,
    COUNT(employee_id) AS total_employees
FROM employee
GROUP BY department_id
ORDER BY department_id DESC;


-- Question : Find the average salary for each department
-- and sort by average salary in descending order.
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employee
GROUP BY department_id
ORDER BY average_salary DESC;


-- Question : Find the minimum, maximum, and average salary
-- in each department having an average salary greater than 50,000.
SELECT
    department_id,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary,
    AVG(salary) AS average_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 50000;


-- Question : Find the maximum salary in each department
-- and sort the results by department ID.
SELECT
    department_id,
    MAX(salary) AS maximum_salary
FROM employee
GROUP BY department_id
ORDER BY department_id;