-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tVWFl9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- CREATE TABLE "Departments" (
--     "DepartmentNo" VARCHAR   NOT NULL,
--     "DepartmentName" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_Departments" PRIMARY KEY (
--         "DepartmentNo"
--      )
-- );

-- CREATE TABLE "DeptEmployees" (
--     "EmployeeNo" INTEGER   NOT NULL,
--     "DepartmentNo" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_DeptEmployees" PRIMARY KEY (
--         "EmployeeNo","DepartmentNo"
--      )
-- );

-- CREATE TABLE "DeptManagers" (
--     "DepartmentNo" VARCHAR   NOT NULL,
--     "EmployeeNo" INTEGER   NOT NULL,
--     CONSTRAINT "pk_DeptManagers" PRIMARY KEY (
--         "DepartmentNo","EmployeeNo"
--      )
-- );

-- CREATE TABLE "Employees" (
--     "EmployeeNo" INTEGER   NOT NULL,
--     "EmployeeTitleId" VARCHAR   NOT NULL,
--     "BirthDate" DATE   NOT NULL,
--     "FirstName" VARCHAR   NOT NULL,
--     "LastName" VARCHAR   NOT NULL,
--     "Sex" VARCHAR   NOT NULL,
--     "HireDate" DATE   NOT NULL,
--     CONSTRAINT "pk_Employees" PRIMARY KEY (
--         "EmployeeNo"
--      )
-- );

-- CREATE TABLE "Salaries" (
--     "EmployeeNo" INTEGER   NOT NULL,
--     "Salary" INTEGER   NOT NULL,
--     CONSTRAINT "pk_Salaries" PRIMARY KEY (
--         "EmployeeNo"
--      )
-- );

-- CREATE TABLE "Titles" (
--     "EmployeeTitleId" VARCHAR   NOT NULL,
--     "Title" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_Titles" PRIMARY KEY (
--         "EmployeeTitleId"
--      )
-- );

-- ALTER TABLE "DeptEmployees" ADD CONSTRAINT "fk_DeptEmployees_EmployeeNo" FOREIGN KEY("EmployeeNo")
-- REFERENCES "Employees" ("EmployeeNo");

-- ALTER TABLE "DeptEmployees" ADD CONSTRAINT "fk_DeptEmployees_DepartmentNo" FOREIGN KEY("DepartmentNo")
-- REFERENCES "Departments" ("DepartmentNo");

-- ALTER TABLE "DeptManagers" ADD CONSTRAINT "fk_DeptManagers_DepartmentNo" FOREIGN KEY("DepartmentNo")
-- REFERENCES "Departments" ("DepartmentNo");

-- ALTER TABLE "DeptManagers" ADD CONSTRAINT "fk_DeptManagers_EmployeeNo" FOREIGN KEY("EmployeeNo")
-- REFERENCES "Employees" ("EmployeeNo");

-- ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_EmployeeTitleId" FOREIGN KEY("EmployeeTitleId")
-- REFERENCES "Titles" ("EmployeeTitleId");

-- ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmployeeNo" FOREIGN KEY("EmployeeNo")
-- REFERENCES "Employees" ("EmployeeNo");

