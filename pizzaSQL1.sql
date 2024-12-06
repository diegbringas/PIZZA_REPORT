select * from pizza_sales

--total revenue: sum of total prices
select sum(total_price) as total_revenue from pizza_sales

--Average order value
select sum(total_price) /COUNT (distinct order_id) as Avg_order_value from pizza_sales

--total pizza vendidas
select sum(quantity) as Pizza_vendidas from pizza_sales

--total orders
select COUNT(distinct order_id) as total_orders from pizza_sales

--Average pizzas per Order
select cast(sum(quantity) as decimal(10, 2))/ cast(count(distinct order_id) as decimal(10,2))
as Avg_Pizza_per_Order from pizza_sales