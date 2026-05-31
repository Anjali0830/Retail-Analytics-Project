# Omnichannel Retail Sales and Inventory Analytics Dashboard

## Project Overview

This project analyzes retail sales and inventory data to generate business insights using Python, SQLite, SQL, and Power BI.

The objective is to clean raw retail data, perform SQL-based analysis, and build an interactive dashboard that helps stakeholders monitor sales performance, customer behavior, inventory status, and payment trends.

---

## Business Problem

Retail businesses generate large amounts of transactional data from multiple channels. Without proper analysis, it becomes difficult to:

- Track revenue performance
- Identify top-selling products
- Monitor inventory status
- Understand customer purchasing behavior
- Analyze payment method trends
- Compare sales across cities

This project addresses these challenges through data analytics and visualization.

---

## Technologies Used

- Python
- Pandas
- SQLite
- SQL
- Power BI
- Git & GitHub
- VS Code

---

## Project Architecture

```text
Raw CSV Data
      ↓
Data Cleaning (Python)
      ↓
Cleaned Dataset
      ↓
SQLite Database
      ↓
SQL Analysis
      ↓
Power BI Dashboard
      ↓
Business Insights
```

---

## Dataset Information

The dataset contains retail transaction records with the following fields:

| Column Name | Description |
|------------|-------------|
| order_id | Unique order identifier |
| customer_id | Unique customer identifier |
| customer_name | Customer name |
| product | Product purchased |
| category | Product category |
| quantity | Quantity sold |
| price | Unit price |
| order_date | Date of order |
| city | Customer city |
| payment_method | Payment method used |
| inventory_status | Inventory availability status |

---

## Project Structure

```text
Retail-Analytics-Project/
│
├── data/
│   ├── raw/
│   └── cleaned/
│       └── cleaned_sales.csv
│
├── database/
│   └── retail.db
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
└── requirements.txt
```

---

## Data Cleaning Tasks

The following preprocessing steps were performed using Python:

- Removed duplicate records
- Handled missing values
- Standardized date formats
- Validated data types
- Created calculated sales metrics
- Prepared data for SQL and Power BI analysis

---

## SQL Analysis

The following business questions were answered using SQL:

### Total Revenue

```sql
SELECT SUM(quantity * price) AS total_revenue
FROM sales;
```

### Top Selling Products

```sql
SELECT product,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC;
```

### Revenue by City

```sql
SELECT city,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;
```

### Monthly Sales Trend

```sql
SELECT strftime('%m', order_date) AS month,
       SUM(quantity * price) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;
```

---

## Power BI Dashboard

The dashboard includes the following visualizations:

### KPI Cards

- Total Revenue
- Total Orders

### Charts

- Revenue by City (Bar Chart)
- Sales by Category (Pie Chart)
- Monthly Sales Trend (Line Chart)
- Payment Method Analysis (Donut Chart)
- Inventory Status Analysis (Column Chart)

### Tables

- Top Products
- Customer Sales Summary

### Filters

- City
- Category
- Payment Method
- Inventory Status
- Month

---

## Key Insights

Some of the insights generated from the analysis include:

- Identification of top-performing cities
- Best-selling products and categories
- Monthly sales trends
- Customer purchasing patterns
- Preferred payment methods
- Inventory stock distribution

---

## Dashboard Preview

Add your dashboard screenshot here:

```text
screenshots/17_final_dashboard.png
```

---

## How to Run the Project

### Clone Repository

```bash
git clone https://github.com/your-username/Retail-Analytics-Project.git
```

### Navigate to Project Folder

```bash
cd Retail-Analytics-Project
```

### Install Dependencies

```bash
pip install pandas matplotlib
```

### Run Data Cleaning

```bash
python notebooks/data_cleaning.py
```

### Create SQLite Database

```bash
python database/create_database.py
```

### Execute SQL Queries

Open:

```text
sql/analysis_queries.sql
```

and run queries using SQLite extension in VS Code.

---

## Future Enhancements

- Forecast future sales trends
- Customer segmentation analysis
- Product recommendation system
- Automated reporting
- Real-time dashboard integration

---

## Author

**Anjali Gurav**

Software Engineer | Data Analytics Enthusiast

GitHub: https://github.com/your-github-username

---

## License

This project is created for learning and portfolio purposes.
