--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: src/main/resources/master-changelog.xml
--  Ran at: 9/6/18 7:31 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/apg
--  Liquibase version: 3.4.2
--  *********************************************************************

--  Lock Database
UPDATE apg.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'ip-10-12-96-78.ap-southeast-1.compute.internal (10.12.96.78)', LOCKGRANTED = '2018-09-06 19:31:37.584' WHERE ID = 1 AND LOCKED = 0;

--  Release Database Lock
UPDATE apg.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

