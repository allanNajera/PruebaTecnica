USE [PruebaTec1]
select department_name, avg(salarios.salary) as salario_promedio from employees cross join salarios where employees.employee_id = salarios.employee_id  group by department_name having  avg(salarios.salary) < 500