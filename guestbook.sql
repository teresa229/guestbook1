-- 계정 생성
create user webdb identified by webdb;
-- 접속 권한 부여
grant resource, connect to webdb;

-- 테이블 삭제
drop table guestbook;

-- 시퀀스 삭제
drop sequence seq_guestbook_id;

-- 테이블 생성
create table guestbook(
     no number, --pk  --"식별번호"
     name varchar2(80), --"이름"
     password varchar2(20), --"비밀번호"
     content varchar2(2000), --"본문"
     reg_date date --"등록일"
);

--시퀀스 생성
create sequence seq_guestbook_id
increment by 1
start with 1;

select *
from guestbook;

commit;

rollback;

--insert
insert into guestbook
values(seq_guestbook_id.nextval,'이정재', '1234', '본문', sysdate);

-- delete
delete from guestbook
where no = 3
and password = '비밀번호';

-- select
select no,
       name,
       password,
       content,
       to_char(reg_date, 'yyyy-mm-dd hh24:mi:ss')
from guestbook;
