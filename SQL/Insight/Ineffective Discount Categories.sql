-- Ineffective Discount Categories
-- Objective: Identify categories where higher-than-average discounts do not translate into higher revenue

with category_metrics as (

select product_category,round(avg(discount_percent),2) as average_discount_percent, 
round(avg(total_sell),2) as average_revenue
from amazon_sales
group by product_category
),

average_values as (
select avg(average_discount_percent) as  total_average_discount,
avg(average_revenue) as total_average_revenue
from category_metrics
)
select 
product_category,average_discount_percent, average_revenue
from category_metrics
cross join average_values
where average_discount_percent > total_average_discount
and 
average_revenue < total_average_revenue
order by average_discount_percent desc

-- Insight:
-- Categories are over-discounted, indicating that higher discounts are not driving revenue but instead eroding margins unnecessarily.
