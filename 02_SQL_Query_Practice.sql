USE company;


-- Question : Retrieve all employees with a salary greater than 70,000.
SELECT *
FROM employee
WHERE salary > 70000;


-- Question : Retrieve the names and salaries of all employees,
-- sorted by salary in descending order.
SELECT first_name, salary
FROM employee
ORDER BY salary DESC;


-- Question : Calculate the average salary of all employees.
SELECT AVG(salary)
FROM employee;


-- Question : Count the number of employees in each department.
SELECT COUNT(employee_id), department_id
FROM employee
GROUP BY department_id;


-- Question : Find all employees whose first name starts with 'J'.
SELECT *
FROM employee
WHERE first_name LIKE 'J%';


-- Question : Retrieve all employees ordered by their hire date.
-- (Using the available job_history table in this practice database.)
SELECT *
FROM job_history
ORDER BY start_date;


-- Question : Retrieve departments that have more than 2 employees.
SELECT COUNT(employee_id), department_id
FROM employee
GROUP BY department_id
HAVING COUNT(employee_id) > 2;