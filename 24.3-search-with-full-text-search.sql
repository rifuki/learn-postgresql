-- not as flexible as LIKE
-- search by word
SELECT * 
FROM
  products
WHERE 
name @@ TO_TSQUERY('mie');

SELECT *
FROM
  products
WHERE 
  description @@ TO_TSQUERY('m:*');

