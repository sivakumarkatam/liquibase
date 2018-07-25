CREATE TABLE `APGADMIN_CCExpirySchedular_Settings` (
  `SettingId` bigint(20) NOT NULL AUTO_INCREMENT,
  `EmailTemplate` text NOT NULL,
  `SenderEmailId` varchar(255) NOT NULL,
  `EmailSubject` text NOT NULL,
  `NoOfMonthsBeforeExpiry` int(11) NOT NULL,
  `NoOfEmailsPerMonth` int(11) NOT NULL,
  `DefaultReceiverEmailId` varchar(255) NOT NULL,
  `ErrorEmailSubject` text NOT NULL,
  `ErrorEmailTemplate` text NOT NULL,
  `SuccessEmailTemplate` text NOT NULL,
  `SuccessEmailSubject` text NOT NULL,
  `ExpiryType` varchar(10) NOT NULL,
  PRIMARY KEY (`SettingId`)
);/* ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;*/

CREATE TABLE `APGADMIN_CSCEmailTemplate_Settings` (
  `CSCEmailTemplateSettingsId` bigint(20) NOT NULL AUTO_INCREMENT,
  `SuccessTemplate` text NOT NULL,
  `PendingTemplate` text NOT NULL,
  `FailureTemplate` text NOT NULL,
  `SuccessSubject` text NOT NULL,
  `PendingSubject` text NOT NULL,
  `FailureSubject` text NOT NULL,
  `senderEmailId` text NOT NULL,
  PRIMARY KEY (`CSCEmailTemplateSettingsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


LOCK TABLES `APGADMIN_CSCEmailTemplate_Settings` WRITE;
UNLOCK TABLES;


CREATE TABLE `APGADMIN_Validation_Settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Channel` varchar(45) NOT NULL,
  `MinAmt` int(11) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `Exp` varchar(45) NOT NULL,
  `Partner` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `validation_setting_channel_idx` (`Channel`),
  KEY `fk_validation_setting_partner_idx` (`Partner`),
  CONSTRAINT `fk_validation_setting_channel` FOREIGN KEY (`Channel`) REFERENCES `APG_Channel` (`ChannelKey`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_validation_setting_partner` FOREIGN KEY (`Partner`) REFERENCES `APG_Partner` (`PartnerKey`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


LOCK TABLES `APGADMIN_Validation_Settings` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_Configuration_Service`;
CREATE TABLE `APG_Configuration_Service` (
  `APG_Configuration_ServiceID` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) DEFAULT NULL,
  `Group_Key` varchar(1000) DEFAULT NULL,
  `Group_Key_Add` varchar(1000) DEFAULT NULL,
  `Group_Title` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`APG_Configuration_ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;


LOCK TABLES `APG_Configuration_Service` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_Currency`;
CREATE TABLE `APG_Currency` (
  `CurrencyId` int(11) NOT NULL AUTO_INCREMENT,
  `Currency` varchar(100) NOT NULL,
  `Location` varchar(1000) NOT NULL,
  `ThreeLetterISOCode` varchar(3) NOT NULL,
  `NumericISOCode` varchar(3) NOT NULL,
  `Published` tinyint(4) NOT NULL,
  `DisplayOrder` tinyint(4) NOT NULL,
  PRIMARY KEY (`CurrencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_Currency` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_FPX_Bank_Codes`;
CREATE TABLE `APG_FPX_Bank_Codes` (
  `APGFPXBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(120) NOT NULL,
  PRIMARY KEY (`APGFPXBankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_FPX_Bank_Codes` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_General_Configuration`;
CREATE TABLE `APG_General_Configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) NOT NULL,
  `GroupKey` varchar(60) NOT NULL,
  `ConfigKey` varchar(45) DEFAULT NULL,
  `ConfigValue` text,
  `Status` tinyint(4) NOT NULL,
  `lastExecuted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ConfigKey_UNIQUE` (`ConfigKey`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_General_Configuration` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_MBB_CASA_Bank_Codes`;
CREATE TABLE `APG_MBB_CASA_Bank_Codes` (
  `APGMBBCASABankCodesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`APGMBBCASABankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_MBB_CASA_Bank_Codes` WRITE;
INSERT INTO `APG_MBB_CASA_Bank_Codes` VALUES (1,'00','Successful'),(2,'01','Transaction Rejected by Bank'),(3,'20','Unauthorized Transaction'),(4,'99','Transaction not exist in bank system');
UNLOCK TABLES;

DROP TABLE IF EXISTS `APG_PBB_Bank_Codes`;
CREATE TABLE `APG_PBB_Bank_Codes` (
  `APGPBBBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Code` varchar(45) NOT NULL,
  `Reason_Description` varchar(120) NOT NULL,
  PRIMARY KEY (`APGPBBBankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_PBB_Bank_Codes` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `APG_Roles`;
CREATE TABLE `APG_Roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `role_key` varchar(45) NOT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`role_id`),
  KEY `FK_PARTNER_idx` (`partner_id`),
  CONSTRAINT `FK_ROLE_PARTNER` FOREIGN KEY (`partner_id`) REFERENCES `APG_Partner` (`PartnerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_Roles` WRITE;
INSERT INTO `APG_Roles` VALUES (80,'testrole','testrole',NULL,1),(81,'default','default',NULL,1),(86,'hsoAdmin','AGSS Admin',5,1),(88,'ITOSOnboardPartner','ITOSpartnerconfig',1,1);
UNLOCK TABLES;


DROP TABLE IF EXISTS `APG_TransactionType`;
CREATE TABLE `APG_TransactionType` (
  `TransactionTypeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TransactionType` varchar(10) NOT NULL,
  `TransactionTypeShortName` varchar(1) NOT NULL,
  PRIMARY KEY (`TransactionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_TransactionType` WRITE;
INSERT INTO `APG_TransactionType` VALUES (1,'Single','s'),(2,'Recurring','r'),(3,'EPP','e'),(4,'Validation','v');
UNLOCK TABLES;

DROP TABLE IF EXISTS `APG_Users`;
CREATE TABLE `APG_Users` (
  `user_id` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `APG_Users` WRITE;
INSERT INTO `APG_Users` VALUES ('alvin_tung@astro.com.my',1),('ameet.phadnis@blazeclan.com',1),('Atalvin',1),('Crystaltest',0),('esektash',1),('felie_low@astro.com.my',1),('hafizah',0),('HKHITESH',1),('namsnora',1),('syhshiny',1),('testtest',1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `APG_WebAdmin_Configuration`;
CREATE TABLE `APG_WebAdmin_Configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  `groupKey` varchar(60) DEFAULT NULL,
  `configKey` varchar(45) DEFAULT NULL,
  `configValue` text,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_WebAdmin_Configuration` WRITE;
INSERT INTO `APG_WebAdmin_Configuration` VALUES (5,'WebAdmin','HealthPage',NULL,'test val',1),(8,'WebAdmin','ADDomain',NULL,'ADDomain test 8',1),(17,'WebAdmin','ctbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|AcquiredId',1),(18,'WebAdmin','mbbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd',1),(33,'WebAdmin','ctb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd',1),(34,'WebAdmin','mbb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd',1),(35,'WebAdmin','mbb.directDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|MerchantUserID',1),(36,'WebAdmin','mbb.eppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode',1),(37,'WebAdmin','mbb.emotoeppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode',1),(38,'WebAdmin','pbbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|CheckStatusURL|RefundURL',1),(39,'WebAdmin','pbb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd|CheckStatusURL|RefundURL',1),(40,'WebAdmin','pbb.eppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode|CheckStatusURL|RefundURL',1),(41,'WebAdmin','fpx.directDataKeys',NULL,'SellerID|ExchangeID|CheckStatusURL|Merchanturl',0),(57,'WebAdmin','MaxRefund',NULL,'3',1),(58,'WebAdmin','HealthPage',NULL,NULL,1),(59,'WebAdmin','HealthPage','Citi','test',1),(60,'WebAdmin','HealthPage','CASA','https://m2umobilesit.maybank.com.my/mbb/m2u/m7000/m2uMerchantLogin.do',1),(61,'WebAdmin','HealthPage',NULL,NULL,1),(62,'WebAdmin','HealthPage','test62','config62',1),(63,'WebAdmin','HealthPage','test63','conf63',1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `APG_Web_Configuration`;
CREATE TABLE `APG_Web_Configuration` (
  `APG_Web_ConfigurationID` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) NOT NULL,
  `GroupKey` varchar(60) NOT NULL,
  `ConfigKey` varchar(45) DEFAULT NULL,
  `ConfigValue` text,
  `Status` tinyint(4) NOT NULL,
  PRIMARY KEY (`APG_Web_ConfigurationID`),
  UNIQUE KEY `GroupKey` (`GroupKey`,`ConfigKey`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

LOCK TABLES `APG_Web_Configuration` WRITE;
INSERT INTO `APG_Web_Configuration` VALUES (1,'Web','ConfirmationQuickpayButton','ebill_ctb','{PartnerKey:ebill,ChannelKey:ctb}',1),(3,'Web','ConfirmationShowAccountNumber','ebill_fpx','{PartnerKey:ebill,ChannelKey:pbb}',1),(9,'Web','MaxTimeOut','','300000',1),(17,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(18,'Web','Web','w','q',1),(19,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(20,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(21,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(22,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(23,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(25,'Web','Tnc',NULL,NULL,1),(43,'Web','OnlineBankingMessage',NULL,NULL,1),(44,'Web','OnlineBankingMessage',NULL,NULL,1),(45,'Web','GSTLabel',NULL,NULL,1),(46,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(47,'Web','APIMaxBufferTimeStamp',NULL,NULL,1),(48,'Web','OnlineBankingMessage',NULL,NULL,1),(49,'Web','OnlineBankingMessage',NULL,NULL,1),(50,'Web','OnlineBankingMessage',NULL,NULL,1),(51,'Web','OnlineBankingMessage',NULL,NULL,1),(52,'Web','OnlineBankingMessage',NULL,NULL,1),(53,'Web','OnlineBankingMessage',NULL,NULL,1),(54,'Web','OnlineBankingMessage',NULL,NULL,1),(55,'Web','OnlineBankingMessage',NULL,NULL,1),(56,'Web','OnlineBankingMessage',NULL,NULL,1),(57,'Web','OnlineBankingMessage',NULL,NULL,1),(58,'Web','OnlineBankingMessage',NULL,NULL,1),(59,'Web','OnlineBankingMessage',NULL,NULL,1),(60,'Web','OnlineBankingMessage','test60','config60',1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `FPX_BankList`;
CREATE TABLE `FPX_BankList` (
  `FpxBankID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FpxBankCode` varchar(20) NOT NULL,
  `FpxBankName` text NOT NULL,
  `FpxBankDisplayName` text NOT NULL,
  PRIMARY KEY (`FpxBankID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;


LOCK TABLES `FPX_BankList` WRITE;
INSERT INTO `FPX_BankList` VALUES (1,'TEST0021','SBI Bank A','SBI Bank A'),(2,'TEST0022','SBI Bank B','SBI Bank B'),(3,'TEST0023','SBI Bank C','SBI Bank C'),(4,'TEST0001','Test Bank A','Test Bank A'),(5,'TEST0002','Test Bank B','Test Bank B'),(6,'TEST0003','Test Bank C','Test Bank C'),(7,'TEST0004','Test Bank D','Test Bank D'),(8,'TEST0005','Test Bank E','Test Bank E'),(9,'ABB0233','Affin Bank Berhad','Affin Bank'),(10,'ABMB0212','Alliance Bank Ma\r\nlaysia Berhad','Alliance Bank'),(11,'AMBB0209','AmBank Malaysia Berhad','AmBank'),(12,'BIMB0340','Bank Islam Malaysia Berhad','Bank Islam'),(13,'BKRM0602','Bank Kerjasama Rakyat Malaysia \r\nBerhad','Bank Rakyat'),(14,'BMMB0341','Bank Muamalat Malaysia Berhad','Bank Muamalat'),(15,'BSN0601','Bank Simpanan Nasional','BSN'),(16,'BCBB0235','CIMB Bank Berhad','CIMB Clicks'),(17,'HLB0224','Hong Leong Bank Berhad','Hong Leong Bank'),(18,'HSBC0223','HSBC Bank Malaysia Berhad','HSBC Bank'),(19,'KFH0346','Kuwait Finance House (Malaysia) Berhad','KFH'),(20,'MB2U0227','Malayan Banking Berhad (M2U)','Maybank2U'),(21,'MBB0228','Malayan Banking Berhad (M2E)','Maybank2E'),(22,'OCBC0229','OCBC Bank Malaysia Berhad','OCBC Bank'),(23,'PBB0233','Public Bank Berhad','Public Bank'),(24,'RHB0218','RHB Bank Berhad','RHB Bank'),(25,'SCB0216','Standard Chartered Bank','Standard Chartered'),(26,'UOB0226','United Overseas Bank','UOB Bank');
UNLOCK TABLES;


DROP TABLE IF EXISTS `PVS_Function`;
CREATE TABLE `PVS_Function` (
  `FunctionID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FunctionKey` varchar(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  PRIMARY KEY (`FunctionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


LOCK TABLES `PVS_Function` WRITE;
INSERT INTO `PVS_Function` VALUES (1,'rest.apg.AddNewCreditCard','rest.apg.AddNewCreditCard'),(2,'rest.apg.CancelRecurringTransaction','rest.apg.CancelRecurringTransaction'),(3,'rest.apg.ChangeRecurringCreditCard','rest.apg.ChangeRecurringCreditCard'),(4,'rest.apg.createtransaction','rest.apg.createtransaction'),(5,'rest.apg.GetListOfPayeeCreditCard','rest.apg.GetListOfPayeeCreditCard'),(6,'rest.apg.gettransactionresult','rest.apg.gettransactionresult'),(7,'rest.apg.RemoveCreditCard','rest.apg.RemoveCreditCard'),(8,'rest.apg.SubmitTransaction','rest.apg.SubmitTransaction'),(9,'rest.apg.UpdateCreditCardExpiryDate','rest.apg.UpdateCreditCardExpiryDate'),(10,'rest.apg.V2.GetRecurringAccessToken','rest.apg.V2.GetRecurringAccessToken'),(11,'rest.apg.V2.gettransactionresult','rest.apg.V2.gettransactionresult'),(12,'rest.apg.V2.SubmitTransaction','rest.apg.V2.SubmitTransaction'),(13,'rest.apg.V2.ValidateIPAddress','rest.apg.V2.ValidateIPAddress'),(14,'rest.apgex.getTransactionDetails','rest.apgex.getTransactionDetails'),(15,'rest.apgex.getTransactionPaymentDetails','rest.apgex.getTransactionPaymentDetails'),(16,'rest.apg.V1.getTransactionHistoryPerLoginUser','rest.apg.V1.getTransactionHistoryPerLoginUser'),(17,'rest.apg.V1.getSavedCardHistory','rest.apg.V1.getSavedCardHistory');
UNLOCK TABLES;

DROP TABLE IF EXISTS `PVS_Group`;
CREATE TABLE `PVS_Group` (
  `GroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `PVS_Group` WRITE;
INSERT INTO `PVS_Group` VALUES (1,'V1'),(2,'APGEX'),(3,'V2'),(4,'ManageFavCard'),(5,'TestAPI'),(6,'testV1');
UNLOCK TABLES;
