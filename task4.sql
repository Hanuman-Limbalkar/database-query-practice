-- Sample table
CREATE TABLE Sales (
    SaleID INTEGER PRIMARY KEY,
    Product TEXT,
    Category TEXT,
    Quantity INTEGER,
    Price REAL
);

-- Insert data
insert into sales values (1,"LCD","electronics",10,10000);
insert into sales values (1,"Mobile","electronics",10,15000);
INSERT INTO Sales VALUES (1, 'Apple', 'Fruit', 100, 1000);

-- Total sales value
SELECT SUM(Quantity * Price) AS TotalRevenue FROM Sales;

-- Average price per category
SELECT Category, AVG(Price) AS AvgPrice
FROM Sales
GROUP BY Category;

-- Total quantity sold per product
SELECT Product, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY Product;

-- Count of sales per category
SELECT Category, COUNT(*) AS NumberOfSales
FROM Sales
GROUP BY Category;

-- Categories with total quantity sold > 20
SELECT Category, SUM(Quantity) AS TotalQty
FROM Sales
GROUP BY Category
HAVING TotalQty > 20;
