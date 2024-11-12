CREATE TABLE cart_post (
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES client(id),
    post_id INT REFERENCES post(id)
);