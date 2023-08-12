SELECT
  *
FROM
  categories
  RIGHT JOIN products ON products.id_category = categories.id;
