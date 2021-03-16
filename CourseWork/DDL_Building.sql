CREATE TABLE [Address].Building
(
      ID INT 
      CONSTRAINT PK_Building PRIMARY KEY 
    , Building NVARCHAR(15)
    , ID_Flat INT
      CONSTRAINT FK_Building_Flat
      FOREIGN KEY REFERENCES [Address].Flat (ID) 
);