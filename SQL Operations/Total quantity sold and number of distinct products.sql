-- Total quantity sold and number of distinct products
SELECT SUM(quantity) AS total_units_sold,
       COUNT(DISTINCT product_name) AS distinct_products
FROM sales_performance;
