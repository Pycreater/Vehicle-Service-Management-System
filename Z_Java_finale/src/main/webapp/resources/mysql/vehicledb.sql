CREATE TABLE users (
    user_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE customer_table (
    customer_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    customer_contact VARCHAR(20) NOT NULL,
    customer_email VARCHAR(255) NOT NULL UNIQUE,
    address TEXT NOT NULL,
    request_date DATE,
    status VARCHAR(255)
);
CREATE TABLE vehicle_table (
    vehicle_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vehicle_type VARCHAR(20) NOT NULL,
    customer_id INT(11),
    vehicle_name VARCHAR(255) NOT NULL,
    registration_number VARCHAR(20) NOT NULL,
    services VARCHAR(255) NOT NULL,
    request_date DATE,
    status VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer_table(customer_id)
);
