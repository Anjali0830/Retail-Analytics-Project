import sqlite3
import pandas as pd

# Connect database
conn = sqlite3.connect("database/retail.db")

# Read cleaned CSV
df = pd.read_csv(r"E:\Retail-Analytics-Project\data\cleaned\cleaned_sales_data.csv")

# Store into SQLite
df.to_sql("sales", conn, if_exists="replace", index=False)

print("Database created successfully!")

conn.close()