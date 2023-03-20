/* SELECT * 
FROM productlines
INNER JOIN products
	ON productlines.productLine = products.productLine
*/
-- INNerjoin joins both groups and show only those values which are common/same in both tables. i.e. similarities based on column commom in both tables.

/*
SELECT * 
FROM classicmodels.productlines
FULL outer join classicmodels.products 
	ON productlines.productLine = products.productLine

-- FULL Outer JOIN shows everything present in table 1 and table 2 regardless of column which is common in both tables and returns NULL when entry is missing in eother table.
*/

/*
SELECT * 
FROM productlines
LEFT OUTER JOIN products
	ON productlines.productLine = products.productLine
*/
-- Left table full with overlapping with right table (Left table is 1st table i.e. productlines and righgt table is 2nd table i.e. products).
-- everything from productlines regardless it is present in prodcuts table or not. right table retunrs NULL if no match against left table. 

/*
SELECT * 
FROM productlines
RIGHT OUTER JOIN products
	ON productlines.productLine = products.productLine
*/    
-- Right outer join is exact opposite of left outer join, everythin from 2nd table and if no match in 1st table returns NULL in 1st table fields.


-- Now if want specific columns not all(*), we need to speicfy from where to take common column as it present in both tables.

/*
SELECT productlines.productLine, productVendor, buyPrice, MSRP
FROM productlines
INNER JOIN products
	ON productlines.productLine = products.productLine
*/

/*
SELECT productlines.productLine, productVendor, buyPrice, MSRP
FROM productlines
RIGHT OUTER JOIN products
	ON productlines.productLine = products.productLine
*/
-- From table 2 wheter it matches with 1st table or not.
-- If we use LEFT outer join, it is exact opposite of RIGHT OUTER JOIN.

-- so now if we want to know which productline has more MSRP excluding trucks and buses, we can run the query to find out

/* SELECT products.productLine, productName, MSRP
FROM productlines
INNER JOIN products
	ON productlines.productLine = products.productLine
WHERE productLine != 'Trucks and Buses'
ORDER BY MSRP DESC
*/

-- To findout AVG MSRP of differnt productlines
SELECT productlines.productLine, AVG(MSRP)
FROM productlines
INNER JOIN products
	ON productlines.productLine = products.productLine
GROUP BY productLine
