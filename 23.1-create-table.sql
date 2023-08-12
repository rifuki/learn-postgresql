CREATE TABLE
  sellers (
    id    SERIAL        NOT NULL,
    name  VARCHAR(100)  NOT NULL,
    email VARCHAR(100)  NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT email_unique UNIQUE (email)
  );

INSERT INTO 
  sellers (name, email) 
VALUES 
  ('Aozora Umeko', 'aozoraumeko@gmail.com'),
  ('Mahoma Rifuki', 'mahomarifuki@gmail.com'),
  ('Iuchi Minori', 'iuchiminori@gmail.com'),
  ('Setsuna Rika', 'setsunarika@gmail.com');

-- fast
SELECT * FROM sellers WHERE id = 1;
SELECT * FROM sellers WHERE email = 'aozoraumeko@gmail.com';

-- search from top to bottom || not fast
SELECT * FROM sellers WHERE id = 1 or name = 'Aozora Umeko';
