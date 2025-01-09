select p.project_id, round(sum(experience_years)/count(distinct p.employee_id),2) as average_years
from project p
left join employee e
    on p.employee_id=e.employee_id
group by project_id