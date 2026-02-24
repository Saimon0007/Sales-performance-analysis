-- Products sorted by margin (profit/sales)
SELECT product_name,
       SUM(sales) AS revenue,
       SUM(profit) AS profit,
       ROUND(SUM(profit)/NULLIF(SUM(sales),0)*100,2) AS margin_pct
FROM sales_performance
GROUP BY product_name
ORDER BY margin_pct DESC NULLS LAST
LIMIT 20;