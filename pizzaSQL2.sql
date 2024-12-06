select * from pizza_sales
--orders for days
select DATENAME	(DW, order_date) as order_Day, count(distinct order_id) as total_orders
from pizza_sales
group by DATENAME(dw, order_date)

--orders for months

select DATENAME(MONTH, order_date) as month_name, COUNT(distinct order_id) as total_orders
from pizza_sales
group by DATENAME(MONTH, order_date)
order by total_orders desc

--% de ventas por categoria 
select pizza_Category,sum(total_price) as total_sales, sum(total_price) * 100/
(select sum(total_price) from pizza_sales where MONTH(order_date) = 1) as pct_Sales
from pizza_sales
where MONTH(order_date) = 1
group by pizza_category


select pizza_size,cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price) * 100/
(select sum(total_price) from pizza_sales) as decimal(10,2)) as pct_Sales
from pizza_sales
group by pizza_size
order by pct_Sales desc
