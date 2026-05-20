CREATE DATABASE HospitalityDB;
USE HospitalityDB;
CREATE TABLE hotel_bookings (
Hotel_Type VARCHAR(100),
is_canceled INT,
lead_time INT,
arrival_date_year INT,
arrival_date_month VARCHAR(20),
arrival_date_week_number INT,
arrival_date_day_of_month INT,
Weekend_Nights INT,
Week_Nights INT,
adults INT,
children INT,
babies INT,
meal VARCHAR(20),
Country VARCHAR(100),
Market_Segment VARCHAR(100),
distribution_channel VARCHAR(50),
is_repeated_guest INT,
previous_cancellations INT,
previous_bookings_not_canceled INT,
reserved_room_type VARCHAR(20),
assigned_room_type VARCHAR(20),
booking_changes INT,
deposit_type VARCHAR(50),
agent FLOAT,
company FLOAT,
days_in_waiting_list INT,
customer_type VARCHAR(50),
ADR FLOAT,
required_car_parking_spaces INT,
total_of_special_requests INT,
Booking_Status VARCHAR(50),
reservation_status_date DATE,
Total_Nights INT,
Revenue FLOAT,
Total_Guests INT);

# 1. Total Revenue
SELECT SUM(revenue) AS Total_Revenue FROM hotel_bookings;

# 2. Revenue by City
SELECT SUM(revenue) AS Revenue FROM hotel_bookings GROUP BY City ORDER BY Revenue DESC;

# 3. Revenue by Hotel Type
SELECT Hotel_Type, SUM(revenue) AS Revenue FROM hotel_bookings GROUP BY Hotel_Type;

# 4. Booking Status Analysis
SELECT Booking_Status, COUNT(*) AS Total_Bookings FROM hotel_bookings GROUP BY Booking_Status;

# 5. Cancellation Rate
SELECT (count(CASE WHEN is_canceled = 1 THEN 1 END) * 100.0 / count(*)) AS Cancelations_Rate From hotel_bookings;

# 6. Average ADR
SELECT AVG(ADR) AS Average_ADR
FROM hotel_bookings;

# 7. Revenue by Country
SELECT Country, SUM(Revenue) AS Revenue FROM hotel_bookings GROUP BY Country ORDER BY Revenue DESC;

# 8.Market Segment Analysis 
SELECT Market_Segment, count(*) AS Total_Bookings FROM hotel_bookings GROUP BY Market_Segment;