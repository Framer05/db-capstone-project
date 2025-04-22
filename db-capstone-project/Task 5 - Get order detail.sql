PREPARE GetOrderDetail FROM '
SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE OrderID = ?
';

SET @id = 1;

EXECUTE GetOrderDetail USING @id;

-- Deallocate the prepared statement after execution
DEALLOCATE PREPARE GetOrderDetail;
