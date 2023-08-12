SELECT
  MAX(price)
FROM
  (
    SELECT
      products.price AS price
    FROM
      categories
      JOIN products ON products.id_category = categories.id
  ) AS contoh;
