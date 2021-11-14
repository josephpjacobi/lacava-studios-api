-- CREATE SCHEMA IF NOT EXISTS lacava_studios;

-- CREATE TABLE lacava_studios.products (
CREATE TABLE IF NOT EXISTS products (
  id SERIAL NOT NULL, 
  name TEXT,
  description TEXT,
  price INTEGER,
  orderable BOOLEAN,
  forSale BOOLEAN,
  year_completed INTEGER,
  created_at TIMESTAMP with time zone, 
  updated_at TIMESTAMP with time zone,
  deleted_at TIMESTAMP with time zone,
  PRIMARY KEY (id)
);

-- CREATE TABLE IF NOT EXISTS lacava_studios.orders (
CREATE TABLE IF NOT EXISTS orders (
  id serial NOT NULL,
  status TEXT,
  buyerName TEXT,
  buyerEmail TEXT,
  buyerAddress TEXT,  -- Can this be an object?
  products TEXT, -- array of product id's
  total INTEGER,
  PRIMARY KEY (id)
);

-- CREATE TABLE IF NOT EXISTS lacava_studios.product_views (
CREATE TABLE IF NOT EXISTS product_views (
  id serial NOT NULL, 
  product_id INTEGER, -- fk
  created_at TIMESTAMP with time zone,
  PRIMARY KEY(id),
  CONSTRAINT fk_product
    FOREIGN KEY(product_id)
      REFERENCES products(id)
  -- FOREIGN KEY(product_id) REFERENCES product(id)
);

-- CREATE TABLE IF NOT EXISTS lacava_studios.pictures (
-- CREATE TABLE IF NOT EXISTS pictures (
--   id serial NOT NULL PRIMARY KEY,
--   product_id INTEGER, --fk
--   alt TEXT, -- This will be shown to a screen reader
--   small_url TEXT,
--   med_url TEXT, -- different sized urls for different mesia types
--   large_url TEXT,
--   created_at TIMESTAMP with time zone,
--   updated_at TIMESTAMP with time zone
--   -- FOREIGN KEY(product_id) REFERENCES products(id)
-- );

-- CREATE TABLE IF NOT EXISTS lacava_studios.process_videos (
--   id serial NOT NULL PRIMARY KEY,
--   product_id INTEGER, -- fk
--   alt TEXT, -- This will be shown to a screen reader
--   small_url TEXT,
--   med_url TEXT, -- different sized urls for different mesia types
--   large_url TEXT,
--   created_at TIMESTAMP with time zone,
--   updated_at TIMESTAMP with time zone
--   -- FOREIGN KEY(product_id) REFERENCES products(id)
-- );


-- alter table product_views add foreign key (product_id) REFERENCES products(id);