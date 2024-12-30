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

