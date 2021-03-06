CREATE DATABASE campus_practice_sql
GO

USE campus_practice_sql
GO

CREATE TABLE Company
(
    Id      INT PRIMARY KEY IDENTITY (1, 1),
    Name    VARCHAR(150) UNIQUE,
    Address VARCHAR(MAX)
)
GO

CREATE TABLE Status
(
    Id   INT PRIMARY KEY IDENTITY (1, 1),
    Name VARCHAR(50) UNIQUE
)
GO

CREATE TABLE Projects
(
    Id         INT PRIMARY KEY IDENTITY (1, 1),
    Name       VARCHAR(150) UNIQUE,
    StartDate  DATE,
    Deadline   DATE,
    FinishedOn DATE,
    StatusId   INT
        CONSTRAINT FK_Projects_Status REFERENCES Status (Id)
)
GO

CREATE TABLE Employees
(
    Id        INT PRIMARY KEY IDENTITY (1, 1),
    FirstName VARCHAR(50),
    LastName  VARCHAR(50),
    Email     VARCHAR(100) UNIQUE,
    Phone     VARCHAR(12) UNIQUE,
    Salary    FLOAT
)
GO

CREATE TABLE Projects_Employees(
    Id INT PRIMARY KEY IDENTITY (1, 1),
    ProjectId INT,
    EmployeesId INT
)
GO