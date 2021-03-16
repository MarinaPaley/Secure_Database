--4.Показать поля ProductID, [Name], Color, ListPrice, Size из таблицы Production.Product. Показать записи, где размер определен (известен). Выполнить сотировку по увеличению размера.
SELECT ProductID
     , [Name]
     , Color
     , ListPrice
     , Size
FROM Production.Product
WHERE Size IS NOT NULL
ORDER BY Size DESC