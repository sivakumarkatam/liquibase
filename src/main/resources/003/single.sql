/*-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: transactiondb.ch29bksppiii.ap-southeast-1.rds.amazonaws.com    Database: devAdminDB
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `APGADMIN_CCExpirySchedular_Settings`
-->*/

DROP TABLE IF EXISTS `APGADMIN_CCExpirySchedular_Settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APGADMIN_CCExpirySchedular_Settings`
--

LOCK TABLES `APGADMIN_CCExpirySchedular_Settings` WRITE;
/*!40000 ALTER TABLE `APGADMIN_CCExpirySchedular_Settings` DISABLE KEYS */;
INSERT INTO `APGADMIN_CCExpirySchedular_Settings` VALUES (1,'<div style=\"width: %s; margin: auto;\"> <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> <div style=\"width: 600px;margin: auto;\"> <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> </div> </div> <div style=\"max-width: 600px;margin: auto;\"> <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Your card\'s about to expire.</div> Hello,<br /><br /> Your credit card attached to the below subscription is about to expire.<br /><br /> <span style=\"font-weight:bolder\">Subscription information:</span><br /> Subscription - %s<br /> Subscription price - %s %s<br /> Credit card number - <span style=\"color: rgb(255, 0, 0);\">%s-%s, Exp %s</span><br /><br /> <a style=\"color: #E6007C;text-decoration:none;\" href=\"%s\">Update card now</a><br /> (This link will expire by %s)<br /><br /> Thank you, <br /> Pay with Astro Team.<br /><br /> <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\"> <span style=\"font-weight:bolder\">Need help?</span><br /> Having trouble updating your card? You can call us at <span style=\"color: #E6007C;text-decoration:none;\">+60395433838</span> between the hours of 8am-12am or you can write to us at <span style=\"color: #E6007C;text-decoration:none;\">wecare@astro.com.my</span> and we\'ll be happy to help you! </div> <p style=\"font-size: 12px\">Copyright © %s. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> </div> </div> </div>','praveen.gupta@blazeclan.com','Expiry Credit Card reminder',2,1,'praveen.gupta@blazeclan.com','Expiring Recurring Cards Reminder Email Sending Failed','Hello Admin,<br/>There was problem sending a email for the following transaction Id {TRXNID} for changing the expiring recurring card(s). Request to take the necessary action.<br/>Thanks','<div style=\"width: %s; margin: auto;\"> <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> <div style=\"width: 600px;margin: auto;\"> <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> </div> </div> <div style=\"max-width: 600px;margin: auto;\"> <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Your card was updated.</div> Hello,<br /><br /> Your credit card attached to the below subscription was updated.<br /><br /> <span style=\'\'font-weight:bolder\'\'>Subscription details:</span><br /> Subscription - %s<br /> Subscription price -%s %s<br /> Credit card number - %s-%s Exp, %s<br /><br /> Thank you, <br /> Pay with Astro Team.<br /><br /> <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\"> <span style=\"font-weight:bolder\">Didn\'\'t ask for this?</span><br /> If you did not request this change please call us at <span style=\"color: #E6007C;text-decoration:none;\">+60395433838</span> between the hours of 8am-12am or you can write to us at <span style=\"color: #E6007C;text-decoration:none;\">wecare@astro.com.my</span> and we will take care of this. </div> <p style=\"font-size: 12px\">Copyright © %s. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> </div> </div> </div>','Your card was updated','CC'),(2,'<div style=\"width: %s; margin: auto;\"> <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> <div style=\"width: 600px;margin: auto;\"> <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> </div> </div> <div style=\"max-width: 600px;margin: auto;\"> <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Your card\'s about to expire.</div> Hello,<br /><br /> Your credit card is about to expire.<br /><br/> <span style=\"font-weight:bolder\">Expiring card information:<br /></span> Credit card number - <span style=\"color: rgb(255, 0, 0);\">%s-%s, Exp %s</span><br /><br /> <a style=\"color: #E6007C;text-decoration:none;\" href=\"%s\">Update card now</a><br /> (This link will expire by %s)<br /><br /> Thank you, <br /> Pay with Astro Team.<br /><br /> <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\"> <span style=\"font-weight:bolder\">Need help?</span><br /> Having trouble updating your card? You can call us at <span style=\"color: #E6007C;text-decoration:none;\">+60395433838</span> between the hours of 8am-12am or you can write to us at <span style=\"color: #E6007C;text-decoration:none;\">wecare@astro.com.my</span> and we\'ll be happy to help you! </div> <p style=\"font-size: 12px\">Copyright © %s. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> </div> </div> </div>','praveen.gupta@blazeclan.com','Expiry Credit Card reminder',2,1,'praveen.gupta@blazeclan.com','Expiring Favourite Cards Reminder Email Sending Failed','Hello Admin,<br/>There was problem sending a email for the following user Id {USERID} for changing the expiring recurring card(s). Request to take the necessary action.<br/>Thanks','<div style=\"width: %s; margin: auto;\"> <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> <div style=\"width: 600px;margin: auto;\"> <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> </div> </div> <div style=\"max-width: 600px;margin: auto;\"> <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Your card was updated.</div> Hello,<br /><br /> Your credit card was updated.<br /><br /> <span style=\'\'font-weight:bolder\'\'>Credit card number - %s-%s Exp, %s<br /><br /> Thank you, <br /> Pay with Astro Team.<br /><br /> <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\"> <span style=\"font-weight:bolder\">Didn\'\'t ask for this?</span><br /> If you did not request this change please call us at <span style=\"color: #E6007C;text-decoration:none;\">+60395433838</span> between the hours of 8am-12am or you can write to us at <span style=\"color: #E6007C;text-decoration:none;\">wecare@astro.com.my</span> and we will take care of this. </div> <p style=\"font-size: 12px\">Copyright © %s. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> </div> </div> </div>','Your card was updated','FAV');
/* <!--/*!40000 ALTER TABLE `APGADMIN_CCExpirySchedular_Settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APGADMIN_CSCEmailTemplate_Settings`
--

DROP TABLE IF EXISTS `APGADMIN_CSCEmailTemplate_Settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APGADMIN_CSCEmailTemplate_Settings`
--

LOCK TABLES `APGADMIN_CSCEmailTemplate_Settings` WRITE;
/*!40000 ALTER TABLE `APGADMIN_CSCEmailTemplate_Settings` DISABLE KEYS */;
/*INSERT INTO `APGADMIN_CSCEmailTemplate_Settings` VALUES (2,'<div style=\"width: %s; margin: auto;\"> \n    <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> \n        <div style=\"width: 600px;margin: auto;\"> \n            <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> \n        </div> \n    </div> \n    <br /> \n    <div style=\"max-width: 600px;margin: auto;\"> \n        <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> \n            <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Payment is successful.</div> \n            <br /> \n            Dear valued customer,<br /><br /> \n            Thank you for your payment. Your payment request was successful.<br /><br /> \n             \n            <span style=\"font-weight:bolder\">Your transaction details as below:</span><br /> \n            Status - <span style=\"color: #009e0f;font-weight :bold;\">Successful</span><br /> \n            Amount - %s %s<br /> \n            Bank Reference No - %s<br /> \n            Payment ID - %s<br /> \n            Bank Payment Date - %s<br /> \n            Bank Approval Code - %s<br /> \n            Payment Type -  %s<br /><br /> \n              \n             \n            Thank you, <br /> \n            Pay with Astro Team.<br /><br /> \n             \n            <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\">         \n            <span style=\"font-weight:bolder\">Need any further assistance with your payment?</span><br /> \n            Need further assistance? You can write to us at <a style=\"color: #E6007C;text-decoration:none\" href=\"mailto:wecare@astro.com.my\">wecare@astro.com.my</a> and we\'ll be happy to help you! \n            You can now also connect with us over Facebook at <a style=\"color: #E6007C;text-decoration:none\" href=\"https://www.facebook.com/Astro/messages\">facebook.com/Astro/messages/</a> \n            or on Twitter <a style=\"color: #E6007C;text-decoration:none\" href=\"https://twitter.com/astroonline\">@astroonline</a>. \n            </div> \n            <p style=\"font-size: 12px\">Copyright Â© %d. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> \n        </div>    \n    </div> \n</div>','<div style=\"width: %s; margin: auto;\"> \n    <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> \n        <div style=\"width: 600px;margin: auto;\"> \n            <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> \n        </div> \n    </div> \n    <br /> \n    <div style=\"max-width: 600px;margin: auto;\"> \n        <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> \n            <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Payment is pending.</div> \n            <br /> \n            Dear valued customer,<br /><br /> \n            Your transaction is currently unconfirmed. <br /> \n            Please note, no amount will be deducted from your account until the payment is deemed successful.<br /><br /> \n             \n            <span style=\"font-weight:bolder\">Your transaction details as below:</span><br /> \n            Status - <span style=\"color: #f1c232;font-weight :bold;\">Pending</span><br /> \n            Amount - %s %s<br /> \n            Payment ID - %s<br /> \n            Payment Type -  %s<br /><br /> \n              \n             \n            Thank you, <br /> \n            Pay with Astro Team.<br /><br /> \n             \n            <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\">         \n            <span style=\"font-weight:bolder\">Need any further assistance with your payment?</span><br /> \n            Need further assistance? You can write to us at <a style=\"color: #E6007C;text-decoration:none\" href=\"mailto:wecare@astro.com.my\">wecare@astro.com.my</a> and we\'ll be happy to help you! \n            You can now also connect with us over Facebook at <a style=\"color: #E6007C;text-decoration:none\" href=\"https://www.facebook.com/Astro/messages\">facebook.com/Astro/messages/</a> \n            or on Twitter <a style=\"color: #E6007C;text-decoration:none\" href=\"https://twitter.com/astroonline\">@astroonline</a>. \n            </div> \n            <p style=\"font-size: 12px\">Copyright Â© %d. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> \n        </div>    \n    </div> \n     \n</div>','<div style=\"width: %s; margin: auto;\"> \n    <div style=\"width: %s; margin: auto; border-bottom: 1px solid; border-bottom-color: rgb(235,235,235)\"> \n        <div style=\"width: 600px;margin: auto;\"> \n            <img alt=\"Astro Logo\" width=\"113\" src=\"https://d32eymhazmqggn.cloudfront.net/main/img/astrologo.png\" /> \n        </div> \n    </div> \n    <br /> \n    <div style=\"max-width: 600px;margin: auto;\"> \n        <div style=\"font-family: Helvetica, Arial, sans-serif; font-size: 15px\"> \n            <div style=\"font-size: 22px; font-weight: bolder; color: #E6007C; padding-top: 16px; padding-bottom: 16px\">Payment is unsuccessful.</div> \n            <br /> \n            Dear valued customer,<br /><br /> \n            Please be informed that your payment request is unsuccessful.<br /><br /> \n             \n            <span style=\"font-weight:bolder\">Your transaction details as below: </span><br /> \n            Status - <span style=\"color: #cf2a27;font-weight :bold;\">Unsuccessful</span><br /> \n            Amount - %s %s<br /> \n            Payment ID - %s<br /> \n            Payment Type -  %s<br /><br />      \n             \n            Thank you, <br /> \n            Pay with Astro Team.<br /><br /> \n             \n            <div style=\"border: none; border-top: 1px solid rgb(210,210,210); border-bottom: 1px solid rgb(210,210,210); padding-top: 15px; padding-bottom: 15px;\">         \n            <span style=\"font-weight:bolder\">Need any further assistance with your payment?</span><br /> \n            Need further assistance? You can write to us at <a style=\"color: #E6007C;text-decoration:none\" href=\"mailto:wecare@astro.com.my\">wecare@astro.com.my</a> and we\'ll be happy to help you! \n            You can now also connect with us over Facebook at <a style=\"color: #E6007C;text-decoration:none\" href=\"https://www.facebook.com/Astro/messages\">facebook.com/Astro/messages/</a> \n            or on Twitter <a style=\"color: #E6007C;text-decoration:none\" href=\"https://twitter.com/astroonline\">@astroonline</a>. \n            </div> \n            <p style=\"font-size: 12px\">Copyright Â© %d. Measat Broadcast Network Systems Sdn Bhd (240064-A). All Rights Reserved.</p> \n        </div>    \n    </div> \n     \n</div>','Astro Bill Payment (Successful)','Astro Bill Payment (Pending)','Astro Bill Payment (Unsuccessful)','praveen.gupta@blazeclan.com');*/
/*!40000 ALTER TABLE `APGADMIN_CSCEmailTemplate_Settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APGADMIN_Validation_Settings`
--

DROP TABLE IF EXISTS `APGADMIN_Validation_Settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APGADMIN_Validation_Settings`
--

LOCK TABLES `APGADMIN_Validation_Settings` WRITE;
/*!40000 ALTER TABLE `APGADMIN_Validation_Settings` DISABLE KEYS */;
INSERT INTO `APGADMIN_Validation_Settings` VALUES (1,'mbb',100,'MYR','2','astroapg'),(2,'mbb',100,'MYR','2','runscope'),(3,'mbb',100,'MYR','2','hso');
/*!40000 ALTER TABLE `APGADMIN_Validation_Settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_Configuration_Service`
--

DROP TABLE IF EXISTS `APG_Configuration_Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_Configuration_Service` (
  `APG_Configuration_ServiceID` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) DEFAULT NULL,
  `Group_Key` varchar(1000) DEFAULT NULL,
  `Group_Key_Add` varchar(1000) DEFAULT NULL,
  `Group_Title` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`APG_Configuration_ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_Configuration_Service`
--

LOCK TABLES `APG_Configuration_Service` WRITE;
/*!40000 ALTER TABLE `APG_Configuration_Service` DISABLE KEYS */;
INSERT INTO `APG_Configuration_Service` VALUES (1,'General','DefaultSenderAddress|BlacklistReceiverAdminAddress|DefaultReceiverAdminAddress|DashboardSetting|ChangeRecuringCC_EmailTemplate|ctbRefundAvailability|ctbReversalAvailability|ExcludedPushToPayflowPartnerKey|FPXBuyerBankList|FPXEndpointRetrieveBankList|FPXInvalidCharProductDesc|FPXPendingModeResponseCodeList|FPXPKIKeysPhysicalApplicationPath|GeneratePaymentRefIDMaxRetry|mbbRefundAvailability|mbbReversalAvailability|MBBValidResponseCode|PartnerKeyWithCasa|PartnerKeyWithEmoto','DefaultSenderAddress|BlacklistReceiverAdminAddress|DefaultReceiverAdminAddress|DashboardSetting|ChangeRecuringCC_EmailTemplate|ctbRefundAvailability|ctbReversalAvailability|ExcludedPushToPayflowPartnerKey|FPXBuyerBankList|FPXEndpointRetrieveBankList|FPXInvalidCharProductDesc|FPXPendingModeResponseCodeList|FPXPKIKeysPhysicalApplicationPath|GeneratePaymentRefIDMaxRetry|mbbRefundAvailability|mbbReversalAvailability|MBBValidResponseCode|PartnerKeyWithCasa|PartnerKeyWithEmoto',NULL),(2,'ProcessFraudCheckWS','PropByPeriod|SchedulerTime|PropByStatus|DefaultReceiverAdminAddress|PropByPartner|ByPassValidationCheck|PropByValueType|PropByFilter|CurrencyCodeProp|PropStatus|RunOnStart|ExcludePartnerKey|ExcludePartnerIPs|FraudCheck|DefaultPartnerEmail','ExcludePartnerIPs|FraudCheck|ExcludePartnerKey|DefaultPartnerEmail','Exclude Partner IP |Fraud Check Alert Key'),(13,'WebAdmin','ctb.emotoDataKeys|ctbDataKeys|fpx.directDataKeys|HealthPage|MaxRefund|mbb.directDataKeys|mbb.emotoDataKeys|mbb.emotoeppDataKeys|mbb.eppDataKeys|mbbDataKeys|pbb.emotoDataKeys|pbb.eppDataKeys|pbbDataKeys','HealthPage',NULL),(14,'Web','BlacklistPayeeBufferTime|APIMaxBufferTimeStamp|CaptchaSetting|CheckBrowserVersion|ConfirmationQuickPayButton|ConfirmationShowAccountNumber|DirectPaymentLink|FPXBEAPITimeOut|FullAccessCancelRecurringPartnerKey|FullAccessPartnerKey|GAOnlineBankingLabel|GSTLabel|GSTLabel_HideForZeroAmount|ManageCard_TrxTitle|MaxTimeOut|MaxTotalCardPerPartner|MBBCASACheckAPIStatusBufferTime|MBBCASAShowEmailWhenStatusTempered|OnlineBankingMessage|OnlineBankingNoNeed|OnlineBankingOptionalMessage|OnlineBankingProviderWithNewWindowList	|OnlineBankingSequenceList|PaymentProviderDownTimePaymentPageMessage|PaymentProviderFutureDownTimeInDay	|PGBrowserReQueryConnectionTimeOut|QuickPayURL|RefreshInterval|Tnc|Tnc_Validation|TransationPaymentPageTimer|ValidationSetting','OnlineBankingMessage|OnlineBankingOptionalMessage|GAOnlineBankingLabel|Tnc|Tnc_Validation|GSTLabel|PaymentProviderDownTimePaymentPageMessage|ConfirmationQuickPayButton|ConfirmationShowAccountNumber|ValidationSetting',NULL);
/*!40000 ALTER TABLE `APG_Configuration_Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_Currency`
--

DROP TABLE IF EXISTS `APG_Currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_Currency`
--

LOCK TABLES `APG_Currency` WRITE;
/*!40000 ALTER TABLE `APG_Currency` DISABLE KEYS */;
INSERT INTO `APG_Currency` VALUES (1,'ADB Unit of Account','African Development Bank [12]','XUA','965',1,100),(2,'Afghan afghani','Afghanistan','AFN','971',1,100),(3,'Albanian lek','Albania','ALL','8',1,100),(4,'Algerian dinar','Algeria','DZD','12',1,100),(5,'Angolan kwanza','Angola','AOA','973',1,100),(6,'Argentine peso','Argentina','ARS','32',1,100),(7,'Armenian dram','Armenia','AMD','51',1,100),(8,'Aruban florin','Aruba','AWG','533',1,100),(9,'Australian dollar','Australia','AUD','36',1,100),(10,'Azerbaijani manat','Azerbaijan','AZN','944',1,100),(11,'Bahamian dollar','Bahamas','BSD','44',1,100),(12,'Bahraini dinar','Bahrain','BHD','48',1,100),(13,'Bangladeshi taka','Bangladesh','BDT','50',1,100),(14,'Barbados dollar','Barbados','BBD','52',1,100),(15,'Belarusian ruble','Belarus','BYR','974',1,100),(16,'Belize dollar','Belize','BZD','84',1,100),(17,'Bermudian dollar','Bermuda','BMD','60',1,100),(18,'Bhutanese ngultrum','Bhutan','BTN','64',1,100),(19,'Bolivian Mvdol (funds code)','Bolivia','BOV','984',1,100),(20,'Boliviano','Bolivia','BOB','68',1,100),(21,'Bosnia and Herzegovina convertible mark','Bosnia and Herzegovina','BAM','977',1,100),(22,'Botswana pula','Botswana','BWP','72',1,100),(23,'Brazilian real','Brazil','BRL','986',1,100),(24,'Brunei dollar','Brunei Darussalam','BND','96',1,100),(25,'Bulgarian lev','Bulgaria','BGN','975',1,100),(26,'Burundian franc','Burundi','BIF','108',1,100),(27,'Cambodian riel','Cambodia','KHR','116',1,100),(28,'Canadian dollar','Canada','CAD','124',1,100),(29,'Cape Verde escudo','Cape Verde','CVE','132',1,100),(30,'Cayman Islands dollar','Cayman Islands','KYD','136',1,100),(31,'CFA franc BCEAO','Benin (BJ),  Burkina Faso (BF),  CÃ´te d\'Ivoire (CI),  Guinea-Bissau (GW),  Mali (ML),  Niger (NE),  Senegal (SN),  Togo (TG)','XOF','952',1,100),(32,'CFA franc BEAC','Cameroon (CM),  Central African Republic (CF),  Republic of the Congo (CG),  Chad (TD),  Equatorial Guinea (GQ),  Gabon (GA)','XAF','950',1,100),(33,'CFP franc (franc Pacifique)','French territories of the Pacific Ocean:  French Polynesia (PF),  New Caledonia (NC),  Wallis and Futuna (WF)','XPF','953',1,100),(34,'Chilean peso','Chile','CLP','152',1,100),(35,'Chinese yuan','China','CNY','156',1,100),(36,'Code reserved for testing purposes','','XTS','963',1,100),(37,'Colombian peso','Colombia','COP','170',1,100),(38,'Comoro franc','Comoros','KMF','174',1,100),(39,'Congolese franc','Democratic Republic of Congo','CDF','976',1,100),(40,'Costa Rican colon','Costa Rica','CRC','188',1,100),(41,'Croatian kuna','Croatia','HRK','191',1,100),(42,'Cuban convertible peso','Cuba','CUC','931',1,100),(43,'Cuban peso','Cuba','CUP','192',1,100),(44,'Czech koruna','Czech Republic','CZK','203',1,100),(45,'Danish krone','Denmark','DKK','208',1,100),(46,'Djiboutian franc','Djibouti','DJF','262',1,100),(47,'Dominican peso','Dominican Republic','DOP','214',1,100),(48,'East Caribbean dollar','Anguilla (AI),  Antigua and Barbuda (AG),  Dominica (DM),  Grenada (GD),  Montserrat (MS),  Saint Kitts and Nevis (KN),  Saint Lucia (LC),  Saint Vincent and the Grenadines (VC)','XCD','951',1,100),(49,'Egyptian pound','Egypt','EGP','818',1,100),(50,'Eritrean nakfa','Eritrea','ERN','232',1,100),(51,'Ethiopian birr','Ethiopia','ETB','230',1,100),(52,'Euro','Andorra (AD),  Austria (AT),  Belgium (BE),  Cyprus (CY) except  Northern Cyprus,  Estonia (EE),  Finland (FI),  France (FR),  Germany (DE),  Greece (GR),  Ireland (IE),  Italy (IT),  Kosovo,  Latvia (LV),  Luxembourg (LU),  Malta (MT),  Martinique (MQ),  Mayotte (YT),  Monaco (MC),  Montenegro (ME),  Netherlands (NL),  Portugal (PT),  Reunion (RE),  San Marino (SM),  Saint BarthÃ©lemy (BL),  Slovakia (SK),  Slovenia (SI),  Spain (ES),  Saint Pierre and Miquelon (PM),   Vatican City (VA); see Eurozone','EUR','978',1,100),(53,'European Composite Unit (EURCO) (bond market unit)','','XBA','955',1,100),(54,'European Monetary Unit (E.M.U.-6) (bond market unit)','','XBB','956',1,100),(55,'European Unit of Account 17 (E.U.A.-17) (bond market unit)','','XBD','958',1,100),(56,'European Unit of Account 9 (E.U.A.-9) (bond market unit)','','XBC','957',1,100),(57,'Falkland Islands pound','Falkland Islands (Malvinas)','FKP','238',0,100),(58,'Fiji dollar','Fiji','FJD','242',1,100),(59,'Gambian dalasi','Gambia','GMD','270',1,100),(60,'Georgian lari','Georgia (country) (except Abkhazia (GE-AB) and South Ossetia)','GEL','981',1,100),(61,'Ghanaian cedi','Ghana','GHS','936',1,100),(62,'Gibraltar pound','Gibraltar','GIP','292',1,100),(63,'Gold (one troy ounce)','','XAU','959',1,100),(64,'Guatemalan quetzal','Guatemala','GTQ','320',1,100),(65,'Guinean franc','Guinea','GNF','324',1,100),(66,'Guyanese dollar','Guyana','GYD','328',1,100),(67,'Haitian gourde','Haiti','HTG','332',1,100),(68,'Honduran lempira','Honduras','HNL','340',1,100),(69,'Hong Kong dollar','Hong Kong','HKD','344',1,100),(70,'Hungarian forint','Hungary','HUF','348',1,100),(71,'Icelandic kr??na','Iceland','ISK','352',1,100),(72,'Indian rupee','India','INR','356',1,100),(73,'Indonesian rupiah','Indonesia','IDR','360',1,100),(74,'Iranian rial','Iran','IRR','364',1,100),(75,'Iraqi dinar','Iraq','IQD','368',1,100),(76,'Israeli new shekel','Israel','ILS','376',1,100),(77,'Jamaican dollar','Jamaica','JMD','388',1,100),(78,'Japanese yen','Japan','JPY','392',1,100),(79,'Jordanian dinar','Jordan','JOD','400',1,100),(80,'Kazakhstani tenge','Kazakhstan','KZT','398',1,100),(81,'Kenyan shilling','Kenya','KES','404',1,100),(82,'Kuwaiti dinar','Kuwait','KWD','414',1,100),(83,'Kyrgyzstani som','Kyrgyzstan','KGS','417',1,100),(84,'Lao kip','Lao','LAK','418',1,100),(85,'Lebanese pound','Lebanon','LBP','422',1,100),(86,'Lesotho loti','Lesotho','LSL','426',1,100),(87,'Liberian dollar','Liberia','LRD','430',1,100),(88,'Libyan dinar','Libyan Arab Jamahiriya','LYD','434',1,100),(89,'Lithuanian litas','Lithuania','LTL','440',1,100),(90,'Macanese pataca','Macau','MOP','446',1,100),(91,'Macedonian denar','Macedonia','MKD','807',1,100),(92,'Malagasy ariary','Madagascar','MGA','969',1,100),(93,'Malawian kwacha','Malawi','MWK','454',1,100),(94,'Malaysian ringgit','Malaysia','MYR','458',1,100),(95,'Maldivian rufiyaa','Maldives','MVR','462',1,100),(96,'Mauritanian ouguiya','Mauritania','MRO','478',1,100),(97,'Mauritian rupee','Mauritius','MUR','480',1,100),(98,'Mexican peso','Mexico','MXN','484',1,100),(99,'Mexican Unidad de Inversion (UDI) (funds code)','Mexico','MXV','979',1,100),(100,'Moldovan leu','Moldova','MDL','498',1,100),(101,'Mongolian tugrik','Mongolia','MNT','496',1,100),(102,'Moroccan dirham','Morocco','MAD','504',1,100),(103,'Mozambican metical','Mozambique','MZN','943',1,100),(104,'Myanma kyat','Myanmar','MMK','104',1,100),(105,'Namibian dollar','Namibia','NAD','516',1,100),(106,'Nepalese rupee','Nepal','NPR','524',1,100),(107,'Netherlands Antillean guilder','CuraÃ§ao (CW),  Sint Maarten (SX)','ANG','532',1,100),(108,'New Taiwan dollar','Republic of China (Taiwan)','TWD','901',1,100),(109,'New Zealand dollar','New Zealand','NZD','554',1,100),(110,'Nicaraguan c??rdoba','Nicaragua','NIO','558',1,100),(111,'Nigerian naira','Nigeria','NGN','566',1,100),(112,'No currency','','XXX','999',1,100),(113,'North Korean won','Korea','KPW','408',1,100),(114,'Norwegian krone','Norway','NOK','578',1,100),(115,'Omani rial','Oman','OMR','512',1,100),(116,'Pakistani rupee','Pakistan','PKR','586',1,100),(117,'Palladium (one troy ounce)','Palladium','XPD','964',1,100),(118,'Panamanian balboa','Panama','PAB','590',1,100),(119,'Papua New Guinean kina','Papua New Guinea','PGK','598',1,100),(120,'Paraguayan guaran??','Paraguay','PYG','600',1,100),(121,'Peruvian nuevo sol','Peru','PEN','604',1,100),(122,'Philippine peso','Philippines','PHP','608',1,100),(123,'Platinum (one troy ounce)','','XPT','962',1,100),(124,'Polish zoty','Poland','PLN','985',1,100),(125,'Pound sterling','United Kingdom','GBP','826',1,100),(126,'Qatari riyal','Qatar','QAR','634',1,100),(127,'Romanian new leu','Romania','RON','946',1,100),(128,'Russian ruble','Russia','RUB','643',1,100),(129,'Rwandan franc','Rwanda','RWF','646',1,100),(130,'Saint Helena pound','St. Helena','SHP','654',1,100),(131,'Samoan tala','Samoa','WST','882',1,100),(132,'Saudi riyal','Saudi Arabia','SAR','682',1,100),(133,'Serbian dinar','Serbia','RSD','941',1,100),(134,'Seychelles rupee','Seychelles','SCR','690',1,100),(135,'Sierra Leonean leone','Sierra Leone','SLL','694',1,100),(136,'Silver (one troy ounce)','','XAG','961',1,100),(137,'Singapore dollar','Singapore','SGD','702',1,100),(138,'So Tom?? and Pr??ncipe dobra','Sao Tome and Principe','STD','678',1,100),(139,'Solomon Islands dollar','Solomon Islands','SBD','090',1,100),(140,'Somali shilling','Somalia','SOS','706',1,100),(141,'South African rand','South Africa','ZAR','710',1,100),(142,'South Korean won','Korea','KRW','410',1,100),(143,'South Sudanese pound','South Sudan','SSP','728',1,100),(144,'Special drawing rights','International Monetary Fund','XDR','960',1,100),(145,'Sri Lankan rupee','Sri Lanka','LKR','144',1,100),(146,'SUCRE','SISTEMA UNITARIO DE COMPENSACION REGIONAL DE PAGOS \"SUCRE\" [11]','XSU','994',1,100),(147,'Sudanese pound','Sudan','SDG','938',1,100),(148,'Surinamese dollar','Suriname','SRD','968',1,100),(149,'Swazi lilangeni','Swaziland','SZL','748',1,100),(150,'Swedish krona/kronor','Sweden','SEK','752',1,100),(151,'Swiss franc','Switzerland','CHF','756',1,100),(152,'Syrian pound','Syrian Arab Republic','SYP','760',1,100),(153,'Tajikistani somoni','Tajikistan','TJS','972',1,100),(154,'Tanzanian shilling','Tanzania','TZS','834',1,100),(155,'Thai baht','Thailand','THB','764',1,100),(156,'Tongan paanga','Tonga','TOP','776',1,100),(157,'Trinidad and Tobago dollar','Trinidad and Tobago','TTD','780',1,100),(158,'Tunisian dinar','Tunisia','TND','788',1,100),(159,'Turkish lira','Turkey,Northern Cyprus','TRY','949',1,100),(160,'Turkmenistani manat','Turkmenistan','TMT','934',1,100),(161,'Ugandan shilling','Uganda','UGX','800',1,100),(162,'Ukrainian hryvnia','Ukraine','UAH','980',1,100),(163,'Unidad de Fomento (funds code)','Chile','CLF','990',1,100),(164,'Unidad de Valor Real (UVR) (funds code)[7]','Colombia','COU','970',1,100),(165,'United Arab Emirates dirham','United Arab Emirates','AED','784',1,100),(166,'United States dollar','United States','USD','840',1,100),(167,'United States dollar (next day) (funds code)','United States','USN','997',1,100),(168,'United States dollar (same day) (funds code)[10]','United States','USS','998',1,100),(169,'Uruguay Peso en Unidades Indexadas (URUIURUI) (funds code)','Uruguay','UYI','940',1,100),(170,'Uruguayan peso','Uruguay','UYU','858',1,100),(171,'Uzbekistan som','Uzbekistan','UZS','860',1,100),(172,'Vanuatu vatu','Vanuatu','VUV','548',1,100),(173,'Venezuelan bol??var','Venezuela','VEF','937',1,100),(174,'Vietnamese dong','Vietnam','VND','704',1,100),(175,'WIR Euro (complementary currency)','Switzerland','CHE','947',1,100),(176,'WIR Franc (complementary currency)','Switzerland','CHW','948',1,100),(177,'Yemeni rial','Yemen','YER','886',1,100),(178,'Zambian kwacha','Zambia','ZMW','967',1,100),(179,'Zimbabwe dollar','Zimbabwe','ZWD','932',1,100);
/*!40000 ALTER TABLE `APG_Currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_FPX_Bank_Codes`
--

DROP TABLE IF EXISTS `APG_FPX_Bank_Codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_FPX_Bank_Codes` (
  `APGFPXBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(120) NOT NULL,
  PRIMARY KEY (`APGFPXBankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_FPX_Bank_Codes`
--

LOCK TABLES `APG_FPX_Bank_Codes` WRITE;
/*!40000 ALTER TABLE `APG_FPX_Bank_Codes` DISABLE KEYS */;
/* INSERT INTO `APG_FPX_Bank_Codes` VALUES (1,'00','Approved'),(2,'03','Invalid Merchant'),(3,'05','Invalid Seller Or Acquiring Bank Code'),(4,'09','Transaction Pending'),(5,'12','Invalid Transaction'),(6,'13','Invalid Amount'),(7,'14','Invalid Buyer Amount'),(8,'20','Invalid Response'),(9,'30','Format Error'),(10,'31','Invalid Bank'),(11,'39','No Credit Account'),(12,'45','Duplicate Seller Order Number'),(13,'46','Invalid Seller Exchange Or Seller'),(14,'47','Invalid Currency'),(15,'48','Maximum Transaction Limit Exceeded'),(16,'49','Merchant Specific Limit Exceeded'),(17,'50','Invalid Seller for Merchant Specific Limit'),(18,'51','Insufficient Funds'),(19,'53','No Buyer Account Number'),(20,'57','Transaction Not Permitted'),(21,'58','Transaction To Merchant Not Permitted'),(22,'70','Invalid serial Number'),(23,'76','Transaction Not Found'),(24,'77','Invalid Buyer Name Or Buyer Id'),(25,'78','Decryption Failed'),(26,'79','Host decline When Down'),(27,'80','Buyer Cancel Transaction'),(28,'83','Invalid Transaction Model'),(29,'84','Invalid Transaction Type'),(30,'85','Internal Error at Bank System'),(31,'87','Debit Failed Exception Handling'),(32,'88','Credit Failed Exception Hnadling'),(33,'89','Transaction Not Received Exception Handling'),(34,'90','Bank Internet Banking not Available'),(35,'92','Invalid Buyer Bank'),(36,'96','System Malfunction'),(37,'98','Mac Error'),(38,'99 ','Pending Authorization'),(39,'BB','Blocked Bank'),(40,'BC','Transaction Cancelled by Customer'),(41,'DA','Invalid Application Type'),(42,'DB','Invalid Email Format'),(43,'DC','Invalid Maximum Frequency'),(44,'DD','Invalid Frequency Mode'),(45,'DE','Invalid Expiry Date'),(46,'DF','Invalid e-Mandate  Buyer Bank ID '),(47,'FE','Internal Error'),(48,'OE','Transaction Rejected As Not in FPX Operating Hours'),(49,'OF','Transaction TimeOut'),(50,'SB','Invalid Acquiring Bank Code'),(51,'XA','Invalid Source IP Address'),(52,'XB','Invalid Seller Exchange IP'),(53,'XC','Seller Exchange Encryption Error'),(54,'XE','Invalid Message'),(55,'XF','Invalid Number of Orders'),(56,'XI','Invalid Seller Exchange'),(57,'XM ','Invalid FPX Transaction Model'),(58,'XN','Transaction Rejected Due To Duplicate Seller Exchange Order Number'),(59,'XO','Duplicate Exchange Order Number'),(60,'XS','Seller Does not belong to exchange'),(61,'XT','Invalid Transaction Type'),(62,'XW','Seller Exchange Date Difference Exceeded'),(63,'1A','Buyer Session Timeout At Internet Bnaking Login Page'),(64,'1B','Buyer Failed To provider the  necessary info login to internet Banking login Page'),(65,'1C','Buyer Choose Cancel At Login Page'),(66,'1D','Buyer Session Timeout at session login page'),(67,'1E','Buyer Failed to provide the  necessary info to login to internet banking login page'),(68,'1F','Buyer Choose cancel at Account selection page'),(69,'1G','Buyer Session Timeout at TAC Request Page'),(70,'1H','Buyer Failed to provide necessary info at TAC Request Page'),(71,'1I','Buyer choose cancel at TAC Request Page'),(72,'1J','Buyer Session timeout at confirmation Page'),(73,'1K','Bueyr Failed to provide the necessary info at confirmation page'),(74,'1L','Buyer choose cancel at confirmation Page'),(75,'1M','Internet Banking Session Timeout'),(76,'2A','Transaction Amount is lower than Minimum limit');
/*!40000 ALTER TABLE `APG_FPX_Bank_Codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_General_Configuration`
--

DROP TABLE IF EXISTS `APG_General_Configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_General_Configuration`
--

LOCK TABLES `APG_General_Configuration` WRITE;
/*!40000 ALTER TABLE `APG_General_Configuration` DISABLE KEYS */;
INSERT INTO `APG_General_Configuration` VALUES (375,'General','mbbReversalAvailability',NULL,'0day',1,NULL),(376,'General','ctbReversalAvailability',NULL,'10pmdaily',1,NULL),(377,'General','mbbRefundAvailability',NULL,'180day',1,NULL),(378,'General','ctbRefundAvailability',NULL,'180day',1,NULL),(379,'General','pbbReversalAvailability',NULL,'0day',1,NULL),(380,'General','FPXBuyerBankList',NULL,'ALLIANCE BANK MALAYSIA BERHAD B2B',1,NULL),(382,'General','DefaultSenderAddress',NULL,'do-not-reply@astrostg1.com.my',1,NULL),(383,'General','PartnerKeyWithCasa',NULL,'Hey test this',0,NULL),(384,'General','BlacklistReceiverAdminAddress',NULL,'yogesh.dawkhar@blazeclan.com',1,NULL),(385,'General','DefaultReceiverAdminAddress',NULL,'yogesh.dawkhar@blazeclan.com',1,NULL),(386,'General','DashboardSetting',NULL,'PartnerKey: DashboardPayflow\nPassword: **********\nUrl: https://apgd.astro-dev.com',1,NULL),(387,'General','ChangeRecuringCC_EmailTemplate',NULL,'fgdgfgfg',1,NULL),(388,'General','ExcludedPushToPayflowPartnerKey',NULL,'runscope|apgmon|statuspoll',1,NULL),(389,'General','FPXEndpointRetrieveBankList',NULL,'https://uat.mepsfpx.com.my/FPXMain/RetrieveBankList',1,NULL),(390,'General','FPXInvalidCharProductDesc',NULL,'=\"`S~S!S#S$S%S^S*S+S=S|S{S}S[S]S;S:S\\S?S>S\"S<',1,NULL),(391,'General','FPXPendingModeResponseCodeList',NULL,'09',1,NULL),(392,'General','FPXPKIKeysPhysicalApplicationPath',NULL,'C:\\app_code\\FPX_SMI\\',1,NULL),(393,'General','GeneratePaymentRefIDMaxRetry',NULL,'5',1,NULL),(394,'General','MBBValidResponseCode',NULL,'N|A|C|S|V|E|F|CB|BL|B',1,NULL),(395,'General','PartnerKeyWithCasa',NULL,'.direct',1,NULL),(396,'General','PartnerKeyWithEmoto',NULL,'.emoto',1,NULL),(397,'General','ChangeRecuringCC_EmailTemplate',NULL,'Test397',1,NULL);
/*!40000 ALTER TABLE `APG_General_Configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_MBB_CASA_Bank_Codes`
--

DROP TABLE IF EXISTS `APG_MBB_CASA_Bank_Codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_MBB_CASA_Bank_Codes` (
  `APGMBBCASABankCodesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Response_Code` varchar(45) NOT NULL,
  `Response_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`APGMBBCASABankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_MBB_CASA_Bank_Codes`
--

LOCK TABLES `APG_MBB_CASA_Bank_Codes` WRITE;
/*!40000 ALTER TABLE `APG_MBB_CASA_Bank_Codes` DISABLE KEYS */;
INSERT INTO `APG_MBB_CASA_Bank_Codes` VALUES (1,'00','Successful'),(2,'01','Transaction Rejected by Bank'),(3,'20','Unauthorized Transaction'),(4,'99','Transaction not exist in bank system');
/*!40000 ALTER TABLE `APG_MBB_CASA_Bank_Codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_PBB_Bank_Codes`
--

DROP TABLE IF EXISTS `APG_PBB_Bank_Codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_PBB_Bank_Codes` (
  `APGPBBBankCodesID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Code` varchar(45) NOT NULL,
  `Reason_Description` varchar(120) NOT NULL,
  PRIMARY KEY (`APGPBBBankCodesID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_PBB_Bank_Codes`
--

LOCK TABLES `APG_PBB_Bank_Codes` WRITE;
/*!40000 ALTER TABLE `APG_PBB_Bank_Codes` DISABLE KEYS */;
INSERT INTO `APG_PBB_Bank_Codes` VALUES (1,'RJ','Rejected – invalid hash value, fraud related, duplicate transaction'),(2,'EP','Rejected – invalid input parameter'),(3,'N7','Declined – invalid CVV2'),(4,'00','Approved – transaction accepted'),(5,'01','Declined – refer to card issue'),(6,'02','Declined – refer to issuer special'),(7,'03','Declined – invalid merchant'),(8,'04','Declined – retain card'),(9,'05','Declined – do not honor'),(10,'06','Declined – error'),(11,'07','Declined – pick-up, fraud'),(12,'12','Declined – invalid'),(13,'13','Declined – invalid amount'),(14,'14','Declined – no card number found'),(15,'15','Declined – invalid issuer'),(16,'19','Declined – system time out'),(17,'21','Declined – no action taken for referral'),(18,'22','Declined – DUKPT error (Derived Unique Key Per Transaction)'),(19,'30','Declined – format error'),(20,'34','Declined – suspected fraud'),(21,'38','Declined – number of pin tries exceeded'),(22,'41','Declined – pickup, lost'),(23,'43','Declined – pickup, stolen'),(24,'51','Declined – insufficient funds'),(25,'52','Declined – damage/upgrade to gold/erc/name'),(26,'53','Declined – no saving account'),(27,'54','Declined – card expired'),(28,'55','Declined – invalid pin'),(29,'57','Declined – transaction not permitted by issuer'),(30,'58','Declined – transaction not permitted to acquirer/terminal'),(31,'61','Declined – exceed approval by STIP (Stand-in Processing)'),(32,'62','Declined – restricted card'),(33,'63','Declined – security violation'),(34,'65','Declined – exceed withdraw count limit'),(35,'75','Declined – allowable number of pin tries exceeded'),(36,'76','Declined – invalid/non-existent to account specified'),(37,'77','Declined – invalid/non-existent from account specified'),(38,'78','Declined – invalid/non-existent to account specified'),(39,'82','Declined – invalid CVV'),(40,'84','Declined – invalid authorization life cycle'),(41,'89','Declined – invalid terminal'),(42,'91','Declined – issuer or switch is inoperative'),(43,'93','Declined – transaction cannot be completed, violation of law'),(44,'94','Declined – EDC duplicate settlement'),(45,'96','Declined – system malfunction'),(46,'97','Declined – encryption error'),(47,'98','Declined – SW didn?t get reply from IS'),(48,'99','Rejected – system error');
/*!40000 ALTER TABLE `APG_PBB_Bank_Codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_Roles`
--

DROP TABLE IF EXISTS `APG_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_Roles`
--

LOCK TABLES `APG_Roles` WRITE;
/*!40000 ALTER TABLE `APG_Roles` DISABLE KEYS */;
INSERT INTO `APG_Roles` VALUES (80,'testrole','testrole',NULL,1),(81,'default','default',NULL,1),(86,'hsoAdmin','AGSS Admin',5,1),(88,'ITOSOnboardPartner','ITOSpartnerconfig',1,1);
/*!40000 ALTER TABLE `APG_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_TransactionType`
--

DROP TABLE IF EXISTS `APG_TransactionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_TransactionType` (
  `TransactionTypeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TransactionType` varchar(10) NOT NULL,
  `TransactionTypeShortName` varchar(1) NOT NULL,
  PRIMARY KEY (`TransactionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_TransactionType`
--

LOCK TABLES `APG_TransactionType` WRITE;
/*!40000 ALTER TABLE `APG_TransactionType` DISABLE KEYS */;
INSERT INTO `APG_TransactionType` VALUES (1,'Single','s'),(2,'Recurring','r'),(3,'EPP','e'),(4,'Validation','v');
/*!40000 ALTER TABLE `APG_TransactionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_Users`
--

DROP TABLE IF EXISTS `APG_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_Users` (
  `user_id` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_Users`
--

LOCK TABLES `APG_Users` WRITE;
/*!40000 ALTER TABLE `APG_Users` DISABLE KEYS */;
INSERT INTO `APG_Users` VALUES ('alvin_tung@astro.com.my',1),('ameet.phadnis@blazeclan.com',1),('Atalvin',1),('Crystaltest',0),('esektash',1),('felie_low@astro.com.my',1),('hafizah',0),('HKHITESH',1),('namsnora',1),('syhshiny',1),('testtest',1);
/*!40000 ALTER TABLE `APG_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_WebAdmin_Configuration`
--

DROP TABLE IF EXISTS `APG_WebAdmin_Configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APG_WebAdmin_Configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  `groupKey` varchar(60) DEFAULT NULL,
  `configKey` varchar(45) DEFAULT NULL,
  `configValue` text,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_WebAdmin_Configuration`
--

LOCK TABLES `APG_WebAdmin_Configuration` WRITE;
/*!40000 ALTER TABLE `APG_WebAdmin_Configuration` DISABLE KEYS */;
INSERT INTO `APG_WebAdmin_Configuration` VALUES (5,'WebAdmin','HealthPage',NULL,'test val',1),(8,'WebAdmin','ADDomain',NULL,'ADDomain test 8',1),(17,'WebAdmin','ctbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|AcquiredId',1),(18,'WebAdmin','mbbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd',1),(33,'WebAdmin','ctb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd',1),(34,'WebAdmin','mbb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd',1),(35,'WebAdmin','mbb.directDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|MerchantUserID',1),(36,'WebAdmin','mbb.eppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode',1),(37,'WebAdmin','mbb.emotoeppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode',1),(38,'WebAdmin','pbbDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|CheckStatusURL|RefundURL',1),(39,'WebAdmin','pbb.emotoDataKeys',NULL,'MerchantEmotourl|MerchantID|Merchantpswd|CheckStatusURL|RefundURL',1),(40,'WebAdmin','pbb.eppDataKeys',NULL,'Merchanturl|MerchantID|Merchantpswd|TermMonth|InstallmentPlanCode|CheckStatusURL|RefundURL',1),(41,'WebAdmin','fpx.directDataKeys',NULL,'SellerID|ExchangeID|CheckStatusURL|Merchanturl',0),(57,'WebAdmin','MaxRefund',NULL,'3',1),(58,'WebAdmin','HealthPage',NULL,NULL,1),(59,'WebAdmin','HealthPage','Citi','test',1),(60,'WebAdmin','HealthPage','CASA','https://m2umobilesit.maybank.com.my/mbb/m2u/m7000/m2uMerchantLogin.do',1),(61,'WebAdmin','HealthPage',NULL,NULL,1),(62,'WebAdmin','HealthPage','test62','config62',1),(63,'WebAdmin','HealthPage','test63','conf63',1);
/*!40000 ALTER TABLE `APG_WebAdmin_Configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APG_Web_Configuration`
--

DROP TABLE IF EXISTS `APG_Web_Configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APG_Web_Configuration`
--

/*LOCK TABLES `APG_Web_Configuration` WRITE;
/*!40000 ALTER TABLE `APG_Web_Configuration` DISABLE KEYS */;
/*INSERT INTO `APG_Web_Configuration` VALUES (1,'Web','ConfirmationQuickpayButton','ebill_ctb','{PartnerKey:ebill,ChannelKey:ctb}',1),(3,'Web','ConfirmationShowAccountNumber','ebill_fpx','{PartnerKey:ebill,ChannelKey:pbb}',1),(9,'Web','MaxTimeOut','','300000',1),(17,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(18,'Web','Web','w','q',1),(19,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(20,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(21,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(22,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(23,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(25,'Web','Tnc',NULL,NULL,1),(43,'Web','OnlineBankingMessage',NULL,NULL,1),(44,'Web','OnlineBankingMessage',NULL,NULL,1),(45,'Web','GSTLabel',NULL,NULL,1),(46,'Web','BlacklistPayeeBufferTime',NULL,NULL,1),(47,'Web','APIMaxBufferTimeStamp',NULL,NULL,1),(48,'Web','OnlineBankingMessage',NULL,NULL,1),(49,'Web','OnlineBankingMessage',NULL,NULL,1),(50,'Web','OnlineBankingMessage',NULL,NULL,1),(51,'Web','OnlineBankingMessage',NULL,NULL,1),(52,'Web','OnlineBankingMessage',NULL,NULL,1),(53,'Web','OnlineBankingMessage',NULL,NULL,1),(54,'Web','OnlineBankingMessage',NULL,NULL,1),(55,'Web','OnlineBankingMessage',NULL,NULL,1),(56,'Web','OnlineBankingMessage',NULL,NULL,1),(57,'Web','OnlineBankingMessage',NULL,NULL,1),(58,'Web','OnlineBankingMessage',NULL,NULL,1),(59,'Web','OnlineBankingMessage',NULL,NULL,1),(60,'Web','OnlineBankingMessage','test60','config60',1);
/*!40000 ALTER TABLE `APG_Web_Configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FPX_BankList`
--

DROP TABLE IF EXISTS `FPX_BankList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FPX_BankList` (
  `FpxBankID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FpxBankCode` varchar(20) NOT NULL,
  `FpxBankName` text NOT NULL,
  `FpxBankDisplayName` text NOT NULL,
  PRIMARY KEY (`FpxBankID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FPX_BankList`
--

LOCK TABLES `FPX_BankList` WRITE;
/*!40000 ALTER TABLE `FPX_BankList` DISABLE KEYS */;
INSERT INTO `FPX_BankList` VALUES (1,'TEST0021','SBI Bank A','SBI Bank A'),(2,'TEST0022','SBI Bank B','SBI Bank B'),(3,'TEST0023','SBI Bank C','SBI Bank C'),(4,'TEST0001','Test Bank A','Test Bank A'),(5,'TEST0002','Test Bank B','Test Bank B'),(6,'TEST0003','Test Bank C','Test Bank C'),(7,'TEST0004','Test Bank D','Test Bank D'),(8,'TEST0005','Test Bank E','Test Bank E'),(9,'ABB0233','Affin Bank Berhad','Affin Bank'),(10,'ABMB0212','Alliance Bank Ma\r\nlaysia Berhad','Alliance Bank'),(11,'AMBB0209','AmBank Malaysia Berhad','AmBank'),(12,'BIMB0340','Bank Islam Malaysia Berhad','Bank Islam'),(13,'BKRM0602','Bank Kerjasama Rakyat Malaysia \r\nBerhad','Bank Rakyat'),(14,'BMMB0341','Bank Muamalat Malaysia Berhad','Bank Muamalat'),(15,'BSN0601','Bank Simpanan Nasional','BSN'),(16,'BCBB0235','CIMB Bank Berhad','CIMB Clicks'),(17,'HLB0224','Hong Leong Bank Berhad','Hong Leong Bank'),(18,'HSBC0223','HSBC Bank Malaysia Berhad','HSBC Bank'),(19,'KFH0346','Kuwait Finance House (Malaysia) Berhad','KFH'),(20,'MB2U0227','Malayan Banking Berhad (M2U)','Maybank2U'),(21,'MBB0228','Malayan Banking Berhad (M2E)','Maybank2E'),(22,'OCBC0229','OCBC Bank Malaysia Berhad','OCBC Bank'),(23,'PBB0233','Public Bank Berhad','Public Bank'),(24,'RHB0218','RHB Bank Berhad','RHB Bank'),(25,'SCB0216','Standard Chartered Bank','Standard Chartered'),(26,'UOB0226','United Overseas Bank','UOB Bank');
/*!40000 ALTER TABLE `FPX_BankList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PVS_Function`
--

DROP TABLE IF EXISTS `PVS_Function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PVS_Function` (
  `FunctionID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FunctionKey` varchar(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  PRIMARY KEY (`FunctionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PVS_Function`
--

LOCK TABLES `PVS_Function` WRITE;
/*!40000 ALTER TABLE `PVS_Function` DISABLE KEYS */;
INSERT INTO `PVS_Function` VALUES (1,'rest.apg.AddNewCreditCard','rest.apg.AddNewCreditCard'),(2,'rest.apg.CancelRecurringTransaction','rest.apg.CancelRecurringTransaction'),(3,'rest.apg.ChangeRecurringCreditCard','rest.apg.ChangeRecurringCreditCard'),(4,'rest.apg.createtransaction','rest.apg.createtransaction'),(5,'rest.apg.GetListOfPayeeCreditCard','rest.apg.GetListOfPayeeCreditCard'),(6,'rest.apg.gettransactionresult','rest.apg.gettransactionresult'),(7,'rest.apg.RemoveCreditCard','rest.apg.RemoveCreditCard'),(8,'rest.apg.SubmitTransaction','rest.apg.SubmitTransaction'),(9,'rest.apg.UpdateCreditCardExpiryDate','rest.apg.UpdateCreditCardExpiryDate'),(10,'rest.apg.V2.GetRecurringAccessToken','rest.apg.V2.GetRecurringAccessToken'),(11,'rest.apg.V2.gettransactionresult','rest.apg.V2.gettransactionresult'),(12,'rest.apg.V2.SubmitTransaction','rest.apg.V2.SubmitTransaction'),(13,'rest.apg.V2.ValidateIPAddress','rest.apg.V2.ValidateIPAddress'),(14,'rest.apgex.getTransactionDetails','rest.apgex.getTransactionDetails'),(15,'rest.apgex.getTransactionPaymentDetails','rest.apgex.getTransactionPaymentDetails'),(16,'rest.apg.V1.getTransactionHistoryPerLoginUser','rest.apg.V1.getTransactionHistoryPerLoginUser'),(17,'rest.apg.V1.getSavedCardHistory','rest.apg.V1.getSavedCardHistory');
/*!40000 ALTER TABLE `PVS_Function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PVS_Group`
--

DROP TABLE IF EXISTS `PVS_Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PVS_Group` (
  `GroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PVS_Group`
--

LOCK TABLES `PVS_Group` WRITE;
/*!40000 ALTER TABLE `PVS_Group` DISABLE KEYS */;
INSERT INTO `PVS_Group` VALUES (1,'V1'),(2,'APGEX'),(3,'V2'),(4,'ManageFavCard'),(5,'TestAPI'),(6,'testV1');
/*!40000 ALTER TABLE `PVS_Group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17 13:40:3 5 --> */
