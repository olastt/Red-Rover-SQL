-- Покажите содержимое таблицы исполнителей (артистов)
SELECT * FROM chinook.artist

-- Покажите фамилии и имена клиентов из города Париж
SELECT LastName, FirstName
FROM chinook.customer
WHERE CITY = 'Paris';

-- Покажите продажи за 2012 год, со стоимостью продаж более 4 долларов
USE chinook;
SELECT * FROM invoice
WHERE InvoiceDate LIKE '%2012%'
AND Total > 4.00

-- Покажите дату продажи, адрес продажи, город в котором совершена продажа и стоимость покупки равную 16.86. 
-- Присвоить названия столбцам InvoiceDate – Дата_Продажи, BillingAddress – Адрес_Продажи и BillingCity - Город_Продажи.
  
USE chinook;
SELECT InvoiceDate AS Date_Sale, 
BillingAddress AS Sale_Address, 
BillingCity AS Sale_City, Total
FROM invoice
WHERE Total = 16.86;

-- Покажите фамилии и имена сотрудников компании, нанятых в 2004 году и проживающих в городе Lethbridge

USE chinook;
SELECT LastName, FirstName
FROM employee
WHERE HireDate LIKE '%2004%' 
AND City = 'Lethbridge';

-- Покажите канадские города, в которых были сделаны продажи в августе 2009 года.
USE chinook;
SELECT BillingCity, Total
FROM invoice
WHERE BillingCountry = 'Canada'
AND InvoiceDate like '%2009-08%';

-- Покажите Фамилии и имена работников, нанятых в мае используя оператор like

USE chinook;
SELECT LastName, FirstName
FROM employee
WHERE HireDate LIKE '%05%'

-- Покажите фамилии и имена сотрудников, занимающих должности IT Staff и IT manager. Решите задание двумя способами: 
1) используя оператор IN
2) используя логические операции

1)
USE chinook;
SELECT LastName, FirstName
FROM employee
WHERE Title IN ('IT Staff', 'IT manager');

2)
USE chinook;
SELECT LastName, FirstName
FROM employee
WHERE Title = 'IT Staff' OR Title = 'IT manager';
