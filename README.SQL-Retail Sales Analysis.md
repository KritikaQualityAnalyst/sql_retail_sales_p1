
# RETAIL SALES ANALYSIS SQL Project

Project Overview

Project Title:Retail Sales Analysis
Level:Beginner
Database:project_p1


The project is designed to demonstrate SQL skills and techniques typically used by data analysis.Project involves datacleaning,data analysis and answering specific queries.


Objectives

1.Set up a retail sales database :Create and populate retail sales database.

2.Data Cleaning:Remove records with null values.

3.Business Analysis:Use SQL to answer business questions.


Project Structure

1.Database Setup

Database Creation:Project starts by creating a database named project_p1
Table Creation :A table named retail_sales is created to store sales data.The 
table structure includes columns for transaction ID,sale date,sale time,customer ID,gender,age,product cattegory,quantity sold,price per unit,cost of goods sold and total sale amount.



CREATE DATABASE p1_project;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);


2.Data Cleaning

Record Count: Determine the total number of records.

Customer Count: Find out how many unique customers.

Category Count: Identify all unique product categories.


SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL




Findings

> Customer Demographics:The dataset includes customers from various age groups,
with sales distributed across different categories such as clothing and beauty.

> High-Value Transactions:Several transactions had a total sale amount greater than 1000,indicating premium purchases.

> Sales Trends: Monthly analysis shows variations in sales,helping peak seasons.



Reports

Sales Summary:A detailed report summarizing total sales ,category performance.



Conclusion 

The project serves as a introduction to SQL for data analysts,covering databasesetup, data cleaning,exploratory data analysis and business -driven SQL queries.