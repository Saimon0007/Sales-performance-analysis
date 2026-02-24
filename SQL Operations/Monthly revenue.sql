-- Monthly revenue & profit trend
SELECT DATE_TRUNC('month', order_date)::date AS month,
       SUM(sales)    AS monthly_revenue,
       SUM(profit)   AS monthly_profit
FROM sales_performance
GROUP BY month
ORDER BY month DESC;