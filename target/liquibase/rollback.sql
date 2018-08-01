--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: src/main/resources/master-changelog.xml
--  Ran at: 7/27/18 2:17 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/siva
--  Liquibase version: 3.5.3
--  *********************************************************************

--  Lock Database
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'ip-10-0-1-249.ap-southeast-1.compute.internal (10.0.1.249)', LOCKGRANTED = '2018-07-27 14:17:06.870' WHERE ID = 1 AND LOCKED = 0;

--  Release Database Lock
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

