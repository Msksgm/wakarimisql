select t.*
from test_scores t
where t.subject = '算数' and 'F' = (select gender from students s where s.id = t.student_id);

select t.*
from test_scores t
    join students s on s.id = t.student_id
where t.subject = '算数' and 'F' = s.gender;

select t.score, t.student_id
    , (select s.name from students s where s.id=t.student_id) as student_name
from test_scores t
where t.subject = '算数'
order by t.score desc, t.student_id;

select t.score, t.student_id
    , s.name as student_name
from test_scores t
    join students s on s.id = t.student_id
where t.subject = '算数'
order by t.score desc, t.student_id;

select s.id
    , s.name
    , ( select count(*)
        from students s2
        where s2.id <= s.id) as num
from students s
order by s.id;

select s.id
    , s.name
    , count(*) as num
from students s
    join students s2
        on s.id >= s2.id
group by s.id, s.name
order by s.id;
