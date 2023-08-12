SELECT  id,
        category,
        CASE category
          WHEN  'Makanan' THEN  'Enak'
          WHEN  'Minuman' THEN  'Seger'
          ELSE  'Apa itu?'
          END AS category_case
FROM products;


SELECT  id,
        price,
        CASE
          WHEN price <= 15000 THEN 'Murah'
          WHEN price <= 20000 THEN 'Mahal'
          ELSE 'Mahal Banget'
          END AS price_case
FROM products;


SELECT  id,
        name,
        CASE
          WHEN description IS NULL THEN 'Kosong'
          ELSE description
          END as description_case
FROM products;
