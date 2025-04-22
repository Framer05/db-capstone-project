DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_id INT, IN Customer_id INT, IN Booking_date DATETIME, IN Table_Number INT)
BEGIN
	INSERT INTO Bookings(BookingID, CustomerID, BookingDate, TableNumber) VALUES
    (Booking_id, Customer_id, Booking_date, Table_Number);
    SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking(18, 4, "2022-12-30", 1);