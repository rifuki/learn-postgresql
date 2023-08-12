-- base syntax
ALTER TABLE table_name 
  -- add column
  ADD COLUMN column_name TEXT
  -- drop column
  DROP COLUMN column_name,
  -- renam column
  RENAME COLUMN column_name TO new_column_name


-- example - add column
ALTER TABLE items ADD COLUMN description TEXT;
-- example - drop column
ALTER TABLE items DROP COLUMN description;
-- example - rename column
ALTER TABLE items RENAME COLUMN name TO namae;
