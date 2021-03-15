--LIKE
SELECT ProductID
     , [Name]
     , Color
     , ListPrice
     , Size
FROM Production.Product
--WHERE [Name] LIKE '%bike%' 
--AND Size LIKE '__'
WHERE Size IS NOT NULL
ORDER BY Size DESC