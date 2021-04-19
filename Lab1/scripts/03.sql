--3. Показать поля ProductID, [Name], Color, ListPrice, Size из таблицы Production.Product. Показать только те записи, где цена товара находится в диапазоне от $0.1 $200 и цвет продукта красный или синий, размер равен 38, 40, 42, 44.

SELECT ProductID
     , [Name]
     , Color
     , ListPrice
     , Size
FROM Production.Product
WHERE ListPrice BETWEEN 0.1 AND 200
    AND Color = 'Red' OR Color = 'blue'
   AND Size IN ('38','40','42','44')