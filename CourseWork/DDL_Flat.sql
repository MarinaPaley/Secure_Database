CREATE TABLE [Address].Flat
(
      ID INT 
      CONSTRAINT PK_Flat PRIMARY KEY 
    , FlatNumber INT 
      CONSTRAINT UQ_Flat_FlatNumber UNIQUE
      NOT NULL      
);