-- process 1
START TRANSACTION;
SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;


SELECT * FROM products WHERE id = 'P0002' FOR UPDATE;

-- process 2
START TRANSACTION;
SELECT * FROM products WHERE id = 'P0002' FOR UPDATE;


SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;