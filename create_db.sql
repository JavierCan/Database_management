CREATE DATABASE  plastics_store;
USE plastics_store;
CREATE TABLE customer (
    id_costumer INT NOT NULL ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_costumer)
); 
CREATE TABLE manufacturer (
    id_manufacturer INT NOT NULL ,
    name VARCHAR(50) NOT NULL,
    phone INT(50) NOT NULL,
    address VARCHAR(50)  NULL,
    PRIMARY KEY (id_manufacturer)
);
CREATE TABLE product (
    id_product INT AUTO_INCREMENT,
    id_manufacturer INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price INT(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    stock INT(50) NOT NULL,
    PRIMARY KEY (id_product, id_manufacturer));


CREATE TABLE purchase(
    id_costumer int ,
    id_product int,
    date_purchase date,
    quantity int,
    PRIMARY KEY (id_costumer,id_product));

create table productsmanufacturers(
    id_manufacturer int,
    id_product int,
    dates DATE,
    quantity int,
    PRIMARY KEY (id_manufacturer,id_product));


SHOW TABLES;

DESCRIBE customer;
DESCRIBE manufacturer;
DESCRIBE product;
DESCRIBE purchase;
DESCRIBE productsmanufacturers;



