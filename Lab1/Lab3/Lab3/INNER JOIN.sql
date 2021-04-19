--INNER JOIN
--OLD STYLE, COUD BE ERROR
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
