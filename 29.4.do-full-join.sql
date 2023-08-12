SELECT
  *
FROM
  categories
  FULL JOIN products ON products.id_category = categories.id;
