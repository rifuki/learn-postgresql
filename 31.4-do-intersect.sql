SELECT DISTINCT
  email
FROM
  customer
INTERSECT
SELECT DISTINCT
  email
FROM
  guestbooks;
