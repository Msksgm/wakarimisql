select member.*
from sos_brigade member
order by member.id;

select member.*, boss.name as boss
from sos_brigade member
    left join sos_brigade boss
        on member.boss_id = boss.id
order by member.id;