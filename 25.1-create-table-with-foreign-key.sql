CREATE TABLE 
  wishlist (
    id          SERIAL      NOT NULL,
    id_product  VARCHAR(10) NOT NULL,
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT 
      fk_wishlist_product 
    FOREIGN KEY 
      (id_product) 
    REFERENCES 
      products  (id)
  );
