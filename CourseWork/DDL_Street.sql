USE Kindergarten;

IF OBJECT_ID('[Address].Street','U') IS NOT NULL
    DROP TABLE [Address].Street;

CREATE TABLE [Address].Street
(
    ID INT NOT NULL
    CONSTRAINT PK_Street
        PRIMARY KEY
  , Street NVARCHAR(100) NOT NULL
    CONSTRAINT UN_Street_Street
        UNIQUE
);