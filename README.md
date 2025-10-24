# Ecommerce_SQL_Project-2
PostgreSQL schema design for E-commerce database (Task 1: Database Setup and Schema Design)

### 📌 Task 1: Database Setup and Schema Design
**Objective:** Create a relational database from the Kaggle *Online Retail* dataset.

### 🧱 Schema Overview
- **Database:** online_retail_db  
- **Tables:** customers, products, invoices, invoice_items  
- **Relationships:**
  - customers (1) → invoices (many)
  - invoices (1) → invoice_items (many)
  - products (1) → invoice_items (many)


### ⚙️ Tools Used
- PostgreSQL (pgAdmin)
- Kaggle Dataset: [Online Retail Dataset](https://www.kaggle.com/datasets/carrie1/ecommerce-data)

### 🏁 Outcome
A well-structured normalized schema ready for data import and analysis


## Task 2: Data Insertion and Handling Nulls
This task demonstrates inserting, updating, and deleting records in the PostgreSQL e-commerce database.
- Inserted records with NULL values
- Updated missing data using UPDATE
- Deleted unwanted rows using DELETE

- ## Task 3: Writing Basic SELECT Queries
This task focuses on retrieving data from the e-commerce database.
- Used SELECT * and specific columns
- Filtered records with WHERE, AND, OR, LIKE, and BETWEEN
- Sorted results using ORDER BY
- Limited output with LIMIT
- Joined multiple tables to extract meaningful data

- ## Task 4: Aggregate Functions and Grouping
This task focuses on summarizing and analyzing tabular data.
- Used aggregate functions: `SUM`, `COUNT`, `AVG`
- Grouped data using `GROUP BY`
- Filtered aggregated results with `HAVING`
- Calculated total sales, average price, and customer spending summaries

