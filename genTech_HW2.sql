-- Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.
SELECT Phone
FROM Suppliers
WHERE NOT COUNTRY IN ('Germany','France')

-- Добавить два произвольных товара.
INSERT INTO Products(ProductName, Price)
VALUES
    ("someProduct_1", 99.99),
    ("someProduct_2", 90)

-- Удалить поставщиков из USA и Germany.
DELETE FROM Suppliers
WHERE
Country IN ('USA','Germany')

-- Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.
SELECT * 
FROM Products
    WHERE Price <= 20
AND 
    CategoryID IN (3, 6)
ORDER BY Price DESC 

-- Вывести номера трех последних заказов.
SELECT * 
FROM Orders
ORDER BY OrderDate DESC
LIMIT 3

-- 2 способ, мне кажется более верным
SELECT * 
FROM Orders
ORDER BY OrderID DESC
LIMIT 3
