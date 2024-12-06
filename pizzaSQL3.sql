select * from pizza_sales

--top 5 pizza por revenue
select top 5  pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc

--bottom 5 pizzas por revenue
select top 5  pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc

--top 5 por quantity
select top 5  pizza_name, sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc
