select m.movie_id, m.title
from movies m
    left join characters c on m.movie_id=c.movie_id
where c.movie_id is null
order by m.movie_id;