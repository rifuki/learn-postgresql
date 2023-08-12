-- SELECT * FROM pg_tables WHERE schemaname = 'public';

CREATE TABLE items (
  code    INT,
  name    VARCHAR(100),
  price   INT,
  amount  INT 
);
