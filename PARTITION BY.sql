-- It changes results into partitions and dont reduce number of rows as done in GROUP BY

SELECT firstName, lastName, Jobtitle,
COUNT(jobtitle) OVER (PARTITION BY jobtitle) AS TOTAL_NUMB
FROM employees
Join offices
	ON employees.officeCode= offices.officeCode
ORDER BY jobTitle