/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

-- Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

-- TRIM remove blank spaces from left, right of rows of mentioned columns

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

-- RTRIM removes blanks from right side

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

-- LTRIM removes blanks from left side

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors

-- Using Substring
-- It returns value/names after slicing, substrining like in case we misspelled it and name/value gone long, so 1,3 means show result from letter 1 to letter 3.

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)


-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors

