select s.id
    , s.name
from students s
order by s.id;

select s.id
    , s.name
    , ( select count(*)
        from students s2
        where s2.id < s.id) as num
from students s
order by s.id;

select t.student_id
    , t.score
from test_scores t
where t.subject = '算数'
order by t.score desc;

select 
    ( select count(*)
        from test_scores t2
        where t2.subject='算数'
            and t2.score >= t.score ) as num
    ,t.student_id
    , t.score
from test_scores t
where t.subject = '算数'
order by t.score desc;

select t.student_id, t.score
from test_scores t
where t.subject = '社会'
order by t.score desc, t.student_id;


select (select count(*)
    from test_scores t2
    where t2.subject = '社会'
    and (t2.score, -t2.student_id) >= (t.score, -t.student_id)) as num
    , t.student_id
    , t.score
from test_scores t
where t.subject = '社会'
order by t.score desc, t.student_id;

select t.student_id, t.score
from test_scores t
where t.subject = '算数'
order by t.score desc, t.student_id;

select t.student_id
    , t.score
    , ( select sum(t2.score)
        from test_scores t2
        where t2.subject = '算数'
            and (t2.score, -t2.student_id) >= (t.score, -t.student_id)) as cumulative
from test_scores t
where t.subject = '算数'
order by t.score desc, t.student_id;

select t.student_id
    , (select s.name from students s where s.id = t.student_id) as student_name
    , t.score
    , (select sum(t2.score)
        from test_scores t2
        where t2.subject = '算数' and (t2.score, -t2.student_id) >= (t.score, -t.student_id)) as cumulative
from test_scores t
where t.subject = '算数'
order by t.score desc, t.student_id;

select t.student_id, sum(t.score) as total_score
from test_scores t
group by t.student_id
order by total_score desc, t.student_id;

with tmp(student_id, total_score) as (
    select t.student_id, sum(t.score) as total_score
    from test_scores t
    group by t.student_id
    order by total_score desc, t.student_id
)
select t.student_id, t.total_score
from tmp t;

with tmp(student_id, total_score) as (
    select t.student_id, sum(t.score) as total_score
    from test_scores t
    group by t.student_id
    order by total_score desc, t.student_id
)
select t.student_id,
    t.total_score,
    (select sum(t2.total_score) from tmp t2 where (t2.total_score, -t.student_id) >= (t.total_score, -t.student_id)) as cumulative
from tmp t;

with tmp(student_id, total_score) as (
    select t.student_id, sum(t.score) as total_score
    from test_scores t
    group by t.student_id
    order by total_score desc, t.student_id
)
select t.student_id
    , (select s.name from students s where s.id = t.student_id) as student_name
    , t.total_score
    , (select sum(t2.total_score) from tmp t2 where (t2.total_score, -t.student_id) >= (t.total_score, -t.student_id)) as cumulative
from tmp t;