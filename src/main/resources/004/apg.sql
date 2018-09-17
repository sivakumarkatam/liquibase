CREATE TABLE `APG_Payflow_Partner` (
  `partner_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `partner_key` varchar(45) NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `partner_config` text,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`partner_id`),
  UNIQUE KEY `partner_key_UNIQUE` (`partner_key`),
  KEY `IX_APG_Payflow_Partner_partner_key` (`partner_key`)
);


--
-- Table structure for table `APG_Users`
--
CREATE TABLE `APG_Users` (
  `user_name` varchar(100) NOT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_name`),
  KEY `IX_APG_Users_user_name` (`user_name`)
);


--
-- Table structure for table `Email_Template`
--
CREATE TABLE `Email_Template` (
  `template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_title` text,
  `email_template` text,
  `isInvoice` tinyint(4) DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`template_id`)
);


--
-- Table structure for table `Invoice_Template`
--
CREATE TABLE `Invoice_Template` (
  `template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_path` varchar(80) DEFAULT NULL,
  `invoice_template` text,
  `invoice_item_template` text,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`template_id`)
);

--
-- Table structure for table `MSC_Payment`
--
CREATE TABLE `MSC_Payment` (
  `PaymentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PartnerID` bigint(20) DEFAULT NULL,
  `ReversalTransactionID` varchar(50) DEFAULT NULL,
  `bankClientRefID` varchar(50) DEFAULT NULL,
  `billAcctNum` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `transDate` datetime DEFAULT NULL,
  `tellerID` varchar(50) DEFAULT NULL,
  `branchID` varchar(50) DEFAULT NULL,
  `ReversalTransDate` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `wsCallStartDate` datetime DEFAULT NULL,
  `wsCallEndDate` datetime DEFAULT NULL,
  `ActivityType` varchar(10) DEFAULT NULL,
  `PaymentMethod` varchar(10) DEFAULT NULL,
  `PaymentSource` varchar(100) DEFAULT NULL,
  `CreditCardNumber` varchar(30) DEFAULT NULL,
  `CreditCardExpiryDate` varchar(15) DEFAULT NULL,
  `CreditCardType` varchar(10) DEFAULT NULL,
  `Channel` varchar(50) DEFAULT NULL,
  `partnerUserKey` varchar(50) DEFAULT NULL,
  `PaymentRefID` varchar(50) DEFAULT NULL,
  `messageId` bigint(20) DEFAULT NULL,
  `retryCount` bigint(20) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `rpnPartnerKey` varchar(50) DEFAULT NULL,
  `insertionTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationTimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentID`),
  KEY `IX_MSC_Payment_bankClientRefID` (`bankClientRefID`),
  KEY `IX_MSC_Payment_PartnerID` (`PartnerID`),
  KEY `IX_MSC_Payment_lastModifiedDate` (`lastModifiedDate`),
  KEY `IX_MSC_Payment_status` (`status`)
);
