use etlclass;
select * from movies_sql;
-- 1.Retrieve the names of all the Bollywood movies which are of drama genre in the dataset --
select movie_name, genre from movies_sql where	genre = "drama";
-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset. --
select movie_name, lead_star from movies_sql where	lead_star = "aamir khan";
-- 3.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.--
select movie_name,director from movies_sql where director = "Ram Gopal Verma";
-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset. --
select * from movies_sql where number_of_screens > 1000;
-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset. --
select Movie_name,Revenue from movies_sql where Revenue > 700000000;
-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset. --
select Movie_name,Budget from movies_sql where Budget < 10000000;
-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget) --
alter table movies_sql add column flop int;
update movies_sql set flop = revenue < budget;
select * from movies_sql;
select count(flop) from movies_sql;
-- 8.Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget) --
alter table movies_sql add column Profit int;
update movies_sql set Profit = revenue > budget;
select * from movies_sql;
select count(Profit) from movies_sql;
-- 9.Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget) --
alter table movies_sql add column loss int;
update movies_sql set loss = revenue - budget;
select * from movies_sql;
select count(loss) from movies_sql;
-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.--
select * from movies_sql where Release_Period = "Holiday";
-- 11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.--
select * from movies_sql where lead_star = "Akshay kumar" and director = "Priyadarshan";
-- 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset. --
select * from movies_sql where Movie_Name like "a%";
-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset. --
select * from movies_sql where  Movie_Name like "%a";
-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset. --
select * from movies_sql where Movie_Name like "_a%";
-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset. --
select Music_Director,Movie_Name from movies_sql where Music_Director = "amit trivedi";
-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset --
select Movie_Name,Genre,Lead_Star from movies_sql where Genre = "comedy" and Lead_Star = "Akshay Kumar";
-- 17. Retrieve the names of movies and star name starring khan in the dataset. --
select * from movies_sql where movie_name like "%khan";
-- 18. Retrieve all the information of movies race and race2 in the dataset. --
Select * from movies_sql where movie_name in ('race', 'race 2');
-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset. --
select Movie_Name,Genre from movies_sql where genre = "thriller";
-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset. --
select Movie_Name,budget from movies_sql order by budget desc;
-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset. --
select Movie_name,budget from movies_sql order by budget desc limit 5;
-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset. --
select Movie_name,revenue from movies_sql order by revenue desc limit 10;
-- 23. Retrieve the names of top 5 movies of salman khan in the dataset. --
select Movie_Name,lead_star,revenue from movies_sql where lead_star = "salman khan" order by revenue desc limit 5;
-- 24. Retrieve the names of top 5 floped movies in the dataset. --
select * from movies_sql order by revenue desc limit 5;
-- 25. Retrieve the names of top 5 hit movies in the dataset. --
select * from movies_sql order by revenue desc limit 5;
-- 26. Which is the second movie released on maximum screens. --
select * from movies_sql order by number_of_screens desc limit 1,1;
-- 27. Which is the 10th movies with highest budget. --
select * from movies_sql order by budget desc limit 9,1;
-- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget. --
select * from movies_sql where Lead_Star = "Amitabh Bachchan" order by budget limit 1,1;
-- 29. Which are the flopped movies of Akshay Kumar. --
select * from movies_sql where Lead_Star = "Akshay Kumar" and flop;
-- 30. With which director Sharukh Khan have given the biggest hit movie. --
select * from movies_sql where lead_star = "Shahrukh Khan" order by profit desc limit 1;
