select date_trunc('month', current_date) as firstdate;

select date_trunc('month', current_date) + '1 month'::interval - '1 day'::interval;

select cal.date::date from generate_series('2019-09-01'::date, '2019-09-03'::date, '1 day'::interval) as cal(date);

select cal.date::date from generate_series(
                            date_trunc('month', current_date),
                            date_trunc('month', current_date) + '1 month'::interval - '1 day'::interval,
                            '1 day'::interval) as cal(date);