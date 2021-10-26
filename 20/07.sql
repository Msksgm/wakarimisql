with recursive factorial(n, result) as (
    select 1, 1
    union all
        select f.n+1, (f.n + 1) * f.result
        from factorial as f
        where f.n < 5
)
select * from factorial;

with recursive factorial(n, result) as (
    select 1, 1
    union all
        select f.n+1, (f.n + 1) * f.result
        from factorial as f
        where f.n < 5
)
select f.result from factorial f
where f.n = 5;

with recursive member(num, name, boss_id) as (
    select 1 as num, x.name, x.boss_id
    from sos_brigade x
    where x.name = 'キョン'
        union all
    select m.num + 1 as num, boss.name, boss.boss_id
    from sos_brigade boss
        join member m
            on boss.id = m.boss_id
)
select * from member
order by member.num;

with recursive member(num, name, boss_id) as (
    select 1 as num, x.name, x.boss_id
    from sos_brigade x
    where x.name = 'キョン'
        union all
    select m.num + 1 as num, boss.name, boss.boss_id
    from sos_brigade boss
        join member m
            on boss.id = m.boss_id
)
select string_agg(member.name, ' > ' order by member.num) as bosslist
from member;