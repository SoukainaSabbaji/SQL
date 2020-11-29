select first_name as Employee , salary as "Monthly salary" from employees where salary between 5000 and 12000 and department_id in (20,50) ;
select first_name as Employee , salary as "Monthly salary" from employees where salary between 5000 and 12000 and department_id in (20,50) ;
select first_name , department_id , hire_date from employees where hire_date between '05/02/2001' and '13/02/2006' order by hire_date asc;
select first_name , salary from employees where salary not between 5000 and 12000;
select first_name , hire_date from employees where hire_date like '____%02';
select first_name , job_id from employees where manager_id is null ;
select first_name , salary , commission_pct from employees where commission_pct is not null order by salary desc , commission_pct desc;
select first_name from employees where first_name like '%a%' and first_name like '%e%';
select first_name , job_id , hire_date from employees where hire_date between '20/02/2001' and '01/05/2009' order by hire_date asc;
select first_name , months_between (sysdate,hire_date)/12  AS annee_anc from employees ;
select first_name from employees where first_name like 'K%' or first_name like 'L%' or first_name like 'M%'; ITS CASE SENSITIVE FFS 
select first_name , ROUND(months_between(sysdate,hire_date),0) as MONTHS_WORKED from employees order by MONTHS_WORKED;

insert into avion values (100,AIRBUS,300,RABAT)
select * from avions ;
select * from avions order by Name asc;
select name , capacity from avions ;
select distinct locality from avions; 
select * from avions where locality = 'RABAT' or locality = 'CASA';
UPDATE avions set capacity=220 where number=101;
delete from avions where capacity<200;
select MIN(capacity),MAX(capacity),AVG(capacity) from avions;
select * from avions where capacity=min(cpacity);
select * from avions where capacity>AVG(capacity);
select name , adress from pilots , vols  where Pilots.NP=Vols.NP and NV="IT100" and NV="IT104";
Select NP from Pilote where NP not in (select NP from Vol);
Select Pilote.NOM from Pilote, Vol, Avion where Pilote.NP= Vol.NP and Avion.NA=Vol.NA and Avion.NOM='AIRBUS';



