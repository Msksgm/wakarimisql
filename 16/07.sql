select t.student_id, t.score from test_scores t
    where t.subject = '算数'
        and t.student_id in (select s.id from students s where s.gender = 'F');

select t.student_id, t.score
from test_scores t
where t.subject = '算数'
    and 'F' = ( select gender from students s
                where s.id = t.student_id);

select s.id as student_id
    , (select t.score from test_scores t
        where t.student_id = s.id
            and t.subject = '算数')
from students s
where s.gender = 'F'
order by s.id;

select t.student_id, t.score from test_scores t
    join students s
    on t.student_id = s.id
    where s.gender = 'F' and t.subject = '算数';