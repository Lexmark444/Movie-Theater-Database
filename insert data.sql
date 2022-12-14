-- Make actual data for customer table
insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Krishna',
	'Patel',
	'555 Nice Try Street, MI 55555',
	'4242-2424-4242-4242 555 01/20'
);

-- Make actual data for concessions table
insert into concessions( 
	concession_id,
	concession_name,
	concession_quantity,
	sub_total,
	total_cost
) values (
	1,
	'Nachos',
	1,
	9.99,
	10.69
);

--Make actual data for movies table
insert into movies(
	movie_id,
	movie_name,
	theater_id
) values (
	1,
	'Role Models',
	1
);

--Make actual data for tickets table
insert into tickets (
	ticket_order_id,
	movie_id,
	seat_id,
	ticket_cost,
	total_cost
) values (
	1,
	1,
	'K10',
	13.49,
	14.44
);

--Make actual data for payments table
insert into payments(
	order_id ,
	customer_id ,
	ticket_order_id ,
	concession_id
) values (
	1,
	1,
	1,
	1
);
