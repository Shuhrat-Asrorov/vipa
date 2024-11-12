CREATE TABLE post_image (
    id SERIAL PRIMARY KEY,
    url_id VARCHAR(255),
    post_id INT REFERENCES post(id)
);