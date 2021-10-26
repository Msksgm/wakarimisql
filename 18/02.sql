select *, sum(m.height) over (partition by m.gender order by m.height) as accum
from members m;

select *, sum(m.height) over (order by m.height) as accum
from members m;

select *, sum(m.height) over (order by m.height, m.id) as accum
from members m;

select *, sum(m.height) over (partition by m.gender order by m.height, m.id) as accum
from members m;

select *, sum(m.height) over (partition by m.gender) as accum
from members m;

select *
    ,sum(m.height) over (partition by m.gender order by m.height, m.id) as accum1
    ,sum(m.height) over (order by m.height, m.id) as accum2
from members m;

select *
    , max(m.height) over (partition by m.gender) as maxhi
    , min(m.height) over (partition by m.gender) as minhi
from members m;

select *
    , max(m.height) over par_gender as maxhi
    , min(m.height) over par_gender as minhi
from members m
window par_gender as (partition by m.gender);

select *
    , sum(m.height) over (partition by m.gender order by m.height, m.id) as accum
from members m
order by m.id;