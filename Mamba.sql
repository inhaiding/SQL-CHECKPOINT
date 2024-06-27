
USE Services  
CREATE TABLE Customers (
        customer_id INT PRIMARY KEY NOT NULL,
		customer_name VARCHAR (100),
		address  VARCHAR (100)   );

CREATE TABLE Product (
       product_id INT PRIMARY KEY NOT NULL,
	   product_name VARCHAR (100),
	   price DECIMAL CHECK (price >0)  );

CREATE TABLE OrderTable (
       order_id INT PRIMARY KEY NOT NULL,
	   customer_id INT FOREIGN KEY REFERENCES CUSTOMERS(customer_id),
	   product_id INT FOREIGN KEY REFERENCES PRODUCT(product_id),
	   quantity INT NOT NULL,
	   orderT INTO OrderTable VALUES
  (1, 1, 2, 3, '2023-01-22'),_date DATE NOT NULL   );

INSERT INTO Customers VALUES
 (1, 'Ahmed', 'Tunisia'),
 (2, 'Coulibaly', 'Senegal'),
 (3, 'Hasan', 'Egypt')   ;

 INSERT INTO Product VALUES
  (1, 'Cookies', 10),
   (2, 'Candy', 5.2);

INSERT INTO OrderTable VALUES
   (1,1, 2, 3,'2023-01-24')
  (2, 2, 1, 10, '2023-04-14');
  
UPDATE OrderTable
SET quantity=6
WHERE order_id = 2;


DELETE FROM Customers WHERE customer_id = 3

DELETE FROM OrderTable 

DROP TABLE OrderTable