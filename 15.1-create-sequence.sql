-- create sequence
CREATE SEQUENCE sequence_example;

-- call sequence, automatically increment
SELECT nextval('sequence_example');

-- get the last value of the sequence
SELECT currval('sequence_example');
