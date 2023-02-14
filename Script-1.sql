create table salary(
id serial primary key, 
monthly_salary int not null 
);

create table roles(
id serial primary key, 
role_title varchar(50) unique not null 
);


create table roles_salary(
id serial primary key, 
id_role int not null, 
id_salary  int not null, 
foreign key (id_role) 
	references roles(id),
foreign key (id_salary)
	references salary(id)   
);

insert into salary(id, monthly_salary)
values (default, 1000),
		(default, 1200),
		(default, 1300),
		(default, 1400);
		
insert into salary(monthly_salary)
values ( 4000);

select * from SALARY;

insert into roles(role_title)
values ('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');
    
   
   
   insert into roles_salary (id_role, id_salary)
   values (1,1),
   		  (2,2),
    	  (3,3),
    	  (4,5);
    	 
    
    	 
    	  insert into roles_salary (id_role, id_salary)
   values (5,4);

    select *from roles_salary 
    join roles on id_role=roles.id
    join salary on id_salary=salary.id;
   
   
   alter table roles 
   add column parking int;
  
    alter table roles 
   rename column parking to taxi;
  
  select * from roles;
 
     alter table roles 
   drop column  taxi;
  
  update salary 
  set monthly_salary = 9000
  where id = 1;

   select * from salary;
   
  
  


create table employees(
id serial primary key, 
employees_name Varchar(50) not null 
);

  insert into employees(employees_name)
values ('John'),
('Mati'),
('?obert-Gordon'),
('Felix'),
('Jaime'),
('Harvinder'),
('Zaid'),
('Sahaib'),
('Jamaal'),
('Ammaar'),
('Rhuairidh'),
('Cailaen'),
('Abhisumant'),
('Zaak'),
('Joynul'),
('Wiktor'),
('Rayne'),
('Karim'),
('Jed'),
('Landon'),
('Kalen'),
('Roy'),
('Blazej'),
('Tadhg'),
('Jura'),
('Jensen'),
('Jayden-Lee'),
('Rafael'),
('Will'),
('Tait'),
('Marcel'),
('Josan'),
('Kellan'),
('Crispin'),
('Ogheneruno'),
('Adam-James'),
('Corrie'),
('Kaywan'),
('Zachary'),
('Chi'),
('Kayam'),
('Abdalroof'),
('Bader'),
('Ezekiel'),
('Yann'),
('Joash'),
('Johannes'),
('Gene'),
('Derek'),
('Szymon'),
('Kabir'),
('Hashem'),
('Ruairidh'),
('Russell'),
('Pasquale'),
('Gurardass'),
('Benji'),
('Xida'),
('Krzysiek'),
('Calvin'),
('Micheal'),
('Phani'),
('Desmond'),
('Anton'),
('Kruz'),
('Ajayraj'),
('Peni'),
('Eugene'),
('Kinneil'),
('Butch');




create table salaryhw (
id serial primary key, 
monthly_salary Int not null 
);

   insert into salaryhw (monthly_salary)
   values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);


select * from employee_salary;



create table employee_salary(
id serial primary key, 
employees_id int not null  unique, 
salaryhw_id  int not null  
);



	
insert into employee_salary (employees_id, salaryhw_id)
   values (1,1),
   		  (2,2),
    	  (3,3),
    	  (4,4),
    	  (5,5),
    	  (6,11),
   		  (7,12),
    	  (8,13),
    	  (9,14),
    	  (10,15),
    	  (11,6),
   		  (12,7),
    	  (13,7),
    	  (14,7),
    	  (15,10),
    	  (16,11),
   		  (17,16),
    	  (18,16),
    	  (19,16),
    	  (20,15),
    	  (21,11),
   		  (22,11),
    	  (23,12),
    	  (24,14),
    	  (25,16),
    	  (26,16),
   		  (27,11),
    	  (28,11),
    	  (29,6),
    	  (30,2),
    	  (71,3),
   		  (72,10),
    	  (73,13),
    	  (74,4),
    	  (75,11),
    	  (76,6),
   		  (77,7),
    	  (78,13),
    	  (79,14),
    	  (80,15);
    	  
    	  

    	 

create table roleshw (
id serial primary key, 
role_name Int not null  unique  
);

ALTER TABLE roleshw ALTER COLUMN role_name TYPE VARCHAR(30);

 insert into roleshw (role_name)
   values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');



create table roles_employee (
id serial primary key,
 employee_id Int not null  unique, 
roleshw_id Int not null    
);




select * from employee_salary;

insert into roles_employee (employee_id, roleshw_id)
   values (1,1),
   		  (2,7),
    	  (3,2),
    	  (4,2),
    	  (5,20),
    	  (6,4),
   		  (7,3),
    	  (8,3),
    	  (9,9),
    	  (10,4),
    	  (11,5),
   		  (12,13),
    	  (13,5),
    	  (14,13),
    	  (15,4),
    	  (16,6),
   		  (17,11),
    	  (18,2),
    	  (19,2),
    	  (20,10),
    	  (21,9),
   		  (22,8),
    	  (23,12),
    	  (24,13),
    	  (25,9),
    	  (26,8),
   		  (27,20),
    	  (28,14),
    	  (29,9),
    	  (30,2),
    	  (31,3),
   		  (32,10),
    	  (33,13),
    	  (34,4),
    	  (35,11),
    	  (36,6),
   		  (37,7),
    	  (38,13),
    	  (39,14),
    	  (40,15);
    	
    	 
    

    	 select  employees_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id;
    
    
    
     select distinct employees_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE monthly_salary < 2000 ;
    
    	

  		
  select    monthly_salary from salaryhw 
   left join employee_salary on salaryhw.id = salaryhw_id 
  		left join employees on employees.id = employees_id 	
WHERE employees_name is null; 




 
 
   select    monthly_salary from salaryhw 
    left join employee_salary on salaryhw.id = salaryhw_id 
  		left join employees on employees.id = employees_id 	
WHERE employees_name is null and monthly_salary <2000 ; 
 

 
 select   employees_name from employees  	
  		left join employee_salary on employees.id = employees_id 
    	left join salaryhw on salaryhw.id = salaryhw_id
WHERE monthly_salary IS  NULL; 
    
 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
;


 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Java %';

 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Python%';


 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%QA%';

 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Manual QA%';


 select distinct employees_name, role_name from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Automation QA%';
    	 


 select distinct employees_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Junior%';


 select distinct employees_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Middle%';


 select distinct employees_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Senior%';

select   monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Java %';


select   monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Python%';

select   role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Junior%Python%';

 select   role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Middle%JavaScript%';

 select   role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Senior%Java %';



 select   role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Junior%QA%';
    	 

select distinct  AVG(monthly_salary) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Junior%';

 
select distinct  SUM(monthly_salary) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%JavaScript%';


select distinct  MIN(monthly_salary) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%QA%';


select distinct  MAX(monthly_salary) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%QA%';


select distinct  Count(employees_name) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%QA%';



select distinct  Count(employees_name) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%Middle%';


select distinct  Count(employees_name) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%developer%';



select distinct  SUM(monthly_salary) from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
WHERE role_name LIKE '%developer%';



 select   employees_name, role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
    ORDER BY monthly_salary ASC; 
   
   select   employees_name, role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
    	where  monthly_salary between 1700 and 2300
    ORDER BY monthly_salary asc ; 

   
     select   employees_name, role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
    	where  monthly_salary < 2300
    ORDER BY monthly_salary asc ; 
    
   
        select   employees_name, role_name, monthly_salary from employees  
   join roles_employee on employees.id = roles_employee.employee_id 
  		join roleshw on roleshw.id = roleshw_id 	
  		join employee_salary on employees.id = employees_id 
    	join salaryhw on salaryhw.id = salaryhw_id
    	where  monthly_salary = 1100 or  monthly_salary = 1500 or  monthly_salary = 2000
    ORDER BY monthly_salary asc ; 