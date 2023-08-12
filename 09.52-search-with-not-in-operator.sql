-- can be used in select, update, and delete
SELECT *
FROM products
WHERE category NOT IN ('Makanan', 'Minuman');
