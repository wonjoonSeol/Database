-- Part 2.3 select.sql
--
-- Submitted by: Wonjoon Seol, 1600465
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 


-- Total Sales.

Select SUM(burrito_price) - SUM(discount_amount) - SUM(topping_price) AS total_sales
	
	FROM (
	Select ID, Discount_amount, burrito_price
	FROM Orders 
	LEFT OUTER JOIN 
	(Select Order_ID, Price AS burrito_price
	FROM Burrito
	JOIN Order_contains_burrito 
	ON (Burrito_ID = item_id)) AS temp1	
	ON ID = temp1.Order_ID
	Where Date_placed >= "2017-05-01" AND Date_placed < "2017-06-01"
	) AS temp2

	LEFT OUTER JOIN
	(Select Order_ID, SUM(Price) as topping_price
	FROM Toppings
	JOIN Burrito_has_toppings ON (Toppings_ID = ID) 
	) AS temp3
	ON temp2.ID = Order_ID
;


-- Burrito Report.
-- For each filling type and size, list the total number of
-- burritos sold the month of June 2017. In the listing, include the filling type /
-- size combinations that did not sell (i.e. had 0 quantity sales).

SELECT Size, Fillings, Description, count(Order_ID) AS quantity
FROM Burrito
LEFT OUTER JOIN(
	
	SELECT Order_ID, Burrito_ID
	FROM Order_contains_burrito
	JOIN Orders
	ON Order_ID = ID
	Where Date_placed >= "2017-06-01" AND Date_placed < "2017-07-01"

	) AS temp4
ON Item_ID = Burrito_ID
GROUP BY Description;

-- Top Customers.
-- Write a SELECT query that lists all of the customers Name and
-- EmailAddress, and your total purchases metric. Sort the customers by
-- purchases in decreasing order, showing the top-purchasing customer first.

SELECT email, First_Name, Last_Name, COUNT(*) AS total_purchases
FROM Club_members 
JOIN Club_member_makes_order
ON email = Club_member_email
GROUP BY email
ORDER BY total_purchases DESC;


-- 4. Guacamole Receipt.

SELECT Description, Size, Fillings, Bean, SUM(a) AS Price
FROM Burrito
JOIN (
	(Select Burrito_ID, SUM(Price) as a
	FROM Toppings
	JOIN Burrito_has_toppings ON (Toppings_ID = ID) 
	WHERE Order_ID = 9)
	UNION
	(Select Burrito_ID, SUM(Price) as a
	FROM Burrito
	JOIN Order_contains_burrito ON (Burrito_ID = item_id) WHERE Order_ID = 9)
) AS temp5
ON temp5.Burrito_ID = Item_ID;


SELECT Description, Size, Alcoholic, Price
FROM Beverage
JOIN (
	(Select Beverage_ID
	FROM Burrito
	JOIN Order_contains_beverage ON (Beverage_ID = item_id) WHERE Order_ID = 9)
) AS temp6
ON temp6.Beverage_ID = Item_ID;

-- 5. Alcohol free
SELECT NOT EXISTS (
SELECT Alcoholic
FROM Beverage
JOIN (
	SELECT Beverage_ID
	FROM Foodtruck_sells_beverage
	JOIN 
	(SELECT Vehicle_registration_number
	FROM Foodtruck 
	JOIN Market 
	ON Market_Postcode = Postcode
	WHERE Postcode = "E14 5ST"
	) AS temp6
	ON Foodtruck_VRN = temp6.Vehicle_registration_number
) AS temp7
ON Item_ID = Beverage_ID
WHERE Alcoholic = True
) AS Alcohol_free
;

-- Add alcoholic drink to non alcoholic foodtruck 
INSERT INTO Foodtruck_sells_beverage (Foodtruck_VRN, Beverage_ID) VALUES ("NP10 XYZ", 1);
INSERT INTO Orders (Date_Placed, Foodtruck_VRN) VALUES ("2017-06-01", "NP10 XYZ"); 
-- drink
INSERT INTO Order_contains_beverage (Beverage_ID, Order_ID)
VALUES (1, 21);

-- Now check again
SELECT NOT EXISTS (
SELECT Alcoholic
FROM Beverage
JOIN (
	SELECT Beverage_ID
	FROM Foodtruck_sells_beverage
	JOIN 
	(SELECT Vehicle_registration_number
	FROM Foodtruck 
	JOIN Market 
	ON Market_Postcode = Postcode
	WHERE Postcode = "E14 5ST"
	) AS temp6
	ON Foodtruck_VRN = temp6.Vehicle_registration_number
) AS temp7
ON Item_ID = Beverage_ID
WHERE Alcoholic = True
) AS Alcohol_free
;