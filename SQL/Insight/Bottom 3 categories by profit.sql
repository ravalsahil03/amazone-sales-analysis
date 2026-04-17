-- Lowest Performing Product Categories by Profit
-- Objective: Identify product categories generating the least total profit

select product_category,sum(profit) as total_profit
from amazon_sales
where profit is not null
group by product_category
order by total_profit 
limit 3

-- Insight:
-- Electronics—despite being a top revenue driver
