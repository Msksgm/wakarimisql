select current_date as today
    , current_date - '1 month'::interval as lastmonth_date
    , current_date + '1 month'::interval as nextmonth_date;

select ('2019-01-31'::date + '1 month'::interval)::date;