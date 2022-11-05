CREATE DATABASE experion1;
USE experion1;

CREATE TABLE customers(
id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    country VARCHAR(5) NOT NULL,
    age INT NOT NULL DEFAULT 18,
    dob date
    );
    
    
    INSERT INTO customers(name,email,country,age)
    VALUES 
    ('User1','user1@gmail.com','AUS',25),
    ('User2','user2@gmail.com','IN',22),
	(3,'User3','person3@gmail,com','IN',20),
    (4,'User4','person4@gmail,com','US',17),
    (5,'User5','person5@gmail,com','IN',21),
    (6,'User6','person6@gmail,com','AUS',22);
    
    SELECT * FROM customers WHERE country='IN';
     SELECT * FROM customers WHERE country='IN' OR country='AUS';
	SELECT * FROM customers   WHERE country IN ('IN','AUS');
	SELECT * FROM customers   WHERE countrycustomers IN (1,2);
    SELECT * FROM customers;
    SELECT * FROM customers LIMIT 2 OFFSET 2;
    SELECT * FROM customers WHERE id between 1 and 2;
    SELECT * FROM customers WHERE id>=1 and id<=2;
    
    INSERT INTO customers(name,email,country,age)
    VALUES
    (' ','x@email.com','US',age);
    
   
    
    
    
    SELECT * FROM customers ORDER BY age DESC;
    
    SELECT country FROM customers;
    
    SELECT DISTINCT country FROM customers;
    
    SELECT * FROM customers WHERE 
    id=(SELECT id FROM customers where email='user1@gmail.com' limit 1);
    
    SELECT max(age) FROM customers;
    
    SELECT * FROM customers WHERE age=
    (SELECT MAX(age) FROM customers);
    
    SELECT AVG(age) FROM customers;
    SELECT MIN(age) FROM customers;
	SELECT MAX(age) FROM customers;
	SELECT MAX(age) AS MAXAGE FROM customers;
    
    UPDATE customers SET age=35 WHERE id=1;
    
    DELETE FROM customers;
    
	DELETE FROM customers WHERE id = 3;
    
    TRUNCATE TABLE customers;
    
  CREATE TABLE  customer(
  id INT NOT NULL,
  name VARCHAR(50),
  email VARCHAR(100) NOT NULL UNIQUE,
  age INT,
  dob DATE);
  
  INSERT INTO customers(id,name,email,age,dob)
  VALUES
  (1,'Person1','person1@gmail,com',25,1995-11-27);
  
  DROP TABLE customer;
  
  CREATE DATABASE experion2;
  USE experion2;
  CREATE TABLE  customer(
  id INT NOT NULL,
  name VARCHAR(50),
  email VARCHAR(100) NOT NULL  ,
  age INT,
  dob DATE);
 
  INSERT INTO customer(id,name,email,age,dob)
  VALUES
  (1,'Person1','person1@gmail,com',32,'1995-11-27');
  
   INSERT INTO customer(id,name,email,age,dob)
  VALUES
  (2,'Person2','person2@gmail,com',20,'2002-02-15');
  
  
  SELECT * FROM customer;
  
  SELECT * FROM customer WHERE age=32;
  
  INSERT INTO customer(id,name,email,age,dob)
  VALUES
  (3,'Person3','person3@gmail,com',18,'2004-05-29'),
  (4,'Person4','person4@gmail,com',23,'1999-07-5'),
  (5,'Person5','person5@gmail,com',20,'2002-06-25'),
  (6,'Person6','person6@gmail,com',19,'2004-03-23');
 
     SELECT * FROM customer;
     SELECT * FROM customer WHERE age=20;
     
     SELECT * FROM customer WHERE (age<=20);
     
  INSERT INTO customer(id,name,email,age,dob)
  VALUES
  (1,'Person1','person1@gmail,com',32,'1995-11-27');
  
  DROP TABLE customer;
  
  SELECT *FROM customer;
  
  SELECT * FROM customer WHERE (id = 1 and age <=35);
   DELETE  FROM customer WHERE id=1 ;
   DROP TABLE customer;
	
    CREATE TABLE customer(
    id INT NOT NULL,
	name VARCHAR(50),
	email VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(5) NOT NULL,
	age INT);
    
    INSERT INTO customer(id,name,email,country,age)
    VALUES 
    (1,'User1','user1@gmail.com','AUS',25),
    (2,'User2','user2@gmail.com','IN',22),
	(3,'User3','person3@gmail,com','IN',20),
    (4,'User4','person4@gmail,com','US',17),
    (5,'User5','person5@gmail,com','IN',21),
    (6,'User6','person6@gmail,com','AUS',22);
    
    SELECT * FROM customer;
    
    SELECT * FROM customer where country='IN'limit 2;
    
    SELECT name FROM customer where country='IN'limit 2;
    
    SELECT * FROM customer where (age<=25 and country = 'AUS');
    
    ........
    
    CREATE DATABASE experion25;
    USE experion25;
    
    -- CREATE TABLE newcustomers(
-- 		id INT PRIMARY KEY AUTO_INCREMENT,
-- 		name VARCHAR(50) NOT NULL,
-- 		email VARCHAR(50) NOT NULL UNIQUE,
-- 		country VARCHAR(5) NOT NULL,
-- 		age INT NOT NULL DEFAULT 18,
-- 		dob DATE );
--         
-- 	INSERT INTO newcustomers(name,email,country,age,dob)
--     VALUES 
--     ('User1','user1@gmail.com','AUS',25,'1997-05-12'),
--     ('User2','user2@gmail.com','IN',22,'2000-04-02'),
-- 	('User3','person3@gmail,com','IN',20,'2002-03-22'),
--     ('User4','person4@gmail,com','US',18,'2004-05-12'),
--     ('User5','person5@gmail,com','IN',21,'2001-06-21'),
--     ('User6','person6@gmail,com','AUS',22,'2000-07-23');
--     
--     SELECT * FROM newcustomers;
--     CREATE TABLE orders(
-- 		id INT PRIMARY KEY AUTO_INCREMENT,
-- 		product VARCHAR(150) NOT NULL,
-- 		quantity INT NOT NULL DEFAULT 1,
-- 		amount INT NOT NULL CHECK(amount>=0),
-- 		customer_id int,
--         CONSTRAINT FK_orders_customers_id FOREIGN KEY
--         (customer_id) REFERENCES newcustomers(id) ON DELETE SET NULL
--         );
--         


-- 	DROP table orders;
-- 	
-- 	INSERT INTO orders (product,quantity,amount,customer_id)
--     VALUES 
--     ('Product 1',1,450,5),
--     ('Product 2',1,300,6)
--     ;
--     
--     SELECT * FROM orders;


-- TRUNCATE TABLE orders;
-- TRUNCATE TABLE newcustomers;
-- DELETE FROM newcustomers WHERE (id>=1);

-- INSERT INTO newcustomers(name,email,country,age,dob)
--     VALUES 
--     ('User1','user1@gmail.com','AUS',25,'1997-05-12'),
--     ('User2','user2@gmail.com','IN',22,'2000-04-02'),
-- 	('User3','person3@gmail,com','IN',20,'2002-03-22'),
--     ('User4','person4@gmail,com','US',18,'2004-05-12'),
--     ('User5','person5@gmail,com','IN',21,'2001-06-21'),
--     ('User6','person6@gmail,com','AUS',22,'2000-07-23');
--     
--     SELECT * FROM newcustomers;
-- INSERT INTO orders (product,quantity,amount,customer_id)
-- VALUES
-- ('Product1',1,450,11),
-- ('Product1',1,450,14),
-- ('Product2',1,800,13),
-- ('Product3',1,150,15),
-- ('Product1',1,150,16),
-- ('Product4',1,500,12);

-- SELECT * FROM orders where customer_id=(
-- SELECT id FROM newcustomers WHERE email='user1@gmail.com' limit 1); 
--  
-- SELECT newcustomers.id,name,email,product,quantity,amount 
-- FROM newcustomers inner join orders
-- on newcustomers.id = orders.customer_id;

-- SELECT newcustomers.id,name,email,product,quantity,amount 
-- FROM newcustomers inner join orders
-- on newcustomers.id = orders.customer_id
-- where newcustomers.id in(13,14,15);

-- SELECT newcustomers.id,name,email,product,quantity,amount 
-- FROM newcustomers left join orders
-- on newcustomers.id = orders.customer_id;

-- ALTER TABLE orders DROP COLUMN product;

-- SELECT * FROM orders;

-- CREATE TABLE products(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(50) NOT NULL,
--     price INT NOT NULL DEFAULT 0
--     );
--     
-- INSERT INTO products(name,price)
-- VALUES
-- ('Product1',450),
-- ('Product1',500),
-- ('Product2',800);


-- ALTER TABLE orders ADD COLUMN product_id INT;

-- ALTER TABLE orders 
-- ADD CONSTRAINT FK_orders_product_id foreign key (product_id)
-- references products(id); 

-- ALTER TABLE orders MODIFY COLUMN product_id INT NOT NULL;

-- SELECT *
-- FROM newcustomers INNER JOIN orders
-- ON newcustomers.id = orders.customer_id
-- INNER JOIN products
-- ON orders.product_id = products.id;

-- CREATE VIEW viewAlldata
-- AS
-- SELECT 
-- 	newcustomers.id as customer_id,
--     newcustomers.name as customer_name,
--     newcustomers.email,
--     products.name as product_name,
--     products.price,
--     orders.id as order_id,
--     orders.amount,
--     orders.quantity
-- FROM newcustomers INNER JOIN orders
-- ON newcustomers.id =orders.customer_id
-- INNER JOIN products
-- ON products.id = orders.product_id;

-- SELECT * FROM viewAllData;

-- CREATE VIEW viewCustomerData
-- AS 
-- SELECT name as FullName,email as EmailID, age FROM newcustomers;

-- SELECT * FROM viewCustomerData;

-- SELECT @id:=id FROM newcustomers WHERE email='user1@gmail.com';
-- SELECT * FROM orders WHERE customer_id=@id;
																								
    
    
    
    
    

    
    
  --   CREATE DATABASE fms;
--     USE fms;
--     
--     CREATE TABLE passenger(
--     id INT PRIMARY KEY NOT NULL,
--     name VARCHAR(50),
--     user_name VARCHAR (50),
--     email VARCHAR(50) NOT NULL UNIQUE,
--     password VARCHAR(50) NOT NULL,
--     mobile INT NOT NULL UNIQUE,
--     address VARCHAR(100),
--     dob date);
--     
--     CREATE TABLE flight(
--     flight_no INT PRIMARY KEY NOT NULL ,
--     flight_name VARCHAR (100) NOT NULL,
--     flight_description VARCHAR (100),
--     flight_total_capacity INT NOT NULL
--     );
--     
-- 	CREATE TABLE flight_schedule(
--     flight_id INT PRIMARY KEY NOT NULL,
-- 	flight_from VARCHAR(50) NOT NULL,
--     flight_to VARCHAR(50) NOT NULL,
--     flight_date DATE,
--     flight_time TIME,
--     cost INT,
--     flight_no INT,
--     CONSTRAINT FK_flight_schedule_flight_id FOREIGN KEY
--     (flight_no) REFERENCES flight(flight_no));
--     
--     CREATE TABLE booked_ticket(
--     ticket_number INT PRIMARY KEY ,
--     date_of_booking date,
--     date_of_travel date,
--     flight_no INT NOT NULL,
--     flight_from VARCHAR (50),
--     flight_to VARCHAR (50) ,
--     flight_time TIME,
--     boarding_time TIME,
--     flight_seat INT NOT NULL,
--     passenger_id INT,
--     CONSTRAINT FK_booked_ticket_FLIGHT_NO FOREIGN KEY
--     (flight_no) REFERENCES flight(flight_no),
--     CONSTRAINT FK_booked_ticket_paasenger_id FOREIGN KEY
--     (passenger_id) REFERENCES passenger(id)
--     );
--     
--      INSERT INTO flight(flight_no,flight_name,flight_description,flight_total_capacity)
--     VALUES(
--     );
--     
--      INSERT INTO flight_schedule(id,flight_from,flight_to,flight_date,flight_time,cost)
--     VALUES
--     
--     );
--     
--     INSERT INTO booked_ticket(ticket_number,dob,dot,flight_no,flight_from,flight_to,flight_time,boarding_time,flight_seat)
--     (
--     );
    
    
    
    CREATE DATABASE cab;
    USE cab;
    
    CREATE TABLE taxi(
		id INT PRIMARY KEY NOT NULL,
        name VARCHAR(10) NOT NULL,
        number_plate INT NOT NULL,
        cab_model varchar(20) NOT NULL)
        );
        
	CREATE TABLE driver(
    driver_id INT 	PRIMARY KEY NOT NULL,
    dr_name VARCHAR(10) NOT NULL,
    license_no VARCHAR(10) NOT NULL,
    dr_address VARCHAR(40) NOT NULL,
    dr_email VARCHAR(15) NOT NULL,
    dr_phone_number VARCHAR(10) NOT NULL,
    dr_gender VARCHAR(10) NOT NULL,
    dr_password VARCHAR(10) NOT NULL
    );
    
    CREATE TABLE customer(
    cid INT PRIMARY KEY NOT NULL,
	cname VARCHAR(10) NOT NULL,
    caddress VARCHAR(40) NOT NULL,
    cemail VARCHAR(15) NOT NULL,
    cphone_number VARCHAR(10) NOT NULL,
    cgender VARCHAR(10) NOT NULL,
    cpassword VARCHAR(10) NOT NULL
    );
    
    CREATE TABLE booking(
    bid  INT PRIMARY KEY NOT NULL,
    pickup VARCHAR(20),
    dropOff VARCHAR(20),
    time TIME,
    pickUpDate date,
    customer_id INT NOT NULL,
    cab_id INT NOT NULL,
    driver_id INT NOT NULL,
    CONSTRAINT FK_customer FOREIGN KEY
    (customer_id) REFERENCES customer(cid),
	CONSTRAINT FK_cab FOREIGN KEY
    (cab_id) REFERENCES taxi(id),
    CONSTRAINT FK_driver FOREIGN KEY
    (driver_id) REFERENCES driver(driver_id)
    );

    
    
create table assign(
aid int primary key not null,
driver_id int not null,
cab_id int not null,
constraint driver_id_assign_to_did_driver foreign key
(driver_id) references driver(driver_id),
constraint cab_id_assign_to_id_cab foreign key
(cab_id) references taxi(id)
);
    
    
    
	
        
    



    
    