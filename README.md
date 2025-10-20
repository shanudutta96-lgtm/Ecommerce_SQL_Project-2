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
