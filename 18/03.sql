select *
    , row_number() over (order by m.height desc) as num
from members m
order by m.height desc;

select *
    , row_number() over (partition by m.gender order by m.height desc) as num
from members m
order by m.gender desc, m.height desc;

select m.*
    , rank() over (order by m.height desc)
from members m
order by m.height desc, m.id;

select *
    , rank() over (partition by m.gender order by m.height desc) as num
from members m
order by m.gender desc, m.height desc;

select m.*
from members m
where rank() over (partition by m.gender order by m.height, m.id) <= 2
order by m.gender desc, m.height;

select m.*
    , rank() over (partition by m.gender order by m.height, m.id) as rank
from members m
where rank <= 2
order by m.gender desc, m.height;

select t.*
from (
    select m.*
        , rank() over (partition by m.gender order by m.height, m.id) as rank
    from members m
) t
where t.rank <= 2
order by t.gender desc, t.height;

select *
    , lag(m.height, 1) over (order by m.height desc, m.id)
from members m
order by m.height desc, m.id;

select *
    , lag(m.height, 1) over height_part
    , lag(m.height, 2) over height_part
from members m
window height_part as (order by m.height desc, m.id)
order by m.height desc, m.id;

select *
    , lag(m.height, 1) over (partition by m.gender order by m.height desc, m.id)
from members m
order by m.gender desc, m.height desc, m.id;