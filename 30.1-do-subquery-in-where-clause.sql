-- check average price
SELECT
  AVG(price)
FROM
  products;


SELECT
  *
FROM
  products
WHERE
  price > (
    SELECT
      AVG(price)
    FROM
      products
  );
