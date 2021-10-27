select make_date(date_part('year', current_date)::integer, date_part('month', current_date)::integer, 1) as firstdate;

select (date_part('year', current_date) || '-' || date_part('month', current_date) || '-01')::date;

select date_trunc('month', current_date)::date;