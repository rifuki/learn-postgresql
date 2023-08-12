-- dummy tables for exercise
DROP TABLE IF EXISTS products CASCADE;
DROP TYPE IF EXISTS product_category;

CREATE TABLE products (
  id          VARCHAR(10)   NOT NULL,
  name        VARCHAR(100)  NOT NULL,
  description TEXT,
  price       INT           NOT NULL,
  quantity    INT           NOT NULL  DEFAULT 0,
  created_at  TIMESTAMP     NOT NULL  DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products(id, name, price, quantity)
VALUES  ('P0001', 'Mie Ayam Original', 15000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES  ('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 100);

INSERT INTO products(id, name, price, quantity)
VALUES  ('P0003', 'Mie Ayam Ceker', 20000, 100),
        ('P0004', 'Mie Ayam Spesial', 25000, 100),
        ('P0005', 'Mie Ayam Yamin', 15000, 100);

ALTER TABLE products 
  ADD PRIMARY KEY (id);

-- 6.0-UPDATE-DATA
CREATE TYPE product_category AS ENUM ('Makanan', 'Minuman', 'Lain-lain');

ALTER TABLE products ADD COLUMN category product_category;

UPDATE products 
SET category = 'Makanan' 
WHERE id='P0001';

UPDATE products 
SET category = 'Makanan' 
WHERE id='P0002';

UPDATE products 
SET category = 'Makanan' 
WHERE id='P0003';

UPDATE products 
SET category = 'Makanan' 
WHERE id='P0004';

UPDATE products 
SET category = 'Makanan' 
WHERE id='P0005';

UPDATE products
SET category = 'Makanan',
  description = 'Mie Ayam + Ceker'
WHERE id = 'P0003';

UPDATE products
SET price = price + 5000
WHERE id = 'P0004';

-- 7.0 DELETE-DATA
INSERT INTO products(id, name, price, quantity, category)
VALUES ('P0009', 'Contoh', 10000, 100, 'Minuman');

-- 9.0 WHERE-OPERATOR
INSERT INTO products(id, name, price, quantity, category)
VALUES  ('P0006', 'Es Teh Tawar', 10000, 100, 'Minuman'),
        ('P0007', 'Es Campur', 20000, 100, 'Minuman'),
        ('P0008', 'Jus Jeruk', 15000, 100, 'Minuman');

