SELECT productCode, 
		productName, 
        buyPrice, 
        MSRP,
-- DISTINCT funtion can also be used to check unique values.        
-- selection order matters alot in it as 1st column will appear which written first i.e. productCode will display first b/c wrote first.
-- similarly if vedor wants specific MSRP with increase we can make new column too by using arithmetic operators.
		MSRP * 2, -- but careful that it will run with DMAS rule.
-- if want to igore DMAS we use (), also naming with convinience 
		(MSRP + 10) * 2 AS MSRP_NEW
FROM products;
