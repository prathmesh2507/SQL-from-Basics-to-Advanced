use company;

-- Question : Retrieve the full details of employees along with their department names.
SELECT e.*, d.department_name FROM employee e
JOIN department d ON e.department_id = d.department_id;

-- Question : Find all employees along with the name of their managers.
SELECT e.first_name, e.last_name ,d.manager_name FROM employee e
JOIN department d ON e.department_id = d.department_id;

-- Question : List all employees along with their job titles and department names.
SELECT e.first_name, j.job_title, d.department_name FROM employee e
JOIN jobs j ON e.job_id = j.job_id
JOIN department d ON e.department_id = d.department_id;

-- Question : Retrieve the list of departments that do not have any employees.
SELECT d.department_name FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- Question : Find the highest salary in each department.
SELECT d.department_name, MAX(e.salary) AS Highest_Salary FROM employee e
JOIN department d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Question : Retrieve the total salary paid for each job title.
SELECT j.job_title, SUM(e.salary) FROM employee e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title;

-- Question : List the departments and average salary, sorted in descending order.
SELECT d.department_name, AVG(e.salary) FROM employee e
JOIN department d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY AVG(e.salary) DESC;

-- Question : Find employees who have been with the company for more than 5 years along with their department names.
SELECT e.first_name, d.department_name, jh.start_date FROM employee e
JOIN department d ON e.department_id = d.department_id
JOIN job_history jh ON jh.employee_id = e.employee_id
WHERE TIMESTAMPDIFF(YEAR, jh.start_date, CURDATE()) > 5;