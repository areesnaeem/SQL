SELECT *
FROM products

-- WHERE quantityInStock >= 100 AND quantityInStock <= 500 

WHERE quantityInStock BETWEEN 100 AND 500;

-- most use when dealng with numerical data.