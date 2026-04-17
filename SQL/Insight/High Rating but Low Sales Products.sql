-- High Rating but Low Sales Products
-- Objective: Identify products with above-average ratings but below-average sales volume

with product_metrics as (
select 
product_id,round(avg(rating),1) as average_rating,
sum(quantity_sold) as total_quantity_sold
from amazon_sales
group by product_id
),

data as (
select 
avg(average_rating) as total_average_rating,
sum(total_quantity_sold) as total_quantity_sold
from product_metrics
)

select product_id,average_rating,quantity_sold
from product_metrics
cross join data
where average_rating > total_average_rating
and quantity_sold < total_quantity_sold
order by average_rating desc,quantity_sold

-- Insight:
-- products that customers rate highly but are not selling in large quantities.
--- Highly rated but underperforming products.

