CREATE TABLE products (
  id serial not null, 
  name text,
  description text,
  price integer,
  orderable boolean,
  forSale boolean,
  year_completed int,
  created_at timestamp with time zone, 
  updated_at timestamp with time zone,
  deleted_at timestamp with time zone,
);

CREATE TABLE orders (
  id serial not null,
  status text,
  buyerName text,
  buyerEmail text,
  buyerAddress object,  -- Can this be an object?
  products object, -- array of product id's
  total integer
)

CREATE TABLE product_views (
  id serial not null, 
  product_id integer, -- fk
  created_at timestamp with time zone,
)

CREATE TABLE pictures (
  id serial not null,
  product_id integer, --fk
  alt text, -- This will be shown to a screen reader
  small_url text,
  med_url text, -- different sized urls for different mesia types
  large_url text,
  created_at timestamp with time zone,
  updated_at timestamp with time zone
)

CREATE TABLE process_videos (
  id serial not null,
  product_id integer, -- fk
  alt text, -- This will be shown to a screen reader
  small_url text,
  med_url text, -- different sized urls for different mesia types
  large_url text,
  created_at timestamp with time zone,
  updated_at timestamp with time zone
)