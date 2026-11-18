-- The Case of ITC for Investing the data base and creating the tables - 

Create table distributors (
  distributor_id INTEGER primary key,
  name           TEXT not NULL,
  city           TEXT,
  region         TEXT,
  phone          TEXT
);

--Dropping the table-----
DROP TABLE distributors;

--Create another table name Products--
CREATE TABLE products (
Product_id INTEGER PRIMARY KEY,
Product_name TEXT NOT NULL UNIQUE,
brand TEXT,
category TEXT NOT NULL,
price REAL CHECK (price > 0),
stock INTEGER Default 0
  );
 Create table sales (
   sales_id INTEGER PRIMARY KEY,
   product_id INTEGER,
   distributor_id INTEGER,
   sales_date TEXT,
   quantity INTEGER CHECK (quantity>0),
   amount REAL,
   FOREIGN KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
   );