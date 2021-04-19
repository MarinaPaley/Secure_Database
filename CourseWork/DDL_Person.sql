USE Kindergarten;

IF OBJECT_ID('Person.Person','U') IS NOT NULL
    DROP TABLE Person.Person;

CREATE TABLE Person.Person
(
    ID INT 
    CONSTRAINT PK_Person
        PRIMARY KEY 
  , ID_Address INT NOT NULL
   CONSTRAINT FK_Address_Person -- 1-1 relation
        FOREIGN KEY (ID) 
    REFERENCES [Address].[Address]
  , FirstName NVARCHAR(25) NOT NULL
   CHECK (LEN(FirstName) > 0)
  , MiddleName NVARCHAR(25)
   CHECK (LEN(MiddleName) > 0)
   , LastName NVARCHAR(25) NOT NULL
   CHECK (LEN(LastName) > 0)
   , PassportNumber NVARCHAR(15) NOT NULL 
   CONSTRAINT UN_Person_PassportNumber
    UNIQUE
   , PassportRegistration NVARCHAR(100) NOT NULL
   , PassportDate DATE NOT NULL
   CHECK (PassportDate < GETDATE())
   , HealthInsurancePolicy NVARCHAR(100) NOT NULL
   CONSTRAINT UN_Person_HealthInsurancePolicy
   UNIQUE
   , Gender NCHAR(1) NOT NULL
   CHECK (Gender = N'м' OR Gender = N'ж')
);