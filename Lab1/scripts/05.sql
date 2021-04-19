--NULLIF()
--5. Показать поля [Name], цвет (Color), если цвет красный, то изменить значение на NULL, размер (Size), если размер L, то изменить значение на 48, цена товара (ListPrice) из таблицы Production.Product. Показать только записи, где цвет известен. Провести сортировку по цене товара в порядке убывания цены.
SELECT [Name] AS [Имя]
     , Color
     , NULLIF(Color, 'red') AS [If red than NULL]
     , Size
     , ISNULL(NULLIF(Size, 'L'),'48') AS [Size L = 48]
     , ListPrice
FROM Production.Product
WHERE Color IS NOT NULL
ORDER BY ListPrice DESC