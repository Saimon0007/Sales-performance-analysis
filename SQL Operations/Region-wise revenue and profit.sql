SELECT region, SUM(sales) AS revenue, SUM(profit) AS profit, SUM(quantity) AS units
FROM sales_performance
GROUP BY region
ORDER BY revenue DESC;