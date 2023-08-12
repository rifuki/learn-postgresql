CREATE TABLE
  guestbooks (
    id SERIAL NOT NULL,
    email VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    PRIMARY KEY (id)
  );

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'aozoraumeko@gmail.com',
    'feedback aozora',
    'ini feedback aozora'
  ),
  (
    'aozoraumeko@gmail.com',
    'feedback aozora',
    'ini feedback aozora'
  ),
  (
    'iuchiminori@gmail.com',
    'feedback minori',
    'ini feedback minori'
  ),
  (
    'setsunarika@gmail.com',
    'feedback setsuna',
    'ini feedback setsuna'
  ),
  (
    'setsunarika@gmail.com',
    'feedback setsuna',
    'ini feedback setsuna'
  );
