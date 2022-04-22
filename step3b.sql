-- Step 3b



-- Dropping tables if they already exist


DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS CustomerReviews;
DROP TABLE IF EXISTS Grocery;
DROP TABLE IF EXISTS Produce;
DROP TABLE IF EXISTS Toiletries;
DROP TABLE IF EXISTS GeneralMerchandise;
DROP TABLE IF EXISTS Shopping_Cart;
DROP TABLE IF EXISTS Products_Info;


-- Creating the tables
create table Customers (
    Customer_Name varchar(15) not null, -- 15 represents the amount of characters
    Phone_Num char(15),
    Birth_Date date,
    Address varchar(60),
    primary key (phone_Num)
);

create table CustomerReviews
(
    Customer_Name varchar(15) not null, -- 15 represents the amount of characters
    Review        varchar(50) not null

);

CREATE TABLE Products_Info (
    Product_Name varchar(15) not null,
    Number_Sold int not null,
    Most_Popular_Month varchar(15) not null,    -- Most popular month for that specific product
    Category varchar(15) not null,
    SubCategory varchar(15) not null

);

create table Grocery (
    Grocery_Name varchar(15) not null, -- 15 represents the amount of characters
    Grocery_Price varchar(7) not null,
    Grocery_ID char(9),
    Country_Of_Origin character varying(50),
    In_Stock varchar(4) not null
);

create table Produce (
    Produce_Name varchar(15) not null, -- 15 represents the amount of characters
    Produce_Price varchar(7) not null,
    Produce_ID char(9),
    Country_Of_Origin character varying(50),
    In_Stock varchar(4) not null
);


create table Toiletries (
    Toiletries_Name varchar(15) not null, -- 15 represents the amount of characters
    Toiletries_Price varchar(7) not null,
    Toiletries_ID char(9),
    Country_Of_Origin character varying(50),
    In_Stock varchar(4) not null
);


create table GeneralMerchandise (
    GeneralMerchandise_Product_Name varchar(15) not null, -- 15 represents the amount of characters
    GeneralMerchandise_Price varchar(7) not null,
    GeneralMerchandise_ID char(9),
    Country_Of_Origin character varying(50),
    In_Stock varchar(4) not null
);

create table Shopping_Cart (
    Customer_Name varchar(50) not null, -- 15 represents the amount of characters
    Order_ID char(4),
    Address varchar(50),
    Category_Purchased varchar(50) not null,
    SubCategory_Purchased varchar(50) not null,
    Shipping_Options varchar(50) not null,
    Payment_Type char(15)
);

