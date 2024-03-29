
select *
from dept d, emp e
where d.deptno = e.deptno
	and d.deptno=10;

select *
from DEPT d inner join emp e
on d.deptno = e.deptno
where d.deptno = 40;

select *
from DEPT d left join emp e
on d.deptno = e.deptno
where d.deptno = 40;

insert into dept (deptno, dname, loc) values (50, '총무부', 'seoul');
insert into dept values (60, '총무부', 'seoul');
insert into dept (deptno, dname) values (70, '총무부');

delete from dept where deptno > 40;

rollback
commit

select * from dept;