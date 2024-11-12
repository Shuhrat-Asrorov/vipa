CREATE TABLE completed_order (
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES client(id),
    price INT,
    address VARCHAR(150),
    delivery_method VARCHAR(50)
);