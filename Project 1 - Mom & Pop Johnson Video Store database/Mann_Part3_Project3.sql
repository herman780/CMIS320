--The following five queries based on the Oracle tables created and the fields from steps 1 and 2. 
--1. Retrieve all of your customers' names, account numbers, and addresses 
--(street and zip code only), sorted by account number.

SELECT Customer_ID, First_Name, Last_Name, Address, ZipCode
FROM Customer
ORDER BY Customer_ID;

--2. Retrieve all of the videos rented in the last 30 days and sort in chronological 
--rental date order.

SELECT Rentals.Rental_ID,
       Rentals.Customer_ID,
       Rentals.Rent_Date,
       Rentals.Return_Date,
       (Rentals.Return_Date - Rentals.Rent_Date)
FROM Rentals;
--3. Produce a list of your distributors and all their information sorted in order by 
--company name.

SELECT Distributor_ID, Distributor_Name, Ship_Quantity
FROM Distributors
ORDER BY Distributor_Name;

--4. Update a customer name to change their maiden name to a married name. 
--You can choose which row to update. Make sure that you use the primary 
--key column in your WHERE clause to affect only a specific row. You may want 
--to include a ROLLBACK statement to undo your data update.

UPDATE Customer
Set Last_Name = 'Taquer�a'
WHERE Customer_ID = '655188';
Rollback;

--5. Delete a customer from the database. You can choose which row to delete.
--Make sure that you use the primary key column in your WHERE clause to 
--affect only a specific row. You may want to include a ROLLBACK statement to 
--undo your data deletion

DELETE FROM Customer WHERE Customer_ID = 800900;
Rollback
