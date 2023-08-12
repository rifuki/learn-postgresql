-- get language support
SELECT cfgname FROM pg_ts_config;

CREATE INDEX 
  products_name_search
ON
  products
USING
  GIN (TO_TSVECTOR("indonesian", name));

CREATE INDEX
  products_description_search
ON
  products
USING
  GIN (TO_TSVECTOR('indonesian', description));
