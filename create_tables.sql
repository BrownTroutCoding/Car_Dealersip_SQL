-- Car Dealership

--Tables

--create customer table
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100),
	email VARCHAR(50),
	phone VARCHAR(20)	
);


create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table sales_associate (
	sales_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table parts (
	part_id SERIAL primary key,
	part VARCHAR(50),
	price NUMERIC(10,2)
);

create table car (
	car_id SERIAL primary key,
	customer_id INT references customer(customer_id),
	sales_id INT references sales_associate(sales_id),
	make VARCHAR(50),
	model VARCHAR(50),
	color VARCHAR(50),
	year VARCHAR(4),
	price NUMERIC(10,2)
);


create table sales_ticket (
	sales_ticket_id SERIAL primary key,
	car_id INT references car(car_id),
	sales_id INT references sales_associate(sales_id),
	new_car BOOLEAN,
	used_car BOOLEAN
);

create table service_ticket (
	ticket_id SERIAL primary key,
	customer_id INT references customer(customer_id),
	mechanic_id INT references mechanic(mechanic_id),
	car_id INT references car(car_id),
	part_id INT references parts(part_id),
	serial_num VARCHAR(50),
	date_in DATE,
	date_out DATE,
	service_description VARCHAR(300),
	total NUMERIC(10,2)
);


create table invoice (
	invoice_id SERIAL primary key,
	customer_id INT references customer(customer_id),
	car_id INT references car(car_id),
	ticket_id INT references service_ticket(ticket_id),
	sales_id INT references sales_associate(sales_id),
	total NUMERIC(10,2)
);
		
