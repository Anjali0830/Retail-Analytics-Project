# Omnichannel Retail Sales & Inventory Analytics Dashboard

## Project Overview

This project focuses on analyzing retail sales and inventory data using Python, MySQL, SQL, and Power BI to generate actionable business insights.

The solution follows a complete data analytics workflow:

- Data Cleaning using Python (Pandas)
- Data Storage using MySQL
- Data Analysis using SQL
- Interactive Dashboard Development using Power BI
- Version Control using Git & GitHub

The goal is to help businesses understand sales performance, customer behavior, inventory status, and payment trends through data-driven decision making.

---

# Business Problem

Retail organizations generate large amounts of transactional data every day. However, extracting meaningful insights from raw data can be challenging.

Key business questions addressed:

- What is the total revenue generated?
- Which products are top-selling?
- Which cities contribute the highest revenue?
- What are the monthly sales trends?
- Which payment methods are preferred by customers?
- What is the current inventory distribution?
- Who are the top customers based on spending?

---

# Tech Stack

| Technology | Purpose |
|------------|----------|
| Python | Data Cleaning & Preprocessing |
| Pandas | Data Manipulation |
| MySQL | Database Storage |
| MySQL Workbench | Database Management |
| SQL | Data Analysis |
| Power BI | Dashboard & Visualization |
| Git | Version Control |
| GitHub | Project Repository |
| VS Code | Development Environment |

---

# Project Architecture

```text
Raw CSV Dataset
        ↓
Python Data Cleaning
        ↓
Cleaned Dataset
        ↓
MySQL Database
        ↓
SQL Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights
```

---

# Dataset Description

The dataset contains retail transaction records with the following columns:

| Column Name | Description |
|------------|-------------|
| order_id | Unique Order Identifier |
| customer_id | Unique Customer Identifier |
| customer_name | Customer Name |
| product | Product Purchased |
| category | Product Category |
| quantity | Quantity Sold |
| price | Unit Price |
| order_date | Date of Order |
| city | Customer City |
| payment_method | Payment Method Used |
| inventory_status | Product Availability Status |

---

# Project Folder Structure

```text
Retail-Analytics-Project/
│
├── data/
│   ├── raw/
│   └── cleaned/
│       └── cleaned_sales.csv
│
├── notebooks/
│   ├── data_cleaning.py
│   └── eda.py
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── retail_dashboard.pbix
│
├── reports/
│   └── final_report.docx
│
├── screenshots/
│
├── README.md
│
├── requirements.txt
│
└── .gitignore
```

---

# Data Cleaning Process

Data cleaning was performed using Python and Pandas.

## Tasks Performed

- Removed duplicate records
- Handled missing values
- Standardized date formats
- Validated data types
- Prepared data for SQL analysis
- Exported cleaned dataset

## Sample Code

```python
import pandas as pd

df = pd.read_csv("sales.csv")

df.drop_duplicates(inplace=True)
df.dropna(inplace=True)

df.to_csv("cleaned_sales.csv", index=False)
```

---

# MySQL Database Setup

## Create Database

```sql
CREATE DATABASE retail_analytics;
```

## Use Database

```sql
USE retail_analytics;
```

## Create Table

```sql
CREATE TABLE sales (
    order_id VARCHAR(20),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    city VARCHAR(100),
    payment_method VARCHAR(50),
    inventory_status VARCHAR(50)
);
```

---

# SQL Analysis

## Total Revenue

```sql
SELECT SUM(quantity * price) AS total_revenue
FROM sales;
```

## Revenue by City

```sql
SELECT city,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;
```

## Top Selling Products

```sql
SELECT product,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC;
```

## Sales by Category

```sql
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;
```

## Payment Method Analysis

```sql
SELECT payment_method,
       COUNT(*) AS total_orders
FROM sales
GROUP BY payment_method
ORDER BY total_orders DESC;
```

## Inventory Status Analysis

```sql
SELECT inventory_status,
       COUNT(*) AS total_products
FROM sales
GROUP BY inventory_status;
```

---

# Power BI Dashboard

The dashboard provides an interactive view of business performance.

## KPI Cards

- Total Revenue
- Total Orders

## Visualizations

### Revenue by City
- Clustered Bar Chart

### Sales by Category
- Pie Chart

### Monthly Sales Trend
- Line Chart

### Payment Method Analysis
- Donut Chart

### Inventory Status Analysis
- Column Chart

### Top Products
- Table Visual

---

# Dashboard Features

- Interactive Filters (Slicers)
- Dynamic Revenue Tracking
- Category Performance Analysis
- Customer Insights
- Inventory Monitoring
- Payment Method Distribution

---

# Key Insights

The dashboard helps identify:

- Highest revenue-generating cities
- Best-selling products
- Most profitable categories
- Monthly sales performance
- Customer purchasing trends
- Preferred payment methods
- Inventory availability status

---

# Screenshots

## Final Dashboard

Add your dashboard screenshot here:

```text
screenshots/17_final_dashboard.png
```

---

# How to Run This Project

## Clone Repository

```bash
git clone https://github.com/your-username/Retail-Analytics-Project.git
```

## Open Project

```bash
cd Retail-Analytics-Project
```

## Install Dependencies

```bash
pip install pandas matplotlib
```

## Run Data Cleaning

```bash
python notebooks/data_cleaning.py
```

## Import Data into MySQL

Use MySQL Workbench:

Server → Table Data Import Wizard

Import:

```text
cleaned_sales.csv
```

into:

```text
sales
```

table.

## Execute SQL Queries

Run:

```text
sql/analysis_queries.sql
```

using MySQL Workbench.

## Open Dashboard

Open:

```text
dashboard/retail_dashboard.pbix
```

using Power BI Desktop.

---

# Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Transformation
- Exploratory Data Analysis

### Database Management

- MySQL
- SQL Query Writing
- Data Import & Validation

### Business Intelligence

- Power BI Dashboard Development
- KPI Tracking
- Interactive Reporting

### Software Development

- Python
- Git
- GitHub
- VS Code

---

# Future Enhancements

- Sales Forecasting using Machine Learning
- Customer Segmentation Analysis
- Automated ETL Pipeline
- Real-Time Dashboard Integration
- Inventory Demand Prediction

---

# Author

**Anjali Gurav**

Software Engineer | Data Analytics Enthusiast

GitHub: https://github.com/Anjali0830


---

# License

This project is intended for educational, portfolio, and learning purposes.
