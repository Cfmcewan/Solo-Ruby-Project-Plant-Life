DROP TABLE IF EXISTS plants;
DROP TABLE IF EXISTS nurseries;

CREATE TABLE nurseries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255),
  url VARCHAR(255)
);

CREATE TABLE plants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  usp VARCHAR(255),
  stock_quantity INT,
  buying_cost INT,
  selling_price INT,
  url VARCHAR,
  plant_type VARCHAR(255),
  nursery_id int REFERENCES nurseries(id) ON DELETE CASCADE
);
