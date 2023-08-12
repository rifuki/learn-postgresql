SELECT
  *
FROM
  categories
  LEFT JOIN products ON products.id_category = categories.id;
