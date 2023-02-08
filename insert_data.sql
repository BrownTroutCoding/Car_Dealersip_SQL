-- inserting data into tables 
select add_customer(1, 'Kurtis', 'Beveridge', 'Bozeman MT', 'kurtis@gmail.com', '(555)123-1234')
















-- OLD INSERT DATA
-- customer table
INSERT INTO customer (customer_id, first_name, last_name, address, email, phone)
VALUES (1, 'Kurtis', 'Beveridge', 'Bozeman MT', 'kurtis@gmail.com', '(555)123-1234'),
		(2, 'Olive', 'Beveridge', 'Bozeman MT', 'Olive@gmail.com', '(555)134-1634'),
		(3, 'Theodore', 'Needmore', 'Alexandria VA', 'Theo@gmail.com', '(555)585-8623');


-- mechanic table
INSERT INTO mechanic (mechanic_id, first_name, last_name)
VALUES (200, 'Sir', 'Wrench');

INSERT INTO mechanic (mechanic_id, first_name, last_name)
VALUES (100, 'Sarah', 'Oilchanger');

INSERT INTO mechanic (mechanic_id, first_name, last_name)
VALUES (15, 'Honest', 'Abe');

-- sales_associate table

INSERT INTO sales_associate (sales_id, first_name, last_name)
VALUES (375, 'Selling', 'Moar');

INSERT INTO sales_associate (sales_id, first_name, last_name)
VALUES (450, 'Will', 'Jum');

INSERT INTO sales_associate (sales_id, first_name, last_name)
VALUES (250, 'Swings', 'Hammerson');

-- dealership table
INSERT INTO dealership (dealership_id, sales_id, mechanic_id, address, city, phone_number)
VALUES (1, 375, 200, '123 Main St', 'Bozeman', '555-555-1212'),
       (2, 450, 200, '77 Bear Rd', 'Helena', '555-555-1216'),
       (3, 250, 15, '789 Pine Rd', 'Billings', '555-555-1214');
      
-- parts table
INSERT INTO parts (part_id, part, price)
VALUES (8995, 'supercharger', 8000),
		(258, 'catback exhause', 2000),
		(53224, 'roof rack', 1000),
		(23, 'coolant reservoir', 150),
		(561, 'tail light', 300),
		(4651, 'headlight', 400);

-- car table
INSERT INTO car (car_id, customer_id, sales_id, make, model, color, year, price)
VALUES (5, 1, 375, 'Toyota', '4Runner', 'Black', 2015, 40000),
		(10, 2, 450, 'Toyota', 'Highlander', 'Silver', 2023, 60000);
	
INSERT INTO car (car_id, customer_id, sales_id, make, model, color, year, price)
VALUES (50, 3, Null, 'Toyota', 'Camry', 'Grey', 2000, Null),
	
-- sales_ticket
INSERT INTO sales_ticket (sales_ticket_id, car_id, sales_id, new_car, used_car)
VALUES (500, 5, 375, false, true),
		(700, 10, 450, true, false);