-- Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.
SELECT Phone
FROM Suppliers
WHERE NOT COUNTRY IN ('Germany','France')

-- Для товаров до 10 EUR установить категорию 8 и применить наценку в 20%.
UPDATE Products
SET
    CategoryID = 8,
    Price = Price*1.2
WHERE Price <= 10

-- Удалить поставщиков из USA и Germany.
DELETE FROM Suppliers
WHERE
Country IN ('USA','Germany')

--  Добавить два поставщика из Spain с произвольными номерами телефонов.
INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES
    (NULL, NULL, NULL, NULL, NULL, 'Spain', +342564784562),
    (NULL, NULL, NULL, NULL, NULL, 'Spain', +342549965358)

-- Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.
SELECT * 
FROM [Products]
    WHERE Price <= 20
AND 
    CategoryID IN (3, 6)
ORDER BY Price DESC 

-- Вывести три самых дорогих товара до 200 EUR.
SELECT * 
FROM [Products]
WHERE 
     Price <= 200
ORDER BY Price DESC
LIMIT 3
