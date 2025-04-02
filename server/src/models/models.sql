DROP DATABASE IF EXISTS AsiaBarRestaurant;
CREATE DATABASE AsiaBarRestaurant;
USE AsiaBarRestaurant;

CREATE TABLE Users (
    Username VARCHAR(25) PRIMARY KEY NOT NULL,
    Type VARCHAR(25) NOT NULL,
    Password VARCHAR(100) NOT NULL
);

CREATE TABLE Clients (
    IdDocument VARCHAR(20) PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(25) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

CREATE TABLE MainDish (
    Name VARCHAR(50) PRIMARY KEY NOT NULL,
    Availability INT DEFAULT TRUE NOT NULL,
    Price FLOAT NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Description VARCHAR(100)
);

CREATE TABLE SideDish (
    Name VARCHAR(50) PRIMARY KEY NOT NULL,
    Availability INT DEFAULT TRUE NOT NULL,
    Price FLOAT NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Description VARCHAR(100)
);

CREATE TABLE Product (
    Name VARCHAR(50) PRIMARY KEY NOT NULL,
    Availability INT DEFAULT TRUE NOT NULL,
    Price FLOAT NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Description VARCHAR(100),
    Provider VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL
);

CREATE TABLE Sales (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ClientIdDocument VARCHAR(20),
    FOREIGN KEY (ClientIdDocoment) REFERENCES Clients(IdDocument),
    Type VARCHAR(20) NOT NULL,
    Total FLOAT NOT NULL
);
