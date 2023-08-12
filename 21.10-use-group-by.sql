SELECT
  category,
  COUNT(id) AS "Total Product"
FROM
  products
GROUP BY
  category;

SELECT
  category,
  AVG(price) AS "Rata Rata Harga",
  Min(price) AS "Harga Termurah",
  Max(price) As "Harga Termahal"
FROM
  products
GROUP BY
  category;
