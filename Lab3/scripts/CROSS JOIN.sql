SELECT c.CountryRegionCode
     , c.[Name]
     , st.StateProvinceID
     , st.[Name] 
FROM Person.StateProvince AS st
CROSS JOIN Person.CountryRegion AS c

SELECT COUNT(*)
FROM Person.StateProvince;
SELECT COUNT(*)
FROM Person.CountryRegion;