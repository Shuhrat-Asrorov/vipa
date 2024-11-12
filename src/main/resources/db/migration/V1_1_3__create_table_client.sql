CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    birth_date DATE,
    phone_number VARCHAR(20),
    email VARCHAR(80),
    password VARCHAR(255),
    payment_account_id INT
);