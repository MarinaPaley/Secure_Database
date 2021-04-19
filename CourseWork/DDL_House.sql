--Naming for FK_Main_Daughter
USE Kindergarten;

IF OBJECT_ID('Address.House','U') IS NOT NULL
    DROP TABLE [Address].House;

CREATE TABLE [Address].House
(
    ID INT NOT NULL
    CONSTRAINT PK_House 
        PRIMARY KEY
  , ID_Street INT NOT NULL
    CONSTRAINT FK_Street_House
    FOREIGN KEY (ID)
    REFERENCES [Address].Street
    ON DELETE CASCADE
  , House INT NOT NULL
    CONSTRAINT UN_House_House
        UNIQUE
);