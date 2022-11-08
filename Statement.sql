--Statement 1
SELECT 
course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name DESC

--Statement 2
SELECT 
course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name ASC

--Statement 3
SELECT  topic,
count(distinct name) as total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM course_table
inner JOIN sample_order
ON course_table.course_id   =  sample_order.course_id
GROUP BY course_table.topic
order by total_name DESC

--Statement 4
SELECT  topic,
count(distinct name) as total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM course_table
inner JOIN sample_order
ON course_table.course_id   =  sample_order.course_id
GROUP BY course_table.topic
order by total_name asc

--Statement 5
SELECT topic, course_name, level, price
from course_table
Where level = 'Basic'


--Statement 6
SELECT topic, course_name, level, price
from course_table
Where level = 'Intermediate'







