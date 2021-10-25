select t.score, t.student_id
    from test_scores t
    where t.subject = '算数'
    order by t.score desc, t.student_id;

select t.score, t.student_id
    , (select s.name 
        from students s
        where s.id = t.student_id) as student_name
    from test_scores t
    where t.subject = '算数'
    order by t.score desc, t.student_id;