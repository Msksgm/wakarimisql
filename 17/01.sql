select *
from characters
where gender = 'M'
order by id;

select c.*
from (
    select *
    from characters
    where gender = 'M'
    order by id
) c;

select m.movie_id, m.title
from movies m
    join ( select *
            from characters
            where gender = 'M'
            order by id
        ) c
        on m.movie_id = c.movie_id
group by m.movie_id, m.title
order by m.movie_id;

select m.movie_id, m.title
from (
    select *
    from characters
    where gender = 'M'
    order by id
) c
join movies m on c.movie_id = m.movie_id
group by m.movie_id, m.title
order by m.movie_id;