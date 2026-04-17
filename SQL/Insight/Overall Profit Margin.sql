-- Overall Profit Margin (%)
-- Objective: Measure overall profitability of the business across all sales

select (round(sum(profit) / sum(total_sell) * 100)) as Profit_Margin 
from amazon_sales



--Insight:
-- This metric calculates the overall profit margin as a percentage of total revenue
-- This have low (5%) profit margin.