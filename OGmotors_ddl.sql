create table salesperson(
    salesperson_id serial primary key,
    name varchar(25)
); 

create table car(
    car_id serial primary key,
    make varchar(25),
    model varchar(25),
    year integer,
    salesperson_id integer,
    sv_history_id integer,
    new varchar(5)
);

create table customer(
    customer_id serial primary key,
    full_name varchar(100),
    drivers_license varchar,
    car_id VARCHAR(50),
    invoice_id integer
);

create table invoice(
    invoice_id serial primary key,
    invoice_date date,
    amount money,
    salesperson_id integer
);

create table service_ticket(
    sv_ticket_id serial primary key,
    customer_id integer,
    sv_ticket_date date,
    issues varchar(100),
    car_id integer
);

create table service_history(
    sv_history_id serial primary key,
    car_id integer,
    sv_ticket_id integer,
    repair_done varchar(100)
);

create table mechanic_assignment(
    assignment_id serial primary key,
    mechanic_id integer,
    sv_ticket_id integer
);

create table mechanic(
    mechanic_id serial primary key,
    specialty VARCHAR(100)
);

alter table car 
add foreign key (salesperson_id) references salesperson(salesperson_id),
add foreign key (sv_history_id) references service_history(sv_history_id);

alter table customer
alter column car_id  type integer
USING car_id::integer;

alter table customer
add foreign key (car_id) references car(car_id),
add foreign key (invoice_id) references invoice(invoice_id);

alter table invoice
add foreign key (salesperson_id) references salesperson(salesperson_id);

alter table service_ticket
add foreign key (customer_id) references customer(customer_id),
add foreign key (car_id) references car(car_id);

alter table service_history
add foreign key (car_id) references car(car_id),
add foreign key (sv_ticket_id) references service_ticket(sv_ticket_id);

alter table mechanic_assignment
add foreign key (mechanic_id) references mechanic(mechanic_id),
add foreign key (sv_ticket_id) references service_ticket(sv_ticket_id);

