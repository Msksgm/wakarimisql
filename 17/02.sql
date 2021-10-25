select t.student_id, sum(t.score) as total_score
from test_scores t
group by t.student_id
order by t.student_id;

select s.id, s.name, t.total_score
from students s
left join (
    select t.student_id, sum(t.score) as total_score
    from test_scores t
    group by t.student_id
) t on s.id = t.student_id
order by s.id;

select s.id, s.name, t.*
from students s
    join test_scores t
    on s.id = t.student_id
order by s.id, t.subject;

select s.id, s.name, sum(t.score) as total_score
from students s
    join test_scores t
        on s.id = t.student_id
group by s.id, s.name
order by s.id;