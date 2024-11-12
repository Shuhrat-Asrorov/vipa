CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    price INT,
    status VARCHAR(20),
    category_id INT REFERENCES category(id),
    client_id INT REFERENCES client(id),
    description VARCHAR(255),
    address VARCHAR(150),
    phone_number VARCHAR(50)
);