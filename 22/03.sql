select date_trunc('month', current_date) + '1 month'::interval;

select date_trunc('month', current_date) + '1 month'::interval - '1 day'::interval;

select (date_trunc('month', current_date) + '1 month'::interval - '1 day'::interval)::date;