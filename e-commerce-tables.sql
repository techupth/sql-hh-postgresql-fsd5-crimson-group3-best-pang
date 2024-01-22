-- Start writing code here
CREATE TABLE users (
    user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username VARCHAR ( 255 ) UNIQUE NOT NULL,
    email  VARCHAR ( 255 ) UNIQUE NOT NULL,
    password  VARCHAR ( 255 ) NOT NULL,
    created_at TIMESTAMPTZ UNIQUE NOT NULL
);

create table products (
    product_id int primary key generated always as identity,
	name varchar ( 255 ) not null,
	description text,
	price numeric ( 10,2 ) not null,
	created_at timestamptz unique not null
);

create table categories (
	category_id int primary key generated always as identity,
	name varchar ( 255 ) unique not null,
	created_at timestamptz unique not null
);

create table product_categories (
	product_category_id int primary key generated always as identity,
	product_id int references products(product_id) on delete cascade,
	category_id int references categories(category_id) on delete cascade
);