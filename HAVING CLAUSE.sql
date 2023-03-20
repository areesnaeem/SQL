/* SELECT jobTitle, COUNT(jobTitle)
FROM employees
JOIN offices
	ON employees.officeCode= offices.officeCode
Group By jobTitle
Having COUNT(jobTitle) > 1
*/
-- having statement will always comes after group by as it depends on aggregate

SELECT productLine, AVG(MSRP)
FROM products
-- JOIN productlines
-- ON products.productLine = productlines.productLine
Group By productLine
Having AVG(MSRP) > 89
ORDER BY AVG(MSRP)