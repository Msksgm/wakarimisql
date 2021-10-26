select m.*,
    avg(m.height) over gender_part as avg,
    m.height - avg(m.height) over gender_part as diff
from members m
window gender_part as (partition by m.gender order by m.gender desc);

select t.*
from 
    (
        select m.*,
            rank() over height_part
        from members m
        window height_part as (order by m.height desc)
    ) as t
where t.rank <= 2;

select t.*
from 
    (
        select m.*,
            rank() over height_part
        from members m
        window height_part as (partition by m.gender order by m.height desc)
    ) as t
where t.rank <= 2;