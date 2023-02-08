-- functions to add data into tables


create function new_customer(
	_first_name VARCHAR(50),
	_last_name VARCHAR(50),
	_address VARCHAR(100),
	_email VARCHAR(50),
	_phone VARCHAR(20)
)
returns void
as
$MAIN$
begin 
	insert into customer(first_name, last_name, address, email, phone)
	values (_first_name, _last_name, _address, _email, _phone);
end;
$MAIN$
language plpgsql;


-- add mechanic function
create function add_mechanic(
	_first_name VARCHAR(50),
	_last_name VARCHAR(50)
)
returns void
as
$MAIN$
begin 
	insert into mechanic(first_name, last_name)
	values (_first_name, _last_name);
end;
$MAIN$
language plpgsql;


-- add sales associate function
create function add_sales(
	_first_name VARCHAR(50),
	_last_name VARCHAR(50)
)
returns void
as
$MAIN$
begin 
	insert into sales_associate(first_name, last_name)
	values (_first_name, _last_name);
end;
$MAIN$
language plpgsql;


-- add parts function
create function add_parts(
	_part VARCHAR(50),
	_price NUMERIC(10,2)
)
returns void
as
$MAIN$
begin 
	insert into parts(part, price)
	values (_part, _price);
end;
$MAIN$
language plpgsql;


-- add car
create function add_car(
	_customer_id INT,
	_make VARCHAR(50),
	_model VARCHAR(50),
	_color VARCHAR(50),
	_year VARCHAR(4)
)
returns void
as
$MAIN$
begin 
	insert into car(customer_id, make, model, color, year)
	values (_customer_id, _make, _model, _color, _year);
end;
$MAIN$
language plpgsql;


-- sales_ticket
create function add_sales_ticket(
	_car_id INT,
	_sales_id INT,
	_new_car BOOLEAN,
	_used_car BOOLEAN
)
returns void
as
$MAIN$
begin 
	insert into sales_ticket(car_id, sales_id, new_car, used_car)
	values (_car_id, _sales_id, _new_car, _used_car);
end;
$MAIN$
language plpgsql;

-- add sales_ticket
create function add_sales_ticket(
	_car_id INT,
	_sales_id INT,
	_new_car BOOLEAN,
	_used_car BOOLEAN
)
returns void
as
$MAIN$
begin 
	insert into sales_ticket(car_id, sales_id, new_car, used_car)
	values (_car_id, _sales_id, _new_car, _used_car);
end;
$MAIN$
language plpgsql;

-- add service_ticket
create function add_service_ticket(
	_customer_id INT,
	_mechanic_id INT,
	_car_id INT,
	_part_id INT,
	_serial_num VARCHAR(50),
	_date_in DATE,
	_date_out DATE,
	_service_description VARCHAR(300),
	_total NUMERIC(10,2)
)
returns void
as
$MAIN$
begin 
	insert into service_ticket (customer_id, mechanic_id, car_id, part_id, serial_num, date_in, date_out, service_description, total)
	values (_customer_id, _mechanic_id, _car_id, _part_id, _serial_num, _date_in, _date_out, _service_description, _total);
end;
$MAIN$
language plpgsql;

-- add invoice
create function add_invoice(
	_customer_id INT,
	_car_id INT,
	_ticket_id INT,
	_sales_id INT,
	_total NUMERIC(10,2)
)
returns void
as
$MAIN$
begin 
	insert into invoice(customer_id, car_id, ticket_id, sales_id, total)
	values (_customer_id, _car_id, _ticket_id, _sales_id, _total);
end;
$MAIN$
language plpgsql;