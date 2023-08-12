-- locking occurs by default from transaction
START TRANSACTION;

UPDATE products SET description = 'Mie ayam original enak' WHERE id = 'P0001';

SELECT * FROM products WHERE id = 'P0001';

-- another client request
UPDATE products SET quantity = 200 WHERE id = 'P0001';
