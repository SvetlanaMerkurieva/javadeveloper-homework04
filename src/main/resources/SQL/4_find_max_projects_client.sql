SELECT name FROM client
WHERE id IN (
    SELECT client_id FROM project
    GROUP BY client_id
    HAVING count(id) IN (
        SELECT count(id) FROM project
        GROUP BY client_id
        ORDER BY count(id) DESC
        LIMIT 1
    )
);
