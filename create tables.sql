create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table concessions (
	concession_id SERIAL primary key,
	concession_name VARCHAR(100),
	concession_quantity NUMERIC(2),
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2)
);

create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(150),
	theater_id NUMERIC(3)
);

create table tickets (
	ticket_order_id SERIAL primary key,
	movie_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id),
	seat_id VARCHAR(3),
	ticket_cost NUMERIC(8,2),
	total_cost NUMERIC(10,2)
);

create table payments (
	order_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	ticket_order_id INTEGER,
	foreign key(ticket_order_id) references tickets(ticket_order_id),
	concession_id INTEGER,
	foreign key(concession_id) references concessions(concession_id),
	order_date DATE default CURRENT_DATE
);
