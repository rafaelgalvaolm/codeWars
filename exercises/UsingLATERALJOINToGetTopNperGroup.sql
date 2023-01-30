SELECT 
  c.id AS category_id,
  c.category,
  p.title,
  p.views,
  p.id AS post_id
  FROM categories c
    LEFT JOIN LATERAL ( 
      SELECT
        title, 
        views, 
        id
      FROM posts
      WHERE category_id = c.id
        ORDER BY views DESC
      LIMIT 2) p
      ON TRUE
  ORDER BY 2 ASC,4 DESC,5 ASC