/* In JOIN we combined tables based on similar column present in both tables and those tables show side by side, and somehow shows NULL in case of right/left joins.
But in UNION table combine both tables and shows as one and also remove duplicates
but if we use UNION ALL, it will show all results including duplicates
*/

SELECT * 
FROM productlines
UNION ALL
SELECT * 
FROM products