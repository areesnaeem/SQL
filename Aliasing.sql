-- Aliasing -> it gives column a temporary name while running a quary. It increasing readability and understanability

-- we can use 'AS' or leave it empty after column name and then name required, it will run too.
/*
select MSRP, (MSRP * 2) AS Doubleprice
FROM products
*/

-- we can also Alias table names

SELECT productName
FROM products AS CHEEZEIN

-- Basically it is helpful when joining tables so that give clear picture/code
-- DOnt USE alphabets as it cofuses and may mess in long run so try to use short words.