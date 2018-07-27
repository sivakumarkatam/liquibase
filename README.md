# liquibase
Update
mvn -DLOG_LEVEL=INFO -DDB_CONTEXT=local -DDB_USERNAME=root -DDB_PASSWORD=root -DDB_SCHEMA=siva -DDB_URL=jdbc:mysql://localhost:3306/siva liquibase:update
Tag
mvn -DLOG_LEVEL=INFO -DDB_CONTEXT=local -DDB_USERNAME=root -DDB_PASSWORD=root -DDB_SCHEMA=siva -DDB_URL=jdbc:mysql://localhost:3306/siva liquibase:tag -Dtag_id=0.0.5
Rollback
mvn -DLOG_LEVEL=INFO -DDB_CONTEXT=local -DDB_USERNAME=root -DDB_PASSWORD=root -DDB_SCHEMA=siva -DDB_URL=jdbc:mysql://localhost:3306/siva liquibase:futureRollbackSQL -Dliquibase.ROLLBACK_TAG=0.0.4
