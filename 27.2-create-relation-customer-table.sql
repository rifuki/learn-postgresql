ALTER TABLE 
  wishlist
ADD COLUMN 
  id_customer INT;

ALTER TABLE 
  wishlist
ADD CONSTRAINT
  fk_whislist_customer FOREIGN KEY (id_customer) REFERENCES customer (id);

UPDATE 
  wishlist
SET 
  id_customer = 11
WHERE id in (2, 3);

UPDATE 
  wishlist
SET 
  id_customer = 12
WHERE id = 4;
