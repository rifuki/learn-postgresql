SELECT *
FROM
  products
WHERE 
  name ILIKE '%mie%';

SELECT * 
FROM 
  products
WHERE 
  TO_TSVECTOR(name) @@ TO_TSQUERY('mie');
