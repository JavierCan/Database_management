USE plastics_store;
SHOW TABLES;

INSERT INTO customer
 (id_costumer, first_name, last_name, phone)
  VALUE 
  ('2109022', 'Javier', 'Can', '9999060114')
  ,('2109023', 'Juan', 'Perez', '9999060115')
    ,('2109024', 'Pedro', 'Gomez', '9999060116')
    ,('2109025', 'Luis', 'Lopez', '9999060117')
    ,('2109026', 'Jose', 'Martinez', '9999060118')
    ,('2109027', 'Maria', 'Garcia', '9999060119')
    ,('2109028', 'Ana', 'Hernandez', '9999060120')
;
SELECT * FROM CUSTOMER;

insert into product(id_product ,name,price,marca,stock)
values
(1000,'Caja de plastico',100,'Plastico',100),
(NULL, 'Caja T', 100, 'Plastico', 100)
;

SELECT * FROM product;

insert into manufacturer(id_manufacturer,name,phone,address)
VALUES
(123, 'REYMA', 999995678, 'CALLE 4') ;
SELECT * FROM manufacturer;


ALTER TABLE purchase ADD FOREIGN KEY (id_costumer) REFERENCES customer(id_costumer);
ALTER TABLE purchase ADD FOREIGN KEY (id_product) REFERENCES product(id_product);

ALTER TABLE productsmanufacturers ADD FOREIGN KEY (id_manufacturer) REFERENCES manufacturer(id_manufacturer);
ALTER TABLE productsmanufacturers ADD FOREIGN KEY (id_product) REFERENCES product(id_product);
SHOW CREATE TABLE purchase;
SHOW CREATE TABLE productsmanufacturers;
 SELECT * FROM product;

insert into purchase(id_costumer,id_product,date_purchase,quantity)
VALUES
("2109022",1000,"2019-03-07", 20 );

insert into productsmanufacturers(id_manufacturer,id_product,dates,quantity)
VALUES
(123,1000,"2019-03-07", 20 );


