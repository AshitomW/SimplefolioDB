-- Insert Data into Investor Table
INSERT INTO Investor (first_name, last_name, email) 
VALUES 
('Alice', 'Smith', 'alice.smith@example.com'),
('Bob', 'Johnson', 'bob.johnson@example.com'),
('Charlie', 'Brown', 'charlie.brown@example.com');

-- Insert Data into Portfolio Table
INSERT INTO Portfolio (investor_id, portfolio_name) 
VALUES 
(1, 'Alice Investment Portfolio'),
(2, 'Bob Tech Investments'),
(3, 'Charlie Growth Portfolio');

-- Insert Data into Stock Table
INSERT INTO Stock (symbol, company_name, sector, current_price,price_last_updated) 
VALUES 
('AAPL', 'Apple Inc.', 'Technology', 180,'2024-12-28'),
('GOOGL', 'Alphabet Inc.', 'Technology',220, '2024-12-28'),
('TSLA', 'Tesla Inc.', 'Automotive', 485,'2024-12-28'),
('AMZN', 'Amazon.com Inc.', 'Retail',520, '2024-12-28'),
('MSFT', 'Microsoft Corp.', 'Technology',890, '2024-12-28');

-- Insert Data into Investments Table
INSERT INTO Investments (portfolio_id, stock_id, quantity, last_updated) 
VALUES 
(1, 1, 50, '2024-12-29'),
(1, 2, 20, '2024-12-29'),
(2, 3, 30, '2024-12-29'),
(3, 4, 15, '2024-12-29'),
(3, 5, 25, '2024-12-29');

-- Insert Data into Transaction Table
INSERT INTO Transaction (investment_id, stock_id, transaction_type, quantity, price_per_share, transaction_date) 
VALUES 
(1, 1, 'Buy', 50, 180.00, '2024-12-28'),
(2, 2, 'Buy', 20, 1400.50, '2024-12-28'),
(3, 3, 'Buy', 30, 750.75, '2024-12-28'),
(4, 4, 'Buy', 15, 3200.00, '2024-12-28'),
(5, 5, 'Buy', 25, 250.25, '2024-12-28'),
(1, 1, 'Sell', 10, 190.00, '2024-12-29'),
(3, 3, 'Sell', 5, 770.00, '2024-12-29');