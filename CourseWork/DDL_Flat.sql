USE Kindergarten;

IF OBJECT_ID('[Address].Flat','U') IS NOT NULL
    DROP TABLE [Address].Flat;

CREATE TABLE [Address].Flat
(
      ID INT 
      CONSTRAINT PK_Flat 
        PRIMARY KEY 
    , ID_Building INT 
      CONSTRAINT FK_Building_Flat
        FOREIGN KEY (ID) 
      REFERENCES [Address].Building
      ON DELETE CASCADE
    , FlatNumber INT 
      CONSTRAINT UQ_Flat_FlatNumber UNIQUE
      NOT NULL      
);