select c.id, c.name, c.gender
from characters c left join movies m on c.movie_id = m.movie_id
where c.movie_id is null;

select c.id, c.name, c.gender
from characters c 
where c.movie_id is null
order by c.id;