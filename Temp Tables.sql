/*
Temporary table but can be used multiple times as compared to CTE or subquery.
CREATE TABLE #temp_employee
OR
CREATE TEMPORARY TABLE
*/

CREATE temporary TABLE temp_employee 
(EmployeeID int,Jobtitle varchar(100),Salary int)

INSERT INTO
temp_employee VALUES (1, 'HR', 45000)

SELECT * 
FROM temp_employee

-- we can also add values from other table if columns are of same information

/*

 INSERT INTO
temp_employee 
SELECT *
FROM (TABLE NAME)

*/

CREATE TEMPORARY TABLE employee2 (
firstname varchar(50),
lastname varchar(50),
jobtitle varchar(50)
)

INSERT INTO employee2
SELECT firstName, lastName, Jobtitle,
FROM employees
ORDER BY jobTitle

/*
sometimes it occurs that when we create table again it already exist somewhere but we dont know the location so for creating another temp table of same name when required
Use this trick/tip

DROP TEMPORARY TABLE employee2

and then create new temp table 
*/


