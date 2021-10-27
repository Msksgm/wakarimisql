select date_part('dow', '2019-09-22'::date)::integer as sun
    ,date_part('dow', '2019-09-23'::date)::integer as mon
    ,date_part('dow', '2019-09-24'::date)::integer as tue
    ,date_part('dow', '2019-09-25'::date)::integer as wed
    ,date_part('dow', '2019-09-26'::date)::integer as thu
    ,date_part('dow', '2019-09-27'::date)::integer as fri
    ,date_part('dow', '2019-09-28'::date)::integer as sat;

select date_part('isodow', '2019-09-22'::date)::integer as sun
    ,date_part('isodow', '2019-09-23'::date)::integer as mon
    ,date_part('isodow', '2019-09-24'::date)::integer as tue
    ,date_part('isodow', '2019-09-25'::date)::integer as wed
    ,date_part('isodow', '2019-09-26'::date)::integer as thu
    ,date_part('isodow', '2019-09-27'::date)::integer as fri
    ,date_part('isodow', '2019-09-28'::date)::integer as sat;