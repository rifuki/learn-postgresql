SELECT *
FROM
  products
WHERE 
  name @@ TO_TSQUERY('original | bakso');


SELECT *
FROM
  products
WHERE 
  name @@ TO_TSQUERY('bakso & tahu');


SELECT *
FROM
  products
WHERE 
  name @@ TO_TSQUERY('!bakso');

SELECT *
FROM
  products
WHERE
  name @@ TO_TSQUERY('''ayam bakso''');
