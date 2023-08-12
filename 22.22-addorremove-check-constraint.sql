-- add check constraint
ALTER TABLE products
  ADD CONSTRAINT price_check CHECK ( price >= 1000 );

ALTER TABLE products
  ADD CONSTRAINT quantity_check CHECK ( quantity >= 0 );

--drop check constraint
ALTER TABLE products
  DROP CONSTRAINT price_check;


-- practice 
INSERT INTO 
  products(id, name, price, quantity, category)
VALUES
  ('XXX1', 'Contoh Gagal', 10, 0, 'Lain-Lain');

INSERT INTO 
  products(id, name, price, quantity, category)
VALUES
  ('XXX2', 'Contoh Gagal Lagi', 10000, -1, 'Lain-Lain');
