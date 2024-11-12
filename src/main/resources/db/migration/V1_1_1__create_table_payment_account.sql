CREATE TABLE payment_account (
    id SERIAL PRIMARY KEY,
    client_id INT,
    card_number VARCHAR(20),
    current_sum INT,
    password VARCHAR(255)
);