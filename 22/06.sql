select date_part('week', '2019-09-22'::date);

select date_part('quarter', '2019-01-01'::date) as d1
    ,date_part('quarter', '2019-03-31'::date) as d2
    ,date_part('quarter', '2019-04-01'::date) as d3
    ,date_part('quarter', '2019-06-30'::date) as d4
    ,date_part('quarter', '2019-07-01'::date) as d5
    ,date_part('quarter', '2019-09-30'::date) as d6
    ,date_part('quarter', '2019-10-01'::date) as d7
    ,date_part('quarter', '2019-12-31'::date) as d8;