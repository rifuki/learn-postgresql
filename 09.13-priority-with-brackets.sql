SELECT *
FROM products
WHERE (quantity > 100 OR category ='Makanan')
  AND price > 15000;

SELECT *
FROM products
WHERE category ='Makanan'
  OR (quantity > 100 AND price > 15000);
