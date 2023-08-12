CREATE TABLE
  products (
    id          VARCHAR(100)  NOT NULL,
    name        VARCHAR(100)  NOT NULL,
    description TEXT,
    price       INT           NOT NULL,
    quantity    INT           NOT NULL,
    created_at  TIMESTAMP     NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT price_check  CHECK ( price >= 1000 )
  );

