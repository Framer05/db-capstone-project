DELIMITER //
CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = inputOrderID;
END //
DELIMITER ;


CALL CancelOrder(5);