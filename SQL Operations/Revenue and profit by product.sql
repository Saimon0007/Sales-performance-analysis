SELECT product_name, SUM(sales) AS revenue, SUM(profit) AS profit, SUM(quantity) AS units_sold
FROM sales_performance
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;