CREATE TABLE
  contoh.products (
    id SERIAL NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
  );

INSERT INTO
  contoh.products (name)
VALUES
  ('iPhone'),
  ('Sony Playstation');

SELECT
  *
FROM
  contoh.products;

SELECT
  *
FROM
  public.products;
