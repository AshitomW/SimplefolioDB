SELECT s.stock_id , s.symbol, s.company_name , i.investment_id , i.quantity 
FROM Stock s CROSS JOIN Investments i;