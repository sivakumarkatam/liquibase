--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: src/main/resources/master-changelog.xml
--  Ran at: 7/25/18 2:16 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/siva
--  Liquibase version: 3.5.3
--  *********************************************************************

--  Lock Database
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'ip-10-0-1-249.ap-southeast-1.compute.internal (10.0.1.249)', LOCKGRANTED = '2018-07-25 14:16:23.629' WHERE ID = 1 AND LOCKED = 0;

--  Release Database Lock
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

