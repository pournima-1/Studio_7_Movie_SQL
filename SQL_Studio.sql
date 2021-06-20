select title from movies;
select title, year_released from movies order by year_released desc;
select * from directors order by country asc;
select * from directors order by country,last_name  asc;
insert into directors (first_name, last_name, country)
values ("Rob", "Reiner", "USA");
select last_name,director_id from directors where first_name='Rob';
INSERT INTO movies (title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 11);
SELECT title, year_released,last_name FROM movies inner join directors on movies.director_id = directors.director_id;
SELECT title, first_name,last_name FROM movies inner join directors on movies.director_id = directors.director_id 
order by directors.last_name desc;
select first_name,last_name from directors where director_id = (select director_id from movies where title='The Incredibles');
SELECT last_name, country FROM movies inner join directors on movies.director_id = directors.director_id and 
movies.title='Roma';
delete from movies where movie_id=11;
delete from directors where director_id=11;
/* delete from directors where director_id=11	Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`movie-buff`.`movies`, CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`))	0.000 sec*/
#BONUS
SELECT title as "Movie", year_released as "Year of release",last_name as " Last Name" FROM movies inner join directors on movies.director_id = directors.director_id;
select title from movies where director_id = (select director_id from directors where first_name='Peter' and last_name='Jackson');
ALTER TABLE movies 
ADD Money BIGINT ;
update movies set Money= 11111 where movie_id=1;
update movies set Money= 22222 where movie_id=2;
update movies set Money= 33333 where movie_id=3;
update movies set Money= 44444 where movie_id=4;
update movies set Money= 55555 where movie_id=5;
update movies set Money= 66666 where movie_id=6;
update movies set Money= 77777 where movie_id=7;
update movies set Money= 88888 where movie_id=8;
update movies set Money= 99999 where movie_id=9;
update movies set Money= 10101 where movie_id=10;
update movies set Money= 11112 where movie_id=11;
update movies set Money= 12121 where movie_id=12;
update movies set Money= 13131 where movie_id=13;
update movies set Money= 14141 where movie_id=14;
update movies set Money= 15151 where movie_id=15;
update movies set Money= 16161 where movie_id=16;
update movies set Money= 17171 where movie_id=17;
select title from movies order by money desc;
SELECT title, money, rank() 
OVER ( partition by title order by money desc ) 
AS 'rank' FROM movies;
select title from movies order by money desc;
select * from movies where money > 50000;