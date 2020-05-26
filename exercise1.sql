--select restaurant.name, review.review 
--from restaurant 
--inner JOIN review ON review.restaurant_id = restaurant.id;

--SELECT restaurant.name as Name, AVG(stars)
--FROM review
--left join restaurant ON restaurant.id = review.restaurant_id
--GROUP BY Name; 

--SELECT *
--FROM review
--LEFT JOIN restaurant ON review.restaurant_id = restaurant.id;

--SELECT restaurant.name AS Name, COUNT(restaurant_id)
--FROM review
--LEFT JOIN restaurant on restaurant.id = review.restaurant_id
--GROUP BY Name;

--SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
--FROM ((Orders
--INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
--INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
 
--SELECT restaurant.name AS Name, reviewer.first_name, reviewer.last_name, review.review
--FROM ((restaurant 
--inner join review on review.restaurant_id=restaurant.id)
--inner join reviewer on reviewer.id=review.reviewer_id);

--Select CONCAT (reviewer.first_name, ',' ,reviewer.last_name) as Name, MIN(stars)
--FROM reviewer
--inner join review on  review.reviewer_id = reviewer.id
--GROUP BY Name;



--SELECT restaurant.name AS Name, COUNT(review.review)
--FROM restaurant
--inner join review ON review.restaurant_id=restaurant.id AND review.stars = 5
--Group by Name;

--SELECT restaurant.category as food_category, AVG(stars)
--FROM review
--left join restaurant ON review.restaurant_id=restaurant.id
--Group by food_category;


SELECT *                                                                                                                                                   
From review                                                                                                                                                                              INNER JOIN restaurant                                                                                                                                                                     ON restaurant.id = review.restaurant_id                                                                                                                                                  WHERE restaurant.name like '%N%';

