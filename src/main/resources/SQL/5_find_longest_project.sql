git add
HAVING DATEDIFF (month, start_date, finish_date) IN (
SELECT MAX(DATEDIFF (month, start_date, finish_date)) FROM project AS DateDiff
GROUP BY id
ORDER BY MAX(DATEDIFF (month, start_date, finish_date)) DESC
LIMIT 1);