-- inserting data into tables using new or add functions

select new_customer ('Kurtis', 'Beveridge', 'Bozeman MT', 'kurtis@gmail.com', '(555)123-1234');
select new_customer ('Olive', 'Beveridge', 'Bozeman MT', 'Olive@gmail.com', '(555)123-1222');
select new_customer ('Theodore', 'Needmore', 'Alexandria VA', 'Theo@gmail.com', '(555)585-8623');
select new_customer ('John', 'Thstevenson', 'Helena MT', 'John@gmail.com', '(555)222-8689');
select new_customer ('Sandy', 'Cheeks', 'Under The Sea', 'Sandy@gmail.com', '(555)658-1565');
select new_customer ('Spongebob', 'Sqaurepants', 'Pinapple Under The Sea', 'Spongebob@gmail.com', '(555)658-2255');
select * from customer


select add_mechanic ('Sir', 'Wrench');
select add_mechanic ('Sarah', 'Oilchanger');
select add_mechanic ('Swings', 'Hammerson');
select * from mechanic


select add_sales ('Selling', 'Moar');
select add_sales ('Honest', 'Abe');
select add_sales ('Will', 'Jum');
select * from sales_associate


select add_parts ('supercharger', 8000);
select add_parts ('catback exhause', 2000);
select add_parts ('battery', 300);
select add_parts ('coolant reservoir', 200);
select add_parts ('tail light', 300);
select add_parts ('headlight', 400);
select * from parts


select add_car ( 1, 'Toyota', '4Runner', 'Black', '2015');
select add_car ( 2, 'Toyota', 'Highlander', 'Silver', '2022');
select add_car ( 3, 'Subaru', 'Forester', 'Silver', '2005');
select add_car ( 4, 'Subaru', 'STI', 'Green', '2022');
select add_car ( 5, 'Volkswagen', 'GTI', 'Black', '2016');
select add_car ( 6, 'Mercedes-Benz', 'c600', 'Black', '2022');
select * from car


select add_sales_ticket (1, 1, false, true);
select add_sales_ticket (2, 2, true, false);
select add_sales_ticket (3, 3, false, true);
select * from sales_ticket


select add_service_ticket (4, 1, 4, 4, 'JTMWF4DV8C5047998', '2023-02-01', '2023-02-02', 'Coolant resovoir was faulty and leaking, removed and installed new resovoir.', 600);
select add_service_ticket (5, 2, 5, 5, '1JCCN18N0CT047552', '2023-02-02', '2023-02-03', 'Faulty tail light assembly, removed and installed new assembly.', 1000);
select add_service_ticket (6, 3, 6, 6, 'JH4KA3260LC000123', '2023-02-02', '2023-02-03', 'Headlight assembly broken due to accident, removed and installed new headlight assembly. Slight paint repair under headlight on front bumper.', 1200);
select * from service_ticket


select add_invoice (1, 1, null, 1, 35000);
select add_invoice (2, 2, null, 2, 50000);
select add_invoice (3, 3, null, 2, 15000);
select add_invoice (4, 4, 4, null, 600);
select add_invoice (5, 5, 5, null, 1000);
select add_invoice (6, 6, 6, null, 1200);
select * from invoice


