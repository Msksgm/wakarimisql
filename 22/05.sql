select current_date - ((date_part('isodow', current_date)::integer - 1) || ' days')::interval as monday;

select date_trunc('week', current_date)::date as monday;