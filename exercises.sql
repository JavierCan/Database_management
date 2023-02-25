USE plastics_store;
--1.- Obtener los nombres de los productos de la tienda
SELECT name FROM product;


--2.- Obtener los nombres y los precios de los productos de la tienda
SELECT name, price FROM product;


--3.-Obtener el nombre de los productos cuyo precio sea menor o igual a $100
SELECT name FROM product WHERE price <= 100;


--4.- Obtener todos los datos de los artículos cuyo precio esté entre los $## y los $### (ambas cantidades incluidas)
SELECT * FROM product WHERE price BETWEEN 10 AND 200;


--5.- Obtener el nombre y el precio en USD (es decir, el precio en pesos dividido entre el tipo de cambio del día puesto manualmente)
SELECT name, price/20 AS price_usd FROM product;


--6.- Seleccionar el precio medio de todos los productos (AVG)
SELECT AVG(price) FROM product;


--7.- Obtener el precio medio de los artículos cuyo código de fabricante sea 123.
SELECT AVG(price) FROM product WHERE id_manufacturer = 123;


--8.- Obtener el número de artículos cuyo precio sea mayor o igual a $## (COUNT)
SELECT COUNT(*) FROM product WHERE price >= 50;


--9.- Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual  a $## y ordenarlos descendentemente por precio, y luego ascendentemente por nombre.
SELECT name, price FROM product WHERE price >= 20 ORDER BY price DESC;
SELECT name, price FROM product WHERE price >= 20 ORDER BY  name ASC;
SELECT name, price FROM product WHERE price >= 20 ORDER BY price DESC, name ASC;




--10.- Obtener un listado completo de artículos, incluyendo por cada artículo los datos del artículo y de su fabricante
SELECT product.*, manufacturer.name AS manufacturer_name FROM product JOIN manufacturer ON product.id_manufacturer ;


--11.- Obtener un listado de artículos, incluyendo el nombre del artículo, su precio y el nombre de su fabricante.
SELECT product.name, product.price, manufacturer.name AS manufacturer_name FROM product JOIN manufacturer ON product.id_manufacturer ;


--12.- Obtener el precio medio de los productos de cada fabricante, mostrando solo los códigos de fabricante.
SELECT id_manufacturer, AVG(price) FROM product GROUP BY id_manufacturer;



--13.- Obtener el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante.
SELECT manufacturer.name, AVG(price) FROM product JOIN manufacturer ON product.id_manufacturer GROUP BY manufacturer.name;



--14.- Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio sea mayor o igual a $100
SELECT manufacturer.name FROM product JOIN manufacturer ON product.id_manufacturer GROUP BY manufacturer.name HAVING AVG(price) >= 20;



--15.- Obtener el nombre y precio del artículo más barato.
SELECT product.name, product.price FROM product ORDER BY price ASC LIMIT 1;


--16.- Añadir un nuevo producto: Altavoces de $### (del fabricante x)

INSERT INTO product (id_product,id_manufacturer,name,price,marca,stock) VALUES (NULL, 123, 'Altavoces', 100, 'Sony', 10);

--17.- Cambiar el nombre del producto # a 'Impresora Laser'
UPDATE product SET name = 'Impresora Laser' WHERE id_product = 1001;

--18.- Aplicar un descuento del 10% a todos los productos

UPDATE product SET price = price * 0.9;



--19.- Aplicar un descuento de $## a todos los productos cuyo precio sea mayor o igual a $100, 

UPDATE product SET price = price - 10 WHERE price >= 100;

--20.- mostrar el precio antes y después del descuento
SELECT name, price, price - 10 AS price_after_discount FROM product WHERE price >= 100;