ALTER TABLE products
DROP COLUMN category;

ALTER TABLE products
ADD COLUMN id_category VARCHAR(10);

ALTER TABLE products
  ADD CONSTRAINT fk_product_category FOREIGN KEY (id_category) REFERENCES categories (id);


SELECT * FROM products JOIN categories ON products.id_category = categories.id;
