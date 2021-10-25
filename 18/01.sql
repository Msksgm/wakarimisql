select *, sum(height) over (partition by gender order by height desc)
from members
order by gender desc, height desc;

select *, m.height - lag(m.height, 1) over(partition by m.gender order by m.height) as diff
from members m;