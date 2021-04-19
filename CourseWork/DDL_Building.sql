USE Kindergarten;

IF OBJECT_ID('[Address].Building','U') IS NOT NULL
    DROP TABLE [Address].Building;

CREATE TABLE [Address].Building
(
      ID INT 
      CONSTRAINT PK_Building 
        PRIMARY KEY 
    , ID_House INT NOT NULL 
      CONSTRAINT FK_House_Building
        FOREIGN KEY (ID) 
      REFERENCES [Address].House
      ON DELETE CASCADE
    , Building NVARCHAR(15) NOT NULL
      CONSTRAINT UN_Building_Building
        UNIQUE      
);