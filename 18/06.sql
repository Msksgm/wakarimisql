select *
    , lead(m.height, 1) over (order by m.height desc, m.id)
from members m
order by m.height desc, m.id;

select *
    , lead(m.height, 2) over height_part
    , lead(m.height, 1) over height_part
from members m
window height_part as (order by m.height desc, m.id)
order by m.height desc, m.id;

select *
    , lead(m.height, 1) over (partition by m.gender order by m.height desc, m.id)
from members m
order by m.gender desc, m.height desc, m.id;
