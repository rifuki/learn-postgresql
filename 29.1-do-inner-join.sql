INSERT INTO
  categories (id, name)
VALUES
  ('C0003', 'Gadget'),
  ('C0004', 'Laptop'),
  ('C0005', 'Pulsa');

INSERT INTO products
  (id, name, price, quantity)
VALUES 
  ('X0001', 'Contoh Satu', 10000, 100),
  ('X0002', 'Contoh Satu', 10000, 100);


SELECT * FROM categories INNER JOIN products ON products.id_category = categories.id;
