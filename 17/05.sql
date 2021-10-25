select t1.id, t1.name, t1.short_name
from volleyball_teams t1
order by t1.id;

select t1.id, t1.short_name, t2.id, t2.short_name
from volleyball_teams t1 cross join volleyball_teams t2
order by t1.id, t2.id;

select t1.id, t1.short_name, t2.id, t2.short_name
from volleyball_teams t1 join volleyball_teams t2 on t1.id <> t2.id
order by t1.id, t2.id;

select t1.id, t1.short_name, t2.id, t2.short_name
from volleyball_teams t1 join volleyball_teams t2 on t1.id < t2.id
order by t1.id, t2.id;

select t1.*
from test_scores t1
where t1.subject = '算数'
order by t1.score desc;

select t1.*, t2.*
from test_scores t1
    join test_scores t2
        on t1.subject = t2.subject
where t1.subject = '算数'
order by t1.score desc, t2.score desc;

select t1.*, t2.*
from test_scores t1
    join test_scores t2
        on t1.subject = t2.subject
            and t1.score < t2.score
where t1.subject = '算数'
order by t1.score desc, t2.score desc;

select t1.*, t2.*
from test_scores t1
    left join test_scores t2
        on t1.subject = t2.subject
            and t1.score < t2.score
where t1.subject = '算数'
order by t1.score desc, t2.score desc;

select t1.*, t2.*
from test_scores t1
    left join test_scores t2
        on t1.subject = t2.subject
            and t1.score < t2.score
where t1.subject = '算数'
    and t2.student_id is null
order by t1.score desc, t2.score desc;

select t1.*
from test_scores t1
    left join test_scores t2
        on t1.subject = t2.subject
            and t1.score < t2.score
where t1.subject = '算数'
    and t2.student_id is null
order by t1.student_id;

select t1.*
from test_scores t1
    left join test_scores t2
        on t1.subject = t2.subject
            and t1.score < t2.score
where t2.student_id is null
order by t1.subject, t1.student_id;
