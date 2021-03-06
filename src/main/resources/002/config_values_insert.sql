--liquibase formatted sql
--create table
use siva;
crate table new;
create table config_values (config_key varchar(255) not null primary key,string_value varchar(4000) not null);


GRANT SELECT,UPDATE,INSERT,DELETE ON config_values to ${APP_USER};
GRANT SELECT ON config_values to ${RO_USER};
--changeset anair:dev_values context:dev
insert into config_values values ('devkey1', 'devval1');
insert into config_values values ('devkey2', 'devval2');
-----------
--changeset anair:prod_values context:prod
insert into config_values values ('prodkey1', 'prodval1');
insert into config_values values ('prodkey2', 'prodval2');
-----------
--changeset anair:qa_values context:qa
insert into config_values values ('qakey1', 'qaval1');
insert into config_values values ('qakey2', 'qaval2');
-----------
