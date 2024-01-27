CREATE TABLE sales_person(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
company VARCHAR(60) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state CHAR(2) NOT NULL DEFAULT 'PA',
zip SMALLINT NOT NULL,
phone VARCHAR(20) NOT NULL,
birth_date DATE NULL,
sex CHAR(1) NOT NULL,
date_entered TIMESTAMP NOT NULL,
id SERIAL PRIMARY KEY);

CREATE TABLE product_type(
name VARCHAR(30) NOT NULL,
id SERIAL PRIMARY KEY);

CREATE TABLE product(
type_id INTEGER REFERENCES product_type(id),
name VARCHAR(30) NOT NULL,
supplier VARCHAR(30) NOT NULL,
description TEXT NOT NULL,
id SERIAL PRIMARY KEY);

CREATE TABLE item(
product_id INTEGER REFERENCES product(id),
size VARCHAR(30) NOT NULL,
picture VARCHAR(256) NOT NULL,
price NUMERIC NOT NULL,
id SERIAL PRIMARY KEY);