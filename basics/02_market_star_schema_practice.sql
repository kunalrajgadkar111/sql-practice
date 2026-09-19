-- ============================================================
-- MARKET STAR SCHEMA - SQL PRACTICE
-- Problems 1-16
-- Database: market_star_schema
-- Table: market_fact_full
-- ============================================================


-- 1. Display all records from market_fact_full.
-- Hindi: market_fact_full table ke saare records display karo.

SELECT *
FROM market_fact_full;


-- 2. Display Ord_id, Prod_id and Sales.
-- Hindi: Har order ka Order ID, Product ID aur Sales display karo.

SELECT Ord_id, Prod_id, Sales
FROM market_fact_full;


-- 3. Find orders where Sales is greater than 1000.
-- Hindi: Un orders ko find karo jinki Sales 1000 se zyada hai.

SELECT *
FROM market_fact_full
WHERE Sales > 1000;


-- 4. Find orders where Profit is greater than 500.
-- Hindi: Un orders ko find karo jinka Profit 500 se zyada hai.

SELECT *
FROM market_fact_full
WHERE Profit > 500;


-- 5. Find orders where Discount is greater than 0.05.
-- Hindi: Un orders ko find karo jinka Discount 0.05 se zyada hai.

SELECT *
FROM market_fact_full
WHERE Discount > 0.05;


-- 6. Count the total number of orders/records.
-- Hindi: Table mein total kitne records/orders hain, count karo.
-- Result: 15

SELECT COUNT(Ord_id) AS total_orders
FROM market_fact_full;


-- 7. Find the total Sales.
-- Hindi: Table ki total Sales calculate karo.
-- Result: 24878.11

SELECT ROUND(SUM(Sales), 2) AS total_sales
FROM market_fact_full;


-- 8. Find the average Sales.
-- Hindi: Sales ki average value calculate karo.
-- Result: 1658.5403666666667

SELECT AVG(Sales) AS average_sales
FROM market_fact_full;


-- 9. Find the maximum Sales.
-- Hindi: Sabse zyada Sales value find karo.
-- Result: 4701.69

SELECT MAX(Sales) AS maximum_sales
FROM market_fact_full;


-- 10. Find the minimum Sales.
-- Hindi: Sabse kam Sales value find karo.
-- Result: 14.76

SELECT MIN(Sales) AS minimum_sales
FROM market_fact_full;


-- 11. Find the total Profit.
-- Hindi: Table ka total Profit calculate karo.
-- Result: 4949.60

SELECT SUM(Profit) AS total_profit
FROM market_fact_full;


-- 12. Find all unique Customer IDs.
-- Hindi: Table mein unique Customer IDs find karo.

SELECT DISTINCT Cust_id
FROM market_fact_full;


-- 13. Find the total Order Quantity.
-- Hindi: Sabhi orders ki total Order Quantity calculate karo.
-- Result: 390

SELECT SUM(Order_Quantity) AS total_order_quantity
FROM market_fact_full;


-- 14. Find the average Profit.
-- Hindi: Profit ki average value calculate karo.
-- Result: 329.973333

SELECT AVG(Profit) AS average_profit
FROM market_fact_full;


-- 15. Find the maximum Profit.
-- Hindi: Sabse zyada Profit value find karo.
-- Result: 1675.98

SELECT MAX(Profit) AS maximum_profit
FROM market_fact_full;


-- 16. Find the minimum Profit.
-- Hindi: Sabse kam Profit value find karo.
-- Result: -693.23

SELECT MIN(Profit) AS minimum_profit
FROM market_fact_full;


-- ============================================================
-- END OF PROBLEMS 1-16
-- ============================================================
