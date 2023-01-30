SELECT name, country 
    FROM travelers 
    WHERE country NOT LIKE
     ALL(ARRAY['USA','Canada', 'Mexico'])
