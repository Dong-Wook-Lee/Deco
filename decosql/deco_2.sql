alter table users add (nickname varchar(10) not null);
update users set nickname=;
commit;
select * from users;
alter table users add unique key (nickname);

alter table users modify column name varchar(10) not null;

delete from users where password = '1111';

create table review(
   idx int auto_increment,   -- 번호
   nickname varchar(30) not null, -- 리뷰 작성 시 email
   grade int not null, -- 리뷰 평점
   content varchar(500) not null, -- 리뷰 내용
   category varchar(20) not null,
   imgfile varchar(100),
   refidx int,
   primary key(idx),
   foreign key(nickname) references users(nickname),
   foreign key(refidx) references cafe(idx)
);

drop table review ;

create table dibs(
   idx int auto_increment primary key,
   dibCafe varchar(300),
   dibFood varchar(300),
   dibShow varchar(300),
   dibEx varchar(300),
   nickname varchar(10) not null,
   foreign key (nickname) references users(nickname)
);

select * from dibs;

update dibs set dibCafe='/2/5/24/30/17/33/' where nickname = 'frontman';

insert into dibs (dibCafe,nickname)
values ('/2/5/24/30/17','frontman');

-- review insert 
insert into review(nickname,grade,content,category)
values ('frontman','4.7','하이하세요','cafe');

select * from cafe where location = '강남' or location = '이태원' order by grade desc limit 0,6;
RENAME TABLE deco.`deco.etc` TO etc;
