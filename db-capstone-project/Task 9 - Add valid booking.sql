DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN Booking_Date DATETIME,
    IN Table_Number INT
)
BEGIN
    DECLARE bookingExists INT DEFAULT 0;

    START TRANSACTION;

    SELECT COUNT(*) INTO bookingExists
    FROM Bookings
    WHERE BookingDate = Booking_Date AND TableNumber = Table_Number;

    IF bookingExists > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', Table_Number, ' is already booked on ', Booking_Date, ' - booking declined') AS "Booking Status";
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES (Booking_Date, Table_Number);
        COMMIT;
        SELECT CONCAT('Table ', Table_Number, ' is successfully booked on ', Booking_Date) AS "Booking Status";
    END IF;
END //

DELIMITER ;

CALL AddValidBooking("2022-10-10", 5);