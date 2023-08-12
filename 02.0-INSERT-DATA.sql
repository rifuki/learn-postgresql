-- dummy tables for exercise
CREATE TABLE products (
  id          VARCHAR(10)   NOT NULL,
  name        VARCHAR(100)  NOT NULL,
  description TEXT,
  price       INT           NOT NULL,
  quantity    INT           NOT NULL  DEFAULT 0,
  created_at  TIMESTAMP     NOT NULL  DEFAULT CURRENT_TIMESTAMP
);

