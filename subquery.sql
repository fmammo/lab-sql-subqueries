-- Challenge
-- 1. Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
select count(film_id) as num_of_copies  from inventory
where film_id in (select film_id from film where title = "Hunchback Impossible");

-- 2. List all films whose length is longer than the average length of all the films in the Sakila database.
select length, title from film 
where length >(select avg(length) from film);

-- 3. Use a subquery to display all actors who appear in the film "Alone Trip".

select actor_id from film_actor
where film_id in (select film_id from film 
where title = "Alone Trip");






