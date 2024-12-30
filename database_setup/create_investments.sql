
CREATE TABLE IF NOT EXISTS Investments (
	investment_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique Identifier For Investment, Auto Incremented
    portfolio_id INT NOT NULL, -- Portfolio Identifier Related To The Investment
    stock_id INT NOT NULL, -- Stock Identifier Related To The Investment
    quantity INT NOT NULL, -- Quantity Of Stock In Investment
	last_updated DATE NOT NULL, -- Date when the investment was last updated
    FOREIGN KEY (portfolio_id) REFERENCES Portfolio(portfolio_id), -- Foreign Key Linking To Protfolio Table
    FOREIGN KEY (stock_id) REFERENCES Stock(stock_id) -- Foreign Key Linking To Stocks Table
);