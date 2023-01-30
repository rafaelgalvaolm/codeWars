SELECT race, 
       COUNT(*) as race
    FROM demographics 
    GROUP BY race
    ORDER BY COUNT(race) DESC
