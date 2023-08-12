-- drop foreign key
ALTER TABLE 
  wishlist
DROP 
  CONSTRAINT fk_wishlist_product;

-- add foreign key
ALTER TABLE
  wishlist
ADD
  CONSTRAINT 
    fk_wishlist_product 
  FOREIGN KEY 
    (id_product) 
  REFERENCES 
    products (id);
