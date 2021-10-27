select date_trunc('week', current_date)::date as monday;

select t.monday
from (
    select date_trunc('week', current_date)::date as monday
) t;

select x.n
from generate_series(0, 6) as x(n);

select t.monday, x.n
from (
    select date_trunc('week', current_date)::date as monday
) t
cross join generate_series(0, 6) as x(n);

select t.monday + make_interval(days => x.n)
from (
    select date_trunc('week', current_date)::date as monday
) t
cross join generate_series(0, 6) as x(n);

with cal(date) as (
    select (t.monday + make_interval(days => x.n))::date
    from (
        select date_trunc('week', current_date) as monday
    ) t
    cross join generate_series(0, 6) as x(n)
)
select cal.date
from cal
order by cal.date;

select cal.date
from calendar(date_trunc('week', current_date)::date, 7) as cal(date);