-- Weekday seasonality (which weekdays perform best)
SELECT EXTRACT(dow FROM order_date) AS weekday, 
       TO_CHAR(order_date, 'FMDay') AS weekday_name,
       SUM(sales) AS sales_total,
       COUNT(*)   AS rows_count
FROM sales_performance
GROUP BY weekday, weekday_name
ORDER BY weekday DESC;