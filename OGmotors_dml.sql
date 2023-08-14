insert into salesperson(
    name
) values(
    'Omar G.'
),(
    'Dylan K.'
),(
    'Christian A.'
);

insert into car(
    make,
    model,
    year,
    salesperson_id,
    new
) values(
    'Chevrolet',
    'Silverado',
    '2001',
    '1',
    'no'
),(
    'Ford',
    'Mustang',
    '2020',
    '2',
    'yes'
),(
    'Toyota',
    'Camry',
    '2018',
    '3',
    'yes'
);

insert into invoice(
    invoice_date,
    amount,
    salesperson_id
) values(
    '2023-07-25',
    '10150.00',
    '1'
),(
    '2023-04-20',
    '35000.50',
    '2'
),(
    '2023-05-10',
    '38956.99',
    '3'
);

insert into customer(
    full_name,
    drivers_license,
    car_id,
    invoice_id
) values(
    'Michelle Silva',
    'Y253159',
    '7',
    '1'
),(
    'Isaac Doria',
    'Y698541',
    '8',
    '2'
),(
    'Jake Mandy',
    'F349876',
    '9',
    '3'
);

insert into service_ticket(
    customer_id,
    sv_ticket_date,
    issues,
    car_id
) values(
    '10',
    '2023-04-10',
    'alternator',
    '7'
), (
    '11',
    '2023-05-15',
    'battery',
    '8'
);

insert into service_history(
    car_id,
    sv_ticket_id,
    repair_done
) values(
    '7',
    '5',
    'fixed alternator'
), (
    '8',
    '6',
    'fixed battery'
);

insert into mechanic(
    specialty
) values(
    'electrical'
), (
    'suspension'
);

insert into mechanic_assignment(
    mechanic_id,
    sv_ticket_id
) values(
    '1',
    '5'
), (
    '2',
    '6'
);

update car
set sv_history_id = 1
where car_id = 1;

update car
set sv_history_id = 6
where car_id = 9;