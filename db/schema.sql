-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS tag;

CREATE TABLE category(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT REFERENCES category(id)
);

CREATE TABLE tag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(30)
);

CREATE TABLE productTag(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT REFERENCES product(id),
    tag_id INT REFERENCES tag(id)
);