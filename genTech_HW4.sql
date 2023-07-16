-- Вывести информацию о заказах клиентов не из Germany и не из China
SELECT *   
FROM orders
INNER JOIN customers
ON orders.CustomerID = customers.CustomerID
WHERE Country not IN ('Germany', 'China')


-- Вывести два самых дорогих товара из категории Beverages
SELECT * 
FROM products
INNER JOIN categories ON products.CategoryID = categories.CategoryID
WHERE categories.CategoryName = 'Beverages'
ORDER by price desc
LIMIT 2


-- Удалить поставщиков из China

delete FROM suppliers
WHERE Country = 'China'


-- Вывести все заказы клиента 10, которые повезет Federal Shipping
SELECT * 
FROM orders
INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID
WHERE orders.CustomerID = 10 
AND shippers.ShipperName = 'Federal Shipping'


-- Вывести два самых дорогих напитка из UK
SELECT * 
FROM products
INNER JOIN categories ON products.CategoryID = categories.CategoryID
INNER JOIN Suppliers ON products.SupplierID = suppliers.SupplierID
WHERE products.CategoryID = 1 AND Country = 'UK'
ORDER by Price desc
LIMIT 2


-- Вывести страны-поставщики напитков
SELECT 
	Country as beverage_supplier_countries
FROM products
INNER JOIN categories ON products.CategoryID = categories.CategoryID
INNER JOIN Suppliers ON products.SupplierID = Suppliers.SupplierID
WHERE categories.CategoryName = 'Beverages'