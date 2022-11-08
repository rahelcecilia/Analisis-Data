# Pemahaman dan Analisis Data
<strong> Repository ini adalah tugas portofolio saya ketika saya mengikuti Mini Bootcamp Fundamental of Data Analytics dari SkillAcademy. </strong>

## Statement 1
Mendapatkan course yang paling diminati serta daftar nama peserta yang mengikutinya. 

 ``` 
SELECT course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name DESC 
```

Result : 
![image](https://user-images.githubusercontent.com/112471006/200600286-6752cce0-56c5-4e63-a6a5-f06c00a689ec.png)


## Statement 2
Mendapatkan course yang paling sedikit peminatnya serta daftar nama peserta yang mengikutinya.

```
SELECT course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name ASC

```

Result : 
![image](https://user-images.githubusercontent.com/112471006/200600186-c687fe9d-d208-426f-a4c8-76e5839c8c13.png)


## Statement 3
Mendapatkan topik yang paling diminati serta daftar nama peserta yang mengikutinya.

```
SELECT  topic,
count(distinct name) as total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM course_table
inner JOIN sample_order
ON course_table.course_id   =  sample_order.course_id
GROUP BY course_table.topic
order by total_name DESC
```

Result : 
![image](https://user-images.githubusercontent.com/112471006/200602638-70ea23b7-55ec-4eff-a24e-132eb0bddf21.png)



## Statement 4
Mendapatkan topik yang paling sedikit peminatnya serta daftar nama peserta yang mengikutinya.

```
SELECT  topic,
count(distinct name) as total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM course_table
inner JOIN sample_order
ON course_table.course_id   =  sample_order.course_id
GROUP BY course_table.topic
order by total_name asc
```

Result : 
![image](https://user-images.githubusercontent.com/112471006/200602863-af32d9be-be79-4aa7-8221-b578368e6d16.png)






