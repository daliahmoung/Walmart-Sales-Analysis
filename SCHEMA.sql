CREATE DATABASE walmart_db;
USE walmart_db;

CREATE TABLE walmart (
  Store INT,
  Date VARCHAR(20),
  Weekly_Sales DECIMAL(12,2),
  Holiday_Flag INT,
  Temperature DECIMAL(6,2),
  Fuel_Price DECIMAL(6,3),
  CPI DECIMAL(12,7),
  Unemployment DECIMAL(6,3)
);

