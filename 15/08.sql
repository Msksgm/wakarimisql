select
    gender
    , count(gender)
from members
group by gender;

select
    sum(
        case
            when gender = 'M' then 1
            else 0
        end
    ) as "M",
    sum(
        case
            when gender = 'F' then 1
            else 0
        end
    ) as "F"
from members;

select
    case
        when height < 160 then '160cm未満'
        when height < 170 then '160~170cm'
        when height >= 170 then '170cm以上'
        else null
    end as category,
    count(*)
from members
group by category;

select
    sum(
        case
            when height < 160 then 1
            else 0
        end
    ) as "160cm未満",
    sum(
        case
            when height >= 160 and height <170 then 1
            else 0
        end
    ) as "160~170cm",
    sum(
        case
            when height >= 170 then 1
            else 0
        end
    ) as "170cm以上"
from members;

select
    case
        when height < 160 then '160cm未満'
        when height < 170 then '160~170cm'
        when height >= 170 then '170cm以上'
        else null
    end as category,
    count(*),
    sum(
        case
            when gender = 'M' then 1
            else 0
        end
    ) as "M",
    sum(
        case
            when gender = 'F' then 1
            else 0
        end
    ) as "F"
from members
group by category;

select
    case
        when height < 160 then '160cm未満'
        when height < 170 then '160~170cm'
        when height >= 170 then '170cm以上'
        else null
    end as category,
    count(*),
    sum(
        case
            when gender = 'M' then 1
            else 0
        end
    ) as "M",
    sum(
        case
            when gender = 'F' then 1
            else 0
        end
    ) as "F"
from members
group by category;


select
    gender,
    sum(
        case
            when height < 160 then 1
            else 0
        end
    ) as "160cm未満",
    sum(
        case
            when height >= 160 and height <170 then 1
            else 0
        end
    ) as "160~170cm",
    sum(
        case
            when height >= 170 then 1
            else 0
        end
    ) as "170cm以上"
from members
group by gender;