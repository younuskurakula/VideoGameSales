
show databases;
use VideoGameSaleDataSet;
show tables;
rename table b_cleanedvideogamesaledata to VideoGame;
Select * from videogame;

-- Example SQL Questions

-- Total Making Price
select round(sum(price),2) as Total_Making_Price
from videogame;

-- Total Sales
select round(sum(sale),2) as Total_Sale
from videogame;

-- Total Profit
select round(sum(profit),2) as Total_Profit
from videogame;

-- Top 5 Games
select game, round(sum(sale),2) as Total_Sale 
from videogame
group by game
order by Total_Sale desc
limit 5;

-- Best Genre
select genre, round(sum(sale),2) as Total_Sale
from VideoGame
group by genre
order by total_sale desc;

-- Yearly Sales Trend
select year, round(sum(sale),2) as Total_sale
from VideoGame
group by year
order by total_sale desc;

select * from videogame;


