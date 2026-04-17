-- Month-over-Month Revenue Growth
-- Objective: Track revenue trends and measure growth compared to the previous month

WITH monthly_revenue AS (
    SELECT
        to_char (order_date, 'mm-yyyy') AS month,
        SUM(total_sell) AS total_revenue
    FROM amazon_sales
    GROUP BY to_char(order_date, 'mm-yyyy')
	
)
SELECT
    month,
    total_revenue,
    coalesce(LAG(total_revenue) OVER (ORDER BY month),0) AS prev_month_revenue,
    coalesce(ROUND(
        total_revenue - LAG(total_revenue) OVER (ORDER BY month)
        / NULLIF(LAG(total_revenue) OVER (ORDER BY month), 0) * 100,
        2
    ),0) AS mom_growth_percent
FROM monthly_revenue
ORDER BY month 

-- Insight:
-- This metric measures how revenue changes month-to-month.
-- Helps identify growth trends, seasonality, and performance fluctuations.