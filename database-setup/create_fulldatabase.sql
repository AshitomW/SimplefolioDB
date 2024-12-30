CREATE DATABASE IF NOT EXISTS simplefoliodb;

Use simplefoliodb;
-- Investors Table Schema
CREATE TABLE IF NOT EXISTS Investor (
    investor_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique identifier for the investor
    first_name VARCHAR(100) NOT NULL,             -- Investor's first name
    last_name VARCHAR(100) NOT NULL,              -- Investor's last name
    email VARCHAR(100) NOT NULL UNIQUE,           -- Investor's email address, should be unique
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Date when the investor registered
);

-- Portfolio Table Schema

CREATE TABLE IF NOT EXISTS Portfolio (
    portfolio_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for the portfolio
    investor_id INT NOT NULL,                             -- Investor's unique identifier, foreign key reference
    portfolio_name VARCHAR(100) NOT NULL,        -- Name of the portfolio
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Date when the portfolio was created
    FOREIGN KEY (investor_id) REFERENCES Investor(investor_id)  -- Link to Investor table
);

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

-- Investments table Schema


CREATE TABLE IF NOT EXISTS Investments (
	investment_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique Identifier For Investment, Auto Incremented
    portfolio_id INT NOT NULL, -- Portfolio Identifier Related To The Investment
    stock_id INT NOT NULL, -- Stock Identifier Related To The Investment
    quantity INT NOT NULL, -- Quantity Of Stock In Investment
	last_updated DATE NOT NULL, -- Date when the investment was last updated
    FOREIGN KEY (portfolio_id) REFERENCES Portfolio(portfolio_id), -- Foreign Key Linking To Protfolio Table
    FOREIGN KEY (stock_id) REFERENCES Stock(stock_id) -- Foreign Key Linking To Stocks Table
);


-- Transaction table Schema


CREATE TABLE IF NOT EXISTS Transaction (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique Identifier For Transaction
  investment_id INT NOT NULL, --  Identifier For Investment Related To Transaction
  stock_id INT NOT NULL, --  Identifier For Stock  Related To Transaction
  transaction_type VARCHAR(50) NOT NULL, -- Type Of Transaction (e.g 'Buy' or 'Sell'),
  quantity INT NOT NULL, -- Quantity Of Stock Involved in Transaction
  price_per_share DECIMAL(15,2) NOT NULL, -- Price Per Share in The Transaction
  transaction_date DATE NOT NULL, -- Date Of Transaction
  FOREIGN KEY (investment_id) REFERENCES Investments(investment_id), -- Foreign Key Linking To Investment Table
  FOREIGN KEY (stock_id) REFERENCES Stock(stock_id) -- Foreign Key Linking To The Stock Table
);




-- Populating Data