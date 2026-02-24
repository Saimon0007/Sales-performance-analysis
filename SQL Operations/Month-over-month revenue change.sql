-- Month-over-month revenue change %
WITH m AS (
  SELECT DATE_TRUNC('month', order_date)::date AS month, SUM(sales) AS rev
  FROM sales_performance
  GROUP BY month
)
SELECT month,
       rev,
       LAG(rev) OVER (ORDER BY month) AS prev_rev,
       ROUND((rev - LAG(rev) OVER (ORDER BY month)) / NULLIF(LAG(rev) OVER (ORDER BY month),0) * 100,2) AS mon_pct_change
FROM m
ORDER BY month;