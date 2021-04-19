USE Kindergarten;

IF OBJECT_ID('[Address].[Address]','U') IS NOT NULL
    DROP TABLE [Address].[Address];

CREATE TABLE [Address].[Address]
(
    ID INT 
    CONSTRAINT PK_Address 
        PRIMARY KEY 
  , ID_Street INT NOT NULL 
    CONSTRAINT FK_Address_Street
        FOREIGN KEY (ID) 
    REFERENCES [Address].Street
    ON DELETE NO ACTION
  , ID_House INT NOT NULL 
    CONSTRAINT FK_Address_House
        FOREIGN KEY (ID) 
    REFERENCES [Address].House
    ON DELETE NO ACTION
  , ID_Building INT NOT NULL 
    CONSTRAINT FK_Address_Building
        FOREIGN KEY (ID) 
    REFERENCES [Address].Building
    ON DELETE NO ACTION
  , ID_Flat INT NOT NULL 
    CONSTRAINT FK_Address_Flat
        FOREIGN KEY (ID) 
    REFERENCES [Address].Flat
    ON DELETE NO ACTION
);