create table test11 (
    id int primary key,
    name varchar(255)
);
-- rollback drop table test1;

insert into test11 (id, name) values (1, ‘name 1′);
insert into test11 (id, name) values (2, ‘name 2′);

-- changeset nvoxland:3 dbms:oracle
create sequence seq_test;
