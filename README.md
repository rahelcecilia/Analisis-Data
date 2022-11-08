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
![image](https://user-images.githubusercontent.com/112471006/200587890-f2ef29dc-5075-4886-9ef6-051a1c935716.png)
