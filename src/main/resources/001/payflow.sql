/************************************************************************/
/**************     C R E A T E  T A B L E  S         *******************/
/************************************************************************/

--
-- Table structure for table `APG_Transaction`
--
CREATE TABLE `APG_Transaction` (
  `TransactionID` bigint(20) NOT NULL AUTO_INCREMENT,
  `partnerKey` varchar(50) NOT NULL,
  `partnerrefno` varchar(50) DEFAULT NULL,
  `transtype` varchar(10) DEFAULT NULL,
  `paymenttype` varchar(20) DEFAULT NULL,
  `paymentsource` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `currencycode` varchar(20) DEFAULT NULL,
  `currencyexp` int(11) DEFAULT NULL,
  `shippingamount` bigint(11) DEFAULT NULL,
  `taxamount` bigint(11) DEFAULT NULL,
  `itemtotalamount` bigint(11) DEFAULT NULL,
  `totalamount` bigint(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `transactionrefid` varchar(50) DEFAULT NULL,
  `responseURL` varchar(250) DEFAULT NULL,
  `createdateutc` datetime DEFAULT NULL,
  `LastModifiedUTC` datetime DEFAULT NULL,
  `ChannelKey` varchar(50) DEFAULT NULL,
  `isepp` tinyint(1) DEFAULT NULL,
  `AgentID` varchar(250) DEFAULT NULL,
  `isValidation` tinyint(1) NOT NULL DEFAULT '0',
  `isDirectLink` tinyint(1) DEFAULT NULL,
  `isQuickPayCSC` tinyint(1) DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TransactionID`),
  KEY `partnerrefno` (`partnerrefno`),
  KEY `transactionrefid` (`transactionrefid`),
  KEY `partnerkey_transref` (`partnerKey`,`transactionrefid`),
  KEY `partnerref_partnerkey` (`partnerrefno`,`partnerKey`),
  KEY `channelkey` (`ChannelKey`),
  KEY `lastModifiedUTC` (`LastModifiedUTC`),
  KEY `createdDateUTC` (`createdateutc`),
  KEY `status` (`status`),
  KEY `transType` (`transtype`)
);

--
-- Table structure for table `APG_AdditionalCharges`
--
CREATE TABLE `APG_AdditionalCharges` (
  `AdditionalChargesID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TransactionID` bigint(20) NOT NULL,
  `ChargesKey` varchar(100) NOT NULL,
  `ChargesValue` varchar(100) NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdditionalChargesID`),
  KEY `TransactionID` (`TransactionID`),
  CONSTRAINT `FK_AC_TID` FOREIGN KEY (`TransactionID`) REFERENCES `APG_Transaction` (`TransactionID`)
);

--
-- Table structure for table `APG_ErrorLog`
--
CREATE TABLE `APG_ErrorLog` (
  `ErrorID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) NOT NULL,
  `MethodName` varchar(15) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ErrorID`)
);

--
-- Table structure for table `APG_FPX_Bank_Codes`
--
CREATE TABLE `APG_FPX_Bank_Codes` (
  `APGFPXBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(120) NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`APGFPXBankCodesID`)
);

--
-- Table structure for table `APG_MBB_CASA_Bank_Codes`
--
CREATE TABLE `APG_MBB_CASA_Bank_Codes` (
  `APGMBBCASABankCodesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(45) NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`APGMBBCASABankCodesID`)
);

--
-- Table structure for table `APG_PBB_Bank_Codes`
--
CREATE TABLE `APG_PBB_Bank_Codes` (
  `APGPBBBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Code` varchar(45) NOT NULL,
  `Reason_Description` varchar(120) NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`APGPBBBankCodesID`)
);

--
-- Table structure for table `APG_PaymentInfo_CTB`
--
CREATE TABLE `APG_PaymentInfo_CTB` (
  `PaymentInfoCTBID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PaymentID` bigint(20) NOT NULL,
  `CitibankRefID` varchar(20) DEFAULT NULL,
  `CCName` varchar(100) NOT NULL,
  `CCDataKey` varchar(45) DEFAULT NULL,
  `CCDisplay` varchar(45) NOT NULL,
  `expirymonth` varchar(45) NOT NULL,
  `expiryyear` varchar(45) NOT NULL,
  `submitinfo` varchar(500) DEFAULT NULL,
  `ccType` varchar(45) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentInfoCTBID`),
  KEY `paymentId` (`PaymentID`)
);
