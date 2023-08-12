-- AND Operator
SELECT *
FROM products
WHERE price > 15000
  AND category = 'Minuman';

SELECT *
FROM products
WHERE price > 15000
  AND category = 'Makanan';


  -- OR Operator
  SELECT *
  FROM products
  WHERE price > 15000
    OR category = 'Makanan';
