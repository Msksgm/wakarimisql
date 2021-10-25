select t.*
from test_scores t
where t.subject = '算数'
    and 'F' = (select gender from students s where s.id = t.student_id);

select t.*
from test_scores t
where t.subject = '算数'
    and t.student_id in (select s.id from students s where s.gender = 'F');