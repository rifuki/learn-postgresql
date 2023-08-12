SELECT DISTINCT
  email
FROM
  customer
UNION ALL
SELECT DISTINCT
  email
FROM
  guestbooks;


SELECT email, COUNT(email) FROM (SELECT DISTINCT email FROM customer UNION ALL SELECT DISTINCT email FROM guestbooks) AS contoh GROUP BY email;

SELECT email, COUNT(email) FROM (SELECT email FROM customer UNION ALL SELECT email FROM guestbooks) AS contoh GROUP BY email;
