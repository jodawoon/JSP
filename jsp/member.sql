CREATE TABLE IF NOT EXISTS member (
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(30),
	PRIMARY KEY (id)
);
select * from member;

insert into member value("1","1234","yoon");
insert into member value("2","4321","yo");
insert into member value("3","9999","kkk");
insert into member value("4","8888","jjjj");
insert into member value("5","4433","ddd");

select * from member;