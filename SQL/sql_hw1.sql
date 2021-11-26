-- ������� ��� ���� � ��� ������.
select *
from students s

-- ������� ���� ��������� � �������
select name
from students s

-- ������� ������ Id �������������
select id
from students s

-- ������� ������ ��� �������������
select name
from students s

-- ������� ������ email �������������
select email
from students s 

-- ������� ��� � email �������������
select name, email
from students s 

-- ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on
from students s 

-- ������� ������������� ��� password 12333
select *
from students s 
where password = '12333'

-- ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select *
from students s 
where created_on = '03/26/2021'

-- ������� ������������� ��� � ����� ���� ����� ����
select *
from students s 
where name like '%����%'

-- ������� ������������� ��� � ����� � ����� ���� 8
select *
from students s 
where name like '%8'

-- ������� ������������� ��� � ����� � ���� ����� �
select *
from students s 
where name like '%a%'

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select *
from students s 
where created_on = '07/12/2021'

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select *
from students s 
where created_on = '07/12/2021' 
and password = '1m313'

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select *
from students s 
where created_on = '07/12/2021'
and name like '%Andrey%'

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select *
from students s 
where created_on = '07/12/2021'
and name like '%8%'

-- ������� ������������ � ������� id ����� 10
select *
from students s 
where id = 10

-- ������� ������������ � ������� id ����� 53
select *
from students s 
where id = 53

-- ������� ������������ � ������� id ������ 40
select *
from students s 
where id > 40

-- ������� ������������ � ������� id ������ 30
select *
from students s 
where id < 30

-- ������� ������������ � ������� id ������ 27 ��� ������ 88
select *
from students s 
where id < 27 or id > 88

-- ������� ������������ � ������� id ������ ���� ����� 37
select *
from students s 
where id <= 37

-- ������� ������������ � ������� id ������ ���� ����� 37
select *
from students s 
where id >= 37

-- ������� ������������ � ������� id ������ 80 �� ������ 90
select *
from students s 
where id > 80 and id < 90

-- ������� ������������ � ������� id ����� 80 � 90
select *
from students s 
where id between 80 and 90

-- ������� ������������� ��� password ����� 12333, 1m313, 123313
select *
from students s 
where password in ('12333', '1m313', '123313')

-- ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select *
from students s 
where created_on in ('10/03/2020', '05/19/2021', '03/26/2021')

-- ������� ����������� id 
select MIN(id)
from students s 

-- ������� ������������ id
select MAX(id)
from students s

-- ������� ���������� �������������
select COUNT(*)
from students s 

-- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������
select id, name, created_on
from students s
order by created_on

-- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������
select id, name, created_on
from students s 
order by created_on desc