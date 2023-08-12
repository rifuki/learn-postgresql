-- delete unique constraint
ALTER TABLE customer
DROP CONSTRAINT unique_email;

-- add unique constraint
ALTER TABLE customer ADD CONSTRAINT unique_email UNIQUE (email);
