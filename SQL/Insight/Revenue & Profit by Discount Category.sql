-- Revenue & Profit by Discount Category
-- Objective: Analyze how different discount levels impact revenue, profit, and margins

select
case
    when discount_percent = 0 then 'No Discount'
    when discount_percent between 1 and 10 then 'Low Discount'
    when discount_percent between 11 and 20 then 'Medium Discount'
    else 'High Discount'
  end as discount_status,
  sum(total_sell) as total_revenue,
  round(sum(profit),2) as total_profit,
  round(sum(profit) / sum(total_sell) * 100, 2) as profit_margin
from amazon_sales
group by discount_status
order by total_revenue desc

-- Insight:
-- This analysis evaluates how discount levels influence revenue generation and profitability.
-- low discounts drive the highest revenue and profit, while high discounts fail to significantly boost sales.