SELECT capital
    FROM countries 
    WHERE continent = 'Africa' OR continent = 'Afrika'
        AND 
    country LIKE 'E%'
    ORDER BY capital
    LIMIT 3