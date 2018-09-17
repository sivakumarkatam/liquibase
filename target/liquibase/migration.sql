--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: src/main/resources/master-changelog.xml
--  Ran at: 9/6/18 7:38 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/apg
--  Liquibase version: 3.4.2
--  *********************************************************************

--  Lock Database
UPDATE apg.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'ip-10-12-96-78.ap-southeast-1.compute.internal (10.12.96.78)', LOCKGRANTED = '2018-09-06 19:38:31.313' WHERE ID = 1 AND LOCKED = 0;

--  Changeset src/main/resources/001/001-changelog.xml::R3.2::siva
--
-- Table structure for table `APG_PaymentInfo_FPX`
--
CREATE TABLE `APG_PaymentInfo_FPX` (
  `PaymentInfoFPXID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PaymentID` bigint(20) NOT NULL,
  `FPXRefID` varchar(20) DEFAULT NULL,
  `SubmitInfo` varchar(250) DEFAULT NULL,
  `CCType` varchar(10) DEFAULT NULL,
  `BuyerBankID` varchar(25) DEFAULT NULL,
  `BuyerBankName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentInfoFPXID`),
  KEY `paymentID` (`PaymentID`)
);

--
-- Table structure for table `APG_PaymentInfo_PBB`
--
CREATE TABLE `APG_PaymentInfo_PBB` (
  `PaymentInfoPBBID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PaymentID` bigint(20) NOT NULL,
  `PBBRefID` varchar(20) DEFAULT NULL,
  `CCName` varchar(100) NOT NULL,
  `CCDataKey` varchar(45) DEFAULT NULL,
  `CCDisplay` varchar(45) NOT NULL,
  `expirymonth` varchar(10) NOT NULL,
  `expiryyear` varchar(10) NOT NULL,
  `submitinfo` varchar(45) DEFAULT NULL,
  `ccType` varchar(45) NOT NULL,
  `createdDate` timestamp NULL DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentInfoPBBID`),
  KEY `PaymentID` (`PaymentID`)
);

--
-- Table structure for table `APG_Recurring`
--
CREATE TABLE `APG_Recurring` (
  `RecurringID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CyclePeriod` varchar(10) NOT NULL,
  `CycleDuration` int(11) NOT NULL,
  `NextChargeDateUTC` datetime NOT NULL,
  `InitialAmount` bigint(20) NOT NULL,
  `ChargeAmount` bigint(20) NOT NULL,
  `CurrencyCode` varchar(20) NOT NULL,
  `CurrencyExp` smallint(6) NOT NULL,
  `NotificationURL` varchar(350) NOT NULL,
  `TransactionID` bigint(20) NOT NULL,
  `CCDataKey` varchar(20) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `LastRecurringDateUTC` datetime NOT NULL,
  `CreatedDateUTC` datetime DEFAULT CURRENT_TIMESTAMP,
  `InQueue` int(11) NOT NULL,
  `RetryCount` int(11) DEFAULT '0',
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`RecurringID`),
  KEY `TransactionID` (`TransactionID`),
  CONSTRAINT `FK_RECURRING_TID` FOREIGN KEY (`TransactionID`) REFERENCES `APG_Transaction` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `APG_ReversalQueue`
--
CREATE TABLE `APG_ReversalQueue` (
  `QueueId` bigint(20) NOT NULL AUTO_INCREMENT,
  `PaymentRefId` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedDateUTC` datetime NOT NULL,
  `LastModifiedUTC` datetime DEFAULT NULL,
  `errorCode` varchar(45) DEFAULT NULL,
  `errorDescription` varchar(120) DEFAULT NULL,
  `ReversedAmount` varchar(45) DEFAULT NULL,
  `PaymentID` bigint(20) DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`QueueId`)
);

--rollback drop table APG_PaymentInfo_FPX;

--rollback drop table APG_PaymentInfo_PBB;

--rollback drop table APG_Recurring;

--rollback drop table APG_ReversalQueue;

--rollback drop table APG_TransactionDiscountInfo;

-- Table structure for table `APG_TransactionDiscountInfo`
--
CREATE TABLE `APG_TransactionDiscountInfo` (
  `DiscountInfoID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TransactionID` bigint(20) NOT NULL,
  `BankName` text NOT NULL,
  `ccType` text NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DiscountInfoID`),
  KEY `TransactionID` (`TransactionID`),
  CONSTRAINT `FK_Transaction_TID` FOREIGN KEY (`TransactionID`) REFERENCES `APG_Transaction` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO apg.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE) VALUES ('R3.2', 'siva', 'src/main/resources/001/001-changelog.xml', NOW(), 3, '7:096860eaa874ac9c8bba01ff8f3a2c08', 'sqlFile', '', 'EXECUTED', NULL, NULL, '3.4.2');

--  Release Database Lock
UPDATE apg.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

