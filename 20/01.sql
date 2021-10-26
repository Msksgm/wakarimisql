select 1 as level, *
from sos_brigade
where boss_id is null;

select 2 as level, *
from sos_brigade
where boss_id in (101);

select 3 as level, *
from sos_brigade
where boss_id in (102, 103, 105);

select 4 as level, *
from sos_brigade
where boss_id in (104);

with sos_members1 as (
    select b.*
    from sos_brigade b
    where b.name = 'キョン'
)
select * from sos_members1;

with sos_members1 as (
    select b.*
    from sos_brigade b
    where b.name = 'キョン'
), sos_members2 as (
    select boss.*
    from sos_brigade boss
        join sos_members1 m
            on boss.id = m.boss_id
)
select * from sos_members2;

with sos_members1 as (
    select b.*
    from sos_brigade b
    where b.name = 'キョン'
), sos_members2 as (
    select boss.*
    from sos_brigade boss
        join sos_members1 m
            on boss.id = m.boss_id
), sos_members3 as (
    select boss.*
    from sos_brigade boss
        join sos_members2 m
            on boss.id = m.boss_id
)
select * from sos_members3;