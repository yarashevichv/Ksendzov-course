-- Вывести все поля и все строки.
select *
from students s

-- Вывести всех студентов в таблице
select name
from students s

-- Вывести только Id пользователей
select id
from students s

-- Вывести только имя пользователей
select name
from students s

-- Вывести только email пользователей
select email
from students s 

-- Вывести имя и email пользователей
select name, email
from students s 

-- Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on
from students s 

-- Вывести пользователей где password 12333
select *
from students s 
where password = '12333'

-- Вывести пользователей которые были созданы 2021-03-26 00:00:00
select *
from students s 
where created_on = '2021-03-26 00:00:00'

-- Вывести пользователей где в имени есть слово Анна
select *
from students s 
where name like '%Анна%'

-- Вывести пользователей где в имени в конце есть 8
select *
from students s 
where name like '%8'

-- Вывести пользователей где в имени в есть буква а
select *
from students s 
where name like '%a%'

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00
select *
from students s 
where created_on = '2021-07-12 00:00:00'

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select *
from students s 
where created_on = '2021-07-12 00:00:00' 
and password = '1m313'

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select *
from students s 
where created_on = '2021-07-12 00:00:00'
and name like '%Andrey%'

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select *
from students s 
where created_on = '2021-07-12 00:00:00'
and name like '%8%'

-- Вывести пользователя у которых id равен 10
select *
from students s 
where id = 10

-- Вывести пользователя у которых id равен 53
select *
from students s 
where id = 53

-- Вывести пользователя у которых id больше 40
select *
from students s 
where id > 40

-- Вывести пользователя у которых id меньше 30
select *
from students s 
where id < 30

-- Вывести пользователя у которых id меньше 27 или больше 88
select *
from students s 
where id < 27 or id > 88

-- Вывести пользователя у которых id меньше либо равно 37
select *
from students s 
where id <= 37

-- Вывести пользователя у которых id больше либо равно 37
select *
from students s 
where id >= 37

-- Вывести пользователя у которых id больше 80 но меньше 90
select *
from students s 
where id > 80 and id < 90

-- Вывести пользователя у которых id между 80 и 90
select *
from students s 
where id between 80 and 90

-- Вывести пользователей где password равен 12333, 1m313, 123313
select *
from students s 
where password in ('12333', '1m313', '123313')

-- Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select *
from students s 
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')

-- Вывести минимальный id 
select MIN(id)
from students s 

-- Вывести максимальный id
select MAX(id)
from students s

-- Вывести количество пользователей
select COUNT(*)
from students s 

-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля
select id, name, created_on
from students s
order by created_on

-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля
select id, name, created_on
from students s 
order by created_on desc