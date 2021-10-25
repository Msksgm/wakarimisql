select m.movie_id,  m.title, count(c.name) 
from characters c
    full outer join movies m  on c.movie_id = m.movie_id
group by m.movie_id having m.movie_id is not null order by m.movie_id;

select m.movie_id,  m.title, count(c.id) 
from movies m
    left join characters c  on m.movie_id = c.movie_id
group by m.movie_id, m.title
order by m.movie_id;