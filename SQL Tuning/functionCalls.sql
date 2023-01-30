WITH CTE AS (SELECT d.department_id,
                    d.department_name,
                    pctIncrease(d.department_id) as pct
            FROM departments d
)
    SELECT 
            e.employee_id,
            e.first_name,
            e.last_name,       
            e.salary as old_salary,
            d.department_name,
            e.salary*(1+d.pct) as new_salary 
       FROM Employees e
         INNER JOIN CTE d
            ON e.department_id = d.department_id
       ORDER BY 1;