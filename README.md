# Pemahaman dan Analisis Data
<strong> Sorry I can't share the data because it's out of my control. </strong>

## Statement 1
Menampilkan course yang <strong> paling diminati </strong> serta daftar nama peserta yang mengikutinya. 

 ``` 
SELECT course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name DESC 
```

<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200600286-6752cce0-56c5-4e63-a6a5-f06c00a689ec.png)

---

## Statement 2
Menampilkan course yang <strong> paling sedikit peminatnya </strong> serta daftar nama peserta yang mengikutinya.

```
SELECT course_name,
COUNT (DISTINCT name) AS total_name,
STRING_AGG(DISTINCT name, ' -- ') AS list_of_name
FROM sample_order
Group By course_name
ORDER BY total_name ASC
```

<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200600186-c687fe9d-d208-426f-a4c8-76e5839c8c13.png)

---

## Statement 3
Menampilkan topik yang <strong> paling diminati </strong> serta daftar nama peserta yang mengikutinya.

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

<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200602638-70ea23b7-55ec-4eff-a24e-132eb0bddf21.png)

---

## Statement 4
Menampilkan topik yang <strong> paling sedikit peminatnya </strong> serta daftar nama peserta yang mengikutinya.

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

<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200602863-af32d9be-be79-4aa7-8221-b578368e6d16.png)

---

## Statement 5
Menampilkan topik yang termasuk kedalam <strong> level basic </strong>beserta harganya.

```
SELECT topic, course_name, level, price
from course_table
Where level = 'Basic'
```
<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200605715-13ed00f1-b398-47ae-a674-01182f9e3894.png)

---

## Statement 6
Menampilkan topik yang termasuk kedalam <strong> level intermediate </strong> beserta harganya.
```
SELECT topic, course_name, level, price
from course_table
Where level = 'Intermediate'
```

<strong> Result : </strong>

![image](https://user-images.githubusercontent.com/112471006/200608475-c2b088b0-c227-4f55-9901-c6afdf417c24.png)










