CREATE TABLE
  orders (
    id          SERIAL    NOT NULL,
    total       INT       NOT NULl,
    order_date  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
  );

CREATE TABLE
  orders_detail (
    id_product  VARCHAR(20) NOT NULL,
    id_order    INT         NOT NULL,
    price       INT         NOT NULL,
    quantity    INT         NOT NULL,
    PRIMARY KEY (id_product, id_order)
  );

ALTER TABLE orders_detail ADD CONSTRAINT fk_orders_detail_product FOREIGN KEY (id_product) REFERENCES products (id);

ALTER TABLE orders_detail ADD CONSTRAINT fk_orders_detail_order FOREIGN KEY (id_order) REFERENCES orders (id); 

INSERT INTO 
  orders (total) 
VALUES
  (1),
  (2),
  (3);

INSERT INTO
  orders_detail (id_product, id_order, price, quantity)
VALUES
  ('P0001', 1, 1000, 2),
  ('P0002', 1, 1000, 2),
  ('P0003', 1, 1000, 2);

INSERT INTO
  orders_detail (id_product, id_order, price, quantity)
VALUES
  ('P0004', 2, 1000, 2),
  ('P0006', 2, 1000, 2),
  ('P0007', 2, 1000, 2);

INSERT INTO
  orders_detail (id_product, id_order, price, quantity)
VALUES
  ('P0001', 3, 1000, 2),
  ('P0004', 3, 1000, 2),
  ('P0005', 3, 1000, 2);

