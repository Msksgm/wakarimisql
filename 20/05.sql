with recursive sos_members as (
    select b.*
    from sos_brigade b
    where b.name = 'キョン'
    union all
        select boss.*
        from sos_brigade boss
            join sos_members m
                on boss.id = m.boss_id
)
select * from sos_members;

with recursive sos_bosses as (
    select 1 as level, b.*
    from sos_brigade b
    where b.boss_id is null
    union all
        select boss.level + 1 as level, m.*
        from sos_brigade m
            join sos_bosses boss
                on m.boss_id = boss.id
)
select * from sos_bosses;