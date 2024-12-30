
CREATE TABLE IF NOT EXISTS Portfolio (
    portfolio_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for the portfolio
    investor_id INT NOT NULL,                             -- Investor's unique identifier, foreign key reference
    portfolio_name VARCHAR(100) NOT NULL,        -- Name of the portfolio
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Date when the portfolio was created
    FOREIGN KEY (investor_id) REFERENCES Investor(investor_id)  -- Link to Investor table
);