select *
    , max(m.height) over part_gender
    , min(m.height) over part_gender
from members m
window part_gender as (partition by m.gender)
order by m.gender desc, m.height desc;

select *
    , m.height - max(m.height) over part_gender as diff1
    , m.height - min(m.height) over part_gender as diff2
from members m
window part_gender as (partition by m.gender)
order by m.gender desc, m.height desc;