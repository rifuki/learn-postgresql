CREATE TABLE
  wallet (
    id          SERIAL  NOT NULL,
    id_customer INT     NOT NULL,
    balance     INT     NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT wallet_customer_unique UNIQUE (id_customer),
    CONSTRAINT fk_wallet_customer     FOREIGN KEY (id_customer) REFERENCES customer (id)
  );

INSERT INTO
  wallet (id_customer, balance)
VALUES
  (11, 1000000),
  (12, 5000000),
  (13, 10050000);

SELECT
  *
FROM
  wallet
  JOIN customer ON customer.id = wallet.id_customer;
