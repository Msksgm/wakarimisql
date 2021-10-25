select *
    , case gender
        when 'M' then 1
        else 0
    end as "M"
    , case gender
        when 'F' then 1
        else 0
    end as "F"
from members
order by id;

select count(*)
    , sum(case gender
        when 'M' then 1
        else 0
    end) as "M"
    , sum(case gender
        when 'F' then 1
        else 0
    end) as "F"
from members;

select count(*)
    , sum((gender = 'M')::integer) as "m"
    , sum((gender = 'F')::integer) as "m"
from members;