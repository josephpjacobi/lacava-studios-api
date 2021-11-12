CREATE SCHEMA lacava_studios;

CREATE TABLE lacava_studios.products (
  id SERIAL PRIMARY KEY NOT NULL, 
  name TEXT,
  description TEXT,
  price INTEGER,
  orderable BOOLEAN,
  forSale BOOLEAN,
  year_completed INTEGER,
  created_at TIMESTAMP with time zone, 
  updated_at TIMESTAMP with time zone,
  deleted_at TIMESTAMP with time zone,
  -- PRIMARY KEY id
);

CREATE TABLE lacava_studios.orders (
  id serial PRIMARY KEY NOT NULL,
  status TEXT,
  buyerName TEXT,
  buyerEmail TEXT,
  buyerAddress object,  -- Can this be an object?
  products object, -- array of product id's
  total INTEGER
  -- PRIMARY KEY id
)

CREATE TABLE lacava_studios.product_views (
  id serial NOT NULL, 
  product_id INTEGER, -- fk
  created_at TIMESTAMP with time zone,
  FOREIGN KEY(product_id) REFERENCES products(id)
  -- PRIMARY KEY id
)

CREATE TABLE lacava_studios.pictures (
  id serial NOT NULL,
  product_id INTEGER, --fk
  alt TEXT, -- This will be shown to a screen reader
  small_url TEXT,
  med_url TEXT, -- different sized urls for different mesia types
  large_url TEXT,
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone,
  FOREIGN KEY(product_id) REFERENCES products(id)
  -- PRIMARY KEY id
)

CREATE TABLE lacava_studios.process_videos (
  id serial NOT NULL,
  product_id INTEGER, -- fk
  alt TEXT, -- This will be shown to a screen reader
  small_url TEXT,
  med_url TEXT, -- different sized urls for different mesia types
  large_url TEXT,
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone,
  FOREIGN KEY(product_id) REFERENCES products(id)
  -- PRIMARY KEY id
)