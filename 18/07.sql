select *, sum(m.height)
    over (order by m.height desc, m.id) as accum
from members m
order by m.height desc, m.id;

select *, sum(m.height)
    over (order by m.height desc) as accum
from members m
order by m.height desc, m.id;

select *, sum(m.height)
    over (partition by m.gender order by m.height desc) as accum
from members m
order by m.gender desc, m.height desc, m.id;