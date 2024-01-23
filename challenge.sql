-- --List the employee number, last name, first name, sex, and salary of each employee.
--SELECT * FROM "DeptEmployees";

-- --List the first name, last name, and hire date for the employees who were hired in 1986.
--SELECT "FirstName", "LastName", "HireDate" FROM "Employees" WHERE "HireDate" BETWEEN '1985-12-31' AND '1987-01-01';

-- --List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Employees.EmployeeNo", "Employees.LastName", "Employees.FirstName", "DeptEmployees.DepartmentNo"--, "DeptEmployees.DepartmentName"
FROM "Employees"
LEFT JOIN "DeptEmployees" ON "Employees.EmployeeNo" = "DeptEmployees.EmployeeNo";



--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.



--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.



--List each employee in the Sales department, including their employee number, last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



