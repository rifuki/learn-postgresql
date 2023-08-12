-- dummy tables for exercise
DROP TABLE IF EXISTS products CASCADE;

CREATE TABLE products (
  id          VARCHAR(10)   NOT NULL,
  name        VARCHAR(100)  NOT NULL,
  description TEXT,
  price       INT           NOT NULL,
  quantity    INT           NOT NULL  DEFAULT 0,
  created_at  TIMESTAMP     NOT NULL  DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
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
