
# SQL Ecommerce Analysis

## Objective
Use SQL queries to extract and analyze data from a database, as part of Task 3 of the Elevate Labs Data Analyst Internship.

## Tools Used
- SQL Server Management Studio (SSMS)
- Microsoft SQL Server

## Dataset
A custom-built ecommerce dataset with 3 related tables:
- **customers** (50 rows) — customer_id, name, city, signup_date
- **products** (15 rows) — product_id, product_name, category, price
- **orders** (250 rows) — order_id, customer_id, product_id, quantity, amount, order_date, status

## Files in this Repository
| File | Description |
|------|-------------|
| `ecommerce_sqlserver_setup.sql` | Creates the `EcommerceDB` database, all 3 tables, and inserts all sample data |
| `task3_queries.sql` | All analysis queries — SELECT/WHERE/GROUP BY, joins, subqueries, aggregates, view, and indexes |
| `screenshots/` | Output screenshots for each query, run in SSMS |

## What I Did
1. Created the `EcommerceDB` database and 3 related tables in SSMS
2. Loaded sample customer, product, and order data
3. Wrote and executed queries covering:
   - **SELECT, WHERE, ORDER BY, GROUP BY** — total spend per customer, filtering by city
   - **Joins** — INNER JOIN, LEFT JOIN, RIGHT JOIN across customers/orders/products
   - **Subqueries** — customers who spent above average, products priced above average
   - **Aggregate functions** — average revenue per user, total revenue by category (SUM, AVG)
   - **View** — created `customer_revenue` view to simplify repeated analysis
   - **Indexes** — added indexes on `orders(customer_id)` and `orders(status)`, and checked the execution plan to confirm they were used

## Key Learnings
- How JOIN types differ in what rows they include (INNER vs LEFT vs RIGHT)
- Difference between WHERE (filters rows before grouping) and HAVING (filters after grouping)
- How subqueries can be used inside WHERE clauses for comparison against aggregate values
- Views are useful for saving a reusable, pre-joined/pre-aggregated version of a query
- Indexes speed up filtering and joins, visible directly in the SSMS execution plan

## Screenshots
See the `screenshots/` folder for query outputs, including:
- GROUP BY results
- INNER / LEFT / RIGHT JOIN outputs
- Subquery results
- Aggregate (AVG) results
- The `customer_revenue` view output
- Execution plan showing index usage

## Outcome
Gained hands-on practice manipulating and querying structured data using SQL, including joins, subqueries, aggregation, views, and basic query optimization.
