-- Part 2.5 delete.sql
--
-- Submitted by: Wonjoon Seol, 1600465
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 


-- Burrito_has_toppings
DELETE FROM Burrito_has_toppings
WHERE Order_ID IN (SELECT Order_ID 
FROM Club_member_makes_order
WHERE Club_member_email ="ashton.k2@ycombinator.com");

-- Order_contains_burrito
DELETE FROM Order_contains_burrito
WHERE Order_ID IN (SELECT Order_ID 
FROM Club_member_makes_order
WHERE Club_member_email="ashton.k2@ycombinator.com");

-- Order_contains_beverage
DELETE FROM Order_contains_burrito
WHERE Order_ID IN (SELECT Order_ID 
FROM Club_member_makes_order
WHERE Club_member_email="ashton.k2@ycombinator.com");

-- club_member_makes_order
DELETE FROM Club_member_makes_order
WHERE Club_member_email IN (SELECT email
FROM Club_members 
WHERE Club_member_email ="ashton.k2@ycombinator.com");

-- Orders
DELETE FROM Orders
WHERE ID IN (SELECT Order_ID 
FROM Club_member_makes_order
WHERE Club_member_email="ashton.k2@ycombinator.com");

-- Club members
DELETE FROM Club_members WHERE email="ashton.k2@ycombinator.com";
