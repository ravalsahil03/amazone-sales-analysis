-- Revenue Lost Due to Discounts
-- Objective: Measure total revenue sacrificed بسبب discounting strategy

select round(sum(
(original_price - discounted_price ) * quantity_sold),2
) as revenue_lost_to_discounts 
from amazon_sales


-- Insight:
-- Helps evaluate the financial impact of discount strategies.