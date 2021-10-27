select x.n
from generate_series(0, 2) as x(n);

select make_interval(days => x.n)
from generate_series(0, 2) as x(n);

select ('2019-08-30'::date + make_interval(days=>x.n))::date
from generate_series(0, 3-1) as x(n);

select x.date::date
from generate_series('2019-08-30'::date,
                    '2019-09-01'::date,
                    '1 day'::interval) as x(date);