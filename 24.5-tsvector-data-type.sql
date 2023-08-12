CREATE TABLE 
  character (
    id SERIAL PRIMARY KEY NOT NULL,
    codename TSVECTOR,
    name VARCHAR NOT NULL
  ); 

INSERT INTO
  character (codename, name)
VALUES
  ('CV-01', 'Hatsune Miku'),
  ('CV-02', 'Kagamine Rin'),
  ('CV-03', 'Megurine Luka');
