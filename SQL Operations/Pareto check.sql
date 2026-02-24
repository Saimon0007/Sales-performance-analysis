-- Pareto check: % of revenue from top 20% products
WITH prod AS (
SELECT product_name, SUM(sales) AS revenue
FROM sales_performance
GROUP BY product_name
ORDER BY revenue DESC
),
tot AS (SELECT SUM(revenue) AS total_revenue FROM prod)
SELECT SUM(revenue) AS top_revenue,
       ROUND( SUM(revenue)/ (SELECT total_revenue FROM tot) * 100,2) AS pct_of_total
FROM (SELECT revenue FROM prod LIMIT GREATEST(1, (SELECT CEIL(0.2 * COUNT(*)) FROM prod) )) t;