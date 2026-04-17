-- Top Revenue-Generating Product Categories
-- Objective: Identify the highest-performing product categories based on total revenue

select product_category,sum(total_sell) as total_revenue
from amazon_sales
where total_sell is not null
group by product_category
order by total_revenue desc
limit 3


-- Insight:
-- key business drivers and prioritize strategic focus areas.
-- Key categories like Beauty and Fashion may rely heavily on inefficient discounting

