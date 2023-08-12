SELECT
  COUNT(id) AS total
FROM
  products
GROUP BY
  category
HAVING
  COUNT(id) > 1;


SELECT
  AVG(price) AS "Harga Rata-Rata",
  MIN(price) AS "Harga Termurah",
  MAX(price) AS "Harga Termahal"
FROM
  products
GROUP BY
  category
HAVING
  AVG(price) >= 20000;
