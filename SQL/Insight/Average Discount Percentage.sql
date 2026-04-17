-- Average Discount Percentage
-- Objective: Measure the overall average discount applied across all sales

select
round(avg(
(original_price - discounted_price) / nullif(original_price,0) * 100))
 as average_discount 
 from amazon_sales 

-- Insight:
-- This metric calculates the average percentage discount offered across all products.
-- Average discount percentage is 13.