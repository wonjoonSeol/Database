-- Part 2.2 insert.sql
--
-- Submitted by: Wonjoon Seol, 1600465
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

-- • Research 3 markets in London to include in your database.
INSERT INTO Market (Postcode, Name) VALUES
("EC1A 9LH", "Smithfield");

INSERT INTO Market (Postcode, Name) VALUES
("E14 5ST", "Billingsgate");

INSERT INTO Market (Postcode, Name) VALUES
("E1 7JF", "Petticoat Lane");

-- Set the day market is open
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("EC1A 9LH", "Monday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("EC1A 9LH", "Tuesday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("EC1A 9LH", "Wednesday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("EC1A 9LH", "Thursday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("EC1A 9LH", "Friday");

INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("E14 5ST", "Tuesday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("E14 5ST", "Wednesday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("E14 5ST", "Thursday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("E14 5ST", "Friday");
INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week) 
VALUES ("E14 5ST", "Saturday");


INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week)
VALUES ("E1 7JF", "Monday");

INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week)
VALUES ("E1 7JF", "Tuesday");

INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week)
VALUES ("E1 7JF", "Wednesday");

INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week)
VALUES ("E1 7JF", "Thursday");

INSERT INTO Market_day_of_week (Market_Postcode, Day_of_week)
VALUES ("E1 7JF", "Friday");

-- • Chipp is starting out with 2 Food Trucks, and make sure that all of its information is included in the database.

INSERT INTO Foodtruck (Vehicle_registration_number, Start_Date, Schedule_Start, Schedule_End, Market_Postcode) VALUES
("NP10 XYZ", "2011-01-01", "2017-05-28", "2017-06-03", "E14 5ST");

INSERT INTO Foodtruck (Vehicle_registration_number, Start_Date, Schedule_Start, Schedule_End, Market_Postcode) VALUES
("BD51 SMR", "2016-07-02", "2017-05-28", "2017-06-03", "E1 7JF");

-- • Pick at least 3 of your favourite celebrities to include as Customers, and give
-- each of them a. Make up the DOB/Address/EmailAddress for these
-- Customers.

INSERT INTO Club_members (email, DOB, Building_Name, Postcode, First_Name, Last_Name) VALUES
("ryan.g@gmail.com", "1980-11-12", "Heathrow apartment", "TW6 1EW", "Ryan", "Gosling");

INSERT INTO Club_members (email, DOB, Building_Name, Postcode, First_Name, Last_Name) VALUES
("christian.bale@gmail.com", "1974-01-30", "Upper Marsh", "SE1 9UL", "Christian", "Bale");

INSERT INTO Club_members (email, DOB, Building_Name, Postcode, First_Name, Last_Name) VALUES
("ashton.k2@ycombinator.com", "1978-02-07", "399 Blackjack", "N1 7EW", "Ashton", "Kutcher");

-- • Implement the full burrito menu as described in the database requirements,
-- including reasonable information about the beans, fillings, sizes and prices
-- Google "burrito menus" to help you discover the wonderful world of
-- Burritos)

INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Beef mini, red", "Mini", "Spicy shredded beef", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (11.20, "Beef regular, red", "Regular", "Spicy shredded beef", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Beef grande, red", "Grande", "Spicy shredded beef", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Beef mini, black", "Mini", "Spicy shredded beef", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.00, "Beef regular, black", "Regular", "Spicy shredded beef", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Beef grande, black", "Grande", "Spicy shredded beef", "black");


INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Vegetarian mini, red", "Mini", "Vegetarian", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (11.20, "Vegetarian regular, red", "Regular", "Vegetarian", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Vegetarian grande, red", "Grande", "Vegetarian", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Vegetarian mini, black", "Mini", "Vegetarian", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.00, "Vegetarian regular, black", "Regular", "Vegetarian", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Vegetarian grande, black", "Grande", "Vegetarian", "black");

INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Chicken mini, red", "Mini", "Chicken", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (11.20, "Chicken regular, red", "Regular", "Chicken", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Chicken grande, red", "Grande", "Chicken", "red");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.50, "Chicken mini, black", "Mini", "Chicken", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (12.00, "Chicken regular, black", "Regular", "Chicken", "black");
INSERT INTO Burrito (Price, Description, Size, Fillings, Bean) VALUES (13.50, "Chicken grande, black", "Grande", "Chicken", "black");

-- Add Menus to Foodtruck
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 1);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 2);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 3);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 4);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 5);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 6);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 7);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 8);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 9);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 10);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 11);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 12);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 13);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 14);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 15);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 16);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 17);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("NP10 XYZ", 18);

INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 1);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 2);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 3);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 4);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 5);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 6);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 7);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 8);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 9);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 10);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 11);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 12);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 13);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 14);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 15);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 16);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 17);
INSERT INTO Foodtruck_sells_burrito (Foodtruck_VRN, Burrito_ID) VALUES ("BD51 SMR", 18);

-- • Include "Guacamole" as a topping with a price, and the other toppings
-- mentioned in the database requirements.

INSERT INTO Toppings (Name) VALUES ("Lettuce");
INSERT INTO Toppings (Name) VALUES ("Tomato");
INSERT INTO Toppings (Name) VALUES ("Mild salsa");
INSERT INTO Toppings (Name) VALUES ("Hot salsa");
INSERT INTO Toppings (Name, Price) VALUES ("Guacamole", 1.00);

-- • Include "Lemonade" and at least 2 other types of drinks on offer of various
-- sizes.
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (12, "Martini", true,100);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (17, "Martini", true,300);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (20, "Martini", true,500);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (5, "Lemonade", false,100);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (7, "Lemonade", false,300);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (8, "Lemonade", false,500);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (21, "Orange Juice", false,100);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (25, "Orange Juice", false,300);
INSERT INTO Beverage (Price, Description, Alcoholic, Size) VALUES (30, "Orange Juice", false,500);

-- Add menu to foodtruck
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 1);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 2);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 3);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 4);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 5);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 6);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 7);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 8);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("BD51 SMR", 9);

INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 4);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 5);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 6);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 7);
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 8);

-- • For at least 3 of your customers, have them each have at least 3 orders
-- spread out throughout the scheduled week mentioned above. Make sure that
-- some orders occur in May and some occur in June.

-- Adding orders. 
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-30", "BD51 SMR");
-- 1
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (1, 1);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (1, 1, 1);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (1, 1, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 1);
UPDATE Club_members SET burrito_count = 1 WHERE email = "ryan.g@gmail.com";

-- Order 2
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-30", "NP10 XYZ");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (17, 2);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (9, 2);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (2, 17, 3); 

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 2);
UPDATE Club_members SET burrito_count = 2 WHERE email = "ryan.g@gmail.com";

-- Order 3
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-30", "NP10 XYZ");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (12, 3);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (3, 12, 5); 

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 3);
UPDATE Club_members SET burrito_count = 3 WHERE email = "ryan.g@gmail.com";

-- Order 4
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 4);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (1, 4);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (4, 2, 3);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ashton.k2@ycombinator.com", 4);
UPDATE Club_members SET burrito_count = 1 WHERE email = "ashton.k2@ycombinator.com";

-- Order 5
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR"); 
-- drink only
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (2, 5);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ashton.k2@ycombinator.com", 5);

-- Order 6
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "NP10 XYZ");
-- drink
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (6, 6);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ashton.k2@ycombinator.com", 6);

-- Order 7
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "BD51 SMR"); 
-- drink
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (3, 7);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 7);

-- Order 8
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (11, 8);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (4, 8);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (8, 11, 5);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 8);
UPDATE Club_members SET burrito_count = 1 WHERE email = "christian.bale@gmail.com";

-- Order 9
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (1, 9);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (3, 9);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (9, 1, 2); 
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (9, 1, 5);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 9);
UPDATE Club_members SET burrito_count = 2 WHERE email = "christian.bale@gmail.com";


-- • Include at least 3 orders through the scheduled week that are placed by
-- people without a BurritoClub.
-- Order 10
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-30", "NP10 XYZ");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (3, 10);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (4, 10);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (10, 3, 4);

-- Order 11
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-30", "NP10 XYZ");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (5, 11);

INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (11, 5, 5);

-- Order 12
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 12);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (1, 12);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (12, 2, 3);

-- • At least 1 of your customers should order enough burritos to earn a free
-- Order 13
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 13);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (1, 13);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (13, 2, 4);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 13);
UPDATE Club_members SET burrito_count = 4 WHERE email = "ryan.g@gmail.com";

-- Order 14
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 14);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (2, 14);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (14, 2, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 14);
UPDATE Club_members SET burrito_count = 5 WHERE email = "ryan.g@gmail.com";

-- Order 15
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "NP10 XYZ"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (6, 15);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (15, 6, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 15);
UPDATE Club_members SET burrito_count = 6 WHERE email = "ryan.g@gmail.com";

-- Order 16
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (3, 16);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (16, 3, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 16);
UPDATE Club_members SET burrito_count = 7 WHERE email = "ryan.g@gmail.com";

-- Order 17
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (4, 17);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (4, 17);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (17, 4, 5);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (17, 4, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 17);
UPDATE Club_members SET burrito_count = 8 WHERE email = "ryan.g@gmail.com";

-- Order 18
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (1, 18);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (18, 1, 2);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (18, 1, 5);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 18);
UPDATE Club_members SET burrito_count = 9 WHERE email = "ryan.g@gmail.com";

-- Order 19
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "NP10 XYZ"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (11, 19);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (19, 11, 1);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 19);
UPDATE Club_members SET burrito_count = 10 WHERE email = "ryan.g@gmail.com";

-- Order 20
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "BD51 SMR"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (3, 20);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("ryan.g@gmail.com", 20);
UPDATE Club_members SET burrito_count = 11 WHERE email = "ryan.g@gmail.com";

-- Calculate price for free burrito including toppings
Select SUM(a) AS free_burrito_price FROM (
	(Select SUM(Price) as a   -- this is a price for toppings
	FROM Toppings
	JOIN Burrito_has_toppings ON (Toppings_ID = ID) 
	WHERE Order_ID = 20)
	UNION
	(Select SUM(Price) as a   -- this is a price for burrito
	FROM Burrito
	JOIN Order_contains_burrito ON (Burrito_ID = item_id) WHERE Order_ID = 20)
) AS temp;

UPDATE Orders SET discount_amount = 13.50 WHERE ID = 20;

-- • Be sure that all of your BurritoClub burrito count is current in the database.
