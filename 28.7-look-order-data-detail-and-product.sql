SELECT
  *
FROM
  orders
  JOIN orders_detail ON orders_detail.id_order = orders.id
  JOIN products ON orders_detail.id_product = products.id;

SELECT
  *
FROM
  orders
  JOIN orders_detail ON orders_detail.id_order = orders.id
  JOIN products ON orders_detail.id_product = products.id
where
  orders.id = 1;
