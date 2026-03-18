-- Total Orders
select count(*) as total_orders from orders;

-- Total Sales
select sum(sales) as total_sales from orders;

-- Total Profit
select sum(profit) as total_profit from orders;

-- Sales by Region
select region, sum(sales) as total_sales
from orders
group by region
order by total_sales desc;

-- Sales by Segment
select segment, sum(sales) as total_sales
from orders
group by segment
order by total_sales desc;

-- Profit by Category
select category, sum(profit) as total_profit
from orders
group by category
order by total_profit desc;

-- Top 10 Products by Sales
select product_name, sum(sales) as total_sales
from orders
group by product_name
order by total_sales desc
limit 10;

-- Loss Making Products
select product_name, sum(profit) as total_profit
from orders
group by product_name
having sum(profit) < 0;

-- Sales by State
select state, sum(sales) as total_sales
from orders
group by state
order by total_sales desc;

-- Orders by City
select city, count(order_id) as total_orders
from orders
group by city
order by total_orders desc;
