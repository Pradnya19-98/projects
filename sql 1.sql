USE `awesome chocolates`;
show tables;
describe geo;
show tables;
describe sales;
select * from sales; 
select Saledate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;
select SaleDate, Amount, boxes, Amount/boxes as amtperbox from sales;
select * from sales 
where amount> 1000;
SELECT * FROM sales ORDER BY amount;
SELECT * FROM sales WHERE amount > 1000;



SELECT * FROM sales ORDER BY PID, Amount DESC;
select * from sales;
SELECT * FROM sales WHERE amount > 10000 AND SaleDate >= '2022-01-01';
select SaleDate , Amount from sales;
SELECT * FROM sales WHERE amount > 1000 AND YEAR(SaleDate) = 2022;
SELECT SaleDate, Amount FROM sales WHERE boxes > 0 AND boxes <= 50;
SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day Of Week' 
FROM sales 
WHERE WEEKDAY(SaleDate) = 4;
select * from people;
select * from people
where team = 'Delish' or team = 'Jucies';
select * from people
where salesperson like '%B%';
SELECT SaleDate, Amount,
       CASE 
           WHEN amount < 1000 THEN 'Under 1k'
           WHEN amount < 5000 THEN 'Under 5k'
           WHEN amount < 10000 THEN 'Under 10k'
           ELSE '10k or more'
       END AS 'Amount Category'
FROM sales
LIMIT 0, 10000;
# join
select s.SaleDate, s.Amount
from sales s;
JOIN people p on p.SPID = 	

