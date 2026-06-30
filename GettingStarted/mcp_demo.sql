
--  add a new order
insert dbo.Orders
(
    CustomerID
  , EmployeeID
  , OrderDate
  , RequiredDate
  , ShippedDate
  , ShipVia
  , Freight
  , ShipName
  , ShipAddress
  , ShipCity
  , ShipRegion
  , ShipPostalCode
  , ShipCountry
)
values
('DKR', 1, '2026-06-25', '2026-08-01', null, 2, default, null, null, null, null, null, null)


-- query
SELECT top 10
 *
 FROM orders where CustomerID = 'dkr'
 

 -- duplicate query window vertically first
 -- then run other inserts

 
-- add other orders
-- can do this from agent mcp access
-- =====================================================
-- 5 New Orders for DK Ranch (CustomerID = 'DKR')
-- Assumes next OrderID starts at 11080
-- =====================================================

-- Order 1: Nancy Davolio / Speedy Express
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES ('DKR  ', 1, '2026-06-30', '2026-07-14', NULL, 1, 12.50, 'DK Ranch', '123 My St', 'Denver', 'CO', '80237', 'USA');

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11080, 2,  19.00, 10, 0.0),   -- Chang
       (11080, 71, 21.50,  5, 0.05);  -- Flotemysost

-- Order 2: Janet Leverling / United Package
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES ('DKR  ', 3, '2026-07-03', '2026-07-17', NULL, 2, 28.75, 'DK Ranch', '123 My St', 'Denver', 'CO', '80237', 'USA');

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11081, 10,  31.00,  8, 0.0),   -- Ikura
       (11081, 32,  32.00,  3, 0.1),   -- Mascarpone Fabioli
       (11081, 48,  12.75, 12, 0.0);   -- Chocolade

-- Order 3: Robert King / Federal Shipping
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES ('DKR  ', 7, '2026-07-07', '2026-07-21', NULL, 3, 45.00, 'DK Ranch', '123 My St', 'Denver', 'CO', '80237', 'USA');

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11082, 38, 263.50,  2, 0.0),  -- Côte de Blaye
       (11082, 57,  19.50,  6, 0.05); -- Ravioli Angelo

-- Order 4: Margaret Peacock / Speedy Express
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES ('DKR  ', 4, '2026-07-10', '2026-07-24', NULL, 1, 9.80, 'DK Ranch', '123 My St', 'Denver', 'CO', '80237', 'USA');

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11083, 19,  9.20, 20, 0.0),   -- Teatime Chocolate Biscuits
       (11083, 21, 10.00, 15, 0.05),  -- Sir Rodney's Scones
       (11083, 52,  7.00, 25, 0.0);   -- Filo Mix

-- Order 5: Laura Callahan / United Package
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES ('DKR  ', 8, '2026-07-14', '2026-07-28', NULL, 2, 33.20, 'DK Ranch', '123 My St', 'Denver', 'CO', '80237', 'USA');

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11084, 10, 31.00,  4, 0.1),   -- Ikura
       (11084, 71, 21.50,  9, 0.0);   -- Flotemysost