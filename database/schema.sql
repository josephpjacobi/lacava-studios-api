CREATE SCHEMA IF NOT EXISTS lacava_studios;

CREATE TABLE lacava_studios.products (
  id SERIAL NOT NULL PRIMARY KEY, 
  name TEXT,
  description TEXT,
  price INTEGER,
  orderable BOOLEAN,
  forSale BOOLEAN,
  year_completed INTEGER,
  created_at TIMESTAMP with time zone, 
  updated_at TIMESTAMP with time zone,
  deleted_at TIMESTAMP with time zone
);

CREATE TABLE IF NOT EXISTS lacava_studios.orders (
  id serial NOT NULL PRIMARY KEY,
  status TEXT,
  buyerName TEXT,
  buyerEmail TEXT,
  buyerAddress TEXT,  -- Can this be an object?
  products TEXT, -- array of product id's
  total INTEGER
);

CREATE TABLE IF NOT EXISTS lacava_studios.product_views (
  id serial NOT NULL PRIMARY KEY, 
  product_id INTEGER, -- fk
  created_at TIMESTAMP with time zone
  -- FOREIGN KEY(product_id) REFERENCES product(id)
);

CREATE TABLE IF NOT EXISTS lacava_studios.pictures (
  id serial NOT NULL PRIMARY KEY,
  product_id INTEGER, --fk
  alt TEXT, -- This will be shown to a screen reader
  small_url TEXT,
  med_url TEXT, -- different sized urls for different mesia types
  large_url TEXT,
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone
  -- FOREIGN KEY(product_id) REFERENCES products(id)
);

CREATE TABLE IF NOT EXISTS lacava_studios.process_videos (
  id serial NOT NULL PRIMARY KEY,
  product_id INTEGER, -- fk
  alt TEXT, -- This will be shown to a screen reader
  small_url TEXT,
  med_url TEXT, -- different sized urls for different mesia types
  large_url TEXT,
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone
  -- FOREIGN KEY(product_id) REFERENCES products(id)
);


-- alter table product_views add foreign key (product_id) REFERENCES products(id);