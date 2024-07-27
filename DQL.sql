select * from sql_project;


-- find top 10 highest revenue generatiing products
select  product_id, sum(sale_price) as sales
from sql_project
group by product_id
order by sales desc
limit 10;


--- find top 5 highest selling products in each region
with cte as (select region, product_id, sum(sale_price),
	row_number() over(partition by region order by sum(sale_price) desc) as rnk
	from sql_project as sq
	group by product_id, region)
	
select *
from cte
where cte.rnk < 6;


---find month over month comparision for 2022 and 2023 sales 
-- eg jan 2022 and jan 2023
with cte as (
select extract(year from order_date) as years,
extract(month from order_date) as months,
sum(sale_price) as sales
from sql_project
group by 1,2
order by 1,2 )

select months,
	sum(
	case when years = 2022 then sales else 0 end),
	sum(
	case when years = 2023 then sales else 0 end)
	from cte
	group by months
	order by months;




