CREATE TABLE Customers (
	cusid INTEGER PRIMARY KEY,
	customer_name NVARCHAR(50),
	customer_phone INTEGER,
	Address varchar(250),
	Status varchar
	)
	GO
CREATE TABLE OrderS(
	orderID INTEGER  PRIMARY KEY,
	customerID INTEGER,
	orderdate Date,
	Status varchar,
	FOREIGN KEY (customerID) REFERENCES Customers(cusid) 
	)
	GO

CREATE TABLE Product(
	productID integer PRIMARY KEY,
	name NVARCHAR(150),
	descreption varchar(250),
	unit integer,
	price money,
	Quatity integer,
	Status varchar(50)
	)
	GO
CREATE TABLE orderDetail(
	orderID integer,
	productID integer,
	price MONEY,
	Quatity INTEGER
	FOREIGN KEY (orderID) REFERENCES OrderS(orderID),
	FOREIGN KEY (productID) REFERENCES Product(productID)
	)
	GO