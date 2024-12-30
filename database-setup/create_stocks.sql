-- Stocks Table Schema
CREATE TABLE IF NOT EXISTS Stock (
 stock_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the stock
 symbol VARCHAR(10) NOT NULL,  -- Symbol representing the stock
 company_name VARCHAR(255) NOT NULL, -- Name of the company the stock represents
 current_price DECIMAL(15,2) NOT NULL, -- current price of stock
 sector VARCHAR (100) , -- Sector in which the company operates
 price_last_updated DATE, -- Date when the stock price was last updated
 UNIQUE (symbol) -- Ensures each stock symbol is unique
);



