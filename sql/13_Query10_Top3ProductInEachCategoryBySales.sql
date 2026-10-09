-- Top 3 product in each category by sales

with product_sales as
(
select dp.category,
dp.product_name,
fs.sales
from retail_analytics.fact_sales fs
join retail_analytics.dim_product dp
on fs.product_key = dp.product_key
),
rank_sales as
(
select *,
dense_rank() over(partition by category order by sales desc) as p_rank
from product_sales
)
select * from rank_sales
where p_rank <=3
;