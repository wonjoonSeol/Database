-- Part 2.4 update.sql
--
-- Submitted by: Wonjoon Seol, 1600465
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

-- Order 22
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 22);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (1, 22);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (22, 2, 4);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 22);
UPDATE Club_members SET burrito_count = 3 WHERE email = "christian.bale@gmail.com";

-- Order 23
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "BD51 SMR"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (2, 23);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (2, 23);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (23, 2, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 23);
UPDATE Club_members SET burrito_count = 4 WHERE email = "christian.bale@gmail.com";

-- Order 24
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "NP10 XYZ"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (6, 24);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (24, 6, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 24);
UPDATE Club_members SET burrito_count = 5 WHERE email = "christian.bale@gmail.com";

-- Order 25
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "BD51 SMR"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (3, 25);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (25, 3, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 25);
UPDATE Club_members SET burrito_count = 6 WHERE email = "christian.bale@gmail.com";

-- Order 26
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (4, 26);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (4, 26);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (26, 4, 5);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (26, 4, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 26);
UPDATE Club_members SET burrito_count = 7 WHERE email = "christian.bale@gmail.com";

-- Order 27
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (1, 27);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (27, 1, 2);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (27, 1, 5);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 27);
UPDATE Club_members SET burrito_count = 8 WHERE email = "christian.bale@gmail.com";

-- Order 28
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-05-31", "NP10 XYZ"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (11, 28);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (28, 11, 1);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 28);
UPDATE Club_members SET burrito_count = 9 WHERE email = "christian.bale@gmail.com";

-- Order 29
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "BD51 SMR"); 
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (3, 29);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 29);
UPDATE Club_members SET burrito_count = 10 WHERE email = "christian.bale@gmail.com";

-- Order 30
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-02", "BD51 SMR");
INSERT INTO Order_contains_burrito (Burrito_ID, Order_ID)
VALUES (4, 30);
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (4, 30);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (30, 4, 5);
INSERT INTO Burrito_has_toppings (Order_ID, Burrito_ID, Toppings_ID)
VALUES (30, 4, 2);

INSERT INTO Club_member_makes_order (Club_member_email, Order_ID)
VALUES ("christian.bale@gmail.com", 30);
UPDATE Club_members SET burrito_count = 11 WHERE email = "christian.bale@gmail.com";

Select SUM(a) AS free_burrito_price FROM (
	(Select SUM(Price) as a
	FROM Toppings
	JOIN Burrito_has_toppings ON (Toppings_ID = ID) 
	WHERE Order_ID = 30)
	UNION
	(Select SUM(Price) as a
	FROM Burrito
	JOIN Order_contains_burrito ON (Burrito_ID = item_id) WHERE Order_ID = 30)
) AS temp;

UPDATE Orders SET discount_amount = 13.50 WHERE ID = 30;

Select (SUM(burrito_price) - SUM(discount_amount) + SUM(topping_price))AS new_order_price
	FROM (
	Select ID, Discount_amount, burrito_price
	FROM Orders 
	LEFT OUTER JOIN 
	(Select Order_ID, Price AS burrito_price
	FROM Burrito
	JOIN Order_contains_burrito 
	ON (Burrito_ID = item_id)) AS temp1	
	ON ID = temp1.Order_ID
	Where ID >= 22 AND ID < 31
	) AS temp2

	LEFT OUTER JOIN
	(Select Order_ID, Price as topping_price
	FROM Toppings
	JOIN Burrito_has_toppings ON (Toppings_ID = ID) 
	) AS temp3
	ON temp2.ID = temp3.Order_ID
;
