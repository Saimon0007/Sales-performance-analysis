-- Revenue by category
SELECT category, SUM(sales) AS revenue, SUM(profit) AS profit
FROM sales_performance
GROUP BY category
ORDER BY revenue DESC;