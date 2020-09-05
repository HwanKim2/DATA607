CREATE TABLE movies
(
  movie_id       NUMBER          NOT NULL,
  movie_title    VARCHAR2(50)    NOT NULL,
  movie_year     NUMBER          NOT NULL,
  movie_director VARCHAR2(50)    NOT NULL,
  CONSTRAINT movies_pk PRIMARY KEY (movie_id)
);

CREATE TABLE friends
(
  friend_id   NUMBER       NOT NULL,
  friend_name VARCHAR2(50) NOT NULL,
  CONSTRAINT friends_pk PRIMARY KEY (friend_id)
);

CREATE TABLE movie_ratings
(
  rating_id    NUMBER NOT NULL,
  friend_id    NUMBER NOT NULL,
  movie_id     NUMBER NOT NULL,
  movie_rating NUMBER NOT NULL,
  CONSTRAINT movie_ratings_pk PRIMARY KEY (rating_id),
  CONSTRAINT movie_ratings_fk_friend
    FOREIGN KEY (friend_id)
    REFERENCES friends (friend_id),
  CONSTRAINT movie_ratings_fk_movie
    Foreign KEY (movie_id)
    REFERENCES movies (movie_id)
);

INSERT INTO friends (friend_id, friend_name)
VALUES (1, 'A');
INSERT INTO friends (friend_id, friend_name)
VALUES (2, 'B');
INSERT INTO friends (friend_id, friend_name)
VALUES (3, 'C');
INSERT INTO friends (friend_id, friend_name)
VALUES (4, 'D');
INSERT INTO friends (friend_id, friend_name)
VALUES (5, 'E');

INSERT INTO movies (movie_id, movie_title, movie_year, movie_director)
VALUES (1, 'KingsmanOne', 2015, 'Vaughn');
INSERT INTO movies (movie_id, movie_title, movie_year, movie_director)
VALUES (2, 'Gone Girl', 2014, 'Fincher');
INSERT INTO movies(movie_id, movie_title, movie_year, movie_director)
VALUES (3, 'Parasite', 2019, 'Bong');
INSERT INTO movies (movie_id, movie_title, movie_year, movie_director)
VALUES (4, 'RobotAndFrank', 2013, 'Ford');
INSERT INTO movies (movie_id, movie_title, movie_year, movie_director)
VALUES (5, 'Cashback', 2006, 'Ellis');
INSERT INTO movies (movie_id, movie_title, movie_year, movie_director)
VALUES (6, 'A Rainy Day in New York', 2019, 'Allen');

INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (1, 1, 1, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (2, 1, 2, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (3, 1, 3, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (4, 1, 4, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (5, 1, 5, 3);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (6, 1, 6, 2);

INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (7, 2, 1, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (8, 2, 2, 3);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (9, 2, 3, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (10, 2, 4, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (11, 2, 5, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (12, 2, 6, 3);

INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (13, 3, 1, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (14, 3, 2, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (15, 3, 3, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (16, 3, 4, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (17, 3, 5, 3);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (18, 3, 6, 3);

INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (19, 4, 1, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (20, 4, 2, 4);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (21, 4, 3, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (22, 4, 4, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (23, 4, 5, 3);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (24, 4, 6, 2);

INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (25, 5, 1, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (26, 5, 2, 2);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (27, 5, 3, 3);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (28, 5, 4, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (29, 5, 5, 5);
INSERT INTO movie_ratings (rating_id, friend_id, movie_id, movie_rating)
VALUES (30, 5, 6, 2);