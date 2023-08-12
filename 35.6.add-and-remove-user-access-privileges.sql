-- add privileges
GRANT INSERT,
UPDATE,
SELECT
  ON ALL TABLES IN SCHEMA public TO aozora;

GRANT USAGE, SELECT, UPDATE ON guestbooks_id_seq TO aozora;

GRANT INSERT,
UPDATE,
SELECT
  ON customer TO iuchi;

-- remove privileges
REVOKE INSERT,
UPDATE,
SELECT
  ON customer TO iuchi;


INSERT INTO
  guestbooks (email, title, content)
VALUES
  ('contohaozora', 'aozora', 'this is aozora');
