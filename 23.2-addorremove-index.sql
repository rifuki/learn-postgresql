-- add index
CREATE INDEX 
  sellers_name_index 
ON 
  sellers (name);

CREATE INDEX 
  sellers_id_and_name_index 
ON 
  sellers (id, name);

CREATE INDEX 
  sellers_email_and_name_index 
ON 
  sellers (email, name);


-- delete index
DROP INDEX 
sellers_name_index;
