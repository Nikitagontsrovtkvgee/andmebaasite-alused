CREATE DATABASE epoodGontsarov;
use epoodGontsarov;

CREATE TABLE Category (
idCategory int primary key identity(1,1),
CategoryName varchar(25) UNIQUE
);
SELECT*FROM Category;
INSERT INTO Category (CategoryName)
Values ('jook'), ('söök');

--TABELI struktuuri muutmine-->uue veergu lisamine

ALTER TABLE Category ADD test int;

--TABELI struktuuri muutmine-->veergu kustutamine

ALTER TABLE Category DROP COLUMN  test;

SELECT*FROM Category;

--teine ulasane (idk if decoding works here  :P   )

CREATE TABLE Product (
idProduct int Primary key identity(1,1),
ProductName varchar(25),
idCategory int,
FOREIGN KEY (idCategory) references Category(idCategory),
Price DECIMAL (5,2)
);
DROP table Product;

SELECT * FROM Category;
SELECT * FROM Product;

INSERT INTO Product (ProductName, idCategory, Price)
VALUES ('Coca-Cola', 1, 1.50), ('Snickers', 2, 0.99), ('Ramen', 2, 6.00), ('Pasta', 2, 1.09)

DELETE FROM Product WHERE IdCategory=1;

CREATE TABLE Sale (
idSale int Primary key identity(1,1),
idProduct int,
foreign key (IdProduct) REFERENCES Product(idProduct),
idCustomer int,
Count_ int,
DateOfSale date);

INSERT INTO Sale (idProduct, idCustomer, Count, DateOfSale)
VALUES (5, 1, 2, '2024-03-11')

INSERT INTO Sale (idProduct, idCustomer, Count, DateOfSale)
VALUES (6, 2, 3, '2024-03-11')

INSERT INTO Sale (idProduct, idCustomer, Count, DateOfSale)
VALUES (7, 3, 4, '2024-03-11')

INSERT INTO Sale (idProduct, idCustomer, Count, DateOfSale)
VALUES (8, 4, 5, '2024-03-11')

INSERT INTO Sale (idProduct, idCustomer, Count, DateOfSale)
VALUES (9, 5, 6, '2024-03-11')



SELECT * FROM Sale


-- kustutab kõik kirjad
DELETE FROM Sale;

CREATE TABLE Customer (
IdCustomer int primary key identity(1,1),
Name varchar(25),
contact text);

SELECT * FROM Customer;

INSERT INTO Customer(Name, contact)
VALUES ('Stallin', '7958607')

INSERT INTO Customer(Name, contact)
VALUES ('Lenin', '3486058')

INSERT INTO Customer(Name, contact)
VALUES ('Majakovski', '1748264')

INSERT INTO Customer(Name, contact)
VALUES ('Gitler', '9906844')

INSERT INTO Customer(Name, contact)
VALUES ('Goida', '5749265')

--tabeli muutmine -->FK lisamine
ALTER TABLE Sale ADD FOREIGN KEY (idCustomer)
References Customer(idCustomer)

-- tabeli Costumer

-- tabeli Sale täitmine
SELECT * FROM Category;
SELECT * FROM Product;
SELECT * FROM Customer;
SELECT * FROM Sale;
