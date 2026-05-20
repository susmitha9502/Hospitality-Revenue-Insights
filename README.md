# Revenue Insights in Hospitality Domain

## Project Overview

This project focuses on analyzing hotel booking and revenue data to generate business insights for the hospitality industry. The dashboard helps hotel management monitor revenue performance, booking trends, occupancy patterns, ADR, RevPAR, and customer behavior using Power BI, SQL, and Excel.

The main objective of this project is to support data-driven decision-making and improve revenue optimization strategies.

---

# Tools & Technologies Used

- Power BI
- SQL
- Excel
- DAX
- Power Query

---

# Dataset Information

The dataset contains hotel booking information such as:

- Hotel Type
- Booking Status
- Revenue
- ADR (Average Daily Rate)
- Customer Details
- Room Types
- Market Segment
- Distribution Channel
- Cancellation Details
- Stay Duration
- Guest Information

---

# Project Workflow

## 1. Data Collection

- Imported hotel booking dataset from Excel/CSV.

---

## 2. Data Cleaning

Performed data preprocessing using Excel and Power Query:

- Removed duplicates
- Handled missing values
- Corrected data types
- Created calculated columns:
  - Total Nights
  - Total Guests
  - Revenue

---

## 3. SQL Database Creation

Created SQL database and table structure for hospitality data analysis.

### SQL Table Creation

```sql
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
Total_Guests INT
);
```

---

# SQL Analysis Performed

## Revenue Analysis

- Total Revenue
- Revenue by Hotel Type
- Revenue by Country

## Booking Analysis

- Cancellation Rate
- Booking Status Analysis
- Lead Time Analysis

## Customer Analysis

- Market Segment Performance
- Distribution Channel Analysis
- Customer Type Analysis

---

# Power BI Dashboard

The dashboard was divided into 3 pages for better visualization and user experience.

---

## Page 1 — Executive Overview

### KPIs

- Total Revenue
- Total Bookings
- ADR
- RevPAR
- Cancellation Rate

### Visuals

- Revenue Trend
- Revenue by Hotel Type
- Booking Status Distribution

<img width="1170" height="661" alt="overview" src="https://github.com/user-attachments/assets/2d3e8c3d-1e33-4987-b13a-ef8f5f186f54" />

---

## Page 2 — Customer Analysis

### Visuals

- Revenue by Country
- Market Segment Analysis
- Distribution Channel Performance
- Customer Type Analysis

<img width="1169" height="663" alt="customer analysis" src="https://github.com/user-attachments/assets/9158375e-5d4c-4ca5-aa7d-c24981e9f67b" />

---

## Page 3 — Room & Stay Analysis

### Visuals

- Revenue by Room Type
- Weekend vs Weekday Stay
- Lead Time Analysis
- Deposit Type Analysis
- Special Requests Analysis


<img width="1421" height="746" alt="Room and stay analysis" src="https://github.com/user-attachments/assets/946c42a2-1c08-4bba-b18d-8a35356d0303" />

---

# DAX Measures Used

## Total Revenue

```DAX
Total Revenue = SUM(hotel_bookings[Revenue])
```

## Total Bookings

```DAX
Total Bookings = COUNTROWS(hotel_bookings)
```

## Average ADR

```DAX
Average ADR = AVERAGE(hotel_bookings[ADR])
```

## Cancellation Rate

```DAX
Cancellation Rate =
DIVIDE(
COUNTROWS(
FILTER(hotel_bookings,
hotel_bookings[is_canceled]=1)),
COUNTROWS(hotel_bookings)
)*100
```

## RevPAR

```DAX
RevPAR =
DIVIDE(
[Total Revenue],
[Total Bookings]
)
```

---

# Key Business Insights

- City hotels generated higher revenue compared to resort hotels.
- Online travel agencies contributed the highest number of bookings.
- Cancellation rates were higher during peak seasons.
- Deluxe room types generated the highest ADR.
- Customers from certain countries contributed significantly to overall revenue.

---

# Dashboard Features

- Interactive slicers
- Dynamic filtering
- KPI cards
- Trend analysis
- Customer segmentation
- Revenue optimization insights

---

# Project Outcomes

This project helped in:

- Monitoring hotel performance
- Understanding customer booking behavior
- Identifying high-revenue segments
- Supporting strategic pricing decisions
- Improving operational efficiency

---



---

# Author
Alappa Gari Susmitha

**Susmitha**  
Aspiring Data Analyst | Power BI | SQL | Excel | Data Visualization
