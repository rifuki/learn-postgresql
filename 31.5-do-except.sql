SELECT DISTINCT
  email
FROM
  customer
EXCEPT
SELECT DISTINCT
  email
FROM
  guestbooks;
