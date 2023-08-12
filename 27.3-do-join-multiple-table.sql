SELECT 
  customer.email,
  products.id,
  products.name,
  wishlist.description
FROM
  wishlist
JOIN
  products ON products.id = wishlist.id_product
JOIN
  customer ON customer.id = wishlist.id_customer;
