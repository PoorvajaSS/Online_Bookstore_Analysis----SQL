use bookstore

select * from Books
select * from Customers
select * from orders

-- there are 500 columns each in 3 tables 

-- Basic questions

-- 1) Retrieve all books in the "Fiction" genre:
select * from Books c
left join orders o
on o.Book_ID=c.Book_ID
where Genre='Fiction'

-- 2) Find books published after the year 1950:
select * from Books
where Published_Year >1950

-- 3) List all customers from the Canada:
select *  from Customers
where Country ='Canada'

-- 4) Show orders placed in November 2023:
select Order_id,Quantity,month(Order_Date)  from orders
where month(Order_Date)=11

-- 5) Retrieve the total stock of books available:
select sum(Stock) from Books

-- 6) Find the details of the most expensive book:
select * from books 
where Price = (select max(Price) from Books)

-- 7) Show all customers who ordered more than 1 quantity of a book:
select * from Customers c
left join orders o
on c.Customer_ID=o.Customer_ID
where Quantity>1
order by Quantity  --438


-- 8) Retrieve all orders where the total amount exceeds $20:
select * from orders
where Total_Amount> 20

-- 9) List all genres available in the Books table:
select distinct Genre from Books

-- 10) Find the book with the lowest stock:
select * from Books
where Stock =(select min(Stock) from Books)

-- 11) Calculate the total revenue generated from all orders:
select sum(Total_Amount) from orders 

--Advanced questions

-- 1) Retrieve the total number of books sold for each genre:
select b.Genre ,count(b.Book_ID) as books_sold from Books b
left join orders o
on b.Book_ID=o.Book_ID
group by b.Genre


-- 2) Find the average price of books in the "Fantasy" genre:
select avg(Price) from Books
where Genre='Fantasy'


-- 3) List customers who have placed at least 2 orders:
select c.Name,count(o.Order_ID) as co from orders o
left join Customers c
on c.Customer_ID=o.Customer_ID
group by c.Name
having count(o.Order_ID)>=2

-- 4) Find the most frequently ordered book:
select c.Title,count(o.Order_ID) from orders o
left join Books c
on c.Book_ID=o.Book_ID
group by c.Title
order by count(o.Order_ID) desc


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
select top(3)* from Books
where Genre='Fantasy'
order by Price desc


-- 6) Retrieve the total quantity of books sold by each author:
select b.Author,sum(o.Quantity) as total_sum  from Books b
inner join orders o
on b.Book_ID=o.Book_ID
group by b.Author
 

-- 7) List the cities where customers who spent over $30 are located:
select c.City,o.Total_Amount from Customers c
left join orders o
on c.Customer_ID=o.Customer_ID
where Total_Amount>30

-- 8) Find the customer who spent the most on orders:
select c.Name,sum(o.Total_Amount) from Customers c
left join orders o
on c.Customer_ID=o.Customer_ID
group by c.Name
order by c.Name


--9) Calculate the stock remaining after fulfilling all orders:
select b.Book_ID,b.Title,b.Stock,coalesce(sum(o.Quantity),0) as s_q,
b.Stock-coalesce(sum(o.Quantity),0) as remaing_stock
from Books b
left join orders o
on b.Book_ID=o.Book_ID
group by b.Book_ID,b.Title,b.Stock

select b.Book_ID,b.Title,b.Stock,b.Stock-coalesce(sum(o.Quantity),0) as remaing_stock from Books b
left join orders o
on b.Book_ID=o.Book_ID
group by b.Book_ID,b.Title,b.Stock





