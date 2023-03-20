USE classicmodels;

SELECT *
FROM customers
-- WHERE city='paris' # it is now commented out, will not run in query.
-- can add another where clause too.
WHERE customerNumber=103
ORDER BY customerName ;
