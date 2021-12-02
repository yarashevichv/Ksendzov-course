-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000
and employee_name is null;

-- 5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary
from employees 
full outer join employee_salary on employees.id = employee_salary.employee_id 
full outer join salary on salary.id = employee_salary.salary_id
where employee_salary.id is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Java %';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java %';

-- 16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Senior Java %';

-- 20. Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select role_name, avg(monthly_salary) 
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior%'
group by role_name;

-- 22. Вывести сумму зарплат JS разработчиков
select role_name, sum(monthly_salary) 
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript%'
group by role_name;

-- 23. Вывести минимальную ЗП QA инженеров
select role_name, min(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%'
group by role_name;

-- 24. Вывести максимальную ЗП QA инженеров
select role_name, max(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%'
group by role_name;

-- 25. Вывести количество QA инженеров
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%'
group by role_name;

-- 26. Вывести количество Middle специалистов.
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like 'Middle%'
group by role_name;

-- 27. Вывести количество разработчиков
select role_name, count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%developer'
group by role_name;

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select role_name, sum(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer'
group by role_name;

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;