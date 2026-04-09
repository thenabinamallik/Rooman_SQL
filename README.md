🛒 GizmoMart MySQL Assignment

📌 Overview

This project demonstrates the implementation of an E-Commerce Inventory Database using MySQL.
It covers all fundamental SQL operations including:

- DDL (Data Definition Language)
- DML (Data Manipulation Language)
- DQL (Data Query Language)
- Clauses (WHERE, ORDER BY, LIMIT, etc.)
- Aggregate Functions
- GROUP BY & HAVING

---

🗂️ Database Details

Database Name: "GizmoMart_DB"
Table Name: "Products"

Table Structure

Column Name| Data Type
ProductID| INT (PK)
ProductName| VARCHAR(100)
Category| VARCHAR(50)
Price| DECIMAL(10,2)
StockQuantity| INT
Rating| DECIMAL(3,1)

---

⚙️ Tasks Performed

🔹 PART 1: DDL

- Created database
- Created table
- Added column using ALTER

🔹 PART 2: DML

- Inserted 8 records
- Updated product price
- Deleted a record

🔹 PART 3: DQL

- Retrieved all data
- Filtered based on category and price

🔹 PART 4: CLAUSES

- Used WHERE, LIKE, BETWEEN, IN
- Sorted data using ORDER BY
- Limited results using LIMIT

🔹 PART 5: AGGREGATES

- COUNT, AVG, MIN, MAX, SUM operations

🔹 PART 6: GROUP BY & HAVING

- Grouped data by category
- Applied conditions using HAVING

---

📸 Sample Outputs

🔹 SELECT * Output

"SELECT" (select_all.png)

🔹 Electronics Products

"Electronics" (electronics.png)

🔹 Top Expensive Products

"Top" (top_expensive.png)

🔹 GROUP BY Result

"Group" (group_by.png)

---

🚀 How to Run

1. Open MySQL Workbench / CLI
2. Run the SQL file:
   SOURCE GizmoMart_Assignment.sql;
3. Execute queries step-by-step

---

📁 Files Included

- "GizmoMart_Assignment.sql"
- "select_all.png"
- "electronics.png"
- "top_expensive.png"
- "group_by.png"
- "README.md"

---

✅ Conclusion

This assignment provides a complete understanding of SQL operations used in real-world applications like inventory management systems.

---
