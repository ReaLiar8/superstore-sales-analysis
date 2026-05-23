--Top 10 products by sales--
SELECT "Product Name", sum(Sales) as 'Sales' FROM superstore
GROUP by "Product Name"
ORDER by sum(Sales) DESC
LIMIT 10;

--Demand on products categories--
SELECT Category, count(Category) as 'Amount of products' FROM superstore
GROUP by Category
ORDER by count(Category) DESC;

--Amount of sold products and average sales from each city in California--
SELECT city, count("Product Name") as 'Amount of products', round(avg(sales),2) as 'Sales (Average)' FROM superstore
WHERE State = "California"
GROUP by City
ORDER by count("Product Name") DESC, avg(sales) DESC;

--State with the most consumer customers--
SELECT State, count(Segment) as 'Customers' FROM superstore
WHERE Segment = "Consumer"
GROUP by State
ORDER by count(Segment) DESC;

--Customers from Kentucky with sales over 500--
SELECT "Customer name", sum(Sales) as 'Total Sales' FROM superstore
WHERE State = "Kentucky"
GROUP by "Customer name"
HAVING sum(Sales) > 500
ORDER by "Customer name" ASC;
