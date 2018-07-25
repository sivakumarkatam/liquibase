--  *********************************************************************
--  Rollback 2 Change(s) Script
--  *********************************************************************
--  Change Log: src/main/resources/master-changelog.xml
--  Ran at: 7/25/18 5:21 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/siva
--  Liquibase version: 3.5.3
--  *********************************************************************

--  Lock Database
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'ip-10-0-1-249.ap-southeast-1.compute.internal (10.0.1.249)', LOCKGRANTED = '2018-07-25 17:21:43.541' WHERE ID = 1 AND LOCKED = 0;

--  Rolling Back ChangeSet: src/main/resources/003/003-changelog.xml::2::bar
DROP TABLE test2;

DELETE FROM siva.DATABASECHANGELOG WHERE ID = '2' AND AUTHOR = 'bar' AND FILENAME = 'src/main/resources/003/003-changelog.xml';

--  Rolling Back ChangeSet: src/main/resources/003/003-changelog.xml::1::foo
DROP TABLE test1;

DELETE FROM siva.DATABASECHANGELOG WHERE ID = '1' AND AUTHOR = 'foo' AND FILENAME = 'src/main/resources/003/003-changelog.xml';

--  Release Database Lock
UPDATE siva.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

