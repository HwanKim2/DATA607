SELECT * FROM movies;
SELECT * FROM movie_ratings;

SELECT movie_title, movie_year, friend_name, movie_rating
FROM movie_ratings
  JOIN movies
    ON movie_ratings.movie_id = movies.movie_id
  JOIN friends
    ON movie_ratings.friend_id = friends.friend_id; 

SELECT movie_title, AVG(movie_rating) AS RecommendScore
FROM movie_ratings
  JOIN movies
    ON movie_ratings.movie_id = movies.movie_id 
GROUP BY movie_title 
ORDER BY RecommendScore desc;



