DROP DATABASE littlelemondb;

USE littlelemondb;

INSERT INTO littlelemondb.customers (CustomerID, FullName, Phone, Email) VALUES
(1, 'Daniel Reed', '555-1000', 'daniel.reed@email.com'),
(2, 'Lucy Scott', '555-1001', 'lucy.scott@email.com'),
(3, 'Michael Bell', '555-1002', 'michael.bell@email.com'),
(4, 'Alice Johnson', '1234567890', 'alice@example.com'),
(5, 'Bob Smith', '2345678901', 'bob@example.com'),
(6, 'Charlie Davis', '3456789012', 'charlie@example.com'),
(7, 'Diana Reed', '4567890123', 'diana@example.com'),
(8, 'Ethan Clark', '5678901234', 'ethan@example.com'),
(9, 'Fiona Lewis', '6789012345', 'fiona@example.com'),
(10, 'George Hall', '7890123456', 'george@example.com'),
(11, 'Hannah Scott', '8901234567', 'hannah@example.com'),
(12, 'Ian Moore', '9012345678', 'ian@example.com'),
(13, 'Julia Turner', '0123456789', 'julia@example.com');

INSERT INTO littlelemondb.staffs (StaffID, FullName, Role, Salary) VALUES
(1, 'Emma Collins', 'Chef', 62300.00),
(2, 'Liam Turner', 'Waiter', 32000.00),
(3, 'Noah Smith', 'Manager', 72000.00),
(4, 'Olivia Brown', 'Cleaner', 25000.00),
(5, 'Ava Johnson', 'Host', 45000.00),
(6, 'Alice Johnson', 'Manager', 60000.00),
(7, 'Bob Smith', 'Chef', 45000.00),
(8, 'Charlie Davis', 'Waiter', 30000.00),
(9, 'Diana Reed', 'Receptionist', 28000.00),
(10, 'Ethan Clark', 'Sous Chef', 42000.00),
(11, 'Fiona Lewis', 'Cleaner', 25000.00),
(12, 'George Hall', 'Bartender', 35000.00),
(13, 'Hannah Scott', 'Waitress', 30000.00),
(14, 'Ian Moore', 'Security', 32000.00),
(15, 'Julia Turner', 'Hostess', 29000.00);

INSERT INTO littlelemondb.bookings (BookingID, BookingDate, TableNumber, CustomerID, StaffID) VALUES
(1, '2024-03-21 18:00:00', 4, 5, 2),
(2, '2024-03-25 19:30:00', 7, 3, 1),
(3, '2024-03-28 20:15:00', 12, 10, 8),
(4, '2025-04-21 18:00:00', 1, 1, 3),
(5, '2025-04-21 19:00:00', 2, 2, 3),
(6, '2025-04-21 20:00:00', 3, 3, 6),
(7, '2025-04-22 18:30:00', 4, 4, 7),
(8, '2025-04-22 19:30:00', 5, 5, 8),
(9, '2025-04-22 20:00:00', 6, 6, 1),
(10, '2025-04-23 18:00:00', 7, 7, 2),
(11, '2025-04-23 19:00:00', 8, 8, 3),
(12, '2025-04-23 20:00:00', 9, 9, 4),
(13, '2025-04-24 18:00:00', 10, 10, 5);

INSERT INTO littlelemondb.menuitems (MenuItemID, CourseName, StarterName, DesertName, Drinks) VALUES
(1, 'Main', 'Soup', 'Ice Cream', 'Water'),
(2, 'Combo', 'Bruschetta', 'Pie', 'Wine'),
(3, 'Side', 'Salad', 'Cake', 'Cocktail'),
(4, 'Lasagna', 'Bruschetta', 'Tiramisu', 'Red Wine'),
(5, 'Tacos', 'Nachos', 'Churros', 'Margarita'),
(6, 'Duck Confit', 'Escargots', 'Crème brûlée', 'Champagne'),
(7, 'Paneer Butter Masala', 'Samosa', 'Gulab Jamun', 'Lassi'),
(8, 'Sushi Platter', 'Miso Soup', 'Mochi', 'Green Tea'),
(9, 'Roast Beef', 'Yorkshire Pudding', 'Apple Pie', 'Ale'),
(10, 'BBQ Ribs', 'Onion Rings', 'Cheesecake', 'Coke'),
(11, 'Grilled Halloumi', 'Hummus', 'Baklava', 'Lemonade'),
(12, 'Sweet and Sour Chicken', 'Spring Rolls', 'Fortune Cookie', 'Oolong Tea'),
(13, 'Shawarma', 'Falafel', 'Basbousa', 'Mint Tea');

INSERT INTO littlelemondb.menus (MenuID, MenuName, Cuisine, MenuItemID) VALUES
(1, 'Breakfast Combo', 'Italian', 2),
(2, 'Lunch Special', 'Mexican', 5),
(3, 'Dinner Delight', 'Indian', 1),
(4, 'Spring Special', 'Italian', 4),
(5, 'Summer Fiesta', 'Mexican', 5),
(6, 'Chef’s Choice', 'French', 2),
(7, 'Vegetarian Delight', 'Indian', 7),
(8, 'Seafood Heaven', 'Japanese', 8),
(9, 'Winter Warmer', 'British', 9),
(10, 'BBQ Bash', 'American', 10),
(11, 'Mediterranean Magic', 'Greek', 11),
(12, 'Taste of Asia', 'Chinese', 12),
(13, 'Middle Eastern Munch', 'Lebanese', 13);

INSERT INTO littlelemondb.orderdelivery (DeliveryID, DeliveryDate, DeliveryStatus) VALUES
(1, '2024-03-28', 'Pending'),
(2, '2024-03-29', 'In Progress'),
(3, '2024-04-01', 'Delivered'),
(4, '2025-04-21', 'Delivered'),
(5, '2025-04-21', 'Delivered'),
(6, '2025-04-22', 'Pending'),
(7, '2025-04-22', 'In Progress'),
(8, '2025-04-22', 'Delivered'),
(9, '2025-04-23', 'Delivered'),
(10, '2025-04-23', 'In Progress'),
(11, '2025-04-23', 'Pending'),
(12, '2025-04-24', 'Delivered'),
(13, '2025-04-24', 'Cancelled');

INSERT INTO littlelemondb.orders (OrderID, OrderDate, Quantity, TotalCost, CustomerID, BookingID, MenuID, DeliveryID) VALUES
(1, '2024-03-29', 2, 49.99, 1, 1, 1, 1),
(2, '2024-03-30', 3, 75.00, 5, 2, 3, 2),
(3, '2024-04-01', 1, 29.95, 8, 3, 5, 3),
(4, '2025-04-21', 2, 40.00, 1, 1, 4, 3),
(5, '2025-04-21', 3, 60.00, 2, 2, 3, 6),
(6, '2025-04-22', 1, 35.00, 3, 3, 5, 1),
(7, '2025-04-22', 2, 50.00, 4, 4, 2, 8),
(8, '2025-04-22', 4, 80.00, 5, 5, 4, 9),
(9, '2025-04-23', 2, 55.00, 6, 6, 3, 2),
(10, '2025-04-23', 3, 75.00, 7, 7, 3, 6),
(11, '2025-04-23', 1, 30.00, 8, 8, 7, 3),
(12, '2025-04-24', 2, 48.00, 9, 9, 2, 6),
(13, '2025-04-24', 3, 70.00, 10, 10, 1, 9);


