-- commit - success
START TRANSACTION;

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@gmail.com',
    'transaction',
    'this is transaction'
  );

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@gmail.com',
    'transaction',
    'this is transaction'
  );

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@gmail.com',
    'transaction',
    'this is transaction'
  );

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@gmail.com',
    'transaction',
    'this is transaction'
  );

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@gmail.com',
    'transaction',
    'this is transaction'
  );

SELECT
  *
FROM
  guestbooks;

COMMIT;

SELECT
  *
FROM
  guestbooks;

-- ROLLBACK - failed  
START TRANSACTION;

INSERT INTO
  guestbooks (email, title, content)
VALUES
  (
    'transaction@rollback.com',
    'transaction rollback',
    'this is transaction rollback'
  ),
  (
    'transaction@rollback.com',
    'transaction rollback',
    'this is transaction rollback'
  ),
  (
    'transaction@rollback.com',
    'transaction rollback',
    'this is transaction rollback'
  ),
  (
    'transaction@rollback.com',
    'transaction rollback',
    'this is transaction rollback'
  ),
  (
    'transaction@rollback.com',
    'transaction rollback',
    'this is transaction rollback'
  );

SELECT
  *
FROM
  guestbooks;

ROLLBACK;

SELECT
  *
FROM
  guestbooks;
