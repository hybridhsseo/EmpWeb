select * from emp;

select *
from (select ROWNUM rnum,  empno
      from (select *
               from emp
               order by empno asc)
      where ROWNUM <= 4)
where rnum > 2;

select * from emp;

select count(*) from emp;

select *
from (select ROWNUM rnum,  empno, ename
      from (select *
            from emp
            order by empno desc)
      where ROWNUM <= 15)
where rnum >= 2 and rnum <=5;

-------------------------------------
select *
from (select ROWNUM rnum,  e.*
      from (select *
            from emp
            order by empno desc)  e
     )
where rnum >= 2 and rnum <= 5;


	  select ROWNUM rnum, empno, ename
      from (select *
            from emp
            order by empno asc)
      where ROWNUM <= 15;




