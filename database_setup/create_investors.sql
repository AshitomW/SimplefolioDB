-- Investors Table Schema
CREATE TABLE IF NOT EXISTS Investor (
    investor_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique identifier for the investor
    first_name VARCHAR(100) NOT NULL,             -- Investor's first name
    last_name VARCHAR(100) NOT NULL,              -- Investor's last name
    email VARCHAR(100) NOT NULL UNIQUE,           -- Investor's email address, should be unique
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Date when the investor registered
);