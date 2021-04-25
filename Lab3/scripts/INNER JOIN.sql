--INNER JOIN
--OLD STYLE, COULD BE ERROR
SELECT CountryRegion.CountryRegionCode
     , CountryRegion.[Name]
     , StateProvince.StateProvinceID
     , StateProvince.[Name] 
FROM Person.StateProvince
   , Person.CountryRegion
WHERE StateProvince.CountryRegionCode = CountryRegion.CountryRegionCode

--NORMAL STYLE
SELECT c.CountryRegionCode
     , c.[Name]
     , st.StateProvinceID
     , st.[Name] 
FROM Person.StateProvince AS st
INNER JOIN Person.CountryRegion AS c
ON st.CountryRegionCode = c.CountryRegionCode;

SELECT p. [Name]
     , p.[Class]
     , p.[Color]
     , m.[Name] AS Model
     , sc.[Name] AS SubCategory
     , u.[Name] AS SizeMeasure
     , w.[Name] AS WeightMeasure
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS sc
ON p.ProductSubcategoryID = sc.ProductSubcategoryID
INNER JOIN Production.ProductModel AS m
ON p.ProductModelID = m.ProductModelID
INNER JOIN Production.UnitMeasure AS u
ON u.UnitMeasureCode = p.SizeUnitMeasureCode
INNER JOIN Production.UnitMeasure AS w
ON w.UnitMeasureCode = p.WeightUnitMeasureCode
WHERE p.Class IS NOT NULL AND
      p.Color IS NOT NULL AND
      p.ProductModelID IS NOT NULL AND
      p.SizeUnitMeasureCode IS NOT NULL AND
      p.WeightUnitMeasureCode IS NOT NULL;

-- Агрегатные Функции
SELECT COUNT(p.[Name]) AS CountGoods
     , sc.[Name] AS SubCategory
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS sc
ON p.ProductSubcategoryID = sc.ProductSubcategoryID
GROUP BY sc.[Name];
