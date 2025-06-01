SELECT* FROM retail_sales
LIMIT 10


SQL Retail Sales Analysis -P1

SELECT
COUNT(*) 
FROM retail_sales
SELECT* FROM retail_sales
WHERE transactions_id IS NULL

---- Data Cleaning

SELECT* FROM retail_sales
WHERE sale_date IS NULL
SELECT* FROM retail_sales
WHERE sale_time IS NULL

SELECT* FROM retail_sales
WHERE
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 gender IS NULL
	 OR
	 category IS NULL

	 quantity IS NULL
	 OR
	 cogs IS NULL
	 OR
	 total_sale is null
---- Data Exploration

---- How many sales we have?
	SELECT COUNT(*) as total_sale FROM retail_sales
	-How many customers we have?
	
	 SELECT COUNT(*) as total_sale FROM retail_sales
	 -How many sales we have?
	 
	 SELECT COUNT(customer_id) as total_sale FROM retail_sales
	 How many unique customers we have?
	 
	SELECT COUNT(DISTINCT customer_id)as total_sale FROM retail_sales
	
	SELECT DISTINCT category FROM retail_sales

	-- Data Analysis & Business Key Problem
--Q1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'	
SELECT* FROM retail_sales WHERE sale_date='2022-11-05'

--Q.2 Write a SQL query to retrieve all transactions where the category is'Clothing' and the quantity sold is more than 10 in the month of Nov-2022? 
SELECT*FROM retail_sales WHERE category = 'Clothing' AND TO_CHAR(sale_date,'YYY-MM') ='2022-11' GROUP BY 1
AND
quantity >=4

--Q3. Write a SQL query to calculate the total sales (total_sale) for each category
SELECT *FROM retail_sales
WHERE 
category ='Clothing'
AND
TO_CHAR(sale_date,'YYY-MM') ='2022-11'
AND quantity >=4
SELECT category,SUM(total_sale) as total_orders
FROM retail_sales
GROUP BY 1

--Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category
SELECT
ROUND (AVG(age),2) as avg_age
FROM retail_sales
WHERE category = 'Beauty'

--Q5 Write a SQL query to find all transactions where the total_sale is grater than 1000
SELECT category gender,COUNT(*) as total_trans
FROM retail_sales
GROUP
BY
category,gender
ORDER BY 1

--Q6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category


SELECT
EXTRACT(YEAR FROM sale_date) as year
YEAR
month,
SUM(total_sale)
FROM retail_sales
GROUP BY 1,2
ORDER BY 1,3 DESC

--Q8 Write a SQL query to find the top 5 customers based on the highest total sales?
SELECT*FROM retail_sales
SELECT
customer_id,
SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY 1

-----End of the Project-----







	 