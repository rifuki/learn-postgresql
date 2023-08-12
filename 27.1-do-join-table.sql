SELECT *
FROM wishlist
  JOIN products ON products.id = wishlist.id_products;

SELECT 
  p.id, 
  p.name, 
  w.description
FROM 
  wishlist as w
JOIN 
  products as p ON p.id = w.id_product;
