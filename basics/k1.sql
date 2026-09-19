use ecommerce_db;


-- total number of customer
select count(customer_id) as total_number_of_customers from customers;

-- show all customers 
select * from customers;

-- show customers from maharashtra

select * from customers
where state = 'maharashtra';

-- find customers older than 30

select * from customers 
where age > 30;



-- Find products costing more than ₹10,000.
select * from products 
where cost_price > 10000;

-- show all producst with electronics 

select * from products
where category = 'electronics';

-- all intermediate problems 

use market_star_schema;
-- 1. Display all columns from the market_fact_full table.
select * from market_fact_full;

-- 2. From the market_fact_full table, display only these 3 columns:
-- Ord_id
-- Prod_id
-- Sales

select ord_id, prod_id, sales from market_fact_full;

-- 3. From market_fact_full, display all columns for records where Sales is greater than 1000.
select * from market_fact_full
where sales > 1000;

-- 4. market_fact_full, display all columns for records where Profit is greater than 500.
select * from market_fact_full
where profit >500;

-- 5. From market_fact_full, display all columns for records where Discount is greater than 0.05.
select * from market_fact_full
where discount > 0.05;

-- 6. Find the total number of rows/orders in the market_fact_full table.
select count(ord_id)  from market_fact_full;

-- 7. Find the total Sales from the market_fact_full table.
 select round(sum(sales),2) as total_sales from market_fact_full;
 
-- 8.Find the average Sales from the market_fact_full table.
-- Hindi: market_fact_full table mein Sales ki average value find karo.
  select avg(sales) average_sales from market_fact_full;

-- 9. Find the maximum Sales value from the market_fact_full table.
-- Hindi: market_fact_full table mein Sales ki maximum value find karo.
 Select max(sales) FROM MARKET_FACT_FULL;
 
-- 10. Find the minimum Sales value from the market_fact_full table.
-- Hindi: market_fact_full table mein Sales ki minimum value find karo.    
SELECT min(sales) FROM market_fact_full;


-- 11. Find the total Profit from the market_fact_full table.
-- Hindi: market_fact_full table mein Profit ka total find karo.
select sum(profit) from market_fact_full;

-- 12. Find the number of unique customers in the market_fact_full table.
-- Hindi: market_fact_full table mein unique customers ki sankhya find karo.
select distinct(cust_id) from market_fact_full;

-- 13. Find the total Order Quantity from the market_fact_full table.
-- Hindi: market_fact_full table mein Order_Quantity ki total quantity find karo.
select sum(order_quantity) from market_fact_full;


-- 14. Find the average Profit from the market_fact_full table.
-- Hindi: market_fact_full table mein Profit ki average value find karo.

select avg(profit) from market_fact_full;

-- 15. Find the maximum Profit from the market_fact_full table.
-- Hindi: market_fact_full table mein Profit ki maximum value find karo.
select max(profit) from market_fact_full;

-- 16. Find the minimum Profit from the market_fact_full table.
-- Hindi: market_fact_full table mein Profit ki minimum value find karo.
select min(profit) from market_fact_full;

-- 17. Display Ord_id and Sales in descending order of Sales.
-- Hindi: Sales ko highest se lowest order mein arrange karo.
 
 
 select ord_id, sales from market_fact_full
 order by  sales desc;

-- 17. Display ord_id and sales in ascending order of sales.
-- Hindi: Sales ko lowest se highest order mein arrange karo.
select ord_id, sales from market_fact_full
order by  sales ;

-- 18. Find the top 5 highest sales.
-- Hindi: Sabse zyada sales wale top 5 records nikalo.
 select sales from market_fact_full
 order by sales desc
 limit 5;
 
 -- 19. Find the 5 lowest sales.
-- Hindi: Sabse kam sales wale 5 records nikalo.

select sales from market_fact_full
order by sales asc
limit 5;

-- 6. Find the total number of orders.

-- 7. Find total quantity sold.

-- 8. Find the average product price.

-- 9. Find the most expensive product.

-- 10. Find total sales by product.

-- 11. Find total sales by customer.

-- 12. Find sales by city.

-- 13. Find the number of orders for each payment method.

-- 14. Find how many orders were Delivered, Cancelled and Returned.

-- 15. Find the top 5 customers by spending.



