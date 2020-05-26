-- Write queries to get the following:
-- The names of the restaurants that you gave a 5 stars to
Select * from restaurant where stars = 5;
 
-- The favorite dishes of all 5-star restaurants
select fav_dish from restaurant where stars = 5;
 
-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
select id from restaurant where res_name = 'Mooya';
 
-- Restaurants in the category of 'BBQ'
select * from restaurant where category = 'BBQ';
 
-- Restaurants that do take out
select * from restaurant where takeout = TRUE;
 
-- Restaurants that do take out and are in the category of 'BBQ'
select * from restaurant where takeout = TRUE AND category ='BBQ';
 
-- Restaurants within 2 miles
select * from restaurant where distance < 2;
 
-- Restaurants you haven't eaten at in the last week
select * from restaurant where las_visit > (select NOW() - interval '14day');
 
-- Restaurants you haven't eaten at in the last week and has 5 stars
select * from restaurant where las_visit < (select NOW() - interval '100day') AND stars =5;
 
-- Aggregation and Sorting Queries
-- List restaurants by the closest distance.
select * from restaurant order by distance ASC;
 
-- List the top 2 restaurants by distance.
select * from restaurant order by distance ASC limit 2;
 
-- List the top 2 restaurants by stars.
select * from restaurant order by stars desc limit 2;
 
-- List the top 2 restaurants by stars where the distance is less than 2 miles.
select * from restaurant where (distance <2) limit 2;
 
-- Count the number of restaurants in the db.
select count(res_name) from restaurant;
 
-- Count the number of restaurants by category.
select count(category) from restaurant;
 
-- Get the average stars per restaurant by category.
select AVG(stars) from restaurant;
 
-- Get the max stars of a restaurant by category.










-- List all the reviews for a given restaurant given a specific restaurant ID.
select review, restaurant_id from review where restaurant_id = 2;

-- rest2=# 

--    review    | restaurant_id 
-- -------------+---------------
--  Great food  |             2
--  Best of all |             2
-- (2 rows)

select review, restaurant_id from review where restaurant_id = 3;

-- rest2=#  
--  review | restaurant_id 
-- --------+---------------
-- (0 rows)
 
-- List all the reviews for a given restaurant, given a specific restaurant name.
Select * FROM review
INNER JOIN restaurant
ON restaurant.id = review.restaurant_id
WHERE restaurant.name like '%N%';

-- List all the reviews for a given reviewer, given a specific author name.
select * 
from review 
inner JOIN reviewer ON reviewer.id = review.reviewer_id and reviewer.first_name='John';
 
-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
select restaurant.name, review.review 
from restaurant 
inner JOIN review ON review.restaurant_id = restaurant.id;
 
-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
SELECT restaurant.name as Name, AVG(stars)
FROM review
left join restaurant ON restaurant.id = review.restaurant_id
GROUP BY Name; 
 
 
-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
SELECT restaurant.name AS Name, COUNT(restaurant_id)
FROM review
LEFT JOIN restaurant on restaurant.id = review.restaurant_id
GROUP BY Name;
 
-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
SELECT restaurant.name AS Name, reviewer.first_name, reviewer.last_name, review.review
FROM ((restaurant 
inner join review on review.restaurant_id=restaurant.id)
inner join reviewer on reviewer.id=review.reviewer_id);
 
-- Get the average stars given by each reviewer. (reviewer name, average star rating)
Select CONCAT (reviewer.first_name, ',' ,reviewer.last_name) as Name, AVG(stars)
FROM reviewer
inner join review on  review.reviewer_id = reviewer.id
GROUP BY Name;
 
-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
Select CONCAT (reviewer.first_name, ',' ,reviewer.last_name) as Name, MIN(stars)
FROM reviewer
inner join review on  review.reviewer_id = reviewer.id
GROUP BY Name;
 
-- Get the number of restaurants in each category. (category name, restaurant count)
SELECT restaurant.category, COUNT(id)
FROM restaurant
GROUP BY restaurant.category
ORDER BY restaurant.category;
 
-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
SELECT restaurant.name AS Name, COUNT(review.review)
FROM restaurant
inner join review ON review.restaurant_id=restaurant.id AND review.stars = 5
Group by Name;
 
-- Get the average star rating for a food category. (category name, average star rating)
SELECT restaurant.category as food_category, AVG(stars)
FROM restaurant
inner join review ON review.restaurant_id=restaurant.id
Group by food_category;
 
-- make screen shots of the following for eaiser life
-- restaurant
-- Reviewer 
-- review


