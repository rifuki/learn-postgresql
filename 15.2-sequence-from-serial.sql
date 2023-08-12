CREATE SEQUENCE character_id_seq;

CREATE TABLE character
(
  id        INT DEFAULT nextval('character_id_seq'),
  codename  VARCHAR(20),
  name      VARCHAR(100),
  PRIMARY KEY (id)
);
