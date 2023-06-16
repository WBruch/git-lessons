-- Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
    products.ProductName,
    ROUND(products.Price*1.06, 2) as price_usd
    
FROM order_details

JOIN products ON order_details.ProductID=products.ProductID
 
ORDER BY Price DESC
LIMIT 1;



-- Вывести два самых дорогих товара из категории Beverages из USA

SELECT 
    products.ProductName,
    categories.CategoryName,
    suppliers.Country,
    products.Price
    
FROM products

JOIN suppliers ON products.SupplierID=suppliers.SupplierID
JOIN categories ON products.CategoryID=categories.CategoryID

WHERE
    categories.CategoryName='Beverages'
    AND
    suppliers.Country='USA'
    
ORDER BY Price desc
LIMIT 2   



-- Вывести заказы, добавив поле доставлено (или нет), учитывая, что доставлены только 10248 и 10249

SELECT * ,

    CASE WHEN
	orders.OrderID IN(10248, 10249)
        THEN true
        ELSE false
    END AS was_delivered    
	    
FROM orders



-- Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT
    suppliers.Country
    
FROM products

JOIN suppliers ON products.SupplierID=suppliers.SupplierID
JOIN categories ON products.CategoryID=categories.CategoryID

WHERE
    categories.CategoryID=8



-- Очистить поле ContactName у всех клиентов не из China

UPDATE customers
SET
    ContactName=''
WHERE 
    Country!='China'	
 
