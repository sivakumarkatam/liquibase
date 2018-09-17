--liquibase formatted sql

--changeset anair:create_config_values_table
show databases;
create database life_delete;
GRANT SELECT,UPDATE,INSERT,DELETE ON config_values to ${APP_USER};
GRANT SELECT ON config_values to ${RO_USER};
