select e.id, e.name
    , c.id as comp_id, c.name
    , e.dept_id, d.name as department 
from employees e 
    join departments d on e.dept_id = d.id
    join companies c on c.id = d.company_id;