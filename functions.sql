-- functions to add data into tables

-- add customer function
create function add_customer(
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
	insert into customer(customer_id, first_name, last_name, address, email, phone)
	values (_customer_id, _first_name, _last_name, _address, _email, _phone);
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
	insert into mechanic(mechanic_id, first_name, last_name)
	values (_mechanic_id, _first_name, _last_name);
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
	insert into sales_associate(sales_id, first_name, last_name)
	values (_sales_id, _first_name, _last_name);
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
	insert into parts(part_id, part, price)
	values (_part_id, _part, _price);
end;
$MAIN$
language plpgsql;


-- add car


-- sales_ticket


-- add service_ticket


-- add service_car


-- add service_history


-- add invoice