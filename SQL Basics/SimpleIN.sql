SELECT
    d.id, d.name
    FROM departments d
    WHERE id IN(SELECT department_id
                    FROM sales 
                      WHERE (price) > 98.00 )