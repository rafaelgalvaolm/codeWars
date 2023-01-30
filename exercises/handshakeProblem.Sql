SELECT n, 
    CASE 
        WHEN n = 0 THEN 0
            ELSE CEIL(0.5 *(SQRT(8 * n + 1)+ 1))::INT
    END
    AS res FROM participants