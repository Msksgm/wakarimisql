select case
    when height < 160 then '160cm未満'
    when height < 170 then '160~170cm'
    when 170 <= height then '170cm以上'
    else null
    end as category
    , count(*)
from members
group by case
    when height < 160 then '160cm未満'
    when height < 170 then '160~170cm'
    when 170 <= height then '170cm以上'
    else null
    end;

select case
    when height < 160 then '160cm未満'
    when height < 170 then '160~170cm'
    when 170 <= height then '170cm以上'
    else null
    end as category
    , count(*)
from members
group by category;

select case
    when height < 160 then '160cm未満'
    when height < 170 then '160~170cm'
    when 170 <= height then '170cm以上'
    else null
    end as category
    , count(*)
from members
group by category
order by category;

select case
    when height < 160 then '160cm未満'
    when height < 170 then '160cm以上~170cm未満'
    when 170 <= height then '170cm以上'
    else null
    end as category
    , count(*)
from members
group by category
order by category;

select case
    when height < 160 then 100
    when height < 170 then 200
    when 170 <= height then 300
    else 999
    end as category_number
    , count(*)
from members
group by category_number
order by category_number;

select case t.category_number
    when 100 then '160cm未満'
    when 200 then '160cm以上170cm未満'
    when 300 then '170cm以上'
    else '(不明)'
    end as category
    , t.count
from (
    select case
        when height < 160 then 100
        when height < 170 then 200
        when 170 <= height then 300
        else 999
        end as category_number
        , count(*) as count
    from members
    group by category_number
) as t
order by t.category_number;