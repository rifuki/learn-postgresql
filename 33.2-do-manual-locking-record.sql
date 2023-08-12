-- FOR UPDATE
START TRANSACTION;
SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

-- another client request
UPDATE products SET price = 30000 WHERE id = 'P0001';


ROLLBACK;
