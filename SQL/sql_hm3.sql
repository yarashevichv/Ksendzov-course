-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000
and employee_name is null;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary
from employees 
full outer join employee_salary on employees.id = employee_salary.employee_id 
full outer join salary on salary.id = employee_salary.salary_id
where employee_salary.id is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Java %';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior%';

-- 15. ������� �������� Java �������������
select role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java %';

-- 16. ������� �������� Python �������������
select role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Middle JavaScript%';

-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Senior Java %';

-- 20. ������� �������� Junior QA ���������
select role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select role_name, avg(monthly_salary) 
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior%'
group by role_name;

-- 22. ������� ����� ������� JS �������������
select role_name, sum(monthly_salary) 
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript%'
group by role_name;

-- 23. ������� ����������� �� QA ���������
select role_name, min(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%'
group by role_name;

-- 24. ������� ������������ �� QA ���������
select role_name, max(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%'
group by role_name;

-- 25. ������� ���������� QA ���������
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%'
group by role_name;

-- 26. ������� ���������� Middle ������������.
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like 'Middle%'
group by role_name;

-- 27. ������� ���������� �������������
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%developer'
group by role_name;

-- 28. ������� ���� (�����) �������� �������������.
select role_name, sum(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer'
group by role_name;

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
order by monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;