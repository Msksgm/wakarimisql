select m.movie_id, m.title
from movies m
    join characters c
        on m.movie_id = c.movie_id
group by m.movie_id, m.title
order by m.movie_id;

select m.*, c.*
from movies m
    left join characters c
        on m.movie_id = c.movie_id
order by m.movie_id, c.id;

select m.*
from movies m
    left join characters c
        on m.movie_id = c.movie_id
where c.id is null
order by m.movie_id, c.id;