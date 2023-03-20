USE classicmodels;

CREATE TABLE products1
AS
SELECT productCode,
		productName,
		buyPrice,
        MSRP
FROM products;
