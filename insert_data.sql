USE plastics_store;
SHOW TABLES;

INSERT INTO customer
 (id_costumer, first_name, last_name, phone)
  VALUE 
  ('2109022', 'Javier', 'Can', '9999060114')
  ,('2109023', 'Juan', 'Perez', '9999890115')
    ,('2109024', 'Pedro', 'Gomez', '9999890116')
    ,('2109025', 'Luis', 'Lopez', '9999060117')
    ,('2109026', 'Jose', 'Martinez', '9906011820')
    ,('2109027', 'Maria', 'Garcia', '9999060119')
    ,('2109028', 'Ana', 'Hernandez', '9909060120')
    ,('2109029', 'Luisa', 'Rodriguez', '9999060121')
    ,('2109030', 'Sofia', 'Gonzalez', '9999060122')
    ,('2109031', 'Mariana', 'Fernandez', '9999060123')
;
SELECT * FROM CUSTOMER;

insert into product(id_product ,name,price,marca,stock)
values
(1000,'PLATOCUADR',32,'nieve seca',200),
(NULL, 'PLATORECTAN', 34, 'nieve seca', 100)
, (NULL, 'BOTETERMICO1/2LT', 32, 'nieve seca', 80)
, (NULL, 'BOTETERMICO1LT', 33, 'nieve seca', 100)
, (NULL, 'BISAGRARBPAQUETE', 180, 'Plastico', 100)
, (NULL, 'BISAGRARBINDIVUAL', 2.50, 'Plastico', 100)
, (NULL, 'DOMOSANDWICHON', 17, 'Plastico', 100)
, (NULL, 'DOMOPASTELRECT', 25, 'Plastico', 100)
, (NULL, 'DOMOPASTELREDON', 25, 'Plastico', 100)
, (NULL, 'CUCHARAGRANDE', 15, 'Plastico', 100)
, (NULL, 'CUCHARAPEQUE', 13.50, 'Plastico', 100)
, (NULL, 'TENEDORMEDIANO25PZS', 11, 'Plastico', 100)
, (NULL, 'VASO#10', 41, 'Plastico', 100)
, (NULL, 'VASO#8', 35, 'Plastico', 100)
, (NULL, 'BANDEJAREDOND', 14, 'Plastico', 100)
, (NULL, 'TAPASVASOTERMICO', 27, 'Plastico', 100)
, (NULL, 'MOLDEPAY', 15, 'Plastico', 100)
, (NULL, 'CONTENEDOR#8/100PZS', 260, 'Plastico', 100)
, (NULL, 'CHAROLA#9/100PZS', 200, 'Plastico', 100)
, (NULL, 'VASOFRAPPE1LT', 58, 'Plastico', 100)
, (NULL, 'SERVILLETAS', 14, 'Plastico', 100)
;

SELECT * FROM product;

insert into manufacturer(id_manufacturer,name,phone,address)
VALUES
(123, 'REYMA', 999995678, 'CALLE 45 ,centro , MERIDA Yucatan');


insert into manufacturer(id_manufacturer,name,phone,address)
VALUES
(124, 'PLASTICOS', 678978567, 'CALLE 51 ,centro , MERIDA Yucatan');
insert into manufacturer(id_manufacturer,name,phone,address)
VALUES
(125, 'fervad', 678788512, 'CALLE 70 ,centro , MERIDA Yucatan');


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
(2109026,1021,"2023-03-05", 20 )
, (2109022,1000,"2023-03-17", 27 )
, (2109022,1002,"2023-03-17", 27 )
, (2109022,1021,"2023-03-17", 27 )
, (2109027,1003,"2023-03-30", 03 )
, (2109024,1015,"2023-03-23", 45 )
, (2109028,1020,"2023-04-19", 21 )
, (2109030,1004,"2023-04-07", 10 )
, (2109029,1009,"2023-05-05", 04)
, (2109025,1012,"2023-06-12", 12 )
, (2109023,1008,"2023-04-08", 38 )
, (2109031,1000,"2023-04-01", 34 );
;
SELECT * FROM purchase;
insert into productsmanufacturers(id_manufacturer,id_product,dates,quantity)
VALUES
(123,1002,"2023-03-17", 27 )
, (123,1000,"2023-03-17", 100 )
, (123,1003,"2023-03-30", 03 );

INSERT INTO productsmanufacturers(id_manufacturer,id_product,dates,quantity)
VALUES
(125,1014,"2023-04-07", 100 )
, (125,1004,"2023-04-07", 100 )
, (125,1009,"2023-05-05", 100 )
, (125,1012,"2023-06-12", 100 )
, (125,1008,"2023-04-08", 100 )
, (125,1000,"2023-04-01", 100 );

SELECT * FROM productsmanufacturers;
