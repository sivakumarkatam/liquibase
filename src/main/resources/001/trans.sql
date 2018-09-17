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
-- rollback 
-- drop table APG_PaymentInfo_PBB;
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
-- rollback
-- drop table APG_Recurring;
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
-- rollback
-- drop table APG_ReversalQueue;
-- rollback APG_PaymentInfo_FPX;
-- rollback drop table APG_PaymentInfo_PBB;
-- rollback drop table APG_Recurring;
-- rollback drop table APG_ReversalQueue;
-- rollback drop table APG_TransactionDiscountInfo;
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
-- rollback
-- drop table APG_TransactionDiscountInfo;
