SELECT project_id, SUM(salary),  DATEDIFF (month, start_date, finish_date)
FROM project_worker
JOIN worker ON worker.id = project_worker.worker_id
JOIN project ON project.id = project_worker.project_id
GROUP BY project_id;