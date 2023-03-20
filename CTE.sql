/*
CTE: Common table expression, its basically a temporary storage from where we can get our query. so we neewd to create CTE everytime as not stored anywhere.
and it should also be written right after CTE creation 
*/

WITH CTE_Partition As
(SELECT firstName, lastName, Jobtitle,
COUNT(jobtitle) OVER (PARTITION BY jobtitle) AS TOTAL_NUMB
FROM employees
Join offices
	ON employees.officeCode= offices.officeCode
ORDER BY jobTitle
)

SELECT Jobtitle 
FROM CTE_Partition