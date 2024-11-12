CREATE TABLE message (
    id SERIAL PRIMARY KEY,
    sender_id INT REFERENCES client(id),
    recipient_id INT REFERENCES client(id),
    text VARCHAR(255),
    send_time TIMESTAMP
);