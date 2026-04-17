-- Top Categories 
-- Objective: Retrieve the last 3 product categories based on alphabetical sorting

select product_category from amazon_sales
group by product_category
order by product_category desc
limit 3


-- Insight:
-- Data exploration or validation