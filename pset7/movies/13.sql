select distinct name from
people join stars on people.id= stars.person_id
join movies on movies.id = stars.movie_id
where movie_id in(select movie_id from movies join stars on movies.id=stars.movie_id join people on people.id=stars.person_id where name="Kevin Bacon" and birth=1958) and name != "Kevin Bacon" ;
