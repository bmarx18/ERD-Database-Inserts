----- sales_employee -----

INSERT INTO "sales_employee"(
    employee_id,
    first_name,
    last_name
)VALUES(
    DEFAULT,
    'Gretchen',
    'Fetch'
);

INSERT INTO "sales_employee"(
    employee_id,
    first_name,
    last_name
)VALUES(
    DEFAULT,
    'Bob',
    'Smalls'
);


------ service_employee ------

INSERT INTO "service_employee"(
    service_employee_id,
    first_name,
    last_name
)VALUES(
    DEFAULT,
    'Tessie',
	'Hearts'
);

INSERT INTO "service_employee"(
    service_employee_id,
    first_name,
    last_name
)VALUES(
    DEFAULT,
    'Sir',
    'Henry'
);


----- customer -----

INSERT INTO "customer"(
    customer_id,
    first_name,
    last_name,
    email_address,
    payment_method,
    phone_number  
)VALUES(
    DEFAULT,
    'Tay Tay',
    'Swizzle',
    'taytayswizzle@swizzle.com',
    'loan',
    1234530198
);

INSERT INTO "customer"(
    customer_id,
    first_name,
    last_name,
    email_address,
    payment_method,
    phone_number 
)VALUES(
    DEFAULT,
    'Kare Bear',
    'House',
    'karebear@swizzle.com',
    'loan',
    1234530198
);


----- payment_source -----

INSERT INTO "payment_source"(
    payment_id,
    payment_type,
    down_payment,
    loan_establishment,
    loan_amount
)VALUES(
    DEFAULT,
    'loan',
    20000.00,
    'bank of houses',
    80000.00
);

INSERT INTO "payment_source"(
    payment_id,
    payment_type,
    down_payment,
    loan_establishment,
    loan_amount
)VALUES(
    DEFAULT,
    'cash',
    100000.00,
    'self',
    0   
);


----- sales_invoice -----

INSERT INTO "sales_invoice"(
    invoice_id,
    discount_code,
    total,
    total_loan_amount
)VALUES(
    DEFAULT, 
    'happy_house',
    100000.00,
    80000.00
);

INSERT INTO "sales_invoice"(
    invoice_id,
    discount_code,
    total,
    total_loan_amount
)VALUES(
    DEFAULT, 
    'NULL',
    100000.00,
    0
);

----- car -----

INSERT INTO "car"(
    vin_number,
    "year",
    make,
    model,
    condition,
    price,
    inventory_status
)VALUES(
    DEFAULT,
    2020,
    'lambo',
    'shiney',
    'new',
    100000,
    'for sale'
);

INSERT INTO "car"(
    vin_number,
    "year",
    make,
    model,
    condition,
    price,
    inventory_status
)VALUES(
    DEFAULT,
    2019,
    'Ford',
    'Ranger',
    'used',
    100000,
    'sold'
);


----- service_history -----

INSERT INTO "service_history"(
    history_id
)VALUES(
    DEFAULT
);

INSERT INTO "service_history"(
    history_id
)VALUES(
    DEFAULT
);

----- service_invoice -----

INSERT INTO "service_invoice"(
    invoice_id,
    "date",
    discount,
    total
)VALUES(
    DEFAULT,
    "22 OCTOBER 2022",
    'NULL',
    2000.50
);

INSERT INTO "service_invoice"(
    invoice_id,
    "date",
    discount,
    total
)VALUES(
    DEFAULT,
    "23 APRIL 2022",
    'happy_house',
    1010.270
);

----- parts -----

INSERT INTO "parts"(
    part_id,
    "description",
    stock_status,
    price,
    quantity
)VALUES(
    DEFAULT,
    'ferrari rear bumper',
    'in-stock',
    11537.50,
    1
);

INSERT INTO "parts"(
    part_id,
    "description",
    stock_status,
    price,
    quantity
)VALUES(
    DEFAULT,
    'Ranger Rover emblem',
    'out of stock',
    2000.00,
    0
);
