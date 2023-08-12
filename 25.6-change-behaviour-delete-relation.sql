-- set behaviour 
-- 1. RESTRICT
-- 2. CASCADEF
-- 3. NO ACTION
-- 4. SET NULL
-- 5. SET DEFAULT

ALTER TABLE
  wishlist
ADD 
  CONSTRAINT fk_wishlist_product 
FOREIGN KEY 
  (id_product) 
REFERENCES 
  products (id)
ON
  DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO 
  products (id, name, price, quantity, category)
VALUES
  ('XXX', 'xxx', 10000, 100, 'Lain-lain');

IINSERT INTO
  wishlist (id_product, description)
VALUES
  ('XXX', 'Contoh Description');
NSERT INTO
  wishlist (id_product, description)
VALUES
  ('XXX', 'Contoh Description');

DELETE FROM products WHERE id = 'XXX';
