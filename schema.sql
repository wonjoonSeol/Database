-- Part 2.1 schema.sql
--
-- Submitted by: Wonjoon Seol, 1600465 
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

-- Create table burrito
CREATE TABLE Burrito(
	Item_ID INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
	Price Float(10,2) UNSIGNED,	-- price up to 2 dcimal places
	Description TEXT,		
	Size VARCHAR(20) NOT NULL CHECK (size="Mini" OR size="Regular"OR size="Grande"), -- Only has three sizes.
	Fillings VARCHAR(50),
	Bean VARCHAR(30),
	PRIMARY KEY (Item_ID)
);

-- Create table toppings
CREATE TABLE Toppings(
	ID INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
	Name VARCHAR(50) NOT NULL,
	Price Float(10,2) UNSIGNED DEFAULT 0,
	PRIMARY KEY (ID)
);

-- Create table beverage
CREATE TABLE Beverage(
	Item_ID INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
	Price Float(10,2) UNSIGNED NOT NULL,
	Description TEXT,
	Alcoholic BOOLEAN NOT NULL,
	Size VARCHAR(20) NOT NULL,
	PRIMARY KEY (Item_ID)
);

-- Create table market
CREATE TABLE Market(
	Postcode VARCHAR(10) UNIQUE NOT NULL,
	Name VARCHAR(50) NOT NULL,
	PRIMARY KEY (Postcode)
);

-- Create table foodtruck
CREATE TABLE Foodtruck(
	Vehicle_registration_number CHAR(8) UNIQUE NOT NULL,	-- UK vehicle number : 7 characters and a gap makes it 8 characters
	Start_Date DATE NOT NULL,		-- this should be past dates as stated in the part 1 pdf
	Schedule_Start DATE,				-- Date 
	Schedule_End DATE,					-- Date 
	Market_Postcode VARCHAR(10) NOT NULL,		-- This should be actual london post code
	PRIMARY KEY (Vehicle_registration_number),

	FOREIGN KEY (Market_Postcode)
		REFERENCES Market(Postcode)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create table Orders
CREATE TABLE Orders(
	ID INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
	Date_placed DATE NOT NULL,
	Foodtruck_VRN VARCHAR(8) NOT NULL,
	Discount_amount Float(10,2) NOT NULL DEFAULT 0,
	PRIMARY KEY (ID),
	FOREIGN KEY (Foodtruck_VRN)
		REFERENCES Foodtruck(Vehicle_registration_number)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create table Club_members
CREATE TABLE Club_members(
	email VARCHAR(255) UNIQUE NOT NULL,
	DOB DATE NOT NULL,
	Building_Name VARCHAR(50),
	Postcode VARCHAR(10) NOT NULL,
	First_Name VARCHAR(50) NOT NULL,
	Last_Name VARCHAR(50) NOT NULL,
	Burrito_count INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY (email)
);

-- Create table Market_day_of_week
-- Day_of_week can only have weekdays So CHECK is used here.
CREATE TABLE Market_day_of_week(
	Market_Postcode VARCHAR(8) NOT NULL,
	Day_of_week VARCHAR(10) NOT NULL CHECK (Day_of_week="Monday" OR Day_of_week="Tuesday" OR Day_of_week="Wednesday" OR Day_of_week="Thursday" OR Day_of_week="Friday" OR Day_of_week="Saturday" OR Day_of_week="Sunday"),
	PRIMARY KEY (Day_of_week, Market_Postcode),
	
	FOREIGN KEY (Market_Postcode)
		REFERENCES Market(Postcode)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create burrto_has_toppings
CREATE TABLE Burrito_has_toppings(
	Order_ID Integer NOT NULL,
	Burrito_ID INTEGER NOT NULL,
	Toppings_ID INTEGER NOT NULL,
	PRIMARY KEY (Order_ID, Burrito_ID, Toppings_ID),

	FOREIGN KEY (Order_ID)
		REFERENCES Orders(ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,	

	FOREIGN KEY (Burrito_ID)
		REFERENCES Burrito(item_ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	FOREIGN KEY (Toppings_ID)
		REFERENCES Toppings(ID)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

-- Create foodtruck_sells_burrito
CREATE TABLE Foodtruck_sells_burrito(
	Foodtruck_VRN CHAR(8) NOT NULL,
	Burrito_ID INTEGER,

	PRIMARY KEY (Foodtruck_VRN, Burrito_ID),

	FOREIGN KEY (Foodtruck_VRN)
		REFERENCES Foodtruck(Vehicle_registration_number)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	
	FOREIGN KEY (Burrito_ID)
		REFERENCES Burrito(item_ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create foodtruck_sells_beverage
CREATE TABLE Foodtruck_sells_beverage(
	Foodtruck_VRN CHAR(8) NOT NULL,
	Beverage_ID INTEGER,

	PRIMARY KEY (Foodtruck_VRN, Beverage_ID),

	FOREIGN KEY (Foodtruck_VRN)
		REFERENCES Foodtruck(Vehicle_registration_number)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,

	FOREIGN KEY (Beverage_ID)
		REFERENCES Beverage(item_ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create Order_contains_burrito
CREATE TABLE Order_contains_burrito(
	Burrito_ID INTEGER NOT NULL,
	Order_ID INTEGER NOT NULL,

	PRIMARY KEY (Burrito_ID, Order_ID),
	
	FOREIGN KEY (Burrito_ID)
		REFERENCES Burrito(item_ID) 
		ON DELETE RESTRICT
		ON UPDATE CASCADE,

	FOREIGN KEY (Order_ID)
		REFERENCES Orders(ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);


-- Create Order_contains_beverage Table
CREATE TABLE Order_contains_beverage(
	Beverage_ID INTEGER NOT NULL,
	Order_ID INTEGER NOT NULL,

	PRIMARY KEY (Beverage_ID, Order_ID),
	FOREIGN KEY (Beverage_ID)
		REFERENCES Beverage(item_ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,

	FOREIGN KEY (Order_ID)
		REFERENCES Orders(ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

-- Create Club_member_makes_order table
CREATE TABLE Club_member_makes_order(
	Club_member_email VARCHAR(255) NOT NULL,
	Order_ID INTEGER NOT NULL,

	PRIMARY KEY (Club_member_email, Order_ID),

	FOREIGN KEY (Club_member_email)
		REFERENCES Club_members(email)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,

	FOREIGN KEY (Order_ID)
		REFERENCES Orders(ID)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);
