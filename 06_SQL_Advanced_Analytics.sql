USE company;

-- Question : Find the number of employees working under each manager.
SELECT d.manager_name, COUNT(e.employee_id) AS total_employees
FROM employee e
JOIN department d
ON e.department_id = d.department_id
GROUP BY d.manager_name;


-- Question : Display the job titles whose minimum salary is between 50,000 and 120,000.
SELECT job_title, min_salary FROM jobs
WHERE min_salary BETWEEN 50000 AND 120000;


-- Question : Count how many employees were hired each year.
SELECT YEAR(start_date), COUNT(employee_id) FROM job_history
GROUP BY YEAR(start_date)
ORDER BY YEAR(start_date);


-- Question : Display employee names,joining dates, and years of service for employees who have worked more than 3 years.
SELECT e.first_name, e.last_name, jh.start_date, TIMESTAMPDIFF(YEAR, jh.start_date, CURDATE()) as years_of_service
 FROM employee e
JOIN job_history jh ON e.employee_id = jh.employee_id
WHERE TIMESTAMPDIFF(YEAR, jh.start_date, CURDATE()) > 3;


-- Question : Display employee names, department names, and salaries,sorted by salary in descending order.
SELECT e.first_name, e.last_name, d.department_name, e.salary FROM employee e
JOIN department d ON e.department_id = d.department_id
ORDER BY e.salary DESC;