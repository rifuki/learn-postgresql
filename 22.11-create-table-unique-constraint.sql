CREATE TABLE
  customer (
  id          SERIAL        NOT NULL,
  email       VARCHAR(100)  NOT NULL,
  first_name  VARCHAR(100)  NOT NULL,
  last_name   VARCHAR(100),
  PRIMARY KEY(id),
  CONSTRAINT unique_email UNIQUE (email)
);

INSERT INTO 
  customer(email, first_name, last_name)
VALUES
  ('aozoraumeko@gmail.com', 'Umeko', 'Aozora'),
  ('mahomarifuki@gmail.com', 'Rifuki', 'Mahoma'),
  ('iuchiminori@gmail.com', 'Minori', 'Iuchi');
  
