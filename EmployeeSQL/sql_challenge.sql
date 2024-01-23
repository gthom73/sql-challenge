-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tVWFl9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- CREATE TABLE "departments" (
--     "dept_no" VARCHAR   NOT NULL,
--     "dept_name" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_departments" PRIMARY KEY (
--         "dept_no"
--      )
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_no" INTEGER   NOT NULL,
--     "dept_no" VARCHAR   NOT NULL
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_no" VARCHAR   NOT NULL,
--     "emp_no" INTEGER   NOT NULL
-- );

-- CREATE TABLE "employees" (
--     "emp_no" INTEGER   NOT NULL,
--     "emp_title_id" VARCHAR   NOT NULL,
--     "birth_date" DATE   NOT NULL,
--     "first_name" VARCHAR   NOT NULL,
--     "last_name" VARCHAR   NOT NULL,
--     "sex" VARCHAR   NOT NULL,
--     "hire_date" DATE   NOT NULL,
--     CONSTRAINT "pk_employees" PRIMARY KEY (
--         "emp_no"
--      )
-- );

-- CREATE TABLE "salaries" (
--     "emp_no" INTEGER   NOT NULL,
--     "salary" INTEGER   NOT NULL,
--     CONSTRAINT "pk_salaries" PRIMARY KEY (
--         "emp_no"
--      )
-- );

-- CREATE TABLE "titles" (
--     "title_id" VARCHAR   NOT NULL,
--     "title" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_titles" PRIMARY KEY (
--         "title_id"
--      )
-- );

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
-- REFERENCES "titles" ("title_id");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- SELECT * FROM departments

-- SELECT * FROM titles

-- SELECT * FROM dept_emp

-- SELECT * FROM dept_manager

-- SELECT * FROM employees

-- SELECT * FROM salaries


-- List the employee number, last name, first name, sex, and salary of each employee.
-- CREATE VIEW employee_listing_withSalaries AS
-- SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
-- FROM employees LEFT JOIN salaries
-- ON employees.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
-- CREATE VIEW employee_listing_with1986HireDates AS
-- SELECT employees.first_name, employees.last_name, employees.hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '12/31/1985' AND '01/01/1987';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- CREATE VIEW employee_listing_byManager AS
-- SELECT dept_manager.dept_no, dept_manager.emp_no, employees.last_name, employees.first_name
-- FROM dept_manager LEFT JOIN employees
-- ON dept_manager.emp_no = employees.emp_no;


-- CREATE VIEW department_manager_listing AS
-- SELECT departments.dept_name, employee_listing_byManager.dept_no, employee_listing_byManager.emp_no, employee_listing_byManager.last_name,
-- 	employee_listing_byManager.first_name
-- FROM departments RIGHT JOIN employee_listing_byManager
-- ON departments.dept_no = employee_listing_byManager.dept_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- CREATE VIEW employee_listing_byDeptartmentName AS
-- SELECT employee_listing_bydepartment.dept_no, employee_listing_bydepartment.emp_no, employees.last_name, employees.first_name,
-- 	employee_listing_bydepartment.dept_name
-- FROM employee_listing_bydepartment INNER JOIN employees
-- ON employee_listing_bydepartment.emp_no = employees.emp_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- CREATE VIEW hercules AS
-- SELECT employees.first_name, employees.last_name, employees.sex
-- FROM employees
-- WHERE first_name = 'Hercules'
-- AND LEFT(employees.last_name, 1) = 'B'
-- OR LEFT(employees.last_name, 1) = 'b';


-- List each employee in the Sales department, including their employee number, last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


