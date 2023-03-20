-- AND OR IN / AND NOT IN opeators
-- AND (both conditions full fill)
-- OR (any of the condition fullfill)
-- IN (inside a specific category)

SELECT *
FROM products
-- WHERE productLine= 'Motorcycles' AND buyPrice >65 

-- WHERE productLine= 'Motorcycles' OR buyPrice >65 

-- WHERE productLine= 'Motorcycles' OR (buyPrice >65 AND MSRP >100) 

-- WHERE NOT productLine= 'Motorcycles' OR (buyPrice >65 AND MSRP >100)

-- WHERE productLine= 'Motorcycles'  AND NOT (buyPrice >65 AND MSRP >100)

-- WHERE productLine= 'Motorcycles'  AND NOT buyPrice >65 AND MSRP >100 

-- WHERE productLine IN ('Motorcycles', 'Classic cars', 'Trucks and Buses');

WHERE productLine NOT IN ('Motorcycles', 'Classic cars', 'Trucks and Buses');



