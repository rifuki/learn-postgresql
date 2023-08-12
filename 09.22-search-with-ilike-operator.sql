-- incase sensitive (ILIKE)
SELECT *
FROM products
WHERE name ILIKE '%mie%';

SELECT *
FROM products
WHERE name ILIKE 'es%';
