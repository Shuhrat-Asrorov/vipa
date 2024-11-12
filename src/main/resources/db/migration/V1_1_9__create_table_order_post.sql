CREATE TABLE order_post (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES completed_order(id),
    post_id INT REFERENCES post(id)
);