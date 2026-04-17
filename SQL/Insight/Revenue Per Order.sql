-- Revenue Per Order
-- Objective: Calculate total revenue generated for each individual order

select
    order_id,
    sum(discounted_price * quantity_sold) as revenue_per_order
from amazon_sales
group by order_id
order by order_id

-- Insight:
-- This metric calculates how much revenue each order generates.
-- Helps identify high-value vs low-value orders and customer purchasing behavior.