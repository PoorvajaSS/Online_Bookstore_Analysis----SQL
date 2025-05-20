# Online_Bookstore_Analysis----SQL

This dataset includes basic and advanced queries for insightful analysis that covers sales trends, customer behavior, and book genre preferences.

Kaggle dataset -- [link](https://www.kaggle.com/datasets/komal1111/online-bookstore-analysis?resource=download)

# Problem Statement :

Managing and analyzing data for an online bookstore can be challenging due to the volume and complexity of information related to books, customers, and orders. Efficient data storage, retrieval, and insightful querying are essential for informed business decisions, inventory management, and customer service. This project aims to design and implement a robust SQL database for an online bookstore, enabling comprehensive data analysis through a variety of SQL queries.

# Objective :

1. Create a relational database schema for an online bookstore, including tables for Books, Customers, and Orders, with appropriate relationships and constraints.

2. Populate the database tables with sample data from CSV files to simulate real-world bookstore operations.

3. Basic Data Retrieval:
    1. Listing books by genre or publication year.
    2. Retrieving customer details by location.

4. Inventory and Sales Analysis:
   
    1. Calculate total stock and identify low-stock books.
    2. Find the most and least expensive books.
    3. Compute total revenue and analyze sales performance.

6. Advanced Data Insights:

    Implement advanced SQL queries to:
    1. Analyze sales by genre and author.
    2. Identify top customers and most popular books.
    3. Track customer order patterns and high-value transactions.
    4. Calculate remaining inventory after orders.
  
8. Documentation & Usability:
    1. Provide clear documentation and sample queries to help users understand and utilize the database for various analytical needs.






# Data Model 

![Data Model -2](https://github.com/user-attachments/assets/7e02dac5-3313-4d4e-a494-c1ff8b9ea026)


# Insights

1. Genre & Inventory Analysis
The database can instantly list all books in the "Fiction" genre, revealing popular titles and their order history.

Modern Collection: A significant portion of books are published after 1950, indicating a focus on contemporary literature.

Diverse Genres: The store offers a wide range of genres, as shown by the distinct genre query.

2. Customer Demographics & Behavior
International Reach: Customers from countries like Canada are easily identified, supporting targeted marketing.

High-Value Customers: The system highlights customers who place larger orders (more than one book at a time) and those who have placed multiple orders, helping identify loyal and valuable clients.

Top Spenders: The customer who spent the most can be pinpointed, enabling VIP engagement strategies.

Geographic Insights: Cities with high-spending customers (over $30) are identified for potential regional promotions.

3. Order & Sales Trends
Seasonal Activity: Orders placed in November 2023 can be tracked, revealing seasonal sales patterns.

High-Value Orders: Orders exceeding $20 are flagged, showing which transactions contribute most to revenue.

Most Ordered Books: The most frequently ordered book is identified, guiding inventory and marketing focus.

Top Genres & Authors: The total number of books sold per genre and author is calculated, revealing bestsellers and popular categories.

4. Inventory & Stock Management
Total Stock Monitoring: The total stock of books is tracked, supporting restocking decisions.

Low Stock Alerts: Books with the lowest inventory are highlighted for timely replenishment.

Stock After Sales: Remaining stock after all orders is calculated, ensuring accurate inventory management.

5. Revenue & Pricing Insights
Revenue Tracking: Total revenue generated from all orders is calculated, providing a snapshot of business performance.

Price Optimization: The most expensive and least expensive books are identified, supporting pricing strategies.

Average Genre Price: The average price of books in the "Fantasy" genre is calculated, informing genre-specific pricing.

6. Advanced Business Intelligence
Repeat Customers: Customers who have placed at least two orders are listed, enabling loyalty program targeting.

Top Fantasy Books: The top three most expensive books in the "Fantasy" genre are showcased, appealing to premium buyers.

Author Performance: The total quantity of books sold by each author is tracked, supporting author partnerships and promotions.
