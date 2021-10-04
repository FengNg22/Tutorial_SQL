## There has 2 tables as below
## Tbl_Employee - employee_id, first_name, last_name, gender, position, department_id, salary
## Tbl_Department - department_id, department_name
## Write the quesry based on the requirment.

# Return employee record with highest salary
SELECT *
FROM Tbl_Employee
WHERE salary=(SELECT MAX(salary) FROM table1);

# Return the highest salary in employee table
SELECT MAX(salary)
FROM Tbl_Employee;

# Return the 2nd highest  salary from employee table
SELECT MAX(salary)
FROM Tbl_Employee
WHERE salary NOT IN (SELECT MAX(salary) FROM Tbl_Employee);

# SELECT range of employees based on id
SELECT  *
FROM Tbl_Employee 
WHERE employee_id BETWEEN 2003 AND 2009;

# Return an employee with the highest salary and the employee's department name
SELECT employee_id, first_name, last_name, salary, D.department_name
FROM Tbl_Employee AS E
JOIN Tbl_Department AS D
	ON E.department_id = D.department_id
WHERE salary IN (SELECT MAX(salary) FROM Tbl_Employee);

# Return highest salary, employee_name, department for each department
SELECT D.department_name, employee_id, first_name, last_name, salary
FROM Tbl_Employee AS E
JOIN Tbl_Department AS D
	ON E.department_id = D.department_id
WHERE salary IN (SELECT MAX(salary) FROM Tbl_Employee GROUP BY department_id);
