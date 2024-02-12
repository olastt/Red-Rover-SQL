# Покажите клиентов с именем Френк.
    USE chinook;
    SELECT *
    FROM customer
    WHERE FirstName = 'Frank';

# Покажите фамилии и имя клиентов, у которых имя Mарк.
    USE chinook;
    SELECT FirstName, LastName
    FROM customer
    WHERE FirstName = 'Mark';

# Покажите название и размер треков в Мегабайтах, применив округление до 2 знаков и отсортировав по убыванию. Столбец назовите MB.
    USE chinook;
    SELECT Name, ROUND(Bytes / 1000000, 2) AS MB
    FROM track
    GROUP BY Name
    ORDER BY MB DESC;

# Покажите возраст сотрудников, на момент оформления на работу. Вывести фамилию, имя, возраст. дату оформления и день рождения. Столбец назовите age.
    USE chinook;
    SELECT LastName, FirstName, TIMESTAMPDIFF(YEAR, BirthDate, HireDate) AS Age, HireDate, BirthDate
    FROM employee

# Покажите покупателей-американцев без факса.
    USE chinook;
    SELECT *
    FROM customer
    WHERE Country = 'USA'
    AND Fax IS NULL
   
# Покажите почтовые адреса клиентов из домена gmail.com.
   USE chinook;
   SELECT *
   FROM customer
	 WHERE Email LIKE '%gmail.com%'
     
# Покажите в алфавитном порядке все уникальные должности в компании.
   USE chinook;
   SELECT DISTINCT Title
   FROM employee
   ORDER BY Title ASC
     
# Покажите название самой короткой песни.
  USE chinook;
  SELECT name
  FROM track
  ORDER BY Milliseconds ASC
  LIMIT 1;
    
# Покажите название и длительность в секундах самой короткой песни. Столбец назвать sec.
  USE chinook;
  SELECT name, (Milliseconds / 1000) AS sec
  FROM track
  ORDER BY Milliseconds ASC
  LIMIT 1;
 
# Покажите средний возраст сотрудников, работающих в компании
#
#
