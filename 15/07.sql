select *
    , case
        when height < 160 then '160cm未満'
        when height < 170 then '160~170cm'
        when 170 <= height then '170cm以上'
        else null
    end as category
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

select
    case
        when height < 160 then '160cm未満'
        when height < 170 then '160~170cm'
        when 170 <= height then '170cm以上'
        else null
    end as category
    , count(*)
    , sum(case gender
            when 'M' then 1
            else 0
        end) as "M"
    , sum(case gender
            when 'F' then 1
            else 0
        end) as "F"
from members
group by category
order by category;

select *
    , case
        when height < 160 then 100
        when height < 170 then 200
        when 170 <= height then 300
        else 999
    end as category
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

select
    case
        when height < 160 then 100
        when height < 170 then 200
        when 170 <= height then 300
        else 999
    end as category_number
    , count(*)
    , sum(case gender
        when 'M' then 1
        else 0
    end) as "M"
    , sum(case gender
        when 'F' then 1
        else 0
    end) as "F"
from members
group by category_number
order by category_number;

select case t.category_number
            when 100 then '160cm未満'
            when 200 then '160~170cm'
            when 300 then '170cm以上'
            else '(不明)'
        end as category
    , t.count_both as count
    , t.count_m as "M"
    , t.count_f as "F"
from (
    select
        case
            when height < 160 then 100
            when height < 170 then 200
            when 170 <= height then 300
            else 999
        end as category_number
        , count(*) as count_both
        , sum(case gender
            when 'M' then 1
            else 0
        end) as count_m
        , sum(case gender
            when 'F' then 1
            else 0
        end) as count_f
    from members
    group by category_number
) as t
order by t.category_number;